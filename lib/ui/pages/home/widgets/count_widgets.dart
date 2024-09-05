import '/config/config.dart';
import '../../../../localization/locals.dart';
import '../../../style/app_sizes.dart';
import '../../../style/style.dart';

class RoomCountAddHouse extends StatelessWidget {
  final int? roomCount;
  final bool isAdding;
  final ValueChanged<int> onRoomCountChanged;

  const RoomCountAddHouse({
    super.key,
    this.roomCount,
    required this.onRoomCountChanged,
    this.isAdding = false,
  });

  @override
  Widget build(BuildContext context) {
    var locals = Locals.of(context);

    return Pad(
      h: AppSizes.pix10,
      v: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Tex(
            locals.roomCount,
            con: context,
            padding: 0,
          ).title,
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(10, (index) {
                return GestureDetector(
                  onTap: () => onRoomCountChanged(index + 1),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    margin: const EdgeInsets.only(right: AppSizes.pix10),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: (index + 1) == roomCount ? borderAll15 : borderAll8,
                      border: Border.all(
                        color: (index + 1) == roomCount ? AppColors.mainTextDark : AppColors.secondaryText,
                      ),
                      color: (index + 1) == roomCount ? AppColors.mainTextDark : Colors.transparent,
                    ),
                    child: Center(
                      child: Text(
                        index == 9 ? '10+' : '${index + 1}',
                        style: TextStyle(
                          color: (index + 1) == roomCount ? AppColors.mainText : AppColors.mainTextDark,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

class FloorCountWidget extends StatelessWidget {
  final int floorCount;
  final bool isAdding;
  final ValueChanged<int> onFloorCountChanged;

  const FloorCountWidget({
    super.key,
    required this.floorCount,
    required this.onFloorCountChanged,
    this.isAdding = false,
  });

  @override
  Widget build(BuildContext context) {
    var locals = Locals.of(context);

    return Pad(
      h: AppSizes.pix10,
      v: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Tex(
            locals.floorCount,
            con: context,
            padding: 0,
          ).title,
          const SizedBox(height: AppSizes.pix8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(15, (index) {
                return GestureDetector(
                  onTap: () => onFloorCountChanged(index + 1),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    margin: const EdgeInsets.only(right: AppSizes.pix10),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: (index + 1) == floorCount ? borderAll15 : borderAll8,
                      border: Border.all(
                        color: (index + 1) == floorCount ? AppColors.mainTextDark : AppColors.secondaryText,
                      ),
                      color: (index + 1) == floorCount ? AppColors.mainTextDark : Colors.transparent,
                    ),
                    child: Center(
                      child: Text(
                        '${index + 1}',
                        style: TextStyle(
                          color: (index + 1) == floorCount ? AppColors.mainText : AppColors.mainTextDark,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

class RoomCountFilterPage extends StatelessWidget {
  final List<int> roomCount;
  final Function() onCleared;
  final ValueChanged<int> onRoomCountChanged;

  const RoomCountFilterPage({
    super.key,
    required this.roomCount,
    required this.onRoomCountChanged,
    required this.onCleared,
  });

  @override
  Widget build(BuildContext context) {
    var locals = Locals.of(context);

    return Pad(
      h: AppSizes.pix10,
      v: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Tex(
            locals.roomCount,
            con: context,
            padding: 0,
          ).title,
          const SizedBox(height: AppSizes.pix8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap: onCleared,
                  child: Container(
                    margin: const EdgeInsets.only(right: AppSizes.pix10),
                    padding: const EdgeInsets.symmetric(horizontal: AppSizes.pix6),
                    height: 33.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: borderAll6,
                      border: Border.all(
                        color: roomCount.isEmpty ? AppColors.mainTextDark : AppColors.secondaryText,
                      ),
                      color: roomCount.isEmpty ? AppColors.mainTextDark : Colors.transparent,
                    ),
                    child: Center(
                      child: Text(
                        locals.notSelected,
                        style: TextStyle(
                          color: roomCount.isEmpty ? AppColors.mainText : AppColors.mainTextDark,
                        ),
                      ),
                    ),
                  ),
                ),
                ...List.generate(10, (index) {
                  return GestureDetector(
                    onTap: () => onRoomCountChanged(index + 1),
                    child: Container(
                      width: 38.0,
                      margin: const EdgeInsets.only(right: AppSizes.pix10),
                      height: 33.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: borderAll6,
                        border: Border.all(
                          color: roomCount.contains(index + 1) ? AppColors.mainTextDark : AppColors.secondaryText,
                        ),
                        color: roomCount.contains(index + 1) ? AppColors.mainTextDark : Colors.transparent,
                      ),
                      child: Center(
                        child: Text(
                          index == 9 ? '10+' : '${index + 1}',
                          style: TextStyle(
                            color: roomCount.contains(index + 1) ? AppColors.mainText : AppColors.mainTextDark,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                })
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FloorCountFilterPage extends StatelessWidget {
  final List<int> floorCount;
  final ValueChanged<int> onFloorCountChanged;
  final Function() onCleared;

  const FloorCountFilterPage({
    super.key,
    required this.floorCount,
    required this.onCleared,
    required this.onFloorCountChanged,
  });

  @override
  Widget build(BuildContext context) {
    var locals = Locals.of(context);

    return Pad(
      h: AppSizes.pix10,
      v: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Tex(
            locals.floorCount,
            con: context,
            padding: 0,
          ).title,
          const SizedBox(height: AppSizes.pix8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap: onCleared,
                  child: Container(
                    margin: const EdgeInsets.only(right: AppSizes.pix10),
                    padding: const EdgeInsets.symmetric(horizontal: AppSizes.pix6),
                    height: 33.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: borderAll6,
                      border: Border.all(
                        color: floorCount.isEmpty ? AppColors.mainTextDark : AppColors.secondaryText,
                      ),
                      color: floorCount.isEmpty ? AppColors.mainTextDark : Colors.transparent,
                    ),
                    child: Center(
                      child: Text(
                        locals.notSelected,
                        style: TextStyle(
                          color: floorCount.isEmpty ? AppColors.mainText : AppColors.mainTextDark,
                        ),
                      ),
                    ),
                  ),
                ),
                ...List.generate(15, (index) {
                  return GestureDetector(
                    onTap: () => onFloorCountChanged(index + 1),
                    child: Container(
                      width: 38.0,
                      margin: const EdgeInsets.only(right: AppSizes.pix10),
                      height: 33.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: borderAll6,
                        border: Border.all(
                          color: floorCount.contains(index + 1) ? AppColors.mainTextDark : AppColors.secondaryText,
                        ),
                        color: floorCount.contains(index + 1) ? AppColors.mainTextDark : Colors.transparent,
                      ),
                      child: Center(
                        child: Text(
                          '${index + 1}',
                          style: TextStyle(
                            color: floorCount.contains(index + 1) ? AppColors.mainText : AppColors.mainTextDark,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                })
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GuestCountWidget extends StatelessWidget {
  final int guestNumber;
  final ValueChanged<int> onGuestNumberChanged;

  const GuestCountWidget({
    super.key,
    required this.guestNumber,
    required this.onGuestNumberChanged,
  });

  @override
  Widget build(BuildContext context) {
    var locals = Locals.of(context);

    return Pad(
      h: AppSizes.pix10,
      v: 0,
      child: Row(
        children: [
          Tex(locals.guestCount, con: context, padding: 0).title,
          const Spacer(),
          CounterWidget(
            count: guestNumber,
            onCountChanged: onGuestNumberChanged,
          ),
          const SizedBox(width: AppSizes.pix20)
        ],
      ),
    );
  }
}

class CounterWidget extends StatelessWidget {
  final int count;
  final ValueChanged<int> onCountChanged;

  const CounterWidget({super.key, required this.count, required this.onCountChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            if (count > 0) onCountChanged(count - 1);
          },
          child: Container(
            decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: borderAll10),
            padding: const EdgeInsets.all(5.0),
            child: const Icon(
              Icons.remove,
              size: 24,
              color: AppColors.mainTextDark,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.fromLTRB(AppSizes.pix12, AppSizes.pix8, AppSizes.pix12, AppSizes.pix8),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: borderAll,
            color: AppColors.background,
          ),
          child: Text(
            count.toString(),
            style: const TextStyle(color: Colors.black, fontFamily: robotoBold, fontSize: 24),
          ),
        ),
        InkWell(
          onTap: () {
            onCountChanged(count + 1);
          },
          child: Container(
            decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: borderAll10),
            padding: const EdgeInsets.all(5.0),
            child: const Icon(
              Icons.add,
              size: 24,
              color: AppColors.mainTextDark,
            ),
          ),
        ),
      ],
    );
  }
}

class FeatureCheckboxes extends StatefulWidget {
  final Function(List<int>) onFeaturesSelected;
  final bool hasCheckBox = true;

  const FeatureCheckboxes({super.key, required this.onFeaturesSelected});

  @override
  FeatureCheckboxesState createState() => FeatureCheckboxesState();
}

class FeatureCheckboxesState extends State<FeatureCheckboxes> with AutomaticKeepAliveClientMixin {
  late List<bool> isCheckedList;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    isCheckedList = List<bool>.filled(feats(context).length, false);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ...List.generate(
            feats(context).length,
            (i) => Padding(
                  padding: const EdgeInsets.only(left: AppSizes.pix16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgAsset(feats(context).keys.elementAt(i), AppColors.mainTextDark, size: 22),
                              const SizedBox(width: 5),
                              Tex(
                                feats(context)[feats(context).keys.elementAt(i)],
                                con: context,
                                weight: FontWeight.w400,
                                size: AppSizes.pix16,
                              ).title,
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      if (widget.hasCheckBox)
                        InkWell(
                          key: UniqueKey(),
                          borderRadius: borderAll,
                          onTap: () {
                            isCheckedList[i] = !isCheckedList[i];
                            widget.onFeaturesSelected(getSelectedFeaturesIndices());
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Icon(isCheckedList[i] ? Icons.check_box_outlined : Icons.check_box_outline_blank_outlined, size: 30),
                          ),
                        ),
                      const SizedBox(width: 20),
                    ],
                  ),
                ))
      ],
    );
  }

  List<int> getSelectedFeaturesIndices() {
    List<int> selectedIndices = [];
    for (int i = 0; i < isCheckedList.length; i++) {
      if (isCheckedList[i]) {
        selectedIndices.add(i + 1);
      }
    }
    return selectedIndices;
  }

  @override
  bool get wantKeepAlive => true;
}

class FeatureCheckbox extends StatefulWidget {
  final Function(List<int>) onFeaturesSelected;
  final bool hasCheckBox;
  final List<int> checkedIds;

  const FeatureCheckbox({super.key, required this.onFeaturesSelected, this.hasCheckBox = true, this.checkedIds = const []});

  @override
  FeatureCheckboxState createState() => FeatureCheckboxState();
}

class FeatureCheckboxState extends State<FeatureCheckbox> with AutomaticKeepAliveClientMixin {
  late List<bool> isCheckedList;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    isCheckedList = List<bool>.filled(feats(context).length, false);
    initializeCheckedItems(widget.checkedIds);
  }

  void initializeCheckedItems(List<int> checkedIds) {
    for (int i = 0; i < isCheckedList.length; i++) {
      if (checkedIds.contains(i + 1)) {
        isCheckedList[i] = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ...List.generate(
          feats(context).length,
          (i) => InkWell(
            key: UniqueKey(),
            borderRadius: borderAll,
            onTap: () {
              setState(() {
                isCheckedList[i] = !isCheckedList[i];
              });
              widget.onFeaturesSelected(getSelectedFeaturesIndices());
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSizes.pix16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgAsset(
                    feats(context).keys.elementAt(i),
                    AppColors.mainTextDark,
                    size: 22,
                  ),
                  const SizedBox(width: 5),
                  Tex(
                    feats(context)[feats(context).keys.elementAt(i)],
                    con: context,
                    weight: FontWeight.w400,
                    size: AppSizes.pix16,
                  ).title,
                  const Spacer(),
                  if (widget.hasCheckBox)
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6.0),
                        child: Icon(
                          isCheckedList[i] ? Icons.check_box_outlined : Icons.check_box_outline_blank_outlined,
                          size: 30,
                          color: isCheckedList[i] ? AppColors.buttons : Colors.grey.shade400,
                        ),
                      ),
                    ),
                  const SizedBox(width: AppSizes.pix10),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  List<int> getSelectedFeaturesIndices() {
    List<int> selectedIndices = [];
    for (int i = 0; i < isCheckedList.length; i++) {
      if (isCheckedList[i]) {
        selectedIndices.add(i + 1);
      }
    }
    return selectedIndices;
  }

  @override
  bool get wantKeepAlive => true;
}
