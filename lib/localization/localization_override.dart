import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../app/cubit/app_cubit.dart';
import 'localization_service.dart';
import 'tk_intl.dart';

/// The widget that is required if you want to build other widgets with a context
/// containing [TkMaterialLocalizations.delegate] and [CupertinoLocalizationTk.delegate]
class LocalizationOverride extends StatelessWidget {
  const LocalizationOverride({required this.builder, super.key});
  final Widget Function(BuildContext) builder;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Localizations.override(
          context: context,
          locale: state.locale,
          delegates: LocalizationService.delegates,
          child: Builder(
            builder: builder,
          ),
        );
      },
    );
  }
}
