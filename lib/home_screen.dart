import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * .3,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/top_header.png'),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    height: 64,
                    margin: const EdgeInsets.only(bottom: 20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          radius: 32,
                          backgroundImage: NetworkImage(
                            'https://steamuserimages-a.akamaihd.net/ugc/872998386575036955/8E005F4483B95746436CE0D1DC44124F4FB819C6/',
                          ),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Eren Yeager',
                              style: TextStyle(
                                fontFamily: 'Montserrat Medium',
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                            Text(
                              '1120120138',
                              style: TextStyle(
                                fontFamily: 'Montserrat Regular',
                                color: Colors.white,
                                fontSize: 14.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      crossAxisCount: 2,
                      primary: false,
                      children: const [
                        CardItem(
                          title: 'Personal Data',
                          image: 'assets/images/student.png',
                        ),
                        CardItem(
                          title: 'Course Schedule',
                          image: 'assets/images/discipline.png',
                        ),
                        CardItem(
                          title: 'Attendance Recap',
                          image: 'assets/images/attendance.png',
                        ),
                        CardItem(
                          title: 'Study Result',
                          image: 'assets/images/report-card.png',
                        ),
                        CardItem(
                          title: 'Course Booking',
                          image: 'assets/images/invoice.png',
                        ),
                        CardItem(
                          title: 'Course Plan',
                          image: 'assets/images/online-course.png',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            height: 64,
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Montserrat Regular',
              fontSize: 13,
              color: Color.fromRGBO(63, 63, 63, 1),
            ),
          ),
        ],
      ),
    );
  }
}
