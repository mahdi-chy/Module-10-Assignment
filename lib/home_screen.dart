import 'package:flutter/material.dart';
import 'package:ostad_assignment_1/floating_card_template.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.circle_outlined),
        ),
        title: const Text(
          'ওস্তাদ এর কোর্সসমূহ',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange.shade300,
        elevation: 1,
        toolbarHeight: 80,
      ),
      body: SafeArea(
        minimum: const EdgeInsets.all(4), // add padding inside SafeArea
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: FloatingCardTemplate(
                      headlineText:
                          'পাইথন, জাঙ্গো & রিয়্যাক্ট দিয়ে ফুল স্ট্যাক ওয়েব ডেভেলপমেন্ট',
                      imageLink:
                          'https://cdn.ostad.app/course/cover/2024-12-19T15-48-52.487Z-Full-Stack-Web-Development-with-Python,-Django-&-React.jpg',
                      firstLabel: " ব্যাচ ৮",
                      secondLabel: " ১৯ সিট বাকী",
                      thirdLabel: " ৮ দিন বাকী",
                    ),
                  ),
                  SizedBox(width: 2),
                  Expanded(
                    child: FloatingCardTemplate(
                      headlineText:
                          'ডেভঅপস মাস্টারি: ফান্ডামেন্টাল থেকে অ্যাডভান্সড অনুশীলন',
                      imageLink:
                          'https://cdn.ostad.app/course/cover/2025-01-23T12-32-14.452Z-Untitled-1%20(1)%20(1).jpg',
                      firstLabel: " ব্যাচ ৮",
                      secondLabel: " ৮০ সিট বাকী",
                      thirdLabel: " ২৭ দিন বাকী",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: FloatingCardTemplate(
                      headlineText:
                          'ফ্লাটার দিয়ে মোবাইল অ্যাপ ডেভেলপমেন্ট: শূণ্য থেকে দক্ষ',
                      imageLink:
                          'https://cdn.ostad.app/course/cover/2024-12-18T15-22-42.948Z-Flutter-Thumbnail.jpg',
                      firstLabel: " ব্যাচ ১৫",
                      secondLabel: " ৬৩ সিট বাকী",
                      thirdLabel: " ৩৯ দিন বাকী",
                    ),
                  ),
                  SizedBox(width: 2),
                  Expanded(
                    child: FloatingCardTemplate(
                      headlineText:
                          ' জাভা এবং স্প্রিংবুট দিয়ে ব্যাকএন্ড ওয়েব ডেভেলপমেন্ট',
                      imageLink:
                          'https://cdn.ostad.app/course/cover/2025-06-26T19-36-51.832Z-java-springb-thumb-copy.jpg',
                      firstLabel: " ব্যাচ ৩",
                      secondLabel: " ৪১ সিট বাকী",
                      thirdLabel: " ৩৩ দিন বাকী",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
