import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

abstract class Strings {
  static AppLocalizations of(BuildContext context) =>
      AppLocalizations.of(context)!;
}
