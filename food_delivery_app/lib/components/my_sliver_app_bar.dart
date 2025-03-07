import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;
  const MySliverAppBar({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      floating: true,
      expandedHeight: 300,
      backgroundColor: Theme.of(context).colorScheme.background,
      centerTitle: true,
      title: title,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          padding: const EdgeInsets.only(
            top: 100,
            left: 15,
            right: 15,
          ), // Add top padding to avoid notch
          color: Colors.white,
          child: child,
        ),
      ),
    );
  }
}
