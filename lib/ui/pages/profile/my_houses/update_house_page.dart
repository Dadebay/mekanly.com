// ignore_for_file: deprecated_member_use

import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mekanly_com/logic/data/net.dart';
import 'package:mekanly_com/ui/pages/profile/auth/logout_dialog.dart';
import 'package:path/path.dart' as path;
import 'package:table_calendar/table_calendar.dart';

import '/config/config.dart';
import '/localization/locals.dart';
import '/logic/cubits/categs/categs_cubit.dart';
import '/logic/cubits/house/house_cubit.dart';
import '/models/category/category_model.dart';
import '/models/models.dart';
import '/ui/pages/profile/terms_and_conditions.dart';
import '/ui/style/app_sizes.dart';
import '/ui/style/style.dart';
import '/ui/widgets/sli.dart';
import '../../../../logic/repos/i_main_repo.dart';
import '../../../widgets/top_bar.dart';
import '../../add/regions_page.dart';
import '../../home/widgets/widgets.dart';

class UpdateHousePage extends StatefulWidget {
  const UpdateHousePage({super.key, required this.house});

  final House house;

  @override
  UpdateHousePageState createState() => UpdateHousePageState();
}

class UpdateHousePageState extends State<UpdateHousePage> {
  late String chosenCategName;
  late int chosenCategId;
  late String selectedCityName;
  late int? selectedCityId;
  late String chosenRegion;
  late int roomCount;
  late int floorCount;
  late int guestNumber;
  late List<int> selectedFeaturesIndices;
  late TimeOfDay enterTime;
  late TimeOfDay leaveTime;
  late bool ignEnterTime;
  late bool ignLeaveTime;
  late DateTime? _rangeStart;
  late DateTime? _rangeEnd;
  DateTime _focusedDay = DateTime.now();
  late DateTime? _selectedDay;
  late bool isNetworkImage;
  late List<File> houseImages;
  List<File> compressedImages = [];
  late TextEditingController descriptionCtrl;
  late TextEditingController priceCtrl;
  late TextEditingController phoneCtrl;
  late TextEditingController name;

  late IMainRepo repo;
  @override
  void initState() {
    repo = context.read<CategsCubit>().repo;
    chosenCategName = repo.cats.all.firstWhere((element) => element.id == widget.house.categoryId).name;
    chosenCategId = repo.cats.all.firstWhere((element) => element.id == widget.house.categoryId).id;
    selectedCityName = repo.regions.data.firstWhere((element) => element.id == widget.house.location.parentId).children.firstWhere((element) => element.id == widget.house.location.id).name;
    selectedCityId = repo.regions.data.firstWhere((element) => element.id == widget.house.location.parentId).children.firstWhere((element) => element.id == widget.house.location.id).id;
    chosenRegion = repo.regions.data.firstWhere((element) => element.id == widget.house.location.parentId).name;
    roomCount = widget.house.roomNumber;
    floorCount = widget.house.floorNumber;
    guestNumber = widget.house.guestNumber;
    selectedFeaturesIndices = widget.house.possibilities.map((e) => e.id).toList();
    enterTime = stringToTimeofDay(widget.house.dayEnterTime ?? "00:00");
    leaveTime = stringToTimeofDay(widget.house.dayLeaveTime ?? "00:00");
    ignEnterTime = widget.house.dayEnterTime == null;
    ignLeaveTime = widget.house.dayLeaveTime == null;
    _rangeStart = widget.house.enterTime;
    _rangeEnd = widget.house.leaveTime;
    descriptionCtrl = TextEditingController.fromValue(TextEditingValue(text: widget.house.description));
    priceCtrl = TextEditingController.fromValue(TextEditingValue(text: widget.house.price));
    phoneCtrl = TextEditingController.fromValue(TextEditingValue(text: widget.house.bronNumber.replaceAll('+993', '')));
    name = TextEditingController.fromValue(TextEditingValue(text: widget.house.name));
    _selectedDay = _focusedDay;

    List<File> imageFiles = [];

    for (var i = 0; i < widget.house.images.length; i++) {
      File file = File(widget.house.images[i].url);
      imageFiles.add(file);
    }
    _progressList = List<double>.filled(imageFiles.length, 1.0);
    houseImages = imageFiles;
    isNetworkImage = houseImages.any((element) => element.runtimeType != File);
    super.initState();
  }

  bool _acceptTerms = true;

  Future<void> pickImages() async {
    var limitReached = Locals.of(context).limitImages;
    final picker = ImagePicker();
    List<XFile> pickedImages = await picker.pickMultiImage();
    if (pickedImages.length > 10) {
      errorToast(limitReached);
      return;
    }

    setState(() {
      isNetworkImage = false;
      houseImages.clear();
      houseImages.addAll(pickedImages.map((e) => File(e.path)).toList());
    });
  }

  late List<double> _progressList;
  List<File> imageFiles = [];

  Future<void> compressImages(List<File> selectedFiles) async {
    imageFiles = selectedFiles;
    compressedImages.clear();
    setState(() {
      _progressList = List<double>.filled(imageFiles.length, 0.0);
    });

    for (int i = 0; i < imageFiles.length; i++) {
      File file = imageFiles[i];
      double size = file.lengthSync() / (1000 * 1000);
      logger("IS BIG 700KB - > ${(size > 0.7).toString().capitalize}");
      final filePath = file.absolute.path;
      final lastIndex = filePath.lastIndexOf(RegExp(r'.png|.jp'));
      final splitted = filePath.substring(0, (lastIndex));
      final outPath = "${splitted}_out${filePath.substring(lastIndex)}";

      XFile? compressedImage;
      if (lastIndex == filePath.lastIndexOf(RegExp(r'.png'))) {
        compressedImage = await FlutterImageCompress.compressAndGetFile(
          filePath,
          outPath,
          minHeight: (size > 0.7 && size <= 4)
              ? 333
              : size > 4
                  ? 400
                  : 550,
          minWidth: (size > 0.7 && size <= 4)
              ? 333
              : size > 4
                  ? 400
                  : 950,
          quality: 90,
          format: CompressFormat.png,
        );
      } else {
        compressedImage = await FlutterImageCompress.compressAndGetFile(
          filePath,
          outPath,
          minHeight: (size > 0.7 && size <= 4)
              ? 350
              : size > 4
                  ? 400
                  : 550,
          minWidth: (size > 0.7 && size <= 4)
              ? 350
              : size > 4
                  ? 400
                  : 950,
          quality: 90,
        );
      }
      if (compressedImage != null) {
        compressedImages.add(File(compressedImage.path));
      } else {
        logger("NULL");
        compressedImages.add(file);
      }
      file.length().then((value) => logger("${Uri.file(file.path).pathSegments.last}  :  Original Size ${(value / (1000 * 1000)).toStringAsFixed(2)} MB"));
      compressedImage?.length().then((value) => logger("${Uri.file(compressedImage!.path).pathSegments.last}  :  Compressed Size ${(value / 1000).toStringAsFixed(2)} KB"));
      double progress = 0.0;
      while (progress <= 1.0) {
        setState(() {
          _progressList[i] = progress;
        });
        await Future.delayed(const Duration(milliseconds: 20));
        progress += Random().nextDouble() * 0.1;
      }
      setState(() {
        _progressList[i] = 1.0;
      });
    }
    logger("${compressedImages.length} SANY SURAT GYSYLDY");
    logger("TOTAL SIZE: ${compressedImages.map((e) => e.lengthSync() / (1000 * 1000)).toList().reduce((value, element) => value + element)}");
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
      });
    }
  }

  void _onRangeSelected(DateTime? start, DateTime? end, DateTime focusedDay) {
    setState(() {
      _selectedDay = null;
      _focusedDay = focusedDay;
      _rangeStart = start;
      _rangeEnd = end;
    });
  }

  void handleFeaturesSelected(List<int> indices) {
    setState(() {
      selectedFeaturesIndices = indices;
    });
  }

  void _chooseCategory() async {
    final selectedCategory = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CategorySelectionPage()),
    );
    if (selectedCategory != null) {
      setState(() {
        chosenCategName = selectedCategory[0];
        chosenCategId = selectedCategory[1];
      });
    }
  }

  void _chooseLocation() async {
    final List<Cities> selectedLocations = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const RegionsPage(isFiltering: false)),
    );
    setState(() {
      selectedCityName = selectedLocations[0].name;
      selectedCityId = selectedLocations[0].id;
      chosenRegion = repo.regions.data.firstWhere((element) => element.id == selectedLocations[0].parentId).name;
    });
  }

  bool _validateAndSaveForm() {
    final FormState form = _formKey.currentState!;
    form.save();

    if (form.validate() &&
        _acceptTerms &&
        name.text.isNotEmpty &&
        chosenCategId != 0 &&
        selectedCityId != null &&
        roomCount != 0 &&
        _rangeEnd != null &&
        _rangeStart != null &&
        houseImages.isNotEmpty &&
        priceCtrl.text.isNotEmpty &&
        descriptionCtrl.text.isNotEmpty &&
        phoneCtrl.text.isNotEmpty &&
        _acceptTerms == true) {
      form.save();
      return true;
    }
    return false;
  }

  Future<void> _selectTime(BuildContext context, TimeOfDay initialTime) async {
    final TimeOfDay? selectedTime = await showTimePicker(
        builder: (context, child) {
          return Theme(
            data: ThemeData.light().copyWith(
              colorScheme: const ColorScheme.light(background: AppColors.background, onBackground: Colors.white, primary: AppColors.primary),
              buttonTheme: const ButtonThemeData(
                colorScheme: ColorScheme.light(
                  primary: Colors.green,
                ),
              ),
            ),
            child: child ?? Container(),
          );
        },
        initialEntryMode: TimePickerEntryMode.inputOnly,
        context: context,
        initialTime: initialTime,
        barrierDismissible: false);

    if (selectedTime != null) {
      setState(() {
        if (initialTime == enterTime) {
          enterTime = selectedTime;
        } else if (initialTime == leaveTime) {
          leaveTime = selectedTime;
        }
      });
    }
  }

  Color calculateGradientColor(double progress, BuildContext context) {
    return Color.lerp(AppColors.buttons, AppColors.green, progress) ?? Colors.blue;
  }

  final _formKey = GlobalKey<FormState>();

  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    var divider = Divider(color: AppColors.secondaryText.withOpacity(.4), height: 1);
    var locals = Locals.of(context);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: TopBar(
        title: locals.updateHouse,
        color: Colors.transparent,
      ),
      body: Form(
        key: _formKey,
        child: CustomScrollView(
          slivers: [
            Sli(children: [
              Padding(
                padding: const EdgeInsets.only(top: AppSizes.pix10, left: AppSizes.pix12),
                child: Tex(
                  locals.houseName,
                  con: context,
                ).title,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: TextField(
                  onTapOutside: (event) {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(25),
                  ],
                  controller: name,
                  style: const TextStyle(color: AppColors.mainTextDark),
                  decoration: InputDecoration(hintText: locals.nameHint, hintStyle: const TextStyle(color: AppColors.secondaryText, fontSize: 13), border: InputBorder.none),
                ),
              ),
              divider,
              ListTile(
                contentPadding: const EdgeInsets.only(left: AppSizes.pix10),
                minVerticalPadding: 0,
                dense: true,
                title: Tex(
                  locals.category,
                  padding: 0,
                  con: context,
                ).title,
                subtitle: Tex(
                  (chosenCategName.isNotEmpty) ? chosenCategName : locals.notSelected,
                  con: context,
                ).subtitle,
                onTap: _chooseCategory,
              ),
              divider,
              ListTile(
                contentPadding: const EdgeInsets.only(left: AppSizes.pix10),
                minVerticalPadding: 0,
                visualDensity: VisualDensity.compact,
                dense: true,
                title: Tex(
                  locals.location,
                  padding: 0,
                  con: context,
                ).title,
                subtitle: Tex(
                  selectedCityName.isNotEmpty ? '$chosenRegion - $selectedCityName' : locals.notSelected,
                  con: context,
                ).subtitle,
                onTap: _chooseLocation,
              ),
              divider,
            ]),
            Theme(
              data: ThemeData(
                dividerColor: Colors.white, // Set your desired color here
              ),
              child: Sli(children: [
                SizedBox(height: isTablet(context) ? AppSizes.pix32 : AppSizes.pix10),
                ExpansionTile(
                  initiallyExpanded: true,
                  title: Tex(
                    locals.roomCount,
                    con: context,
                    padding: 0,
                  ).title,
                  children: [
                    RoomCountAddHouse(
                        isAdding: true,
                        roomCount: roomCount,
                        onRoomCountChanged: (newCount) {
                          setState(() {
                            if (roomCount == newCount) {
                              roomCount = 0;
                            } else {
                              roomCount = newCount;
                            }
                          });
                        }),
                  ],
                ),
                const SizedBox(height: AppSizes.pix16),
                ExpansionTile(
                  initiallyExpanded: true,
                  title: Tex(
                    locals.floorCount,
                    con: context,
                    padding: 0,
                  ).title,
                  children: [
                    FloorCountWidget(
                        isAdding: true,
                        floorCount: floorCount,
                        onFloorCountChanged: (newCount) {
                          setState(() {
                            if (floorCount == newCount) {
                              floorCount = 0;
                            } else {
                              floorCount = newCount;
                            }
                          });
                        }),
                  ],
                ),

                const SizedBox(
                  height: AppSizes.pix20,
                ),
                divider,
                // Gues er,
                Tex(
                  locals.possibilities,
                  con: context,
                  padding: AppSizes.pix16,
                ).title,
                FeatureCheckbox(
                  onFeaturesSelected: handleFeaturesSelected,
                  checkedIds: selectedFeaturesIndices,
                ),
              ]),
            ),
            // Sli(children: [
            //   SizedBox(height: isTablet(context) ? AppSizes.pix32 : AppSizes.pix10),
            //   RoomCountAddHouse(
            //       isAdding: true,
            //       roomCount: roomCount,
            //       onRoomCountChanged: (newCount) {
            //         setState(() {
            //           if (roomCount == newCount) {
            //             roomCount = 0;
            //           } else {
            //             roomCount = newCount;
            //           }
            //         });
            //       }),
            //   const SizedBox(height: AppSizes.pix16),
            //   FloorCountWidget(
            //       isAdding: true,
            //       floorCount: floorCount,
            //       onFloorCountChanged: (newCount) {
            //         setState(() {
            //           if (floorCount == newCount) {
            //             floorCount = 0;
            //           } else {
            //             floorCount = newCount;
            //           }
            //         });
            //       }),
            //   const SizedBox(
            //     height: AppSizes.pix20,
            //   ),
            //   divider,
            //   GuestCountWidget(
            //       guestNumber: guestNumber,
            //       onGuestNumberChanged: (newCount) {
            //         setState(() {
            //           guestNumber = newCount;
            //         });
            //       }),
            //   divider,
            //   Tex(
            //     locals.possibilities,
            //     con: context,
            //     padding: AppSizes.pix16,
            //   ).title,
            //   FeatureCheckbox(
            //     onFeaturesSelected: handleFeaturesSelected,
            //     checkedIds: selectedFeaturesIndices,
            //   ),
            // ]),
            Sli(
              children: [
                // Padding(
                //   padding: const EdgeInsets.all(AppSizes.pix8),
                //   child: Tex(locals.rules, con: context).title,
                // ),
                // Tex('     ${locals.enterTime}', con: context, padding: 0, size: AppSizes.pix16).subtitle,
                // pickTime(context, enterTime, ignEnterTime, () => _selectTime(context, enterTime)),
                // Tex('     ${locals.leaveTime}', con: context, padding: 0, size: AppSizes.pix16).subtitle,
                // pickTime(context, leaveTime, ignLeaveTime, () => _selectTime(context, leaveTime)),
                // Container(
                //   width: double.infinity,
                //   alignment: Alignment.center,
                //   color: AppColors.primary,
                //   padding: const EdgeInsets.all(3),
                //   child: Tex(
                //     locals.whenJourney,
                //     con: context,
                //   ).white,
                // ),
                // BlocBuilder<LangCubit, Locale>(
                //   builder: (context, state) {
                //     return TableCalendar(
                //       locale: context.read<LangCubit>().localize(state),
                //       daysOfWeekHeight: AppSizes.pix24,
                //       availableGestures: AvailableGestures.horizontalSwipe,
                //       firstDay: (_rangeStart!.isBefore(DateTime.now())) ? _rangeStart ?? DateTime.now() : DateTime.now(),
                //       lastDay: DateTime.utc(2030),
                //       focusedDay: _focusedDay,
                //       selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
                //       startingDayOfWeek: StartingDayOfWeek.monday,
                //       onDaySelected: _onDaySelected,
                //       calendarStyle: CalendarStyle(
                //         selectedTextStyle: const TextStyle(color: AppColors.mainTextDark),
                //         selectedDecoration: const BoxDecoration(color: Colors.transparent),
                //         isTodayHighlighted: false,
                //         todayTextStyle: const TextStyle(color: AppColors.mainTextDark),
                //         rangeHighlightColor: AppColors.secondaryText.withOpacity(.4),
                //         rangeStartDecoration: const BoxDecoration(color: AppColors.statusBar, shape: BoxShape.circle),
                //         rangeEndDecoration: const BoxDecoration(color: AppColors.statusBar, shape: BoxShape.circle),
                //         todayDecoration: BoxDecoration(
                //           color: Colors.transparent,
                //           shape: BoxShape.circle,
                //           border: Border.all(
                //             color: AppColors.statusBar,
                //           ),
                //         ),
                //       ),
                //       onPageChanged: (focusedDay) {
                //         _focusedDay = focusedDay;
                //       },
                //       rangeStartDay: _rangeStart,
                //       onRangeSelected: _onRangeSelected,
                //       rangeEndDay: _rangeEnd,
                //       headerStyle: const HeaderStyle(titleCentered: true, formatButtonVisible: false),
                //       rangeSelectionMode: RangeSelectionMode.toggledOn,
                //     );
                //   },
                // ),
                // const SizedBox(height: AppSizes.pix16),
                GestureDetector(
                  onTap: () async {
                    await pickImages();
                    await compressImages(houseImages);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: AppSizes.pix20),
                    child: DottedBorder(
                      dashPattern: const [AppSizes.pix10, AppSizes.pix6],
                      child: Container(
                          color: AppColors.background,
                          height: AppSizes.pix150,
                          width: width(context) - 45,
                          child: houseImages.isNotEmpty
                              ? Stack(
                                  fit: StackFit.expand,
                                  children: [
                                    isNetworkImage
                                        ? Image.network(
                                            houseImages[0].path,
                                            fit: BoxFit.cover,
                                          )
                                        : Image.file(
                                            houseImages[0],
                                            fit: BoxFit.cover,
                                          ),
                                    Positioned(
                                      top: 1,
                                      right: 1,
                                      child: Container(
                                        color: AppColors.green.withOpacity(.8),
                                        child: Tex(
                                          locals.mainImage,
                                          con: context,
                                          col: AppColors.white,
                                          size: AppSizes.pix16,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              : Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Tex(
                                      locals.insertImage,
                                      con: context,
                                      align: TextAlign.center,
                                    ),
                                    const Icon(
                                      Icons.add_circle_outline_rounded,
                                      size: 50,
                                      color: Colors.black38,
                                    ),
                                  ],
                                )),
                    ),
                  ),
                ),
                const SizedBox(height: AppSizes.pix10),
                Column(
                  children: [
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: AppSizes.pix16,
                        crossAxisSpacing: AppSizes.pix16,
                      ),
                      padding: const EdgeInsets.all(AppSizes.pix20),
                      itemCount: houseImages.length,
                      itemBuilder: (context, index) {
                        return ClipRRect(
                          borderRadius: borderAll10,
                          clipBehavior: Clip.hardEdge,
                          child: GridTile(
                            child: Stack(
                              alignment: Alignment.center,
                              fit: StackFit.expand,
                              children: [
                                isNetworkImage
                                    ? Image.network(houseImages[index].path, fit: BoxFit.cover)
                                    : Image.file(
                                        houseImages[index],
                                        fit: BoxFit.cover,
                                      ),
                                Container(
                                  decoration: BoxDecoration(color: AppColors.black.withOpacity(.4), borderRadius: borderAll10),
                                  padding: const EdgeInsets.all(AppSizes.pix70),
                                  height: AppSizes.pix32,
                                  width: AppSizes.pix32,
                                  child: (_progressList[index] == 1)
                                      ? const Icon(
                                          Icons.check_circle_outline_rounded,
                                          size: AppSizes.pix45,
                                          color: AppColors.white,
                                        )
                                      : CircularProgressIndicator(
                                          value: _progressList[index],
                                          color: AppColors.white,
                                        ),
                                ),
                                if (_progressList[index] < 1)
                                  Center(
                                      child: Tex(
                                    '${(_progressList[index] * 100).toStringAsFixed(0)}%',
                                    con: context,
                                    col: AppColors.white,
                                  )),
                                Positioned(
                                  top: -AppSizes.pix2,
                                  right: -AppSizes.pix2,
                                  child: IconButton(
                                    padding: const EdgeInsets.all(1),
                                    constraints: const BoxConstraints(),
                                    style: IconButton.styleFrom(
                                      backgroundColor: AppColors.black.withOpacity(.8),
                                      padding: const EdgeInsets.all(1),
                                    ),
                                    color: AppColors.mainText,
                                    onPressed: () {
                                      setState(() {
                                        final originalFileName = path.basenameWithoutExtension(houseImages[index].path);
                                        final compressedFileName = '${originalFileName}_out';
                                        compressedImages.removeWhere((element) {
                                          final elementFileName = path.basenameWithoutExtension(element.path);
                                          logger("CONTAINS: ${elementFileName == compressedFileName}");
                                          return elementFileName == compressedFileName;
                                        });
                                        houseImages.removeAt(index);
                                      });
                                      logger("COMPRESSED: ${compressedImages.length}");
                                    },
                                    icon: const Icon(
                                      Icons.close,
                                      weight: 10,
                                      size: AppSizes.pix28,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(AppSizes.pix16, AppSizes.pix10, AppSizes.pix16, AppSizes.pix8),
                  child: TextField(
                    onTapOutside: (event) {
                      FocusScope.of(context).unfocus();
                    },
                    inputFormatters: [LengthLimitingTextInputFormatter(250)],
                    controller: descriptionCtrl,
                    decoration: InputDecoration(
                      hintText: locals.description,
                      border: InputBorder.none,
                      filled: true,
                      fillColor: AppColors.secondaryText.withOpacity(.3),
                    ),
                    maxLines: 4,
                  ),
                ),
                SizedBox(
                  height: AppSizes.pix32,
                  width: width(context) / AppSizes.pix2,
                  child: Padding(
                    padding: const EdgeInsets.only(left: AppSizes.pix12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Tex('${locals.dailyPrice}   ', con: context).title,
                        SizedBox(
                          width: 65,
                          child: TextField(
                            onTapOutside: (event) {
                              FocusScope.of(context).unfocus();
                            },
                            controller: priceCtrl,
                            inputFormatters: [LengthLimitingTextInputFormatter(6)],
                            textAlignVertical: TextAlignVertical.top,
                            decoration: const InputDecoration(
                              isDense: true,
                              contentPadding: EdgeInsets.only(bottom: 5),
                              border: UnderlineInputBorder(borderSide: BorderSide(color: AppColors.statusBar)),
                              focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: AppColors.statusBar)),
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        Tex('TMT', con: context).title
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: AppSizes.pix12, right: AppSizes.pix16, top: AppSizes.pix16),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Tex('${locals.yourPhone}  ', con: context, padding: AppSizes.pix2).title,
                      Expanded(
                        flex: 5,
                        child: TextFormField(
                          inputFormatters: [LengthLimitingTextInputFormatter(8)],
                          controller: phoneCtrl,
                          textAlignVertical: TextAlignVertical.center,
                          decoration: InputDecoration(
                            isDense: true,
                            border: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.statusBar)),
                            focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: AppColors.statusBar)),
                            contentPadding: const EdgeInsets.only(bottom: AppSizes.pix2),
                            prefixIconConstraints: const BoxConstraints.tightFor(),
                            prefixIcon: Tex(
                              '+993',
                              con: context,
                              padding: AppSizes.pix2,
                            ).title,
                          ),
                          keyboardType: TextInputType.number,
                          style: const TextStyle(fontSize: AppSizes.pix16),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return locals.inserPhoneWarning;
                            } else if (value.length != 8) {
                              return locals.mustbe8Digit;
                            }
                            if (!isValidPhone(value)) {
                              return locals.startWith6;
                            }
                            return null;
                          },
                        ),
                      ),
                      Expanded(flex: 3, child: Container())
                    ],
                  ),
                ),
                const SizedBox(height: AppSizes.pix10),
                Padding(
                  padding: const EdgeInsets.only(
                    left: AppSizes.pix10,
                    bottom: AppSizes.pix10,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(AppSizes.pix6),
                        child: InkWell(
                          onTap: () {
                            logger(selectedFeaturesIndices.where((element) => element > -1));
                            setState(() {
                              _acceptTerms = !_acceptTerms;
                            });
                          },
                          child: Icon(_acceptTerms ? Icons.check_box_outlined : Icons.check_box_outline_blank_outlined),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () => go(context, const TermsAndConditions()),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Tex(locals.readAndAccept, con: context).linkedText,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10, bottom: 50),
                  width: width(context),
                  height: 45,
                  child: FloatingActionButton(
                    shape: RoundedRectangleBorder(borderRadius: borderAll10),
                    backgroundColor: AppColors.buttons,
                    onPressed: () {
                      if (_validateAndSaveForm()) {
                        showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (ctx) {
                            return StatefulBuilder(builder: (context, useState) {
                              return PopScope(
                                canPop: false,
                                child: AlertDialog(
                                  insetPadding: const EdgeInsets.all(20),
                                  actionsPadding: const EdgeInsets.all(AppSizes.pix10),
                                  actionsAlignment: MainAxisAlignment.center,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(AppSizes.pix10),
                                  ),
                                  title: Tex(
                                    _isClicked ? locals.pleaseWait : locals.confirm,
                                    con: ctx,
                                  ),
                                  content: Row(
                                    children: [
                                      if (_isClicked)
                                        const CircularProgressIndicator(
                                          color: AppColors.mainTextDark,
                                        ),
                                      Expanded(
                                        child: Tex(
                                          _isClicked ? "${locals.workinOn} ${locals.pleaseWait}" : locals.doUWantToUpdate,
                                          con: ctx,
                                        ),
                                      ),
                                    ],
                                  ),
                                  actions: [
                                    _isClicked
                                        ? Container()
                                        : DialogActions(
                                            locals: locals,
                                            onDeny: () => Navigator.of(ctx).pop(),
                                            onSubmit: () {
                                              Net.checkInternet().then((value) async {
                                                if (value) {
                                                  successToast(locals.updatingHouse);
                                                  if (!_isClicked) {
                                                    useState(() {
                                                      _isClicked = true;
                                                    });
                                                  }
                                                  // String? dayEnterTime = ignEnterTime ? null : enterTime.format(context);
                                                  // String? dayLeaveTime = ignLeaveTime ? null : leaveTime.format(context);

                                                  Map<String, String> data = {
                                                    "name": name.text,
                                                    "category_id": chosenCategId.toString(),
                                                    "location_id": selectedCityId.toString(),
                                                    "room_number": roomCount.toString(),
                                                    "floor_number": floorCount.toString(),
                                                    "guest_number": guestNumber.toString(),
                                                    "enter_time": toSendDate(DateTime.now()),
                                                    // "leave_time": toSendDate(_rangeEnd),
                                                    //add one year leave_Time
                                                    "leave_time": toSendDate(DateTime.now().add(const Duration(days: 365))),
                                                    "description": descriptionCtrl.text,
                                                    "price": double.parse(priceCtrl.text).toString(),
                                                    "bron_number": "+993${phoneCtrl.text}",
                                                  };

                                                  if (selectedFeaturesIndices.isNotEmpty) {
                                                    data["possibilities"] = selectedFeaturesIndices.toString();
                                                  }

                                                  // if (dayEnterTime != null) {
                                                  //   data["day_enter_time"] = dayEnterTime;
                                                  // }

                                                  // if (dayLeaveTime != null) {
                                                  //   data["day_leave_time"] = dayLeaveTime;
                                                  // }

                                                  await context
                                                      .read<HouseCubit>()
                                                      .tryUpdateHouse(
                                                        data: data,
                                                        imagePaths: isNetworkImage ? [] : houseImages.map((e) => e.path).toList(),
                                                        id: widget.house.id,
                                                      )
                                                      .then((value) async {
                                                    Navigator.of(ctx).pop(value);
                                                    if (value) {
                                                      useState(() {
                                                        _isClicked = false;
                                                      });

                                                      showDialog(
                                                        barrierDismissible: false,
                                                        context: context,
                                                        builder: (cntxt) {
                                                          return StatefulBuilder(builder: (context, rebuild) {
                                                            return PopScope(
                                                              canPop: false,
                                                              child: AlertDialog(
                                                                insetPadding: const EdgeInsets.all(20),
                                                                actionsPadding: const EdgeInsets.all(AppSizes.pix10),
                                                                actionsAlignment: MainAxisAlignment.center,
                                                                shape: RoundedRectangleBorder(
                                                                  borderRadius: BorderRadius.circular(AppSizes.pix10),
                                                                ),
                                                                title: Tex(
                                                                  locals.habarnama,
                                                                  con: cntxt,
                                                                ),
                                                                content: Tex(
                                                                  locals.houseAddedAndSaved.split('.')[0],
                                                                  con: cntxt,
                                                                ),
                                                                actions: [
                                                                  if (_isClicked)
                                                                    const CircularProgressIndicator(
                                                                      color: AppColors.mainTextDark,
                                                                    )
                                                                  else
                                                                    DialogActions(
                                                                      applyText: 'OK',
                                                                      locals: locals,
                                                                      hasPop: false,
                                                                      onDeny: () => Navigator.of(cntxt).pop(false),
                                                                      onSubmit: () async {
                                                                        Navigator.of(cntxt).pop(value);
                                                                        Navigator.of(context).pop(value);
                                                                        Navigator.of(context).pop(value);
                                                                        context.read<CategsCubit>().fetchCategsorites();
                                                                        await context.read<HouseCubit>().getAllHouses();
                                                                      },
                                                                    ),
                                                                ],
                                                              ),
                                                            );
                                                          });
                                                        },
                                                      );
                                                    } else {
                                                      useState(() {
                                                        _isClicked = false;
                                                      });
                                                      errorToast(locals.sthWentWrong);
                                                    }
                                                  });
                                                } else {
                                                  errorToast(locals.noInternet);
                                                }
                                              });
                                            },
                                          ),
                                  ],
                                ),
                              );
                            });
                          },
                        );
                      } else {
                        errorToast(locals.fillAllBlanks);
                      }
                    },
                    child: Tex(locals.updateHouse, con: context).white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Row pickTime(BuildContext context, TimeOfDay time, bool preventPicking, VoidCallback onTap) {
    var locals = Locals.of(context);
    return Row(
      children: [
        TextButton(
          onPressed: preventPicking ? null : onTap,
          child: Tex(preventPicking ? " ___ : ___ " : '   ${time.format(context)}   ', con: context, size: 18).title,
        ),
        InkWell(
          onTap: () {
            setState(() {
              if (time == enterTime) {
                ignEnterTime = !ignEnterTime;
              } else if (time == leaveTime) {
                ignLeaveTime = !ignLeaveTime;
              }
              time = TimeOfDay.now();
            });
          },
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(AppSizes.pix4),
                child: Icon(preventPicking ? Icons.check_box_outlined : Icons.check_box_outline_blank_outlined),
              ),
              Tex(locals.any, con: context, size: AppSizes.pix16).title,
            ],
          ),
        )
      ],
    );
  }
}

class CategorySelectionPage extends StatelessWidget {
  const CategorySelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    var locals = Locals.of(context);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: TopBar(
        title: locals.category,
      ),
      body: ListView.builder(
        itemCount: categNames(context).length - 1,
        itemBuilder: (context, index) {
          final categId = categNames(context).indexOf(categNames(context)[index + 1]);
          final category = categNames(context)[index + 1];
          return Column(
            children: [
              ListTile(
                leading: SvgAsset(svgs[index + 1], AppColors.mainTextDark),
                title: Text(category),
                onTap: () {
                  Navigator.pop(context, [category, categId]);
                },
              ),
              Divider(color: AppColors.secondaryText.withOpacity(.4), height: 1)
            ],
          );
        },
      ),
    );
  }
}
