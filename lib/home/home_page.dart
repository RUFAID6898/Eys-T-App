import 'package:carousel_slider/carousel_slider.dart';
import 'package:eye_t/products/pagefold_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'EyeT',
        ),
        actions: [Icon(Icons.menu)],
      ),
      body: ListView(
        children: [
          Container(
            height: 250,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://learn.g2.com/hubfs/web_developer.jpg'),
                    fit: BoxFit.cover)),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'EyeT Innovations Software Solution',
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Your technological partner in business growth',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.all(9.0),
                  child: Text(
                    'We find, create, and use technology that aids clients in problem-solving and makes the world a better place.',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CarouselSlider(
              items: [
                ProductSlider(
                  title: 'Augmented And Virtual Reality',
                  onTap: () {},
                  image:
                      'https://th.bing.com/th/id/OIP.G2iReZJtLUb2vp-Tffcq0wHaE8?rs=1&pid=ImgDetMain',
                ),
                ProductSlider(
                  title: 'E-commerce',
                  onTap: () {},
                  image:
                      'https://th.bing.com/th/id/OIP.xhxAQFNeKKv71ypHLiUn6wAAAA?rs=1&pid=ImgDetMain',
                ),
                ProductSlider(
                  title: 'Digital Media Marketing',
                  onTap: () {},
                  image:
                      'https://www.bandt.com.au/information/uploads/2016/06/what-is-digital-marketing.jpg',
                ),
                ProductSlider(
                  title: 'Block Chain',
                  onTap: () {},
                  image:
                      'https://th.bing.com/th/id/OIP.3R0bvcmuCmXNCdG-acG6dQHaEj?rs=1&pid=ImgDetMain',
                ),
                ProductSlider(
                  title: 'Augmented And Virtual Reality',
                  onTap: () {},
                  image: 'https://learn.g2.com/hubfs/web_developer.jpg',
                ),
              ],
              options: CarouselOptions(
                height: 200.0,
                enlargeCenterPage: true,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'OUR PRODUCTS',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
          ProductWidget(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageFoldScreen(),
                  ));
            },
            title: 'PAGE FOLD LMS',
          ),
          ProductWidget(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PageFoldScreen(),
                  ));
            },
            title: 'CLUSTER CRM',
          ),
          ProductWidget(
            onTap: () {},
            title: 'CLIQUE HR',
          ),
          ProductWidget(
            onTap: () {},
            title: 'MEDIHUB',
          ),
          ProductWidget(
            onTap: () {},
            title: 'REALVALUE PMS',
          ),
        ],
      ),
    );
  }
}

class ProductWidget extends StatelessWidget {
  String title;
  Function()? onTap;

  ProductWidget({
    required this.onTap,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  blurRadius: 10,
                  color: Color.fromARGB(255, 129, 126, 126),
                  // offset: Offset(5, 10),
                )
              ],
              color: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(20)),
          child: Center(
              child: Text(
            title,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20),
          )),
        ),
      ),
    );
  }
}

class ProductSlider extends StatelessWidget {
  String image;
  String title;
  Function()? onTap;

  ProductSlider({
    required this.image,
    required this.title,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
            image:
                DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(0)),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 17),
          ),
        ),
      ),
    );
  }
}
