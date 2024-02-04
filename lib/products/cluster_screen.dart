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
              title: 'CLUSTER CRM',
              subtitle: 'EyeT Innovations software solutions (P) Ltd',
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  'Cluster CRM is a one-stop tool for businesses of all sizes to manage the entire lifecycle of a customer, from potential lead to customer service. We provide you complete control over the sales process, so you never miss a lead or opportunity to convert on to sales. Your success depends on the relationship that you build with your customers, regardless of whether you are a small business or an enterprise. Managing your leads and customers with just an excel sheet is a hassle and becomes complex when the team size and number of leads grow.'),
            ),
            const Text('Features of CLUSTER CRM',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
            CarouselSlider(
              items: [
                FeaturesWidget(
                  color: const Color.fromARGB(255, 112, 125, 131),
                  title: 'LEAD MANAGEMENT',
                  expline:
                      'Save time and make process simple for all the entity involved like doctors, patients, nurses and other administrators',
                ),
                FeaturesWidget(
                    color: const Color.fromARGB(255, 118, 167, 191),
                    title: 'WORK MANAGEMENTT ',
                    expline:
                        'Assign leads to employees/contractors as part of your work management '),
                FeaturesWidget(
                    color: const Color.fromARGB(255, 112, 125, 131),
                    title: 'BETTER COMMUNICATION',
                    expline:
                        'Assign work to employees as part of your workflow. '),
                FeaturesWidget(
                    color: const Color.fromARGB(255, 118, 167, 191),
                    title: 'DASHBOARD ',
                    expline:
                        'Get all the information at a single click on dashboard')
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
