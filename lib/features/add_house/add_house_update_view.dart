// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gen/gen.dart';
import 'package:image_picker/image_picker.dart';
import '../../core/components/app_bar/app_bar.dart';
import '../../core/components/app_btn.dart';
import '../../core/components/app_text.dart';
import '../../core/components/inputs/app_input.dart';
import '../../core/components/inputs/phone_filed.dart';
import '../../core/components/loader.dart';
import '../../localization/extensions.dart';
import '../../product/base/base_status/base_status.dart';
import '../../product/constants/constants.dart';
import '../../product/helpers/helpers.dart';
import '../../product/injection/injector.dart';
import '../../remote/entities/global_options/global_options.dart';
import '../../remote/entities/house_detail/house_detail_response.dart' hide Location;
import '../../remote/repositories/add_house/house_crud.dart';
import '../../remote/response_error.dart';
import '../../utils/api_provider.dart';
import '../../utils/extensions.dart';
import '../house_filters/widgets/option_categories_modal_sheet.dart';
import '../house_filters/widgets/option_chip_widget.dart';
import '../house_filters/widgets/option_holder_switcher.dart';
import '../house_filters/widgets/option_locations_modal_sheet.dart';
import '../house_filters/widgets/options_modal_dialog.dart';
import '../house_filters/widgets/titled_selector_widget.dart';
import '../house_filters/widgets/titled_switcher.dart';
import '../house_filters/widgets/type_selector_widget.dart';
import '../menu/widgets/web_view_screen.dart';
import 'cubit/add_house_cubit.dart';
import 'widgets/dialogs.dart';
import 'widgets/image_picker_widget.dart';
import 'widgets/privice_widget.dart';
import 'widgets/selected_images_widget.dart';

enum AddHouseTypeUpdate {
  house,
  office,
}

class AddHouseViewUpdate extends StatefulWidget {
  const AddHouseViewUpdate({super.key, this.options, this.house});

  static const routePath = '/add-house-view';
  static const routeName = 'add-house-view';

  static Widget builder(
    BuildContext context, {
    GlobalOptions? options,
    HouseData? house,
  }) {
    final bloc = injector<AddHouseCubit>();
    return BlocProvider(
      create: (context) => bloc,
      child: AddHouseViewUpdate(
        options: options,
        house: house,
      ),
    );
  }

  final GlobalOptions? options;
  final HouseData? house;

  @override
  State<AddHouseViewUpdate> createState() => _AddHouseViewState();
}

class _AddHouseViewState extends State<AddHouseViewUpdate> {
  final ImagePicker _picker = ImagePicker();
  bool initDone = false;

  AddHouseTypeUpdate type = AddHouseTypeUpdate.house;

  List<Location> locations = [];
  List<CategoryHouse> categories = [];

  @override
  void initState() {
    super.initState();
    if (widget.options != null) {
      init(widget.options);
    }
    // print(widget.house?.toJson());
    if (widget.house != null) {
      _loadHouseData(widget.house!);
    }
  }

  void _loadHouseData(HouseData house) {
    nameController.text = house.name ?? '';
    descriptionController.text = house.description ?? '';
    priceController.text = house.price?.toString() ?? '';
    areaController.text = house.area?.toString() ?? '';
    final rawNumber = house.bronNumber ?? '';
    final cleanedNumber = rawNumber.replaceFirst('+993', '').replaceAll('+993', '');
    phoneController.text = cleanedNumber;
    _hashtags = house.hashtag;
    canWriteComment = house.writeComment == 1 ? 1 : 0;
    canExclusive = house.exclusive == 1 ? 1 : 0;

    fromHolder = house.who == 'Eýesinden';

    if (widget.options != null && house.categoryId != null) {
      final category = widget.options!.categoryHouses.firstWhereOrNull(
        (c) => c.id == house.categoryId,
      );
      if (category != null) {
        currentCategory = [category];
        categories = widget.options!.categoryHouses.map((c) {
          return c.copyWith(selected: c.id == category.id);
        }).toList();

        // Tip belirleme (house/office)
        type = categories.indexOf(category) > 2 ? AddHouseTypeUpdate.office : AddHouseTypeUpdate.house;
      }
    }

    // Lokasyon seçimi
    if (widget.options != null && house.location != null) {
      final location = widget.options!.locations.firstWhereOrNull(
        (l) => l.id == house.location!.id,
      );
      if (location != null) {
        currentLoc = [location];
        locations = widget.options!.locations.map((l) {
          return l.copyWith(hasSelectedChild: l.id == location.id);
        }).toList();
      }
    }

    // Kat bilgileri
    if (widget.options != null) {
      floorCounts = widget.options!.floorCountHouse?.map((f) {
        return f.copyWith(
          // ignore: avoid_bool_literals_in_conditional_expressions
          isSelected: house.floorNumber != null ? f.count == house.floorNumber.toString() : false,
        );
      }).toList();

      roomCounts = widget.options!.roomCountHouse?.map((r) {
        return r.copyWith(
          // ignore: avoid_bool_literals_in_conditional_expressions
          isSelected: house.roomNumber != null ? r.count == house.roomNumber.toString() : false,
        );
      }).toList();

      levelCounts = widget.options!.levelCountHouse?.map((l) {
        return l.copyWith(
          // ignore: avoid_bool_literals_in_conditional_expressions
          isSelected: house.levelNumber != null ? l.count == house.levelNumber.toString() : false,
        );
      }).toList();
    }

    // Mümkünçilikler
    if (widget.options != null && house.possibilities != null) {
      possibilityOptionModel = BaseOptionModel(
        type: OptionTypes.possibility,
        possibilities: widget.options!.possibility.map((p) {
          return p.copyWith(
            selected: house.possibilities!.any((hp) => hp.id == p.id),
          );
        }).toList(),
        selectedPossibilities: house.possibilities!
            .map(
              (p) => OptionsPossibility(
                id: p.id!,
                name: p.name!,
                selected: true,
              ),
            )
            .toList(),
      );
    }

    // Emlak tipi (sadece evler için)
    if (type == AddHouseTypeUpdate.house && widget.options != null && house.propertyType != null) {
      final updatedPropertyTypes = widget.options!.propertyType.map((p) {
        return p.copyWith(
          selected: p.id == house.propertyType!.id,
        );
      }).toList();
      propertyOptionModel = BaseOptionModel(
        type: OptionTypes.property,
        propertyTypes: updatedPropertyTypes,
        selectedPropertyTypes: updatedPropertyTypes.where((p) => p.selected).toList(),
      );
    }

    // Remont tipi (sadece evler için)
    if (type == AddHouseTypeUpdate.house && widget.options != null && house.repairType != null) {
      final updatedRepairTypes = widget.options!.repairType.map((r) {
        return r.copyWith(
          selected: r.id == house.repairType!.id,
        );
      }).toList();
      repairOptionModel = BaseOptionModel(
        type: OptionTypes.repair,
        repairTypes: updatedRepairTypes,
        selectedRepairTypes: updatedRepairTypes.where((r) => r.selected).toList(),
      );
    }

    // Resimleri yükle (eğer cubit'te bir yönteminiz varsa)
    if (house.images != null && house.images!.isNotEmpty) {
      context.read<AddHouseCubit>().loadExistingImages(house.images!);
    }
    setState(() {});
  }

  final TextEditingController priceController = TextEditingController();
  final TextEditingController areaController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  List<Location>? currentLoc;
  List<CategoryHouse>? currentCategory;
  List<PropertyType>? currentPropertyTypes;
  int canWriteComment = 0;
  int canExclusive = 0;
  bool acceptedPrivacy = false;
  bool? fromHolder;
  BaseOptionModel? propertyOptionModel;
  BaseOptionModel? repairOptionModel;
  BaseOptionModel? possibilityOptionModel;
  List<HouseFloorCount>? floorCounts;
  List<HouseFloorCount>? roomCounts;
  List<HouseFloorCount>? levelCounts;
  String? _hashtags;

  void _showHashtagDialog(BuildContext context) {
    bool selectedHashtag = false;
    final hashtagController = TextEditingController();
    final tempHashtags = _hashtags?.split(' ').where((tag) => tag.isNotEmpty).toList() ?? [];
    // ignore: inference_failure_on_function_invocation
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.white,
          insetPadding: EdgeInsets.all(20.w),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: StatefulBuilder(
            builder: (context, setState) {
              return SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(16.w),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        context.translation.hashtag_push,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromARGB(255, 34, 34, 34),
                        ),
                      ),
                      SizedBox(height: 16.h),
                      TextField(
                        controller: hashtagController,
                        decoration: InputDecoration(
                          hintText: context.translation.hashtag,
                          hintStyle: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.grey[600],
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide: BorderSide(color: Colors.grey[300]!),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 12.w,
                            vertical: 10.h,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.add_circle,
                              color: ColorName.blueish,
                              size: 24.r,
                            ),
                            onPressed: () {
                              if (hashtagController.text.trim().isNotEmpty && tempHashtags.length < 5) {
                                var hashtag = hashtagController.text.trim();
                                if (!hashtag.startsWith('#')) {
                                  hashtag = '#$hashtag';
                                  selectedHashtag = true;
                                }
                                tempHashtags.add(hashtag);
                                hashtagController.clear();
                                setState(() {});
                              }
                            },
                          ),
                        ),
                        onChanged: (text) {
                          if (text.endsWith(' ')) {
                            if (hashtagController.text.trim().isNotEmpty && tempHashtags.length < 5) {
                              var hashtag = hashtagController.text.trim();
                              if (!hashtag.startsWith('#')) {
                                hashtag = '#$hashtag';
                              }
                              tempHashtags.add(hashtag);
                              hashtagController.clear();
                              setState(() {});
                            }
                          }
                        },
                      ),
                      SizedBox(height: 8.h),

                      // Counter
                      Row(
                        children: [
                          Text(
                            '${tempHashtags.length}/5',
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: tempHashtags.length >= 5 ? Colors.red : Colors.grey,
                            ),
                          ),
                          10.boxW,
                          if (tempHashtags.isEmpty)
                            Text(
                              context.translation.help_hashtag,
                              style: TextStyle(fontSize: 12.sp, color: selectedHashtag ? Colors.red : ColorName.textBlue),
                            ),
                        ],
                      ),
                      SizedBox(height: 12.h),

                      // Hashtag chips
                      if (tempHashtags.isNotEmpty)
                        Wrap(
                          spacing: 6.w,
                          runSpacing: 6.h,
                          children: tempHashtags.map((hashtag) {
                            return Chip(
                              label: Text(
                                hashtag,
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: ColorName.blueish,
                                ),
                              ),
                              backgroundColor: Colors.blue[50],
                              deleteIcon: Icon(
                                Icons.close,
                                size: 16.r,
                                color: ColorName.blueish,
                              ),
                              onDeleted: () {
                                tempHashtags.remove(hashtag);
                                setState(() {});
                              },
                            );
                          }).toList(),
                        ),

                      SizedBox(height: 16.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text(
                              context.translation.cancel,
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                          SizedBox(width: 8.w),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: ColorName.blueish,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 16.w,
                                vertical: 8.h,
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                _hashtags = tempHashtags.join(' ');
                              });
                              Navigator.pop(context);
                            },
                            child: Text(
                              context.translation.send,
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

  void init(GlobalOptions? options) {
    if (options == null) {
      return;
    }

    locations = options.locations;
    categories = options.categoryHouses;
    floorCounts = options.floorCountHouse;
    roomCounts = options.roomCountHouse;
    levelCounts = options.levelCountHouse;

    propertyOptionModel = BaseOptionModel(
      type: OptionTypes.property,
      propertyTypes: List.of(options.propertyType),
      selectedPropertyTypes: List.of(options.selectedPropertyType ?? []),
    );
    repairOptionModel = BaseOptionModel(
      type: OptionTypes.repair,
      repairTypes: List.of(options.repairType),
      selectedRepairTypes: List.of(options.selectedRepairType ?? []),
    );
    possibilityOptionModel = BaseOptionModel(
      type: OptionTypes.possibility,
      possibilities: List.of(options.possibility),
      selectedPossibilities: List.of(options.selectedPossibility ?? []),
    );

    initDone = true;

    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();

    nameController.dispose();
    priceController.dispose();
    areaController.dispose();
    phoneController.dispose();
    descriptionController.dispose();
  }

  final houseService = HouseService();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddHouseCubit, AddHouseState>(
      listener: (context, state) async {
        if (state.addHouseStatus.isLoading && context.mounted) {
          await TitledLoadingDialog.show(context);
        }

        if (context.mounted && state.addHouseStatus.isFailure) {
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          }
          Helpers.showToastInfo(
            context,
            state.addHouseStatus.maybeWhen(
              orElse: () => '',
              failure: (e) {
                return e.getErrorMessage(context);
              },
            ),
          );
        }

        if (context.mounted && state.addHouseStatus.isSuccess) {
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          }
          final ok = await ToNotifyUser.show(context);
          if ((ok ?? false) && context.mounted) {
            Navigator.pop(context, true);
          }
        }
      },
      builder: (context, state) {
        final isSelecting = state.pickImageStatus;

        return Stack(
          children: [
            Scaffold(
              backgroundColor: Colors.white,
              appBar: CustomAppBar.base(title: context.translation.correction),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 12,
                  ).w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText.s14w400BdM(
                        context.translation.name,
                        fontSize: 15.sp,
                        fontFamily: StringConstants.roboto,
                      ),
                      AppInput(
                        controller: nameController,
                        hintText: context.translation.write_short_name_of_your_house,
                      ),
                      8.boxH,
                      ListTile(
                        dense: true,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 4).w,
                        minVerticalPadding: 0,
                        title: AppText.s14w400BdM(
                          context.translation.section,
                          fontSize: 15.sp,
                          fontFamily: StringConstants.roboto,
                        ),
                        subtitle: AppText.s10w400LbS(
                          (currentCategory?.isEmpty ?? true) ? (widget.house?.categoryName ?? context.translation.unselected) : currentCategory?.map((e) => e.name).join(', ') ?? '',
                          color: const Color(0xff717171),
                          fontFamily: StringConstants.roboto,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                        ),
                        onTap: () async {
                          final updated = await OptionCategoryModalBottomSheet.show(
                            context,
                            categories: categories,
                            isSingle: true,
                          );

                          if (updated != null) {
                            setState(() {
                              categories = List<CategoryHouse>.from(updated);
                              final selected = updated.getSelected;
                              if (selected != null) {
                                type = updated.indexOf(selected) > 2 ? AddHouseTypeUpdate.office : AddHouseTypeUpdate.house;
                              }
                              currentCategory = List.of(updated.getAllSelected ?? []);
                            });
                          }
                        },
                      ),
                      Divider(
                        height: 1,
                        endIndent: 6.w,
                        indent: 6.w,
                        color: const Color(0xffDCDCDC),
                      ),
                      ListTile(
                        dense: true,
                        minVerticalPadding: 0,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 4).w,
                        title: AppText.s14w400BdM(
                          context.translation.location,
                          fontSize: 15.sp,
                          fontFamily: StringConstants.roboto,
                        ),
                        subtitle: AppText.s10w400LbS(
                          (currentLoc?.isEmpty ?? true) ? (widget.house?.location?.name ?? context.translation.unselected) : currentLoc?.map((e) => e.name).join(', ') ?? '',
                          color: const Color(0xff717171),
                          fontFamily: StringConstants.roboto,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                        ),
                        onTap: () async {
                          final updated = await OptionModalBottomSheet.showOptionModal(
                            context,
                            locations: locations,
                            isSingle: true,
                          );

                          if (updated != null) {
                            setState(() {
                              locations = List<Location>.from(updated);
                              currentLoc =
                                  // ignore: lines_longer_than_80_chars
                                  List<Location>.from(
                                updated.getAllSelected ?? [],
                              );
                            });
                          }
                        },
                      ),
                      Divider(
                        height: 1,
                        endIndent: 6.w,
                        indent: 6.w,
                        color: const Color(0xffDCDCDC),
                      ),
                      8.boxH,
                      TitledSelectorView(
                        title: context.translation.floor_number_of_the_building,
                        padding: EdgeInsets.zero,
                        list: levelCounts ?? [],
                        valueChanged: (value) {
                          final list = List<HouseFloorCount>.from(levelCounts ?? []);
                          final emptied = list.map((e) => e.copyWith(isSelected: false)).toList();
                          final updated = List<HouseFloorCount>.from(emptied).update(
                            value.index,
                            value,
                          );

                          setState(() {
                            levelCounts = List.of(updated);
                          });
                        },
                      ),
                      6.boxH,
                      TitledSelectorView(
                        title: context.translation.room_number,
                        padding: EdgeInsets.zero,
                        list: roomCounts ?? [],
                        valueChanged: (value) {
                          final list = List<HouseFloorCount>.from(roomCounts ?? []);
                          final emptied = list.map((e) => e.copyWith(isSelected: false)).toList();
                          final updated = List<HouseFloorCount>.from(emptied).update(
                            value.index,
                            value,
                          );

                          setState(() {
                            roomCounts = List.of(updated);
                          });
                        },
                      ),
                      6.boxH,
                      TitledSelectorView(
                        padding: EdgeInsets.zero,
                        title: context.translation.floor_number,
                        list: floorCounts ?? [],
                        valueChanged: (value) {
                          final list = List<HouseFloorCount>.from(floorCounts ?? []);
                          final emptied = list.map((e) => e.copyWith(isSelected: false)).toList();
                          final updated = List<HouseFloorCount>.from(emptied).update(
                            value.index,
                            value,
                          );

                          setState(() {
                            floorCounts = List.of(updated);
                          });
                        },
                      ),
                      16.boxH,
                      ImagePickerWidget(
                        onTap: () {
                          if (!state.pickImageStatus.isLoading) {
                            context.read<AddHouseCubit>().pickAndProcessImages(picker: _picker);
                          }
                        },
                        pickedImages: state.pickedImages,
                      ),
                      if (state.pickedImages?.isNotEmpty ?? false) ...[
                        10.boxH,
                        SelectedImagesWidget(
                          pickedImages: state.pickedImages,
                          onRemove: (value) {
                            context.read<AddHouseCubit>().removeImage(value);
                          },
                        ),
                      ],
                      12.boxH,
                      const Divider(
                        height: 1,
                        color: Color(0xffDCDCDC),
                      ),
                      10.boxH,
                      TypeSelectorWidget(
                        padding: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 14,
                        ).w,
                        title: context.translation.mumkincilikler,
                        selectedItems: possibilityOptionModel?.selectedPossibilities?.map((p) {
                          return OptionChipWidget(
                            title: p.name,
                            icon: p.buildIcon,
                          );
                        }).toList(),
                        onTap: () async {
                          if (possibilityOptionModel == null) return;
                          final updated = await showModalOptions(
                            context,
                            text: context.translation.mumkincilikler,
                            model: possibilityOptionModel!,
                            isSingle: true,
                          );

                          if (updated != null) {
                            possibilityOptionModel = updated;
                            setState(() {});
                          }
                        },
                      ),
                      12.boxH,
                      if (type == AddHouseTypeUpdate.house) ...[
                        TypeSelectorWidget(
                          padding: const EdgeInsets.symmetric(
                            vertical: 4,
                            horizontal: 14,
                          ).w,
                          title: context.translation.remont,
                          onTap: () async {
                            if (repairOptionModel == null) return;
                            final updated = await showModalOptions(
                              context,
                              text: context.translation.remont_gorn,
                              model: repairOptionModel!,
                              isSingle: true,
                            );

                            if (updated != null) {
                              repairOptionModel = updated;
                              setState(() {});
                            }
                          },
                          selectedItems: repairOptionModel?.selectedRepairTypes?.map((p) {
                            return OptionChipWidget(
                              title: p.name,
                              selected: p.selected,
                            );
                          }).toList(),
                        ),
                        12.boxH,
                        TypeSelectorWidget(
                          padding: const EdgeInsets.symmetric(
                            vertical: 4,
                            horizontal: 14,
                          ).w,
                          title: context.translation.house_type,
                          onTap: () async {
                            if (propertyOptionModel == null) return;
                            final updated = await showModalOptions(
                              context,
                              text: context.translation.house_type,
                              model: propertyOptionModel!,
                              isSingle: true,
                            );

                            if (updated != null) {
                              propertyOptionModel = updated;
                              setState(() {});
                            }
                          },
                          selectedItems: propertyOptionModel?.selectedPropertyTypes?.map((p) {
                            return OptionChipWidget(
                              title: p.name,
                              icon: p.buildIcon,
                              selected: p.selected,
                            );
                          }).toList(),
                        ),
                      ],
                      10.boxH,
                      AppInput(
                        hintText: context.translation.house_discription,
                        controller: descriptionController,
                      ),
                      10.boxH,
                      OptionHolderSwitcher(
                        padding: EdgeInsets.zero,
                        isOwner: fromHolder,
                        onChanged: (value) {
                          setState(() {
                            fromHolder = value;
                          });
                        },
                      ),
                      10.boxH,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          AppText.s14w400BdM(
                            context.translation.area,
                            fontSize: 16.sp,
                            fontFamily: StringConstants.roboto,
                          ),
                          6.boxW,
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 110.w,
                                child: AppInput(
                                  textAlign: TextAlign.center,
                                  controller: areaController,
                                  type: TextInputType.number,
                                ),
                              ),
                              6.boxW,
                              AppText.s14w400BdM(
                                'm²',
                                fontSize: 16.sp,
                                fontFamily: StringConstants.roboto,
                              ),
                            ],
                          ),
                        ],
                      ),
                      5.boxH,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          AppText.s14w400BdM(
                            context.translation.price,
                            fontSize: 16.sp,
                            fontFamily: StringConstants.roboto,
                          ),
                          6.boxW,
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 100.w,
                                child: AppInput(
                                  textAlign: TextAlign.center,
                                  type: TextInputType.number,
                                  controller: priceController,
                                ),
                              ),
                              6.boxW,
                              AppText.s14w400BdM(
                                'TMT',
                                fontSize: 16.sp,
                                fontFamily: StringConstants.roboto,
                              ),
                            ],
                          ),
                        ],
                      ),
                      5.boxH,
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          AppText.s14w400BdM(
                            context.translation.your_phone_number,
                            fontSize: 16.sp,
                            fontFamily: StringConstants.roboto,
                          ),
                          12.boxW,
                          Expanded(
                            child: PhoneFiled(
                              controller: phoneController,
                            ),
                          ),
                        ],
                      ),
                      16.boxH,
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13).r,
                          color: const Color(0xffF6F6F6),
                        ),
                        padding: const EdgeInsets.fromLTRB(12, 8, 12, 8).w,
                        child: Row(
                          children: [
                            Expanded(
                              child: AppText.s12w400BdS(
                                _hashtags?.isEmpty ?? true ? '#${context.translation.hashtag}' : _hashtags!,
                                fontFamily: StringConstants.roboto,
                                color: const Color(0xff555555),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => _showHashtagDialog(context),
                              child: SizedBox(
                                width: 18.w,
                                height: 18.w,
                                child: Assets.icons.icHash.svg(package: 'gen'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      16.boxH,
                      TitledSwitcherWidget(
                        padding: EdgeInsets.zero,
                        onChanged: (value) {
                          setState(() {
                            canExclusive = value ? 1 : 0;
                          });
                        },
                        showIcon: true,
                        title: context.translation.only_on_mekanly,
                        accepted: canExclusive == 1,
                      ),
                      10.boxH,
                      TitledSwitcherWidget(
                        padding: EdgeInsets.zero,
                        onChanged: (value) {
                          setState(() {
                            canWriteComment = value ? 1 : 0;
                          });
                        },
                        title: context.translation.users_can_write_comments,
                        accepted: canWriteComment == 1,
                      ),
                      10.boxH,
                      PrivacyNoticeBox(
                        onTermsTap: () {
                          Navigator.push(
                            context,
                            // ignore: inference_failure_on_instance_creation
                            MaterialPageRoute(
                              builder: (context) => WebViewScreen(
                                url: '${ApiProvider().baseUrl}/rules/${Localizations.localeOf(context).languageCode}',
                                title: context.translation.ul_duz,
                              ),
                            ),
                          );
                        },
                        onPrivacyTap: () {
                          Navigator.push(
                            context,
                            // ignore: inference_failure_on_instance_creation
                            MaterialPageRoute(
                              builder: (context) => WebViewScreen(
                                url: '${ApiProvider().baseUrl}/privacypolicy/${Localizations.localeOf(context).languageCode}',
                                title: context.translation.privacy_policy,
                              ),
                            ),
                          );
                        },
                        onPrivacyAccepted: (value) {
                          setState(() {
                            acceptedPrivacy = value;
                          });
                        },
                      ),
                      24.boxH,
                      AppBtn(
                        onTap: () => checkIfValidateForUpdate(widget.house?.id),
                        text: context.translation.dow_et,
                        bgColor: const Color.fromARGB(255, 16, 100, 188),
                      ),
                      24.boxH,
                    ],
                  ),
                ),
              ),
            ),
            if (isSelecting.isLoading) const Positioned.fill(child: Loader()),
          ],
        );
      },
    );
  }

  Future<void> checkIfValidateForUpdate(int? houseId) async {
    if (houseId == null) return;

    final agreed = await AskIfAgreed.show(context);
    if (agreed == null || !agreed) return;

    try {
      await houseService.updateHouse(
        houseId: houseId,
        name: nameController.text,
        description: descriptionController.text,
        bronNumber: phoneController.text,
        price: double.tryParse(priceController.text),
        area: double.tryParse(areaController.text),
        writeComment: canWriteComment == 1,
        floorNumber: int.tryParse(
          floorCounts?.where((f) => f.isSelected).firstOrNull?.count ?? '0',
        ),
        roomNumber: int.tryParse(
          roomCounts?.where((f) => f.isSelected).firstOrNull?.count ?? '0',
        ),
        exclusive: canExclusive == 1,
        hashtag: _hashtags ?? '',
        levelNumber: int.tryParse(
          levelCounts?.where((f) => f.isSelected).firstOrNull?.count ?? '0',
        ),
        propertyTypeId: propertyOptionModel?.selectedPropertyTypes?.firstOrNull?.id,
        repairTypeId: repairOptionModel?.selectedRepairTypes?.firstOrNull?.id,
        locationId: currentLoc?.firstOrNull?.id,
        categoryId: currentCategory?.firstOrNull?.id,
        possibilities: possibilityOptionModel?.selectedPossibilities?.map((p) => p.id).toList(),
        // ignore: use_if_null_to_convert_nulls_to_bools
        who: fromHolder == true ? 'Eýesinden' : 'Realtordan',
      );

      // ignore: use_build_context_synchronously
      Helpers.showToastSuccess(context, 'Öý üstünlikli täzelendi');
    } catch (e) {
      // ignore: use_build_context_synchronously
      Helpers.showToastError(context, 'Täzelenende ýalňyşlyk ýüze çykdy');
    }
  }

  void validate({required bool shouldShow, required String text}) {
    if (shouldShow) {
      Helpers.showToastInfo(context, text);
      return;
    }
  }
}
