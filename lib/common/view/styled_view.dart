import 'package:flutter/material.dart';

class StyledView extends StatelessWidget {
  final Widget child;

  const StyledView({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.circular(8.0),
      color: Theme.of(context).focusColor,
      elevation: 2.0,
      child: child,
    );
  }
}
