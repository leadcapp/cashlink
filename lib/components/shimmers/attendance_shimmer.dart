import 'package:cashlink/components/shimmers/shimmer_widget.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AttendanceShimmer extends StatelessWidget {
  final int? listCount;
  const AttendanceShimmer({super.key, this.listCount});

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
        baseColor: Theme.of(context).colorScheme.surfaceContainer,
        highlightColor: Theme.of(context).colorScheme.onSurfaceVariant,
        child: ListView.builder(
            itemCount: listCount ?? 6,
            padding: const EdgeInsets.only(top: 20),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (c, i) => shimmerCard(
                width: MediaQuery.of(context).size.width, context: context)),
      );
}
