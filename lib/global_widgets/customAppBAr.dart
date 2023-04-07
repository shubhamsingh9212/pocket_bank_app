import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';

PreferredSizeWidget customAppBar({required BuildContext context}){
  return AppBar(
    backgroundColor: AppColors.bluePrimary,
    elevation: 0.0,
    actions: [
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          )),
    ],
  );
}
