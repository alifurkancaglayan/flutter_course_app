import 'package:flutter/material.dart';
import 'package:flutter_course_app/models/Course.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.data});
  final Course data;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Widget _courseContentList(index) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "0" + (index + 1).toString(),
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xFFE4E7F4),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Text(
                      data.courseContent[index].time,
                      style: const TextStyle(
                        color: Color(0xFFA0A5BD),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      data.courseContent[index].title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: const Color(0xFF49CC96),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(
                Icons.play_arrow,
                color: Colors.white,
              ),
            ),
          ],
        ),
      );
    }

    return Column(
      children: [
        SizedBox(
          height: size.height * 0.5,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: -56,
                child: Image.asset(
                  data.image,
                  height: size.height * 0.5,
                  width: size.width,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/bestseller.png",
                        height: 30,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Desing Thinking",
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const Icon(
                            Icons.person_pin_outlined,
                            color: Color(0xFF6E8AFA),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            data.students + "k",
                            style: const TextStyle(
                              color: Color(0xFF6E8AFA),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Icon(
                            Icons.star,
                            color: Color(0xFF6E8AFA),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            data.star + "k",
                            style: const TextStyle(
                              color: Color(0xFF6E8AFA),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                      Text(
                        "\$${data.price}",
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: -95,
                child: Container(
                  height: size.height - (size.height * 0.44),
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 40, right: 20, bottom: 20, left: 20),
                        child: Text(
                          "Course Content",
                          style:
                              Theme.of(context).textTheme.headline6!.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 100),
                          child: ListView.builder(
                            itemCount: data.courseContent.length,
                            itemBuilder: (BuildContext context, int index) {
                              return _courseContentList(index);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
