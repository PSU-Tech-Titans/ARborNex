import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String imagePath;
  final String title;
  final String projectDescription;
  final String additionalInfo;
  final int likes;

  DetailsScreen({
    required this.imagePath,
    required this.title,
    required this.projectDescription,
    required this.additionalInfo,
    required this.likes,
  });

// ITO KAPAG CLINICK UNG BAWAT CARD SA MAY OutdoorLandscaperScreen()
// THE PROBLEM HERE IS THE TEXT INSIDE THE CONTAINER/ CARD...
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Details",
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF004422)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 5,
              margin: EdgeInsets.all(16),
              child: Stack(
                children: [
                  Container(
                    width: 500,
                    height: 270,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        imagePath,
                        // width: 1000,
                        // height: 100,
                        alignment: Alignment
                            .topCenter, // Aligns the image to the top-center of the container
                      ),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    top: 16,
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        backgroundColor: Colors.black54,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: Row(
                      children: [
                        Icon(Icons.thumb_up, color: Colors.white),
                        SizedBox(width: 8),
                        Text(
                          "$likes Likes",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Project Description",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    projectDescription,
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Additional Information",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    additionalInfo,
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
