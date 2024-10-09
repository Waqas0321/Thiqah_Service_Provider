import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../Utils/Constants/app_colors.dart';
import '../Utils/Constants/app_sizes.dart';
class CustomKeyboard extends StatelessWidget {
  final Function(String) onKeyTap;
  final Function onBackspace;

  CustomKeyboard({required this.onKeyTap, required this.onBackspace});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.h30 * 1.1,
      width: AppSizes.w30 * 2.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              KeyboardButton(label: "3", onTap: onKeyTap),
              KeyboardButton(label: "2", onTap: onKeyTap),
              KeyboardButton(label: "1", onTap: onKeyTap),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              KeyboardButton(label: "6", onTap: onKeyTap),
              KeyboardButton(label: "5", onTap: onKeyTap),
              KeyboardButton(label: "4", onTap: onKeyTap),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              KeyboardButton(label: "9", onTap: onKeyTap),
              KeyboardButton(label: "8", onTap: onKeyTap),
              KeyboardButton(label: "7", onTap: onKeyTap),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.backspace,color: AppColors.blue,),
                onPressed: () {
                  onBackspace();
                },
              ),
              // Empty space
              KeyboardButton(label: "0", onTap: onKeyTap),
              Gap(AppSizes.w12 * 1.2),
            ],
          ),
        ],
      ),
    );
  }
}

class KeyboardButton extends StatelessWidget {
  final String label;
  final Function(String) onTap;

  KeyboardButton({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(label),
      child: Container(
        width: 60,
        height: 60,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: AppColors.blue,
        ),
        child: Text(
          label,
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(color: AppColors.beige),
        ),
      ),
    );
  }
}