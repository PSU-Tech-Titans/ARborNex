// import 'package:arbornex/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'details_screen.dart';
import 'main_screen.dart';

class OutdoorLandscapingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MainScreen()),
            );
          },
        ),
        title: Center(
          child: Text(
            "OUTDOOR LANDSCAPING",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF004422)),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Color(0xFF004422),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Landscaper Expert",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildCard(
                    context,
                    'assets/images/image 1.png',
                    "Hi, I'm  Harrison Grove \n Landscape Architect",
                    'This is the description for design 1.',
                    'Additional information for project 1.',
                    123,
                  ),
                  buildCard(
                    context,
                    'assets/images/image 2.png',
                    'Landscaping Design 2',
                    'This is the description for design 2.',
                    'Additional information for project 2.',
                    456,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildCard(
                    context,
                    'assets/images/image 3.png',
                    'Landscaping Design 3',
                    'This is the description for design 3.',
                    'Additional information for project 3.',
                    789,
                  ),
                  buildCard(
                    context,
                    'assets/images/image 4.png',
                    'Landscaping Design 4',
                    'This is the description for design 4.',
                    'Additional information for project 4.',
                    1011,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard(
    BuildContext context,
    String imagePath,
    String title,
    String description,
    String additionalInfo,
    int likes,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(
              imagePath: imagePath,
              title: title,
              projectDescription: description,
              additionalInfo: additionalInfo,
              likes: likes,
            ),
          ),
        );
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          width: 185,
          height: 250,
          padding: EdgeInsets.all(10),
          child: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Positioned(
                left: -8,
                top: 20,
                child: RotatedBox(
                  quarterTurns: 3,
                  child: Stack(
                    children: [
                      Text(
                        "Landscape Architecture",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 2
                            ..color = Colors.white,
                        ),
                      ),
                      Text(
                        "Landscape Architecture",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF004422),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(5, (index) {
                    return Icon(
                      Icons.star,
                      size: 16,
                      color: Colors.green,
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
