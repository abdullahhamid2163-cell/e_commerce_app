import 'package:e_commerce_app/common/widgets/custom_shape/curved_edges/custom_curved_edges.dart';
import 'package:flutter/material.dart';

class AppCurvedEdgesWidget extends StatelessWidget {
  const AppCurvedEdgesWidget({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: AppCustomCurvedEdges(), 
      child: child,
    );
  }
}


