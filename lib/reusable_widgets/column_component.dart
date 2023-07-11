import 'package:flutter/material.dart';

class ColumnComponent extends StatelessWidget {
  final List<Widget> childrenList;

  const ColumnComponent({
    super.key,
    required this.childrenList,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: childrenList,
    );
  }
}
