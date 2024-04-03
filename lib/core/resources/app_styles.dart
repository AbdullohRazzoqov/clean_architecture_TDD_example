import 'package:flutter/cupertino.dart';

import 'app_colors.dart';

abstract class Styles {
  Styles._();

  static TextStyle getButtonStyle() => const TextStyle(
        color: AppColors.primaryColor,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: "",
      );
}
