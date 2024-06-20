import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../localization/locals.dart';
import '../../../logic/cubits/region/region_cubit.dart';
import '../../style/style.dart';
import '../../widgets/widgets.dart';
import '/config/config.dart';
import '/models/models.dart';
import '/ui/style/app_sizes.dart';

class RegionsPage extends StatefulWidget {
  const RegionsPage({super.key, this.isFiltering = true});
  final bool isFiltering;

  @override
  State<RegionsPage> createState() => _RegionsPageState();
}

class _RegionsPageState extends State<RegionsPage> {
  void _navigateToCitiesPage(BuildContext context, RegionData region) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CitiesPage(
          region: region,
          isFiltering: widget.isFiltering,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var locals = Locals.of(context);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: TopBar(title: locals.regions),
      body: BlocBuilder<RegionsCubit, RegionsState>(
        builder: (context, state) {
          if (state is RegionsLoading) {
            return const Loading();
          } else if (state is RegionsSuccess) {
            return ListView.separated(
              separatorBuilder: (context, idx) => const Divider(color: AppColors.mainText, height: AppSizes.pix2),
              itemCount: state.regions.data.length,
              itemBuilder: (context, index) {
                final location = state.regions.data[index];
                return ListTile(
                  title: Tex(location.name, con: context),
                  onTap: () {
                    if (location.name == 'Arkadag şäheri') {
                      Navigator.pop(context, location.children);
                    } else {
                      _navigateToCitiesPage(context, location);
                    }
                  },
                );
              },
            );
          } else {
            return Center(child: EmptyWidget(locals.checkYourInternetRetry, icon: Icons.warning_amber_rounded));
          }
        },
      ),
    );
  }
}

class CitiesPage extends StatefulWidget {
  const CitiesPage({super.key, required this.region, this.isFiltering = true});

  final RegionData region;
  final bool isFiltering;

  @override
  CitiesPageState createState() => CitiesPageState();
}

class CitiesPageState extends State<CitiesPage> {
  List<Cities> selectedCities = [];
  bool selectAll = false;

  @override
  Widget build(BuildContext context) {
    var locals = Locals.of(context);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        surfaceTintColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Tex(widget.region.name, con: context),
        actions: const [],
      ),
      body: Column(
        children: [
          if (widget.isFiltering)
            ListTile(
              tileColor: AppColors.secondaryText.withOpacity(.7),
              title: Tex(locals.allReg, con: context),
              trailing: Padding(
                padding: const EdgeInsets.all(AppSizes.pix6),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selectAll = !selectAll;
                      if (selectAll) {
                        selectedCities = List.from(widget.region.children.map((e) => e).toList());
                      } else {
                        selectedCities.clear();
                      }
                    });
                  },
                  child: Icon(
                    selectAll ? Icons.check_box_outlined : Icons.check_box_outline_blank_outlined,
                  ),
                ),
              ),
            ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, idx) {
                return const Divider(color: AppColors.mainText, height: AppSizes.pix2);
              },
              itemCount: widget.region.children.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    setState(() {
                      if (widget.isFiltering) {
                        if (selectedCities.contains(widget.region.children[index])) {
                          selectedCities.remove(widget.region.children[index]);
                        } else {
                          selectedCities.add(widget.region.children[index]);
                        }
                      } else {
                        selectedCities.clear();
                        selectedCities.add(widget.region.children[index]);
                      }
                    });
                  },
                  title: Tex(widget.region.children[index].name, con: context),
                  trailing: widget.isFiltering
                      ? Padding(
                          padding: const EdgeInsets.all(AppSizes.pix6),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                bool value = selectedCities.contains(widget.region.children[index]);
                                if (value) {
                                  selectedCities.remove(widget.region.children[index]);
                                } else {
                                  selectedCities.add(widget.region.children[index]);
                                }
                              });
                            },
                            child: Icon(
                              selectedCities.contains(widget.region.children[index]) ? Icons.check_box_outlined : Icons.check_box_outline_blank_outlined,
                            ),
                          ),
                        )
                      : Radio(
                          value: widget.region.children[index],
                          groupValue: selectedCities.isNotEmpty ? selectedCities[0] : null,
                          onChanged: (value) {
                            setState(() {
                              selectedCities.clear();
                              if (value != null) {
                                selectedCities.add(value);
                              }
                            });
                          },
                        ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: selectedCities.isNotEmpty
          ? ActionButton(
              color: AppColors.primary,
              icon: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: AppSizes.pix10,
                  horizontal: AppSizes.pix88,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.check,
                      color: AppColors.white,
                    ),
                    Tex(
                      locals.choose.toUpperCase(),
                      con: context,
                      col: AppColors.white,
                    ).title,
                  ],
                ),
              ),
              onTap: () {
                Navigator.pop(context, selectedCities);
                Navigator.pop(context, selectedCities);
              },
            )
          : null,
    );
  }
}
