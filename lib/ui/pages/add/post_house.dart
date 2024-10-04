// ignore_for_file: deprecated_member_use

import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:iconly/iconly.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mekanly_com/logic/cubits/navigator/nav_cubit.dart';
import 'package:mekanly_com/ui/pages/profile/auth/logout_dialog.dart';
import 'package:mekanly_com/ui/pages/profile/my_houses/my_houses.dart';
import 'package:path/path.dart' as path;
import 'package:table_calendar/table_calendar.dart';

import '/config/config.dart';
import '/logic/cubits/auth/auth_cubit.dart';
import '/logic/cubits/region/region_cubit.dart';
import '/models/models.dart';
import '/ui/style/app_sizes.dart';
import '/ui/style/style.dart';
import '/ui/widgets/sli.dart';
import '../../../localization/locals.dart';
import '../../../logic/cubits/categs/categs_cubit.dart';
import '../../../logic/cubits/house/house_cubit.dart';
import '../../../logic/data/net.dart';
import '../../widgets/widgets.dart';
import '../home/widgets/widgets.dart';
import 'regions_page.dart';

class PostHousePage extends StatefulWidget {
  const PostHousePage({super.key, required this.category, required this.categoryID});

  final String category;
  final int categoryID;

  @override
  PostHousePageState createState() => PostHousePageState();
}

class PostHousePageState extends State<PostHousePage> {
  int? chosenCityId;
  String chosenRegion = '';
  List<File?> compressedImages = [];
  TextEditingController descriptionCtrl = TextEditingController();
  TimeOfDay enterTime = const TimeOfDay(hour: 6, minute: 0);
  int floorCount = 0;
  int guestNumber = 0;
  List<File> houseImages = [];
  bool ignEnterTime = false;
  bool ignLeaveTime = false;
  List<File> imageFiles = [];
  bool isClicked = false;
  TimeOfDay leaveTime = const TimeOfDay(hour: 23, minute: 0);
  TextEditingController name = TextEditingController();
  TextEditingController phoneCtrl = TextEditingController();
  TextEditingController priceCtrl = TextEditingController();
  int roomCount = 0;
  List<int> selectedFeaturesIndices = [];
  // String selectedCategory = '';

  String selectedLocation = '';

  bool _acceptTerms = false;
  DateTime _focusedDay = DateTime.now();
  final _formKey = GlobalKey<FormState>();
  List<double> _progressList = [];
  DateTime? _rangeEnd;
  DateTime? _rangeStart;
  DateTime? _selectedDay;
  final bool _value = true;

  @override
  void initState() {
    _selectedDay = _focusedDay;

    super.initState();
  }

  Future<void> pickImages() async {
    var limitReached = Locals.of(context).limitImages;
    final picker = ImagePicker();
    List<XFile> pickedImages = await picker.pickMultiImage();
    if (pickedImages.length > 10) {
      errorToast(limitReached);
      return;
    }

    setState(() {
      houseImages.clear();
      houseImages.addAll(pickedImages.map((e) => File(e.path)).toList());
    });
  }

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
    logger("TOTAL SIZE: ${compressedImages.map((e) => e!.lengthSync() / (1000 * 1000)).toList().reduce((value, element) => value + element)}");
  }

  bool validateAndSaveForm() {
    final FormState form = _formKey.currentState!;
    form.save();

    if (form.validate() &&
        _acceptTerms &&
        name.text.isNotEmpty &&
        chosenCityId != null &&
        roomCount != 0 &&
        // _rangeEnd !=  &&
        // _rangeStart != null &&
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

  void onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
      });
    }
  }

  void onRangeSelected(DateTime? start, DateTime? end, DateTime focusedDay) {
    if (start != null && end != null) {
      final difference = end.difference(start).inDays;
      if (difference > 60) {
        setState(() {
          _selectedDay = null;
          _focusedDay = focusedDay;
          _rangeStart = null;
          _rangeEnd = null;
        });
        errorToast(Locals.of(context).rangeLimit);
      } else {
        setState(() {
          _selectedDay = null;
          _focusedDay = focusedDay;
          _rangeStart = start;
          _rangeEnd = end;
        });
      }
    } else {
      setState(() {
        _selectedDay = null;
        _focusedDay = focusedDay;
        _rangeStart = start;
        _rangeEnd = end;
      });
    }
  }

  void handleFeaturesSelected(List<int> indices) {
    setState(() {
      selectedFeaturesIndices = indices;
    });
  }

  // void chooseCategory() async {
  //   final selectedCategory = await Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => const CategorySelectionPage()),
  //   );
  //   if (selectedCategory != null) {
  //     setState(() {
  //       this.selectedCategory = selectedCategory[0];
  //       // chosenCategId = selectedCategory[1];
  //     });
  //   }
  // }

  void chooseLocation() async {
    final List<Cities> selectedLocations = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const RegionsPage(isFiltering: false)),
    );
    setState(() {
      selectedLocation = selectedLocations[0].name;
      chosenCityId = selectedLocations[0].id;
      chosenRegion = context.read<RegionsCubit>().repo.regions.data.firstWhere((element) => element.id == selectedLocations[0].parentId).name;
    });
  }

  Future<void> selectTime(BuildContext context, TimeOfDay initialTime) async {
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

  void showBackDialog(bool rr) {
    var locals = Locals.of(context);
    if (rr) {
      showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            insetPadding: const EdgeInsets.all(20),
            actionsPadding: const EdgeInsets.all(AppSizes.pix10),
            actionsAlignment: MainAxisAlignment.center,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSizes.pix10),
            ),
            title: Tex(
              locals.reallyGoBack,
              con: ctx,
            ),
            content: Tex(
              locals.ifYouGoBack,
              con: ctx,
            ),
            actions: [
              DialogActions(
                locals: locals,
                onDeny: () => Navigator.of(ctx).pop(),
                onSubmit: () {
                  context.read<NavCubit>().navKey.currentState?.popUntil((route) => route.isFirst);
                },
              ),
            ],
          );
        },
      );
    }
  }

  bool isAllFilled() {
    return _acceptTerms ||
        name.text.isNotEmpty ||
        // chosenCategId != 0 ||
        chosenCityId != null ||
        roomCount != 0 ||
        // guestNumber != 0 ||
        _rangeEnd != null ||
        _rangeStart != null ||
        houseImages.isNotEmpty ||
        // priceCtrl.text.isNotEmpty ||
        _acceptTerms == true;
  }

  Row pickTime(BuildContext context, TimeOfDay time, bool preventPicking, VoidCallback onTap) {
    var locals = Locals.of(context);
    return Row(
      children: [
        TextButton(
          onPressed: preventPicking ? null : onTap,
          child: Tex(preventPicking ? " ___ : ___ " : '   ${time.format(context)}   ', con: context, size: AppSizes.pix16).title,
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

  @override
  Widget build(BuildContext context) {
    var divider = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Divider(color: AppColors.buttons.withOpacity(.2), height: 1),
    );
    var locals = Locals.of(context);
    return PopScope(
      canPop: !isAllFilled(),
      onPopInvoked: (didPop) {
        if (didPop) {
          return;
        }
        showBackDialog(isAllFilled());
      },
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: TopBar(
          title: locals.addingHouse,
          color: Colors.white,
        ),
        body: context.watch<AuthCubit>().state is! AuthSuccess
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Tex(locals.loginFirst, con: context)),
                ],
              )
            : Form(
                key: _formKey,
                child: CustomScrollView(
                  shrinkWrap: true,
                  slivers: [
                    Sli(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: AppSizes.pix10, left: AppSizes.pix12),
                        child: Text(
                          locals.houseName,
                          style: const TextStyle(color: Colors.black, fontFamily: robotoRegular, fontSize: AppSizes.pix20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: AppSizes.pix16),
                        child: TextField(
                          onTapOutside: (event) {
                            FocusScope.of(context).unfocus();
                          },
                          controller: name,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(25),
                          ],
                          style: const TextStyle(
                            color: AppColors.mainTextDark,
                          ),
                          decoration: InputDecoration(
                              hintText: locals.nameHint, isDense: false, hintStyle: const TextStyle(color: AppColors.secondaryText, fontSize: AppSizes.pix16), border: InputBorder.none),
                        ),
                      ),
                      // divider,
                      // ListTile(
                      //   contentPadding: const EdgeInsets.only(left: AppSizes.pix10),
                      //   minVerticalPadding: 0,
                      //   dense: true,
                      //   title: Tex(
                      //     locals.category,
                      //     padding: 0,
                      //     con: context,
                      //   ).title2,
                      //   subtitle: Tex(
                      //     (selectedCategory.isNotEmpty) ? selectedCategory : locals.notSelected,
                      //     con: context,
                      //   ).subtitle,
                      //   onTap: chooseCategory,
                      // ),
                      divider,
                      ListTile(
                        contentPadding: const EdgeInsets.only(left: AppSizes.pix10, top: AppSizes.pix10, bottom: AppSizes.pix10),
                        minVerticalPadding: 0,
                        visualDensity: VisualDensity.compact,
                        dense: true,
                        title: Text(
                          locals.location,
                          style: const TextStyle(color: Colors.black, fontFamily: robotoRegular, fontSize: AppSizes.pix20),
                        ),
                        subtitle: Tex(
                          selectedLocation.isNotEmpty
                              ? (chosenRegion == selectedLocation)
                                  ? selectedLocation
                                  : '$chosenRegion - $selectedLocation'
                              : locals.notSelected,
                          con: context,
                        ).subtitle,
                        onTap: chooseLocation,
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
                        FeatureCheckbox(onFeaturesSelected: handleFeaturesSelected),
                      ]),
                    ),
                    Sli(
                      children: [
                        // Padding(
                        //   padding: const EdgeInsets.all(AppSizes.pix8),
                        //   child: Tex(locals.rules, con: context).title,
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.symmetric(vertical: 10),
                        //   child: Column(
                        //     crossAxisAlignment: CrossAxisAlignment.start,
                        //     children: [
                        //       Tex('     ${locals.enterTime}', con: context, padding: 0, size: AppSizes.pix16).subtitle,
                        //       pickTime(context, enterTime, ignEnterTime, () => selectTime(context, enterTime)),
                        //     ],
                        //   ),
                        // ),
                        // Tex('     ${locals.leaveTime}', con: context, padding: 0, size: AppSizes.pix16).subtitle,
                        // pickTime(context, leaveTime, ignLeaveTime, () => selectTime(context, leaveTime)),
                        // Container(
                        //   margin: const EdgeInsets.only(top: 20),
                        //   width: double.infinity,
                        //   alignment: Alignment.center,
                        //   color: AppColors.primary,
                        //   padding: const EdgeInsets.all(AppSizes.pix4),
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
                        //       firstDay: DateTime.now(),
                        //       lastDay: DateTime.utc(2030),
                        //       focusedDay: _focusedDay,
                        //       selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
                        //       startingDayOfWeek: StartingDayOfWeek.monday,
                        //       onDaySelected: onDaySelected,
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
                        //       onRangeSelected: onRangeSelected,
                        //       rangeEndDay: _rangeEnd,
                        //       headerStyle: const HeaderStyle(titleCentered: true, formatButtonVisible: false),
                        //       rangeSelectionMode: RangeSelectionMode.toggledOn,
                        //     );
                        //   },
                        // ),
                        const SizedBox(height: AppSizes.pix16),
                        GestureDetector(
                          onTap: () async {
                            await pickImages();
                            await compressImages(houseImages);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: AppSizes.pix20),
                            child: DottedBorder(
                              strokeCap: StrokeCap.round,
                              radius: const Radius.circular(AppSizes.pix10),
                              borderType: BorderType.RRect,
                              dashPattern: const [AppSizes.pix10, AppSizes.pix6],
                              child: Container(
                                color: AppColors.background,
                                height: AppSizes.pix150,
                                width: width(context) - 45,
                                child: houseImages.isNotEmpty
                                    ? Stack(
                                        fit: StackFit.expand,
                                        children: [
                                          ClipRRect(
                                            borderRadius: borderAll10,
                                            child: Image.file(
                                              houseImages[0],
                                              fit: BoxFit.fitWidth,
                                            ),
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
                                          Padding(
                                            padding: const EdgeInsets.only(right: 10),
                                            child: Text(
                                              locals.insertImage,
                                              style: const TextStyle(color: Colors.black, fontFamily: robotoBold, fontSize: 24),
                                            ),
                                          ),
                                          const Icon(
                                            IconlyLight.image,
                                            size: AppSizes.pix48,
                                            color: Colors.black38,
                                          ),
                                        ],
                                      ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: AppSizes.pix10),
                        houseImages.isNotEmpty
                            ? SizedBox(
                                height: 170,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemExtent: 170,
                                  physics: const BouncingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  itemCount: imageFiles.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(left: 15, top: 10),
                                      child: ClipRRect(
                                        borderRadius: borderAll10,
                                        clipBehavior: Clip.hardEdge,
                                        child: Stack(
                                          children: [
                                            Positioned.fill(
                                              child: Image.file(
                                                imageFiles[index],
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Center(
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    // color: AppColors.black.withOpacity(.4),
                                                    // color: AppColors.secondary.withOpacity(0.8),
                                                    borderRadius: borderAll),
                                                child: _progressList[index] == 1
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
                                                    final originalFileName = path.basenameWithoutExtension(imageFiles[index].path);
                                                    final compressedFileName = '${originalFileName}_out';
                                                    compressedImages.removeWhere((element) {
                                                      final elementFileName = path.basenameWithoutExtension(element!.path);
                                                      logger("CONTAINS: ${elementFileName == compressedFileName}");
                                                      return elementFileName == compressedFileName;
                                                    });
                                                    imageFiles.removeAt(index);
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
                              )
                            : const SizedBox.shrink(),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: borderAll10,
                          ),
                          margin: const EdgeInsets.fromLTRB(AppSizes.pix16, AppSizes.pix10, AppSizes.pix16, AppSizes.pix8),
                          child: TextField(
                            onTapOutside: (event) {
                              FocusScope.of(context).unfocus();
                            },
                            inputFormatters: [LengthLimitingTextInputFormatter(250)],
                            controller: descriptionCtrl,
                            decoration: InputDecoration(
                              hintText: locals.description,
                              hintStyle: const TextStyle(color: Colors.grey, fontFamily: robotoBold, fontSize: 18),
                              filled: true,
                              fillColor: AppColors.secondaryText.withOpacity(.3),
                              border: OutlineInputBorder(
                                borderRadius: borderAll10,
                                borderSide: const BorderSide(color: Colors.grey, width: 2),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: borderAll10,
                                borderSide: const BorderSide(color: Colors.black, width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: borderAll10,
                                borderSide: const BorderSide(
                                  color: AppColors.primary,
                                  width: 2,
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: borderAll10,
                                borderSide: const BorderSide(
                                  color: Colors.red,
                                  width: 2,
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: borderAll10,
                                borderSide: const BorderSide(color: Colors.red, width: 2),
                              ),
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
                                Tex('${locals.dailyPrice} :   ', con: context).title,
                                SizedBox(
                                  width: AppSizes.pix100,
                                  child: TextField(
                                    onTapOutside: (event) {
                                      FocusScope.of(context).unfocus();
                                    },
                                    controller: priceCtrl,
                                    inputFormatters: [LengthLimitingTextInputFormatter(6)],
                                    textAlignVertical: TextAlignVertical.top,
                                    decoration: const InputDecoration(
                                      isDense: true,
                                      contentPadding: EdgeInsets.only(bottom: AppSizes.pix6),
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
                              Tex('${locals.yourPhone} :  ', con: context, padding: AppSizes.pix2).title,
                              Expanded(
                                flex: 5,
                                child: TextFormField(
                                  inputFormatters: [LengthLimitingTextInputFormatter(8)],
                                  controller: phoneCtrl,
                                  textAlignVertical: TextAlignVertical.center,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    hintText: 'xx - xx - xx - xx',
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
                              Expanded(flex: 1, child: Container())
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: AppSizes.pix10,
                            top: AppSizes.pix30,
                            bottom: AppSizes.pix100,
                          ),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColors.black,
                                ),
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    locals.readAndAccept,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(color: Colors.black, fontFamily: robotoSemiBold, fontSize: AppSizes.pix16),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Switch.adaptive(
                                    value: _acceptTerms,
                                    activeColor: AppColors.buttons,
                                    onChanged: (newValue) => setState(() => _acceptTerms = newValue),
                                  ),
                                ),
                                // Padding(
                                //   padding: const EdgeInsets.all(AppSizes.pix6),
                                //   child: InkWell(
                                //     onTap: () {
                                //       setState(() {
                                //         _acceptTerms = !_acceptTerms;
                                //       });
                                //     },
                                //     child: Icon(_acceptTerms ? Icons.check_box_outlined : Icons.check_box_outline_blank_outlined),
                                //   ),
                                // ),
                                // Expanded(
                                //   child: InkWell(
                                //     onTap: () => go(context, const TermsAndConditions()),
                                //     child: SingleChildScrollView(
                                //       scrollDirection: Axis.horizontal,
                                //       child: Tex(locals.readAndAccept, con: context).linkedText,
                                //     ),
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
        floatingActionButton: Visibility(
          visible: MediaQuery.of(context).viewInsets.bottom == 0.0,
          child: SizedBox(
            width: width(context) - 40,
            child: FloatingActionButton(
              mini: true,
              shape: RoundedRectangleBorder(borderRadius: borderAll10),
              backgroundColor: AppColors.black,
              onPressed: () {
                if (_formKey.currentState != null && validateAndSaveForm()) {
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
                              isClicked ? locals.pleaseWait : locals.confirm,
                              con: ctx,
                            ),
                            content: Row(
                              children: [
                                if (isClicked)
                                  const CircularProgressIndicator(
                                    color: AppColors.mainTextDark,
                                  ),
                                Expanded(
                                  child: Tex(
                                    isClicked ? "${locals.workinOn} ${locals.pleaseWait}" : locals.doUWantToAdd,
                                    con: ctx,
                                  ),
                                ),
                              ],
                            ),
                            actions: [
                              isClicked
                                  ? Container()
                                  : DialogActions(
                                      locals: locals,
                                      onDeny: () => Navigator.of(ctx).pop(),
                                      onSubmit: () {
                                        Net.checkInternet().then((value) {
                                          if (value) {
                                            successToast(locals.workinOn);
                                            useState(() {
                                              isClicked = true;
                                            });

                                            String? dayEnterTime = ignEnterTime ? null : enterTime.format(context);
                                            String? dayLeaveTime = ignLeaveTime ? null : leaveTime.format(context);

                                            Map<String, dynamic> data = {
                                              "name": name.text,
                                              "category_id": widget.categoryID.toString(),
                                              "location_id": chosenCityId.toString(),
                                              "room_number": roomCount.toString(),
                                              "floor_number": floorCount.toString(),
                                              "guest_number": guestNumber.toString(),
                                              // "enter_time": toSendDate(_rangeStart),
                                              "enter_time": toSendDate(DateTime.now()),
                                              // "leave_time": toSendDate(_rangeEnd),
                                              //add one year leave_Time
                                              "leave_time": toSendDate(DateTime.now().add(const Duration(days: 365))),
                                              "description": descriptionCtrl.text,
                                              "price": priceCtrl.text,
                                              "bron_number": "+993${phoneCtrl.text}",
                                            };
                                            if (dayEnterTime != null) {
                                              data["day_enter_time"] = dayEnterTime;
                                            }

                                            if (dayLeaveTime != null) {
                                              data["day_leave_time"] = dayLeaveTime;
                                            }
                                            if (selectedFeaturesIndices.isNotEmpty) {
                                              data["possibilities"] = selectedFeaturesIndices.toString();
                                            }

                                            logger(mapToString(data));

                                            context
                                                .read<HouseCubit>()
                                                .tryAddHouse(
                                                  data: data,
                                                  imagePaths: compressedImages.map((e) {
                                                    if (e != null) {
                                                      return e.path;
                                                    } else {
                                                      logger('ELSED');
                                                      return e!.path;
                                                    }
                                                  }).toList(),
                                                )
                                                .then((value) async {
                                              if (value) {
                                                useState(() {
                                                  isClicked = false;
                                                });

                                                showDialog(
                                                  barrierDismissible: false,
                                                  context: ctx,
                                                  builder: (cntxt) {
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
                                                          locals.houseAddedAndSaved,
                                                          con: cntxt,
                                                        ),
                                                        actions: [
                                                          if (isClicked)
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
                                                                context.read<NavCubit>().navKey.currentState?.popUntil((route) => route.isFirst);
                                                                go(context, const MyHouses());
                                                                cntxt.read<CategsCubit>().fetchCategsorites();
                                                                await cntxt.read<HouseCubit>().getAllHouses();
                                                              },
                                                            ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                );
                                              } else {
                                                useState(() {
                                                  isClicked = false;
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
              child: Text(
                locals.confirm,
                style: const TextStyle(color: Colors.white, fontFamily: robotoBold, fontSize: 24),
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      ),
    );
  }
}
