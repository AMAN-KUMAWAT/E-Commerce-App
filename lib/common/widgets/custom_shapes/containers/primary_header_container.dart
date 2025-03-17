import 'package:flutter/material.dart';
import 'package:project/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:project/common/widgets/custom_shapes/curved_shapes/curved_edges_widget.dart';
import 'package:project/utils/constants/colors.dart';

class HomeContainerHeader extends StatelessWidget {
  const HomeContainerHeader({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(
      child: Container(
        color: TColors.primary,
        padding: EdgeInsets.all(0),
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: CircularContainer(
                  showBorder: false,
                  backgroundColor: Color.fromARGB(255, 161, 111, 253)),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: CircularContainer(
                  showBorder: false,
                  backgroundColor: Color.fromARGB(255, 161, 111, 253)),
            ),
            child
          ],
        ),
      ),
    );
  }
}
