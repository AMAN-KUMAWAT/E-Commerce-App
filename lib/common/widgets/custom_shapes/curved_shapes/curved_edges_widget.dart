import 'package:flutter/material.dart';
import 'package:project/common/widgets/custom_shapes/curved_shapes/curved_edges.dart';

class CurvedEdgeWidget extends StatelessWidget {
  const CurvedEdgeWidget({super.key, this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(

        ///here this clipper will provide the size of the child container
        clipper: CustomEdges(),
        child: child);
  }
}
