import 'package:carousel_slider/carousel_slider.dart';
import 'package:eye_t/contact/contact_form.dart';
import 'package:eye_t/widgets/call_schedule_widget.dart';
import 'package:eye_t/widgets/features_widget.dart';
import 'package:eye_t/widgets/topbar_widget.dart';
import 'package:flutter/material.dart';

class PageFoldScreen extends StatelessWidget {
  const PageFoldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TopBarWidget(
              title: 'PAGE FOLD LMS',
              subtitle: 'EyeT Innovations software solutions (P) Ltd',
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  'PageFold LMS is designed to manage all the functions of a library and completely automate your entire library. PageFold LMS allows librarians and administrators to stay updated and keep a real time track of all the media assets while keeping the joy of reading and knowledge alive among the students. Installed in various schools, colleges and institutions of various sizes, PageFold LMS is a preferred way of managing your library.'),
            ),
            const Text('Features of PAGE FOLD LMS',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
            CarouselSlider(
              items: [
                FeaturesWidget(
                  color: const Color.fromARGB(255, 112, 125, 131),
                  title: 'CATALOG',
                  expline:
                      'Catalog your book according to name, categories, sections and assign them to physical location in the library.',
                ),
                FeaturesWidget(
                    color: const Color.fromARGB(255, 118, 167, 191),
                    title: 'BARCODE SUPPORT ',
                    expline:
                        'Barcode issued to each book helps in issuing and returning the book. Entire process of issue/return of the book is automated to reduce effort, save time and is error proof. Barcoding also helps in assignment of books to each department, row, shelf and rack.'),
                FeaturesWidget(
                    color: const Color.fromARGB(255, 112, 125, 131),
                    title: 'USER SUPPORT',
                    expline:
                        'PageFold allows end users/students to manage their subscription with the number of books allowed per assigned time period. It can set reminders of when to return the book to avoid late charges.'),
                FeaturesWidget(
                    color: const Color.fromARGB(255, 118, 167, 191),
                    title: 'CARD',
                    expline:
                        'Issue unique student library cards with card issue feature of PageFold and mark them with unique identity bar/QR code for the ease of access.')
              ],
              options: CarouselOptions(
                height: 200.0,
                enlargeCenterPage: true,
                autoPlay: true,
              ),
            ),
            CallScheduleWidget(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ContactForm()));
              },
            )
          ],
        ),
      ),
    );
  }
}
