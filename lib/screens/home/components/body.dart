import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_course_app/models/Course.dart';
import 'package:flutter_course_app/screens/course/course_screen.dart';
import 'package:flutter_course_app/screens/home/components/categories_title.dart';
import 'package:flutter_course_app/screens/home/components/title_and_search_box.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Widget _courseCard(course) {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(course.image),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 20, top: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                course.name,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                course.totalCourse + "Courses",
                style: TextStyle(
                  color: Color(0xFF8F95B2),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Container(
      child: Column(
        children: [
          TitleAndSearchBox(),
          SizedBox(height: 5),
          CategoriesTitle(),
          SizedBox(height: 10),
          Container(
            child: Expanded(
              child: GridView.count(
                childAspectRatio: 2 / 3,
                mainAxisSpacing: 2,
                crossAxisCount: 2,
                children: List.generate(
                  courseList.length,
                  (index) => GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CourseScreen(
                            data: courseList[index],
                          ),
                        ),
                      );
                    },
                    child: _courseCard(
                      courseList[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
