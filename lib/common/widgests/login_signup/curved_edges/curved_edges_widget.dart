import 'package:e_commerce/common/widgests/login_signup/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';

class TCurvedEdgesWidget extends StatelessWidget {
  const TCurvedEdgesWidget({
    super.key,
    this.child,
  });
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: TCustomCurvedEdges(), child: child);
  }
}
