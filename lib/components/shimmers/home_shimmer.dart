import 'package:cashlink/components/constants.dart';
import 'package:cashlink/components/shimmers/shimmer_widget.dart';
import 'package:flutter/material.dart';

class HomeShimmer extends StatelessWidget {
  const HomeShimmer({super.key});

  @override
  Widget build(BuildContext context) => ListView(
        padding: const EdgeInsets.only(
          top: topPadding,
          left: sidePadding,
          right: sidePadding,
        ),
        children: [
          shimmerWidget(
              child: shimmerCard(
                  width: MediaQuery.of(context).size.width,
                  context: context,
                  height: 110),
              context: context),
          Row(
            children: [
              Expanded(
                child: shimmerWidget(
                    child: shimmerCard(
                        width: MediaQuery.of(context).size.width,
                        context: context,
                        height: 80),
                    context: context),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: shimmerWidget(
                    child: shimmerCard(
                        width: MediaQuery.of(context).size.width,
                        context: context,
                        height: 80),
                    context: context),
              ),
            ],
          ),
          shimmerWidget(
              child: shimmerCard(
                  width: MediaQuery.of(context).size.width,
                  context: context,
                  height: 50),
              context: context),
          GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 6,
              padding: const EdgeInsets.only(top: 20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
              ),
              itemBuilder: (c, i) => shimmerWidget(
                  child: shimmerCard(
                      topPadding: 0,
                      width: MediaQuery.of(context).size.width,
                      context: context),
                  context: context))
        ],
      );
}
