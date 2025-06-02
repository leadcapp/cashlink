import 'package:cashlink/components/shimmers/shimmer_widget.dart';
import 'package:flutter/material.dart';

class ListShimmer extends StatelessWidget {
  final int? itemCount;
  final double? height;
  final ScrollPhysics? scrollPhysics;
  final EdgeInsetsGeometry? padding;
  final double? bottomPadding;
  const ListShimmer({
    super.key,
    this.itemCount,
    this.height,
    this.scrollPhysics,
    this.padding,
    this.bottomPadding,
  });

  @override
  Widget build(BuildContext context) => ListView.builder(
        itemCount: itemCount ?? 5,
        shrinkWrap: true,
        padding: padding,
        physics: scrollPhysics ?? const NeverScrollableScrollPhysics(),
        itemBuilder: (c, i) => shimmerWidget(
            context: context,
            child: shimmerCard(
                width: MediaQuery.of(context).size.width,
                height: height ?? 50,
                bottomPadding: bottomPadding,
                context: context)),
      );
}
