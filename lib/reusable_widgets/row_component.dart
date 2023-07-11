import 'package:flutter/material.dart';

class RowComponent extends StatelessWidget {
  final List<Widget> childrenList;

  const RowComponent({
    super.key,
    required this.childrenList,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: childrenList,
    );
  }
}
