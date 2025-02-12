import 'package:bowl_app/global/utils/images_list.dart';
import 'package:bowl_app/global/widgets/appbars.dart';
import 'package:bowl_app/global/widgets/image_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  Map<String, dynamic>? arguments;
  DashboardScreen({super.key, this.arguments});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          SliverPersistentHeader(
              pinned: true, floating: false, delegate: CustomHeaderDelegate()),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => GridView.builder(
                        controller: scrollController,
                        shrinkWrap: true,
                        itemCount: 90,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3),
                        itemBuilder: (context, index) => ListTile(
                          title: Text("Tile $index"),
                        ),
                      ),
                  childCount: 1)),
        ],
      ),
    );
  }
}

class CustomHeaderDelegate extends SliverPersistentHeaderDelegate {
  List<String> carousalItems = [
    ImageAssetList.dashboardBackground, //0
    ImageAssetList.dashboardBackground, //1
    ImageAssetList.dashboardBackground //2
  ];

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox(
      height: 400,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          CarouselSlider(
              items: carousalItems
                  .map((c) => Container(
                        height: 400,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(c), fit: BoxFit.fill)),
                      ))
                  .toList(),
              options: CarouselOptions(
                  initialPage: 0,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {},
                  autoPlay: true,
                  enlargeCenterPage: true)),
          Center(
            child: ElevatedButton(
                onPressed: () {}, child: const Text("Enter PNR")),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 400;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

// future builder
// stream builder
// bloc builder
// listview builder
// gridview builder