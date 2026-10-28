import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final bool isBlack;
  const CustomAppbar({super.key, required this.isBlack});

  @override
  Size get preferredSize => const Size.fromHeight(80);
  

  @override
  Widget build(BuildContext context) {
    bool backcolor = isBlack;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: backcolor ? Color(0xff111111) : Colors.white,
        leading: SvgPicture.asset("images/app_bar/menu.svg", color: isBlack ? Colors.white : Colors.black,),
        leadingWidth: 28,
        title: SvgPicture.asset("images/app_bar/Logo.svg",color: isBlack ? Colors.white : Colors.black),
        centerTitle: true,
        actions: [
          SvgPicture.asset("images/app_bar/Search.svg",color: isBlack ? Colors.white : Colors.black),
          Gap(20),
          SvgPicture.asset("images/app_bar/shopping bag.svg",color: isBlack ? Colors.white : Colors.black),
        ],
      ),
    );
  }


}
