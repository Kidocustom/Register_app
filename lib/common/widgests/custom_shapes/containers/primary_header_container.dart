import 'package:e_commerce/common/widgests/custom_shapes/containers/circular_container.dart';
import 'package:e_commerce/common/widgests/login_signup/curved_edges/curved_edges_widget.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgesWidget(
      child: Container(
        color: TColors.primaryColor,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            ///BACKGROUND CUSTOM SHAPES
            Positioned(
              top: -150,
              right: -250,
              child: TCircularContainer(
                backgroundColor: TColors.primaryBackground.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: TCircularContainer(
                backgroundColor: TColors.primaryBackground.withOpacity(0.1),
              ),
            ),
            child
          ],
        ),
      ),
    );
  }
}
