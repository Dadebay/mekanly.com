import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/components/app_text.dart';
import '../../../localization/extensions.dart';
import '../../../product/constants/constants.dart';
import '../../../product/helpers/helpers.dart';
import '../../../remote/entities/global_options/global_options.dart';
import '../../../utils/extensions.dart';

extension LocationFinder on List<Location>? {
  SubLocations? get getSelected {
    SubLocations? selected;
    this?.forEach(
      (loc) {
        for (final sub in loc.children) {
          if (sub.selected) {
            selected = sub;
          }
        }
      },
    );
    return selected;
  }

  List<SubLocations>? get getAllSelected {
    final allSelected = <SubLocations>[];
    this?.forEach(
      (loc) {
        for (final sub in loc.children) {
          if (sub.selected) {
            allSelected.add(sub);
          }
        }
      },
    );
    return allSelected;
  }
}

extension SubLocTitle on List<SubLocations>? {
  String? get nameAll {
    return this?.map((e) => e.name).toList().join(', ');
  }
}

extension CategoryFinder on List<CategoryHouse>? {
  CategoryHouse? get getSelected {
    CategoryHouse? selected;
    this?.forEach(
      (c) {
        if (c.selected) {
          selected = c;
        }
      },
    );
    return selected;
  }

  List<CategoryHouse>? get getAllSelected {
    return this?.where((c) => c.selected).toList();
  }

  String? get nameAll {
    final selected = this?.where((c) => c.selected).toList();
    return selected?.map((s) => s.name).toList().join(', ');
  }
}

class OptionModalBottomSheet extends StatefulWidget {
  const OptionModalBottomSheet({
    super.key,
    required this.locations,
    this.isSingle = false,
  });
  final List<Location> locations;
  final bool isSingle;

  static Future<List<Location>?> showOptionModal(
    BuildContext context, {
    required List<Location> locations,
    bool isSingle = false,
  }) async {
    return showModalBottomSheet<List<Location>?>(
      context: context,
      builder: (context) {
        return OptionModalBottomSheet(
          locations: locations,
          isSingle: isSingle,
        );
      },
    );
  }

  @override
  State<OptionModalBottomSheet> createState() => _OptionModalBottomSheetState();
}

class _OptionModalBottomSheetState extends State<OptionModalBottomSheet> {
  final PageController _pageController = PageController();
  List<Location> _currentLocations = [];
  Location? _currentParent;
  int? _parentIndex;
  List<SubLocations> _currentSubLocations = [];
  bool _showingChildren = false;

  @override
  void initState() {
    super.initState();
    _currentLocations = List.from(widget.locations);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _showChildItems(Location parent, int index) {
    setState(() {
      _currentParent = parent;
      _currentSubLocations = parent.children;
      _showingChildren = true;
      _parentIndex = index;
    });
    _pageController.animateToPage(
      1,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _goBackToParent() {
    _pageController.animateToPage(
      0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    setState(() {
      _showingChildren = false;
    });
  }

  void _saveAndClose(BuildContext context) {
    final isEmpty = _checkIfEmpty(context);
    if (isEmpty) {
      return;
    }
    final updateCurrent = _currentParent?.copyWith(hasSelectedChild: true);
    final unSelectIfHas = _currentLocations.map(
      (loc) {
        final cur = loc.copyWith(hasSelectedChild: false);
        final updated =
            cur.children.map((e) => e.copyWith(selected: false)).toList();
        final readyLoc = cur.copyWith(children: updated);
        return readyLoc;
      },
    ).toList();

    if (_currentParent == null || _parentIndex == null) {
      return;
    }
    final updateAll = unSelectIfHas.update(_parentIndex!, updateCurrent!);

    if (Navigator.canPop(context)) {
      Navigator.pop(context, updateAll);
    }
  }

  bool _checkIfEmpty(BuildContext context) {
    final selects = _currentSubLocations.where((l) => l.selected).toList();
    if (selects.isEmpty) {
      Helpers.showToastInfo(context, context.translation.sah_sayla);
    }
    return selects.isEmpty;
  }

  void _addToSelectedItems(SubLocations location, int index) {
    _currentSubLocations = List<SubLocations>.from(_currentSubLocations).update(
      index,
      location,
    );

    _currentParent = _currentParent?.copyWith(children: _currentSubLocations);
    if (_parentIndex == null || _currentParent == null) return;
    _currentLocations = List<Location>.from(_currentLocations)
        .update(_parentIndex!, _currentParent!);
    setState(() {});
  }

  void _clearAllSelections() {
    _currentLocations = _currentLocations.map((loc) {
      final clearedChildren =
          loc.children.map((child) => child.copyWith(selected: false)).toList();
      return loc.copyWith(
        children: clearedChildren,
        hasSelectedChild: false,
      );
    }).toList();

    _currentSubLocations = [];
    _currentParent = null;
    _parentIndex = null;
    _showingChildren = false;

    Navigator.pop(context, _currentLocations);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(12).r,
          topRight: const Radius.circular(12).r,
        ),
      ),
      constraints: BoxConstraints(
        maxHeight: 1.sh * .6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ).w,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1.w,
                  color: const Color(0xffDDDDDD),
                ),
              ),
            ),
            child: SizedBox(
              height: 30.w,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: 30.w,
                      height: 30.w,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          if (_showingChildren) {
                            _goBackToParent();
                          } else {
                            Navigator.pop(context);
                          }
                        },
                        icon: _showingChildren
                            ? const Icon(Icons.arrow_back)
                            : const Icon(Icons.close),
                      ),
                    ),
                  ),
                  Center(
                    child: AppText.s14w400BdM(
                      context.translation.location,
                    ),
                  ),

                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: _clearAllSelections,
                      child: AppText.s14w400BdM(
                        context.translation.clean,
                        color: Color(0xff0D95E9),
                      ),
                    ),
                  )
                  // if (_showingChildren)
                  //   Align(
                  //     alignment: Alignment.centerRight,
                  //     child: SizedBox(
                  //       width: 30.w,
                  //       height: 30.w,
                  //       child: IconButton(
                  //         padding: EdgeInsets.zero,
                  //         onPressed: () => _saveAndClose(context),
                  //         icon: const Icon(Icons.check),
                  //       ),
                  //     ),
                  //   ),
                ],
              ),
            ),
          ),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 2,
              itemBuilder: (context, pageIndex) {
                if (pageIndex == 0) {
                  // Parent items list
                  return ListView.builder(
                    itemCount: _currentLocations.length,
                    itemBuilder: (context, index) {
                      final location = _currentLocations[index];
                      return OptionModalSheetTile(
                        isParent: true,
                        title: location.name,
                        onTap: () {
                          print('Tapped location: ${location.name}');
                          if (location.children.isNotEmpty) {
                            print(
                                'Location has children, showing child items...');
                            _showChildItems(location, index);
                          } else {
                            print(
                                'Location has NO children, selecting all by default...');

                            // Önce tüm location'ların çocuklarını temizle (seçimleri kaldır)
                            final clearedLocations =
                                _currentLocations.map((loc) {
                              final clearedChildren = loc.children
                                  .map((child) =>
                                      child.copyWith(selected: false))
                                  .toList();
                              return loc.copyWith(children: clearedChildren);
                            }).toList();

                            // Sonra sadece tıklanan location'un çocuklarını seç
                            final updatedChildren =
                                location.children.map((sub) {
                              print('Auto-selecting sublocation: ${sub.name}');
                              return sub.copyWith(selected: true);
                            }).toList();

                            final updatedLocation =
                                location.copyWith(children: updatedChildren);

                            final updatedLocations =
                                List<Location>.from(clearedLocations);
                            updatedLocations[index] = updatedLocation;

                            print('Updated location: ${updatedLocation.name}');
                            print(
                                'Closing bottom sheet with updated locations...');
                            Navigator.pop(context, updatedLocations);
                          }
                        },
                      );
                    },
                  );
                } else {
                  // Child items list
                  return ListView.builder(
                    itemCount: _currentSubLocations.length,
                    itemBuilder: (context, index) {
                      final location = _currentSubLocations[index];
                      return OptionModalSheetTile(
                        title: location.name,
                        isSelected: location.selected,
                        onTap: () {
                          print('Tapped sublocation: ${location.name}');
                          final updated = location.copyWith(
                            selected: !location.selected,
                          );
                          print('New selected state: ${updated.selected}');

                          if (widget.isSingle) {
                            print(
                                'Single selection mode active, clearing all others and saving...');

                            _currentSubLocations = _currentSubLocations
                                .map((l) => l.copyWith(selected: false))
                                .toList();

                            _addToSelectedItems(updated, index);

                            _saveAndClose(context);
                            return;
                          }

                          print(
                              'Multi selection mode, updating selected item...');
                          _addToSelectedItems(updated, index);

                          Navigator.pop(context, _currentLocations);
                        },
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class OptionModalBottomSheetGysga extends StatefulWidget {
  const OptionModalBottomSheetGysga({
    super.key,
    required this.locations,
    this.isSingle = false,
  });
  final List<Location> locations;
  final bool isSingle;

  static Future<List<Location>?> showOptionModal(
    BuildContext context, {
    required List<Location> locations,
    bool isSingle = false,
  }) async {
    return showModalBottomSheet<List<Location>?>(
      context: context,
      builder: (context) {
        return OptionModalBottomSheet(
          locations: locations,
          isSingle: isSingle,
        );
      },
    );
  }

  @override
  State<OptionModalBottomSheetGysga> createState() =>
      _OptionModalBottomSheetStateGysga();
}

class _OptionModalBottomSheetStateGysga
    extends State<OptionModalBottomSheetGysga> {
  final PageController _pageController = PageController();
  List<Location> _currentLocations = [];
  bool _showingChildren = false;

  @override
  void initState() {
    super.initState();
    _currentLocations = List.from(widget.locations);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _showChildItems(Location parent, int index) {
    setState(() {
      _showingChildren = true;
    });
    _pageController.animateToPage(
      1,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _goBackToParent() {
    _pageController.animateToPage(
      0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    setState(() {
      _showingChildren = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(12).r,
          topRight: const Radius.circular(12).r,
        ),
      ),
      constraints: BoxConstraints(
        maxHeight: 1.sh * .6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ).w,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1.w,
                  color: const Color(0xffDDDDDD),
                ),
              ),
            ),
            child: SizedBox(
              height: 30.w,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: SizedBox(
                      width: 30.w,
                      height: 30.w,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          if (_showingChildren) {
                            _goBackToParent();
                          } else {
                            Navigator.pop(context);
                          }
                        },
                        icon: _showingChildren
                            ? const Icon(Icons.arrow_back)
                            : const Icon(Icons.close),
                      ),
                    ),
                  ),
                  Center(
                    child: AppText.s14w400BdM(
                      context.translation.location,
                    ),
                  ),
                  // if (_showingChildren)
                  //   Align(
                  //     alignment: Alignment.centerRight,
                  //     child: SizedBox(
                  //       width: 30.w,
                  //       height: 30.w,
                  //       child: IconButton(
                  //         padding: EdgeInsets.zero,
                  //         onPressed: () => _saveAndClose(context),
                  //         icon: const Icon(Icons.check),
                  //       ),
                  //     ),
                  //   ),
                ],
              ),
            ),
          ),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 2,
              itemBuilder: (context, pageIndex) {
                // Parent items list
                return ListView.builder(
                  itemCount: _currentLocations.length,
                  itemBuilder: (context, index) {
                    final location = _currentLocations[index];
                    return OptionModalSheetTile(
                      isParent: true,
                      title: location.name,
                      onTap: () {
                        print('Tapped location: ${location.name}');
                        if (location.children.isNotEmpty) {
                          print(
                              'Location has children, showing child items...');
                          _showChildItems(location, index);
                        } else {
                          print(
                              'Location has NO children, selecting all by default...');

                          final clearedLocations = _currentLocations.map((loc) {
                            final clearedChildren = loc.children
                                .map((child) => child.copyWith(selected: false))
                                .toList();
                            return loc.copyWith(children: clearedChildren);
                          }).toList();

                          // Sonra sadece tıklanan location'un çocuklarını seç
                          final updatedChildren = location.children.map((sub) {
                            print('Auto-selecting sublocation: ${sub.name}');
                            return sub.copyWith(selected: true);
                          }).toList();

                          final updatedLocation =
                              location.copyWith(children: updatedChildren);

                          final updatedLocations =
                              List<Location>.from(clearedLocations);
                          updatedLocations[index] = updatedLocation;

                          print('Updated location: ${updatedLocation.name}');
                          print(
                              'Closing bottom sheet with updated locations...');
                          Navigator.pop(context, updatedLocations);
                        }
                      },
                    );
                  },
                );

                // else {
                //   // Child items list
                //   return ListView.builder(
                //     itemCount: _currentSubLocations.length,
                //     itemBuilder: (context, index) {
                //       final location = _currentSubLocations[index];
                //       return OptionModalSheetTile(
                //         title: location.name,
                //         isSelected: location.selected,
                //         onTap: () {
                //           print('Tapped sublocation: ${location.name}');
                //           final updated = location.copyWith(
                //             selected: !location.selected,
                //           );
                //           print('New selected state: ${updated.selected}');

                //           if (widget.isSingle) {
                //             print(
                //                 'Single selection mode active, clearing all others and saving...');

                //             _currentSubLocations = _currentSubLocations
                //                 .map((l) => l.copyWith(selected: false))
                //                 .toList();

                //             _addToSelectedItems(updated, index);

                //             _saveAndClose(context);
                //             return;
                //           }

                //           print(
                //               'Multi selection mode, updating selected item...');
                //           _addToSelectedItems(updated, index);

                //           Navigator.pop(context, _currentLocations);
                //         },
                //       );
                //     },
                //   );
                // }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class OptionModalSheetTile extends StatelessWidget {
  const OptionModalSheetTile({
    super.key,
    required this.title,
    required this.onTap,
    this.isSelected = false,
    this.isParent = false,
  });

  final String title;
  final VoidCallback onTap;
  final bool isSelected;
  final bool isParent;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1.w, color: const Color(0xffDDDDDD)),
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 18).w,
        child: Row(
          children: [
            Expanded(
              child: AppText.s14w400BdM(
                title,
                fontFamily: StringConstants.roboto,
              ),
            ),
            if (isParent) const Icon(Icons.chevron_right_outlined),
          ],
        ),
      ),
    );
  }
}

// Model for items with children
class MenuItem {
  MenuItem({required this.name, this.children = const []});
  final String name;
  final List<MenuItem> children;
}

class NestedBottomSheet extends StatefulWidget {
  const NestedBottomSheet({super.key, required this.items});
  final List<MenuItem> items;

  @override
  // ignore: library_private_types_in_public_api
  _NestedBottomSheetState createState() => _NestedBottomSheetState();
}

class _NestedBottomSheetState extends State<NestedBottomSheet> {
  final PageController _pageController = PageController();
  List<MenuItem> _currentChildItems = [];
  bool _showingChildren = false;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _showChildItems(MenuItem parent) {
    setState(() {
      _currentChildItems = parent.children;
      _showingChildren = true;
    });
    _pageController.animateToPage(
      1,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void _goBackToParent() {
    _pageController.animateToPage(
      0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
    setState(() {
      _showingChildren = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header with optional back button
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Colors.grey[200],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _showingChildren ? 'Child Items' : 'Menu Items',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                if (_showingChildren)
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: _goBackToParent,
                  ),
              ],
            ),
          ),
          // Page view for swiping between parent and child items
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              physics:
                  const NeverScrollableScrollPhysics(), // Disable manual swipe
              itemCount: 2,
              itemBuilder: (context, pageIndex) {
                if (pageIndex == 0) {
                  // Parent items list
                  return ListView.builder(
                    itemCount: widget.items.length,
                    itemBuilder: (context, index) {
                      return _buildItemTile(
                        widget.items[index],
                        onTap: () {
                          if (widget.items[index].children.isNotEmpty) {
                            _showChildItems(widget.items[index]);
                          }
                        },
                      );
                    },
                  );
                } else {
                  // Child items list
                  return ListView.builder(
                    itemCount: _currentChildItems.length,
                    itemBuilder: (context, index) {
                      return _buildItemTile(
                        _currentChildItems[index],
                        onTap: () {
                          // Handle child item tap if needed
                          if (_currentChildItems[index].children.isNotEmpty) {
                            // If you want to allow deeper nesting, you could implement it here
                          }
                        },
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItemTile(MenuItem item, {required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.name,
                  style: const TextStyle(fontSize: 16),
                ),
                if (item.children.isNotEmpty)
                  const Icon(Icons.arrow_forward_ios, size: 16),
              ],
            ),
          ),
          const Divider(height: 1), // Underline each item
        ],
      ),
    );
  }
}

// Example usage
void showNestedMenuBottomSheet(BuildContext context, List<MenuItem> items) {
  // ignore: inference_failure_on_function_invocation
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) => NestedBottomSheet(items: items),
  );
}

// Example implementation
class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  // Sample data
  final List<MenuItem> menuItems = [
    MenuItem(
      name: 'Fruits',
      children: [
        MenuItem(name: 'Apple'),
        MenuItem(name: 'Banana'),
        MenuItem(name: 'Orange'),
      ],
    ),
    MenuItem(
      name: 'Vegetables',
      children: [
        MenuItem(name: 'Carrot'),
        MenuItem(name: 'Broccoli'),
        MenuItem(name: 'Potato'),
      ],
    ),
    MenuItem(
      name: 'Drinks',
      children: [
        MenuItem(name: 'Water'),
        MenuItem(name: 'Coffee'),
        MenuItem(name: 'Tea'),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nested Bottom Sheet')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Show Menu'),
          onPressed: () {
            showNestedMenuBottomSheet(context, menuItems);
          },
        ),
      ),
    );
  }
}
