import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';

import '/config/config.dart';
import '/logic/cubits/categs/categs_cubit.dart';
import '/logic/cubits/house/house_cubit.dart';
import '/ui/widgets/widgets.dart';
import '../../../../localization/locals.dart';
import '../../../../models/models.dart';
import '../../../style/app_sizes.dart';
import '../../../style/style.dart';
import '../../../widgets/sli.dart';
import '../../add/regions_page.dart';
import '../widgets/widgets.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  String selectedSortingOption = 'saýlanmadyk  ';
  TextEditingController minCtrl = TextEditingController();
  TextEditingController maxCtrl = TextEditingController();
  List<int> roomCounts = [];
  List<int> floorCounts = [];
  int guestNumber = 0;
  List<dynamic> selectedLocations = [];
  List<int> selectedIds = [];
  DateTime? date;
  final DateTime _focusedDay = DateTime.now();
  List<int> selectedFeaturesIndices = [];

  void handleFeaturesSelected(List<int> indices) {
    setState(() {
      selectedFeaturesIndices = indices;
    });
  }

  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    var locals = Locals.of(context);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: TopBar(title: locals.filters),
      body: CustomScrollView(
        slivers: [
          Sli(
            children: [
              Tex(
                locals.price,
                con: context,
                padding: AppSizes.pix10,
              ).title,
              Padding(
                padding: const EdgeInsets.only(bottom: AppSizes.pix8),
                child: SizedBox(
                  height: 45,
                  width: width(context) - 100,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(35, 0, 17, 0),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [LengthLimitingTextInputFormatter(6)],
                            onTapOutside: (event) {
                              FocusManager.instance.primaryFocus?.unfocus();
                            },
                            controller: minCtrl,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: AppColors.background,
                              labelText: locals.minPrice,
                              isDense: true,
                              hintStyle: TextStyle(color: AppColors.secondaryText.withOpacity(.7)),
                              labelStyle: TextStyle(color: AppColors.statusBar.withOpacity(.9)),
                              floatingLabelStyle: const TextStyle(color: AppColors.buttons),
                              alignLabelWithHint: true,
                              border: border(),
                              focusedBorder: focusedBorder(),
                            ),
                          ),
                        ),
                      ),
                      Container(height: 1.5, width: 14, color: AppColors.mainTextDark),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(17, 0, 35, 0),
                          child: TextField(
                            inputFormatters: [LengthLimitingTextInputFormatter(6)],
                            keyboardType: TextInputType.number,
                            onTapOutside: (event) {
                              FocusManager.instance.primaryFocus?.unfocus();
                            },
                            controller: maxCtrl,
                            decoration: InputDecoration(
                                hintStyle: TextStyle(color: AppColors.secondaryText.withOpacity(.7)),
                                labelStyle: TextStyle(color: AppColors.statusBar.withOpacity(.9)),
                                floatingLabelStyle: const TextStyle(color: AppColors.buttons),
                                alignLabelWithHint: true,
                                filled: true,
                                fillColor: AppColors.background,
                                isDense: true,
                                labelText: locals.maxPrice,
                                border: border(),
                                focusedBorder: focusedBorder()),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              divider,
              Pad(
                v: AppSizes.pix10,
                h: AppSizes.pix10,
                child: Row(
                  children: [
                    Tex(locals.sort, con: context, padding: 0).title,
                    const Spacer(),
                    DropdownButton<String>(
                      dropdownColor: Colors.white,
                      underline: const SizedBox(),
                      icon: const Icon(IconlyLight.arrow_down_circle),
                      value: selectedSortingOption == 'saýlanmadyk  ' ? locals.notSelected : selectedSortingOption,
                      focusColor: Colors.transparent,
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.zero,
                      style: const TextStyle(color: Colors.black, fontFamily: robotoRegular),
                      onChanged: (newValue) {
                        setState(() {
                          selectedSortingOption = newValue!;
                        });
                      },
                      items: [
                        locals.notSelected,
                        locals.cheapToExp,
                        locals.expToCheap,
                      ].map((String value) {
                        return DropdownMenuItem<String>(
                          alignment: Alignment.centerLeft,
                          value: value,
                          child: Tex(value, con: context, padding: 0).title,
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              divider,
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: AppSizes.pix10, vertical: AppSizes.pix10),
                dense: true,
                trailing: const Icon(IconlyLight.arrow_right_circle),
                title: Tex(
                  locals.location,
                  con: context,
                  padding: 0,
                ).title,
                subtitle: Text(
                  selectedLocations.isNotEmpty ? selectedLocations.join(', ') : locals.notSelected,
                  maxLines: 1,
                  style: const TextStyle(overflow: TextOverflow.ellipsis),
                ),
                onTap: () async {
                  final List<Cities> selectedLocations = await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RegionsPage()),
                  );
                  setState(() {
                    this.selectedLocations = selectedLocations.expand((element) => [element.name]).toList();
                    selectedIds = selectedLocations.expand((element) => [element.id]).toList();
                  });
                },
              ),
              divider,
              const SizedBox(height: AppSizes.pix10),
              RoomCountFilterPage(
                  onCleared: () => setState(() => roomCounts.clear()),
                  roomCount: roomCounts,
                  onRoomCountChanged: (newCount) {
                    setState(() {
                      if (roomCounts.contains(newCount)) {
                        roomCounts.remove(newCount);
                      } else {
                        roomCounts.add(newCount);
                      }
                      logger(roomCounts);
                    });
                  }),
              const SizedBox(height: AppSizes.pix16),
              FloorCountFilterPage(
                  onCleared: () => setState(() => floorCounts.clear()),
                  floorCount: floorCounts,
                  onFloorCountChanged: (newCount) {
                    setState(() {
                      if (floorCounts.contains(newCount)) {
                        floorCounts.remove(newCount);
                      } else {
                        floorCounts.add(newCount);
                      }
                    });
                  }),
              const SizedBox(height: AppSizes.pix16),
              divider,
              GuestCountWidget(
                  guestNumber: guestNumber,
                  onGuestNumberChanged: (newCount) {
                    setState(() {
                      guestNumber = newCount;
                    });
                  }),
              divider,
              Tex(
                locals.possibilities,
                con: context,
                padding: AppSizes.pix10,
                size: 20,
              ).title,
              FeatureCheckbox(onFeaturesSelected: handleFeaturesSelected),
              const SizedBox(height: AppSizes.pix16),
              // Tex(
              //   locals.whenTravel,
              //   con: context,
              //   padding: AppSizes.pix10,
              //   size: 20,
              // ).title,
              // Theme(
              //     data: ThemeData.light().copyWith(
              //       colorScheme: const ColorScheme.light(primary: AppColors.statusBar),
              //       datePickerTheme: DatePickerThemeData(
              //         todayBackgroundColor: toMtrlStColor(date?.day == DateTime.now().day ? AppColors.statusBar : Colors.transparent),
              //         todayBorder: BorderSide.none,
              //         todayForegroundColor: toMtrlStColor(!(date?.day == DateTime.now().day) ? AppColors.mainTextDark : Colors.white),
              //       ),
              //     ),
              //     child: BlocBuilder<LangCubit, Locale>(
              //       builder: (context, state) {
              //         return TableCalendar(
              //           locale: context.read<LangCubit>().localize(state),
              //           focusedDay: _focusedDay,
              //           firstDay: DateTime.now(),
              //           startingDayOfWeek: StartingDayOfWeek.monday,
              //           lastDay: DateTime(2030),
              //           daysOfWeekHeight: 20,
              //           selectedDayPredicate: (day) => isSameDay(date, day),
              //           onDaySelected: (selectedDay, focusedDay) {
              //             setState(() {
              //               if (isSameDay(date, selectedDay)) {
              //                 date = null;
              //               } else {
              //                 date = selectedDay;
              //               }
              //               _focusedDay = focusedDay;
              //             });
              //           },
              //           calendarStyle: CalendarStyle(
              //             selectedTextStyle: const TextStyle(color: AppColors.mainText),
              //             selectedDecoration: BoxDecoration(
              //               color: AppColors.statusBar,
              //               shape: BoxShape.circle,
              //               border: Border.all(
              //                 color: AppColors.statusBar,
              //               ),
              //             ),
              //             isTodayHighlighted: false,
              //             todayTextStyle: const TextStyle(color: AppColors.mainTextDark),
              //             todayDecoration: BoxDecoration(
              //               color: Colors.transparent,
              //               shape: BoxShape.circle,
              //               border: Border.all(
              //                 color: AppColors.statusBar,
              //               ),
              //             ),
              //           ),
              //           headerStyle: const HeaderStyle(titleCentered: true, formatButtonVisible: false),
              //         );
              //       },
              //     )),
              const SizedBox(
                height: 70,
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: SizedBox(
        width: width(context) - 60,
        height: 34,
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(borderRadius: borderAll10),
          backgroundColor: AppColors.buttons,
          onPressed: _isClicked
              ? null
              : () async {
                  setState(() => _isClicked = true);
                  logger('''
                        minCtrl.text:  "${minCtrl.text}"
                        maxCtrl.text:  "${maxCtrl.text}"
                        selectedIds:  "$selectedIds"
                        roomCount.toString():  "${roomCounts.toString()}"
                        floorCount:  "$floorCounts"
                        guestNumber:  "$guestNumber"
                        selectedFeaturesIndices:  "$selectedFeaturesIndices"
                        date:  "${toSendDate(date)}"
                    ''');

                  await context
                      .read<HouseCubit>()
                      .filterBy(
                        minCtrl.text,
                        maxCtrl.text,
                        selectedIds,
                        roomCounts,
                        floorCounts,
                        guestNumber == 1 ? null : guestNumber,
                        selectedFeaturesIndices,
                        date != null ? toSendDate(date) : null,
                      )
                      .then((value) async {
                    await context.read<CategsCubit>().fetchCategsorites().then((value) => Navigator.pop(context, selectedSortingOption));
                    setState(() => _isClicked = false);
                  });
                },
          child: _isClicked
              ? const CircularProgressIndicator(color: AppColors.white)
              : Tex(
                  locals.find,
                  con: context,
                  col: AppColors.background,
                ).white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      resizeToAvoidBottomInset: false,
    );
  }
}
