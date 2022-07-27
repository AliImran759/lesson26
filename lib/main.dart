import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Lesson26());
  }
}

class Lesson26 extends StatelessWidget {
  const Lesson26({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Castomcart(
              title: 'Попали в трудную ситуацию?',
              subtitle: 'Телефоны служб',
            ),
            SizedBox(
              height: 32,
            ),
            Castomcart(
                title: 'Тематически провести день?',
                subtitle: 'Маршруты прогулок',
            ),
            SizedBox(
              height: 32,
            ),
            Castomcart(
                title: 'Легко общаться с жителями?',
                subtitle: 'Выучите язык',
            ),
            SizedBox(
              height: 32,
            ),
            Castomcart(
                title: 'Хотите больше увидеть в России?',
                subtitle: 'Поездка по городам',
            ),
            SizedBox(
              height: 32,
            ),
            Castomcart(
                title: 'Нравится духовно развиваться?',
                subtitle: 'Музеи города',
            ),
          ],
        ),
      ),
    );
  }
}

class Castomcart extends StatelessWidget {
  final String title;
  final String subtitle;
  const Castomcart({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 24),
      width: MediaQuery.of(context).size.width * 0.9147,
      height: MediaQuery.of(context).size.height * 0.0985,
      decoration: BoxDecoration(
        color: Color(0xff59A4F2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(color: Colors.white),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
            size: 35,
          ),
        ],
      ),
    );
  }
}
