import 'package:flutter/material.dart';

class Mssg extends StatefulWidget {
  const Mssg({Key? key}) : super(key: key);

  @override
  State<Mssg> createState() => _MssgState();
}

class _MssgState extends State<Mssg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('tanjidamran'),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.video_collection)),
            IconButton(onPressed: () {}, icon: Icon(Icons.library_add_sharp)),
          ],
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 34,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 4,
                    ),
                    Icon(Icons.search),
                    SizedBox(
                      width: 4,
                    ),
                    Expanded(
                        child: Text(
                      'search',
                      style: TextStyle(fontSize: 17),
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Container(
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(left: 20, right: 20),
                height: 60,
                child: CircleAvatar(
                    radius: 45,
                    backgroundImage: NetworkImage(
                        'https://th.bing.com/th/id/OIP.RPrj1RfggeeXnNOM0aPSggHaHa?pid=ImgDet&w=192&h=192&c=7')),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 35, right: 20),
                height: 17,
                child: Text(
                  'Your note',
                  style: TextStyle(fontSize: 13),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 18,
                child: Stack(
                  children: [
                    Positioned(
                        left: 25,
                        top: 1,
                        child: Container(
                          height: 18,
                          width: 100,
                          child: Row(
                            children: [
                              Text('Messages'),
                            ],
                          ),
                        )),
                    Positioned(
                        left: MediaQuery.of(context).size.width - 80,
                        top: 1,
                        child: Container(
                          height: 18,
                          width: 100,
                          child: Text(
                            'Requests',
                            style: TextStyle(color: Colors.blue),
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 16,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.only(left: 5, right: 4),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundImage: NetworkImage(
                                'https://th.bing.com/th?id=OIP.XSZAFm-5JI7nriDLwZqRQQHaE7&w=306&h=203&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2'),
                          ),
                          Expanded(
                              child: ListTile(
                            title: Text('Bijoy Akram'),
                            subtitle: Text(
                              'Tour a jabi?',
                            ),
                            trailing: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.camera_alt_outlined)),
                          ))
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ));
  }
}
