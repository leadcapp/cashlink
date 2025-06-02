import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Widget shimmerWidget({required Widget child, required BuildContext context}) =>
    Shimmer.fromColors(
      baseColor: Theme.of(context).colorScheme.surfaceContainer,
      highlightColor: Theme.of(context).colorScheme.onSurfaceVariant,
      child: child,
    );

Widget shimmerCard(
        {required double width,
        double? height,
        required BuildContext context,
        double? radius,
        double? bottomPadding,
        double? topPadding}) =>
    Container(
      width: width,
      height: height ?? 100,
      margin:
          EdgeInsets.only(top: topPadding ?? 0, bottom: bottomPadding ?? 15),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainer,
        borderRadius: BorderRadius.circular(radius ?? 10),
      ),
    );
