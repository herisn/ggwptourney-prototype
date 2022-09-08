import 'package:flutter/material.dart';

class NavbarButton extends StatelessWidget {
  final Function()? onTap;
  final Icon? icon;
  const NavbarButton({
    Key? key,
    this.onTap,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: icon
    );
  }
}