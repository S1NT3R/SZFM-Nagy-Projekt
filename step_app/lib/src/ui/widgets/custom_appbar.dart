import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:step_app/src/resources/theme/application_style.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final String? title;
  final Color backgroundColor;
  final Color foregroundColor;
  final bool showBackButton;
  final bool showLogo;

  const CustomAppbar({
    super.key,
    required this.scaffoldKey,
    this.title,
    this.backgroundColor = ApplicationStyle.primaryColor,
    this.foregroundColor = ApplicationStyle.black,
    this.showBackButton = false,
    this.showLogo = false,
  });

  Widget? buildLeading(BuildContext context) {
    showBackButton
        ? InkWell(
            onTap: () {
              AutoRouter.of(context).pop();
            },
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Center(
                child: Icon(
                  Icons.arrow_back_rounded,
                  color: foregroundColor,
                  size: 28,
                ),
              ),
            ),
          )
        : null;
    return null;
  }

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      elevation: 0,
      toolbarHeight: 60,
      leading: buildLeading(context),
      title: showLogo
          ? Container(
              alignment: Alignment.center,
              child: SvgPicture.asset(
                "assets/images/logo2.svg",
              ),
            )
          : title != null
              ? Text(
                  title!.toUpperCase(),
                  style: TextStyle(
                    color: foregroundColor,
                    fontFamily: "Inconsolata",
                  ),
                )
              : const SizedBox(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
