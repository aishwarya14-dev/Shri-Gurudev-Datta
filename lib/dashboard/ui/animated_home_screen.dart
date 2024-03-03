
import 'package:flutter/material.dart';

import 'content_images.dart';
import 'image_list.dart';

class AnimatedHomeScreen extends StatefulWidget {
  const AnimatedHomeScreen({super.key});

  @override
  State<AnimatedHomeScreen> createState() => _AnimatedHomeScreenState();
}

class _AnimatedHomeScreenState extends State<AnimatedHomeScreen> {
 int currentpage = 1;
 int currentpage2 = 1;
  PageController? controller;
  PageController? controller2;

  @override
  void initState() {
    super.initState();
     controller = PageController(
      initialPage: currentpage,
      keepPage: false,
      viewportFraction: 0.6,
    );
    controller2 = PageController(
      initialPage: currentpage2,
      keepPage: false,
      viewportFraction: 0.6
    );
  }

    @override
  dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 140.0,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                automaticallyImplyLeading: false,
                floating: false,
                pinned: true,
                forceMaterialTransparency: true,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                    title: const Text("Namaskaram Piligrim",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        )),
                    background: Image.asset(
                      "assets/images/sunrise.jpg",
                      fit: BoxFit.cover,
                    )),
              actions: [
                Container()
              ],
              ),
            ];
          },
          body: Container(
            height: double.infinity,
            child: Card(
              elevation: 6.0,
                    color: Colors.white,
                    clipBehavior: Clip.hardEdge,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Padding(padding: EdgeInsets.all(12),
                  child:Text("Shri Gurudev Datta",
                  style: TextStyle(
                    fontSize: 18
                  ),
                  ),
                  ),
                  const Divider(),
                Container(
                  height: 250,
                  child:
                  PageView.builder(
                  onPageChanged: (value) {
                  setState(() {
                    currentpage = value;
                  });
                },
                controller: controller,
                itemBuilder: (context, index) => builder(index,images[index%4]),),
                ),
                Container(
                  height: 250,
                  child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentpage2 = value;
                    });
                  },
                  controller: controller2,
                  itemBuilder: (context, index) => builder1(index,contentImages[index%5]),),
                ),
                piligrimServices()
                ],
              ),
            ),
                ),
          ),
      ),
    );
  }


  builder(int index,image) {
    return AnimatedBuilder(
      animation: controller!,
      builder: (context, child) {
        double value = 1.0;
        if (controller!.position.haveDimensions) {
          value = controller!.page! - index;
          value = (1 - (value.abs() * .5)).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeOut.transform(value) * 300,
            width: Curves.easeOut.transform(value) * 250,
            child: child,
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(8.0),
        child: Card(
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          elevation: 6,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
          child: Image.asset(image["url"],
                      fit: BoxFit.fitWidth
                      ),
        ),
      ),
     ) );
  }

   builder1(int index,image) {
    return AnimatedBuilder(
      animation: controller!,
      builder: (context, child) {
        double value = 1.0;
        if (controller!.position.haveDimensions) {
          value = controller!.page! - index;
          value = (1 - (value.abs() * .5)).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeOut.transform(value) * 300,
            width: Curves.easeOut.transform(value) * 250,
            child: child,
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.all(8.0),
        child: Card(
           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          elevation: 6,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
          child: Image.asset(image["url"],
                      fit: BoxFit.fitWidth
                      ),
        ),
      ),
     ) );
  }

    piligrimServices() {
    return  Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const Padding(
            padding:EdgeInsets.only(left:12.0,top: 24),
            child: Text("Donations",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),
            ),
          ),
          Container(
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                TextButton.icon(
                onPressed: () {},
                icon: Image.asset('assets/icons/ic_donation.jpg'),
                style: ButtonStyle(
    shape: MaterialStateProperty.all(CircleBorder()),
    padding: MaterialStateProperty.all(const EdgeInsets.all(8)),
    backgroundColor: MaterialStateProperty.all(Colors.white), // <-- Button color
    overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
      if (states.contains(MaterialState.pressed)) return Colors.amber; // <-- Splash color
    }),
  ), label: const Text("Donation"),
                          ),
                const SizedBox(width: 50,),
                TextButton.icon(
                onPressed: () {},
                icon: Image.asset('assets/icons/ic_pray_hands.jpg'),
                style: ButtonStyle(
    shape: MaterialStateProperty.all(CircleBorder()),
    padding: MaterialStateProperty.all(const EdgeInsets.all(8)),
    backgroundColor: MaterialStateProperty.all(Colors.white), // <-- Button color
    overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
      if (states.contains(MaterialState.pressed)) return Colors.amber; // <-- Splash color
    }),
  ), label: const Text("Annadan"),
                          ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}