import 'package:flutter/material.dart';

class CircleAction extends StatelessWidget {
  final Color color;
  final IconData icon;
  final EdgeInsets? padding;
  final bool? hasBadge;
  const CircleAction({
    super.key,
    required this.color,
    required this.icon,
    this.padding,
    this.hasBadge,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 8),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                icon,
                size: 16,
                color: Colors.white,
              ),
            ),
          ),
          hasBadge == true
              ? Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 1.5,
                        )),
                    child: const Badge(
                      backgroundColor: Colors.red,
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
