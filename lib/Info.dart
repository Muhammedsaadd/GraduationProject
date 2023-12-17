import 'package:flutter/material.dart';
import 'ChoosePackage.dart';
void main() {
  runApp(Info());
}

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TrainerProfilePage(),
    );
  }
}

class TrainerProfilePage extends StatefulWidget {
  @override
  _TrainerProfilePageState createState() => _TrainerProfilePageState();
}

class _TrainerProfilePageState extends State<TrainerProfilePage> {
  final PageController _pageController = PageController();
  final List<String> transformationPhotos = [
    'assets/transformation_photo1.png',
    'assets/transformation_photo2.jpg',
    // Add more images as needed
  ];

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      if (_pageController.page == _pageController.page!.roundToDouble() &&
          _pageController.page!.toInt() == transformationPhotos.length) {
        _pageController.jumpToPage(0);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('assets/trainer.jpg'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Trainer Name',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.lightGreen),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit...',
                    style: TextStyle(fontSize: 16, color: Colors.lightGreen),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Transformation',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.lightGreen),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Container(
                height: 200,
                width: 200,
                color: Colors.black,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    PageView.builder(
                      controller: _pageController,
                      itemCount: transformationPhotos.length + 1,
                      itemBuilder: (context, index) {
                        if (index == transformationPhotos.length) {
                          return Container(); // Empty container for looping
                        }
                        return Container(
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(
                              transformationPhotos[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                    Positioned(
                      left: 0,
                      child: IconButton(
                        icon: Icon(Icons.arrow_back_ios, color: Colors.lightGreen),
                        onPressed: () {
                          if (_pageController.page != 0) {
                            _pageController.previousPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.ease,
                            );
                          }
                        },
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: IconButton(
                        icon: Icon(Icons.arrow_forward_ios, color: Colors.lightGreen),
                        onPressed: () {
                          if (_pageController.page != transformationPhotos.length) {
                            _pageController.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.ease,
                            );
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home, color: Colors.yellow),
              onPressed: () {
                // Implement home icon action
              },
            ),
            IconButton(
              icon: Icon(Icons.event_note, color: Colors.yellow),
              onPressed: () {
                // Implement list icon action
              },
            ),
            IconButton(
              icon: Icon(Icons.bar_chart, color: Colors.yellow),
              onPressed: () {
                // Implement stats icon action
              },
            ),
            IconButton(
              icon: Icon(Icons.person_2_rounded, color: Colors.yellow),
              onPressed: () {
                // Implement profile icon action
              },
            ),
          ],
        ),
      ),
      // Add the Next button here
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ChoosePackage()),
          );
        },
        label: Text('Next'),

        backgroundColor: Colors.yellow,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
