import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final String? leftIconPath;
  final String? rightIconPath;
  final Color? background;
  final VoidCallback? onLeftIconTap;
  final VoidCallback? onRightIconTap;

  const CustomAppBar({
    Key? key,
    this.title,
    this.leftIconPath,
    this.rightIconPath,
    this.background,
    this.onLeftIconTap,
    this.onRightIconTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(80.0),
      child: Container(
        color: background ?? Theme.of(context).appBarTheme.backgroundColor,
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: background,
            title: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                    onTap: onLeftIconTap,
                    child: Container(
                      width: 60,
                      height: 35,
                      decoration: BoxDecoration(
                        color:
                            background ?? const Color.fromRGBO(82, 100, 190, 1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: leftIconPath != null && leftIconPath!.isNotEmpty
                            ? SvgPicture.asset(
                                leftIconPath!,
                                colorFilter: const ColorFilter.mode(
                                  Colors.white,
                                  BlendMode.srcIn,
                                ),
                              )
                            : const SizedBox.shrink(),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: title != null
                        ? Text(
                            title!,
                            style: const TextStyle(
                              color: Colors.black,
                              fontFamily: 'SanFran',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        : const SizedBox.shrink(),
                  ),
                ),
                if (rightIconPath != null && rightIconPath!.isNotEmpty)
                  GestureDetector(
                    onTap: onRightIconTap,
                    child: SvgPicture.asset(rightIconPath!),
                  )
                else
                  const SizedBox(width: 60), // Placeholder for alignment
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(90.0);
}
