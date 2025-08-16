// ignore_for_file: public_member_api_docs, sort_constructors_first
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
import 'model/add_house_payload.dart';
import 'widgets/description_text_fied.dart';
import 'widgets/dialogs.dart';
import 'widgets/image_item.dart';
import 'widgets/image_picker_widget.dart';
import 'widgets/privice_widget.dart';
import 'widgets/selected_images_widget.dart';

enum AddHouseType {
  house,
  office,
}

class AddHouseView extends StatefulWidget {
  const AddHouseView({super.key, this.options});

  static const routePath = '/add-house-view';
  static const routeName = 'add-house-view';

  static Widget builder(BuildContext context, GlobalOptions? options) {
    final bloc = injector<AddHouseCubit>();
    return BlocProvider(
      create: (context) => bloc,
      child: AddHouseView(
        options: options,
      ),
    );
  }

  final GlobalOptions? options;

  @override
  State<AddHouseView> createState() => _AddHouseViewState();
}

class _AddHouseViewState extends State<AddHouseView> {
  final ImagePicker _picker = ImagePicker();
  bool initDone = false;

  AddHouseType type = AddHouseType.house;

  List<Location> locations = [];
  List<CategoryHouse> categories = [];

  @override
  void initState() {
    super.initState();
    if (widget.options != null) {
      init(widget.options);
    }
  }

  final TextEditingController priceController = TextEditingController();
  final TextEditingController areaController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  List<SubLocations>? currentLoc;
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

  GlobalKey<FormState> hestegFormKey = GlobalKey<FormState>();

  void updateHashtags(List<String> tempHashtags) {
    setState(() {
      _hashtags = tempHashtags.join(' ');
    });
  }

  void _showHashtagDialog(BuildContext context) {
    final hashtagController = TextEditingController();
    final tempHashtags = _hashtags?.split(' ').where((tag) => tag.isNotEmpty).toList() ?? [];
    bool selectedHashtag = false;

    // ignore: inference_failure_on_function_invocation
    showDialog(
      context: context,
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
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8).w,
                        child: Text(
                          context.translation.hashtag_push,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: const Color.fromARGB(255, 34, 34, 34),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Column(
                        children: [
                          TextFormField(
                            controller: hashtagController,
                            cursorColor: ColorName.blueish,
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
                                  final text = hashtagController.text.trim();
                                  if (text.isNotEmpty && tempHashtags.length < 5) {
                                    var hashtag = text.startsWith('#') ? text : '#$text';
                                    setState(() {
                                      tempHashtags.add(hashtag);
                                    });
                                    hashtagController.clear();
                                  }
                                },
                              ),
                            ),
                            onChanged: (text) {
                              if (text.endsWith(' ')) {
                                final trimmed = hashtagController.text.trim();
                                if (trimmed.isNotEmpty && tempHashtags.length < 5) {
                                  var hashtag = trimmed.startsWith('#') ? trimmed : '#$trimmed';
                                  setState(() {
                                    tempHashtags.add(hashtag);
                                  });
                                  hashtagController.clear();
                                }
                              }
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 8.h),
                      Row(
                        children: [
                          Text(
                            '${tempHashtags.length}/5',
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: tempHashtags.length >= 5 ? Colors.red : Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          if (tempHashtags.isEmpty)
                            Text(
                              context.translation.help_hashtag,
                              style: TextStyle(fontSize: 12.sp, color: selectedHashtag ? Colors.red : ColorName.textBlue),
                            ),
                        ],
                      ),
                      SizedBox(height: 12.h),
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
                                setState(() {
                                  tempHashtags.remove(hashtag);
                                });
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
                              if (tempHashtags.isNotEmpty) {
                                updateHashtags(tempHashtags);
                                Navigator.pop(context);
                              } else if (tempHashtags.isEmpty) {
                                setState(() {
                                  selectedHashtag = true;
                                });
                              }
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
    floorCounts = options.floorCountHouse?.map((e) => e.copyWith(isSelected: false)).toList();
    roomCounts = options.roomCountHouse;
    levelCounts = options.levelCountHouse?.map((e) => e.copyWith(isSelected: false)).toList();

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
              appBar: CustomAppBar.base(title: context.translation.add_house),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                  ).w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10).w,
                        child: AppText.s14w400BdM(
                          context.translation.name,
                          fontSize: 15.sp,
                          fontFamily: StringConstants.roboto,
                        ),
                      ),
                      AppInput(
                        prefixIcon: const Text('  '),
                        controller: nameController,
                        hintText: context.translation.write_short_name_of_your_house,
                      ),
                      8.boxH,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: ListTile(
                          dense: true,
                          contentPadding: const EdgeInsets.symmetric(horizontal: 4).w,
                          minVerticalPadding: 0,
                          title: AppText.s14w400BdM(
                            context.translation.section,
                            fontSize: 15.sp,
                            fontFamily: StringConstants.roboto,
                          ),
                          subtitle: AppText.s10w400LbS(
                            (currentCategory?.nameAll?.isEmpty ?? true) ? context.translation.unselected : currentCategory?.nameAll ?? '',
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
                                  type = updated.indexOf(selected) > 2 ? AddHouseType.office : AddHouseType.house;
                                }
                                currentCategory = List.of(updated.getAllSelected ?? []);
                              });
                            }
                          },
                        ),
                      ),
                      const Divider(
                        height: 1,
                        color: Color(0xffDCDCDC),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: ListTile(
                          dense: true,
                          minVerticalPadding: 0,
                          contentPadding: const EdgeInsets.symmetric(horizontal: 4).w,
                          title: AppText.s14w400BdM(
                            context.translation.location,
                            fontSize: 15.sp,
                            fontFamily: StringConstants.roboto,
                          ),
                          subtitle: AppText.s10w400LbS(
                            (currentLoc?.nameAll?.isEmpty ?? true) ? context.translation.unselected : currentLoc?.nameAll ?? '',
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
                                locations = List.of(updated);
                                currentLoc = List.of(updated.getAllSelected ?? []);
                              });
                            }
                          },
                        ),
                      ),
                      const Divider(
                        height: 1,
                        color: Color(0xffDCDCDC),
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
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: ImagePickerWidget(
                          onTap: () {
                            if (!state.pickImageStatus.isLoading) {
                              context.read<AddHouseCubit>().pickAndProcessImages(picker: _picker);
                            }
                          },
                          pickedImages: state.pickedImages,
                        ),
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
                      if (type == AddHouseType.house) ...[
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
                            );
                          }).toList(),
                        ),
                      ],
                      10.boxH,
                      DescriptionTextFied(
                        controller: descriptionController,
                        hintText: context.translation.house_discription,
                      ),
                      10.boxH,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10).w,
                        child: Column(
                          children: [
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
                                Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.end, children: [
                                  SizedBox(
                                    width: 113.w,
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
                                ]),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: AppText.s14w400BdM(
                                    context.translation.your_phone_number,
                                    fontSize: 16.sp,
                                    fontFamily: StringConstants.roboto,
                                  ),
                                ),
                                12.boxW,
                                Expanded(
                                  flex: 4,
                                  child: PhoneFiled(
                                    controller: phoneController,
                                  ),
                                ),
                              ],
                            ),
                            16.boxH,
                            GestureDetector(
                              onTap: () {
                                _showHashtagDialog(context);
                              },
                              child: Container(
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
                                    SizedBox(
                                      width: 18.w,
                                      height: 18.w,
                                      child: Assets.icons.icHash.svg(package: 'gen'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            16.boxH,
                            // JustInOurAppWidget(
                            //   onChanged: (value) {},
                            //   value: false,
                            // ),

                            TitledSwitcherWidget(
                              padding: EdgeInsets.zero,
                              onChanged: (value) {
                                setState(() {
                                  setState(() {
                                    canExclusive = value ? 1 : 0;
                                  });
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
                              onTap: () => checkIfValidate(state.pickedImages),
                              text: context.translation.dow_et,
                              bgColor: const Color.fromARGB(255, 16, 100, 188),
                            ),
                            24.boxH,
                          ],
                        ),
                      ),
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

  Future<void> checkIfValidate(List<ImageItem>? pickedImages) async {
    final locationId = currentLoc?.map((l) => l.id).toList().firstOrNull;
    final categoryId = currentCategory?.map((l) => l.id).toList().firstOrNull;
    final possibilities = possibilityOptionModel?.possibilities?.where((p) => p.selected).toList().map((p) => p.id).toList();
    final propertyTypeId = type == AddHouseType.house ? propertyOptionModel?.propertyTypes?.where((p) => p.selected).toList().map((p) => p.id).firstOrNull : null;
    final repairTypeId = type == AddHouseType.house ? repairOptionModel?.repairTypes?.where((p) => p.selected).toList().map((p) => p.id).firstOrNull : null;
    final floorNumber = floorCounts?.where((f) => f.isSelected).firstOrNull;
    final roomNumber = roomCounts?.where((f) => f.isSelected).firstOrNull;
    final levelNumber = levelCounts?.where((f) => f.isSelected).firstOrNull;

    if (nameController.text.isEmpty) {
      Helpers.showToastInfo(context, context.translation.write_short_name_of_your_house);
      return;
    }

    if (currentCategory == null) {
      Helpers.showToastInfo(context, context.translation.bol_say);
      return;
    }

    if (locationId == null) {
      Helpers.showToastInfo(context, context.translation.yer_say);
      return;
    }

    if (possibilities?.isEmpty ?? true) {
      Helpers.showToastInfo(context, context.translation.mum_sayla);
      return;
    }
    if (descriptionController.text.isEmpty) {
      Helpers.showToastInfo(context, context.translation.mag_giriz);
      return;
    }

    if (areaController.text.isEmpty) {
      Helpers.showToastInfo(context, context.translation.meydany_girizn);
      return;
    }

    if (priceController.text.isEmpty) {
      Helpers.showToastInfo(context, context.translation.bahasyny_girizn);
      return;
    }

    if (phoneController.text.length < 9) {
      Helpers.showToastInfo(context, context.translation.telefon_belginizi_girizin);
      return;
    }

    // if(currentLoc)

    final data = AddHousePayload(
      bronNumber: phoneController.text,
      name: nameController.text,
      description: descriptionController.text,
      price: int.parse(priceController.text),
      location_id: locationId,
      category_id: categoryId!,
      possibilities: possibilities!,
      who: false,
      area: int.parse(areaController.text),
      write_comment: canWriteComment,
      exclusive: canExclusive,
      floor_number: floorNumber?.count != null ? int.parse(floorNumber!.count) : null,
      room_number: roomNumber?.count != null ? int.parse(roomNumber!.count) : null,
      hashtag: _hashtags,
      level_number: levelNumber?.count != null ? int.parse(levelNumber!.count) : null,
      property_type_id: propertyTypeId,
      repair_type_id: repairTypeId,
    );

    final agreed = await AskIfAgreed.show(context);
    if (agreed == null) return;
    if (agreed) {
      await context.read<AddHouseCubit>().addHouse(data);
    }
  }

  void validate({required bool shouldShow, required String text}) {
    if (shouldShow) {
      Helpers.showToastInfo(context, text);
      return;
    }
  }
}
