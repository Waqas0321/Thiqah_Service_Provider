import 'package:flutter/material.dart';

extension ThemeExtensions on BuildContext {
  TextStyle? get bodyLarge => Theme.of(this).textTheme.bodyLarge;
  TextStyle? get bodyMedium => Theme.of(this).textTheme.bodyMedium;
  TextStyle? get bodySmall => Theme.of(this).textTheme.bodySmall;
  TextStyle? get headlineMedium => Theme.of(this).textTheme.headlineMedium;
  // TextStyle? get headlineMedium => Theme.of(this).textTheme.headlineMedium;
}
