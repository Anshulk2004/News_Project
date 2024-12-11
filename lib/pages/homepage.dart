import 'package:flutter/material.dart';
// import 'landingpage.dart';
import 'package:newsproj/models/category_model.dart';
import 'package:newsproj/models/slider_model.dart';
import 'package:newsproj/services/data.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:newsproj/services/slider_data.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryModel> categories = [];
  List<SliderModel> sliders = [];

  int activeIndex = 0;
  @override
  void initState() {
    categories = getCategories();
    sliders = getSliders();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Flutter"),
            Text(" News",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
          ],
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 10),
            height: 70,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (content, index) {
                return CategoryTitle(
                  image: categories[index].image,
                  categoryName: categories[index].categoryName,
                );
              },
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18.0,right: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[ Text("Breaking News!!!",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),),
                      Text("View More",
                      style: TextStyle(
                        color: Color.fromARGB(255, 3, 59, 106),
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ))],

            )
            
          ),

          const SizedBox(
            height: 20.0,
          ),

          CarouselSlider.builder(
            itemCount: sliders.length,
            itemBuilder: (context, index, realIndex) {
              String? res = sliders[index].image;
              String? res1 = sliders[index].name;
              return buildImage(res!, index, res1!);
            },
            options: CarouselOptions(
                height: 250,
                // viewportFraction: 1,
                autoPlay: true,
                // autoPlayAnimationDuration:const Duration(seconds: 3),
                autoPlayInterval: const Duration(seconds: 2),
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                onPageChanged: (index, reason) {
                  setState(() {
                    activeIndex = index;
                  });
                }),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Center(child: buildIndicator()),

          const SizedBox(
            height: 30.0,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18.0,right: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[ Text("Trending News!!!",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Yuji"
                      )),
                      Text("View More",
                      style: TextStyle(
                        color: Color.fromARGB(255, 3, 59, 106),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        fontFamily: "Yuji",
                      ))],
            )            
          ),
          const SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
            child: Material(
              elevation: 3.0,
              borderRadius: BorderRadius.circular(8),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: ClipRRect(
                       borderRadius: BorderRadius.circular(10),
                       child: Image.asset(
                        "images/new.jpg",
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                      ))),
                      const SizedBox(width: 8.0,),
                
                      Column(
                        children: [
                        SizedBox(
                         width: MediaQuery.of(context).size.width/1.85,
                         child: const Text(
                          "This photo won the best photo of the year 2024. #TheBestPhoto",
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(height: 7.0,),
                      SizedBox(
                         width: MediaQuery.of(context).size.width/1.85,
                         child: const Text(
                          "The photo was clicked by anshul kumar on his trip to Lonavala!!",
                          style: TextStyle(
                            color: Color.fromARGB(135, 10, 60, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      )
                        ],
                      )
                      
                      
                    ],
                  ),
              ),
            ),
            ),

            const SizedBox(height: 15.0,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
            child: Material(
              elevation: 3.0,
              borderRadius: BorderRadius.circular(8),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: ClipRRect(
                       borderRadius: BorderRadius.circular(10),
                       child: Image.asset(
                        "images/new.jpg",
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                      ))),
                      const SizedBox(width: 8.0,),
                
                      Column(
                        children: [
                        SizedBox(
                         width: MediaQuery.of(context).size.width/1.85,
                         child: const Text(
                          "This photo won the best photo of the year 2024. #TheBestPhoto",
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(height: 7.0,),
                      SizedBox(
                         width: MediaQuery.of(context).size.width/1.85,
                         child: const Text(
                          "The photo was clicked by anshul kumar on his trip to Lonavala!!",
                          style: TextStyle(
                            color: Color.fromARGB(135, 10, 60, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      )
                        ],
                      )
                      
                      
                    ],
                  ),
              ),
            ),
            ),
            const SizedBox(height: 15.0,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
            child: Material(
              elevation: 3.0,
              borderRadius: BorderRadius.circular(8),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: ClipRRect(
                       borderRadius: BorderRadius.circular(10),
                       child: Image.asset(
                        "images/new.jpg",
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                      ))),
                      const SizedBox(width: 8.0,),
                
                      Column(
                        children: [
                        SizedBox(
                         width: MediaQuery.of(context).size.width/1.85,
                         child: const Text(
                          "This photo won the best photo of the year 2024. #TheBestPhoto",
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(height: 7.0,),
                      SizedBox(
                         width: MediaQuery.of(context).size.width/1.85,
                         child: const Text(
                          "The photo was clicked by anshul kumar on his trip to Lonavala!!",
                          style: TextStyle(
                            color: Color.fromARGB(135, 10, 60, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      )
                        ],
                      )
                      
                      
                    ],
                  ),
              ),
            ),
            )
          ],
        ),
      )
    );
  }

  Widget buildImage(String image, int index, String name) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                image,
                height: 250,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Container(
              height: 250,
              padding: const EdgeInsets.only(left: 15.0),
              margin: const EdgeInsets.only(top: 190.0),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(150, 0, 0, 0),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: Text(
                name,
                style: const TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      );
  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: sliders.length,
        // curve: Curves.bounceIn,
        effect: const SlideEffect(
            dotWidth: 15,
            dotHeight: 15,
            dotColor: Colors.black87,
            activeDotColor: Colors.blue),
      );
}

class CategoryTitle extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final image, categoryName;
  const CategoryTitle({super.key, this.categoryName, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: Stack(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                image,
                width: 120,
                height: 70,
              )),
          Container(
              width: 120,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.black38,
              ),
              child: Center(
                child: Text(
                  categoryName,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ))
        ],
      ),
    );
  }
}
