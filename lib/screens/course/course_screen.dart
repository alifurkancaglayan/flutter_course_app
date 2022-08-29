import 'package:flutter/material.dart';
import 'package:flutter_course_app/models/Course.dart';
import 'package:flutter_course_app/screens/course/components/body.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key, required this.data});
  final Course data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(
        data: data,
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 80,
        child: Row(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 60,
                width: 70,
                decoration: const BoxDecoration(
                  color: Color(0xFFFFEDEE),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.local_mall,
                  color: Color(0xFFFF6679),
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 60,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Color(0xFF6E8AFA),
                  ),
                  child: const Center(
                    child: Text(
                      "Buy Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: BackButton(
        color: Colors.black,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
