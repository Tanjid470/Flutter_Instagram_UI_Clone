import 'package:flutter/material.dart';
import 'Image_Picker.dart';

class Video extends StatefulWidget {
  const Video({Key? key}) : super(key: key);

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Reels"), actions: [
        IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ImagePickerWidget()));
            },
            icon: Icon(Icons.camera_enhance_outlined))
      ]),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.refresh),
            SizedBox(
              height: 4,
              width: 5,
            ),
            Text(
              "We're sorry,but something went wrong. Please try again",
              style: TextStyle(fontSize: 20),
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
