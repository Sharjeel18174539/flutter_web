
import 'package:flutter/material.dart';
import 'package:flutter_web/utilis/colors.dart';

ButtonStyle buttonStyle = ButtonStyle(
  elevation: MaterialStateProperty.all(4),
  backgroundColor: MaterialStateProperty.all(Colors.white),
  shape: MaterialStateProperty.all(RoundedRectangleBorder(
    side: BorderSide(color: AppColors.primary),
    borderRadius: BorderRadius.circular(10),
  ))
);