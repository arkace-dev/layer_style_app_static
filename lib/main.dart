import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));

  runApp(MyApp());
}

const Color pinkBox = Color(0xFFE0719F);
const Color purpleBox = Color(0xFF8843AE);
const Color ultraVioletBox = Color(0xFF1B062A);
const Color greyBox = Color(0xFF8C92B2);

Widget avatarBuilder(String imgName) {
  return Container(
    width: 30,
    height: 30,
    child: CircleAvatar(
      backgroundImage: AssetImage('assets/images/$imgName'),
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      border: Border.all(
        color: Colors.white,
        width: 2,
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Raleway',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: greyBox,
        body: Column(
          children: <Widget>[
            TopConatiner(),
            PinkBox(),
            PurpleBox(),
            UltraVioletBox(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.add,
            color: ultraVioletBox,
          ),
          onPressed: () {},
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}

class TopConatiner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 160,
      color: pinkBox,
      child: Material(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(60),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            top: 24.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/4.jpg'),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text('You'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 60,
                    height: 60,
                    child: const Icon(
                      Icons.trending_up,
                      size: 30,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.pink,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Trending',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 60,
                    height: 60,
                    child: const Icon(
                      Icons.favorite_border,
                      size: 30,
                      color: Colors.grey,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[300],
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Health',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PinkBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 190,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: pinkBox,
            width: 0,
          ),
        ),
        color: purpleBox,
      ),
      child: Material(
        color: pinkBox,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(60),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 24.0,
            horizontal: 32.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 4,
              ),
              const Text(
                'TODAY 5:30 P.M.',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Yoga and Meditation Class for Beginners',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 50,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            child: avatarBuilder('1.jpg'),
                            left: 15,
                          ),
                          avatarBuilder('2.jpg'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const Text(
                      'Frank Martin, Bob and 10 others',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PurpleBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 190,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: purpleBox,
            width: 0,
          ),
        ),
        color: ultraVioletBox,
      ),
      child: Material(
        color: purpleBox,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(60),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 24.0,
            horizontal: 32.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 4,
              ),
              const Text(
                'TUESDAY 5:30 P.M.',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Practice French, English and Chinese',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 50,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            child: avatarBuilder('3.jpg'),
                            left: 15,
                          ),
                          avatarBuilder('5.jpg'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const Text(
                      'Bruce Wayne, Sam and 17 others',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UltraVioletBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 190,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: ultraVioletBox,
            width: 0,
          ),
        ),
        color: greyBox,
      ),
      child: Material(
        color: ultraVioletBox,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(60),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 24.0,
            horizontal: 32.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 4,
              ),
              const Text(
                'FRIDAY 6:00 P.M.',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Adobe XD Live Event, somewhere... I guess.',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 50,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            child: avatarBuilder('6.jpg'),
                            left: 15,
                          ),
                          avatarBuilder('7.jpg'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const Text(
                      'Samuel Jackson, Cranky and 89 others',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
