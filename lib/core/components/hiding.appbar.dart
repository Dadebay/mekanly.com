import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HideNavbar {
  HideNavbar({
    this.isAppBar = true,
  }) {
    visible.value = true;
    void appBar() {
      final isAtBottom =
          controller.position.pixels >= controller.position.maxScrollExtent;
      if (controller.position.userScrollDirection == ScrollDirection.reverse) {
        if (visible.value) {
          visible.value = false;
        }
      }

      if (controller.position.userScrollDirection == ScrollDirection.forward) {
        if (!visible.value) {
          visible.value = true;
        }
      }

      if (controller.position.userScrollDirection == ScrollDirection.idle &&
          isAtBottom) {
        if (visible.value) {
          visible.value = false;
        }
      }
    }

    // void bottomNav() {
    //   if (controller.position.userScrollDirection == ScrollDirection.reverse) {
    //     if (visible.value) {
    //       visible.value = false;
    //     }
    //   }

    //   if (controller.position.userScrollDirection == ScrollDirection.forward) {
    //     if (!visible.value) {
    //       visible.value = true;
    //     }
    //   }
    //   // if (controller.position.userScrollDirection == ScrollDirection.idle) {
    //   //   if (!visible.value) {
    //   //     visible.value = true;
    //   //   }
    //   // }
    //   if (controller.position.maxScrollExtent == controller.offset) {
    //     if (!visible.value) {
    //       visible.value = true;
    //     }
    //   }
    // }

    controller.addListener(appBar);
  }
  final bool isAppBar;
  final ScrollController controller = ScrollController();
  final ValueNotifier<bool> visible = ValueNotifier<bool>(true);

  void dispose() {
    controller.dispose();
    visible.dispose();
  }
}
