import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class UI2 extends StatefulWidget {
  const UI2({Key? key}) : super(key: key);

  @override
  State<UI2> createState() => _UI2State();
}

class _UI2State extends State<UI2> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'tanjidamran',
          style: TextStyle(fontSize: 25),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [Colors.red, Colors.purple])),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.add_box_outlined)),
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                    isDismissible: false,
                    enableDrag: true,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    context: context,
                    backgroundColor: Colors.grey.shade800,
                    builder: (context) {
                      return const Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ListTile(
                            title: Text(
                              'Settings',
                              style: TextStyle(fontSize: 19),
                            ),
                            leading: Icon(Icons.settings),
                            minLeadingWidth: 2,
                          ),
                          SizedBox(
                            height: 0,
                          ),
                          ListTile(
                            title: Text(
                              'Your activity',
                              style: TextStyle(fontSize: 19),
                            ),
                            leading: Icon(Icons.timelapse_rounded),
                            minLeadingWidth: 2,
                          ),
                          ListTile(
                            title: Text(
                              'Archive',
                              style: TextStyle(fontSize: 19),
                            ),
                            leading: Icon(Icons.av_timer_rounded),
                            minLeadingWidth: 2,
                          ),
                          ListTile(
                            title: Text(
                              'QR code',
                              style: TextStyle(fontSize: 19),
                            ),
                            leading: Icon(Icons.qr_code_scanner_outlined),
                            minLeadingWidth: 2,
                          ),
                          ListTile(
                            title: Text(
                              'Saved',
                              style: TextStyle(fontSize: 19),
                            ),
                            leading: Icon(Icons.save),
                            minLeadingWidth: 2,
                          ),
                          ListTile(
                            title: Text(
                              'Close friends',
                              style: TextStyle(fontSize: 19),
                            ),
                            leading: Icon(Icons.mail_lock_outlined),
                            minLeadingWidth: 2,
                          ),
                          ListTile(
                            title: Text(
                              'Favourite',
                              style: TextStyle(fontSize: 19),
                            ),
                            leading: Icon(Icons.star_border),
                            minLeadingWidth: 2,
                          ),
                        ],
                      );
                    });
              },
              icon: const Icon(Icons.drag_handle)),
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 120,
              width: w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://th.bing.com/th/id/OIP.LU8QzJmcFoHbqMS3g4W2ogHaI6?w=161&h=195&c=7&r=0&o=5&pid=1.7'),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    height: 120,
                    width: 70,
                    child: const Center(
                      child: ListTile(
                        title: Text(
                          '147',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                        subtitle: Text('Posts'),
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 70,
                    child: const Center(
                      child: ListTile(
                        title: Text(
                          '428',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                        subtitle: Text('Follwers'),
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 75,
                    child: const Center(
                      child: ListTile(
                        title: Text(
                          '240',
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                        subtitle: Text('Foll....'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 0,
            ),
            Container(
                // color: Colors.red,
                width: w,
                height: 50,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      '   Tanjid Emran',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '    Be your self,No one else',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                )),
            Container(
              //color: Colors.green,
              height: 40,
              width: w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 32,
                    width: 140,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade700,
                        borderRadius: const BorderRadius.all(Radius.circular(10))),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Edit Profile',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )),
                  ),
                  Container(
                    height: 32,
                    width: 140,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade700,
                        borderRadius: const BorderRadius.all(Radius.circular(10))),
                    child: TextButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.grey,
                            content: const Text(
                              'maintenance',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            duration: const Duration(milliseconds: 200),
                            action: SnackBarAction(
                                label: 'Undo',
                                textColor: const Color(0xff91d794),
                                onPressed: () {}),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                          ));
                        },
                        child: const Text(
                          'Share Profile',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )),
                  ),
                  Container(
                    height: 32,
                    width: 35,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade700,
                        borderRadius: const BorderRadius.all(Radius.circular(10))),
                    child: TextButton(
                      onPressed: () {},
                      child:
                          const Icon(Icons.person_add, color: Colors.white, size: 22),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // color: Colors.green,
              height: 120,
              width: w,
              alignment: Alignment.topLeft,
              //color: Colors.white,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    height: 80,
                    width: 80,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                        border:
                            Border.all(color: Colors.purple.shade400, width: 3),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://th.bing.com/th/id/OIP.nTK-yAWL01laY6CKjMEq3gHaHa?w=186&h=187&c=7&r=0&o=5&pid=1.7'))),
                  );
                },
              ),
            ),
            Container(
              child: TabBar(
                  controller: _tabController,
                  indicatorColor: Colors.amber.shade300,
                  tabs: [
                    const Tab(
                      icon: Icon(
                        Icons.grid_on_outlined,
                        size: 30,
                      ),
                    ),
                    const Tab(
                      icon: Icon(Icons.video_collection_rounded, size: 30),
                    ),
                    const Tab(
                      icon: Icon(Icons.person_pin_outlined, size: 30),
                    ),
                  ]),
            ),
            Expanded(
              child: TabBarView(controller: _tabController, children: [
                Container(
                  // color: Colors.blue,
                  child: GridView(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                    ),
                    children: <Widget>[
                      Container(
                        height: 50,
                        width: w / 4,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://th.bing.com/th?q=Profile+Vector&w=120&h=120&c=1&rs=1&qlt=90&cb=1&pid=InlineBlock&mkt=en-WW&cc=BD&setlang=en&adlt=moderate&t=1&mw=247'))),
                      ),
                      Container(
                        height: 50,
                        width: w / 4,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://scontent.fdac99-1.fna.fbcdn.net/v/t1.6435-9/120351630_916558922204467_6983492974136640267_n.jpg?stp=c41.0.206.206a_dst-jpg_p206x206&_nc_cat=108&ccb=1-7&_nc_sid=da31f3&_nc_eui2=AeHObDPEW4ShgJ9eebu-gfeKkIFNnl0Cf7qQgU2eXQJ_uj0GOxeFZqNsjVe4zf_tVnqFuGnD6Tg3AQlhm8mi-wJO&_nc_ohc=J8QIQJNGviIAX_NmT6M&_nc_ht=scontent.fdac99-1.fna&oh=00_AfCMlDPd7u6SGUzQChFoY--FcmvWaggzC562fDaUzbgDDA&oe=649D6E35'))),
                      ),
                      Container(
                        height: 50,
                        width: w / 4,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://th.bing.com/th?q=Profile+Vector&w=120&h=120&c=1&rs=1&qlt=90&cb=1&pid=InlineBlock&mkt=en-WW&cc=BD&setlang=en&adlt=moderate&t=1&mw=247'))),
                      ),
                      Container(
                        height: 50,
                        width: w / 4,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://scontent.fdac99-1.fna.fbcdn.net/v/t1.6435-9/120351630_916558922204467_6983492974136640267_n.jpg?stp=c41.0.206.206a_dst-jpg_p206x206&_nc_cat=108&ccb=1-7&_nc_sid=da31f3&_nc_eui2=AeHObDPEW4ShgJ9eebu-gfeKkIFNnl0Cf7qQgU2eXQJ_uj0GOxeFZqNsjVe4zf_tVnqFuGnD6Tg3AQlhm8mi-wJO&_nc_ohc=J8QIQJNGviIAX_NmT6M&_nc_ht=scontent.fdac99-1.fna&oh=00_AfCMlDPd7u6SGUzQChFoY--FcmvWaggzC562fDaUzbgDDA&oe=649D6E35'))),
                      ),
                      Container(
                        height: 50,
                        width: w / 4,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://scontent.fdac99-1.fna.fbcdn.net/v/t1.6435-9/120351630_916558922204467_6983492974136640267_n.jpg?stp=c41.0.206.206a_dst-jpg_p206x206&_nc_cat=108&ccb=1-7&_nc_sid=da31f3&_nc_eui2=AeHObDPEW4ShgJ9eebu-gfeKkIFNnl0Cf7qQgU2eXQJ_uj0GOxeFZqNsjVe4zf_tVnqFuGnD6Tg3AQlhm8mi-wJO&_nc_ohc=J8QIQJNGviIAX_NmT6M&_nc_ht=scontent.fdac99-1.fna&oh=00_AfCMlDPd7u6SGUzQChFoY--FcmvWaggzC562fDaUzbgDDA&oe=649D6E35'))),
                      ),
                      Container(
                        height: 50,
                        width: w / 4,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://th.bing.com/th?q=Profile+Vector&w=120&h=120&c=1&rs=1&qlt=90&cb=1&pid=InlineBlock&mkt=en-WW&cc=BD&setlang=en&adlt=moderate&t=1&mw=247'))),
                      ),
                      Container(
                        height: 50,
                        width: w / 4,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://scontent.fdac99-1.fna.fbcdn.net/v/t1.6435-9/120351630_916558922204467_6983492974136640267_n.jpg?stp=c41.0.206.206a_dst-jpg_p206x206&_nc_cat=108&ccb=1-7&_nc_sid=da31f3&_nc_eui2=AeHObDPEW4ShgJ9eebu-gfeKkIFNnl0Cf7qQgU2eXQJ_uj0GOxeFZqNsjVe4zf_tVnqFuGnD6Tg3AQlhm8mi-wJO&_nc_ohc=J8QIQJNGviIAX_NmT6M&_nc_ht=scontent.fdac99-1.fna&oh=00_AfCMlDPd7u6SGUzQChFoY--FcmvWaggzC562fDaUzbgDDA&oe=649D6E35'))),
                      ),
                      Container(
                        height: 50,
                        width: w / 4,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://th.bing.com/th?q=Profile+Vector&w=120&h=120&c=1&rs=1&qlt=90&cb=1&pid=InlineBlock&mkt=en-WW&cc=BD&setlang=en&adlt=moderate&t=1&mw=247'))),
                      ),
                      Container(
                        height: 50,
                        width: w / 4,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://th.bing.com/th?q=Profile+Vector&w=120&h=120&c=1&rs=1&qlt=90&cb=1&pid=InlineBlock&mkt=en-WW&cc=BD&setlang=en&adlt=moderate&t=1&mw=247'))),
                      ),
                      Container(
                        height: 50,
                        width: w / 4,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://scontent.fdac99-1.fna.fbcdn.net/v/t1.6435-9/120351630_916558922204467_6983492974136640267_n.jpg?stp=c41.0.206.206a_dst-jpg_p206x206&_nc_cat=108&ccb=1-7&_nc_sid=da31f3&_nc_eui2=AeHObDPEW4ShgJ9eebu-gfeKkIFNnl0Cf7qQgU2eXQJ_uj0GOxeFZqNsjVe4zf_tVnqFuGnD6Tg3AQlhm8mi-wJO&_nc_ohc=J8QIQJNGviIAX_NmT6M&_nc_ht=scontent.fdac99-1.fna&oh=00_AfCMlDPd7u6SGUzQChFoY--FcmvWaggzC562fDaUzbgDDA&oe=649D6E35'))),
                      ),
                      Container(
                        height: 50,
                        width: w / 4,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://th.bing.com/th?q=Profile+Vector&w=120&h=120&c=1&rs=1&qlt=90&cb=1&pid=InlineBlock&mkt=en-WW&cc=BD&setlang=en&adlt=moderate&t=1&mw=247'))),
                      ),
                      Container(
                        height: 50,
                        width: w / 4,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://scontent.fdac99-1.fna.fbcdn.net/v/t1.6435-9/120351630_916558922204467_6983492974136640267_n.jpg?stp=c41.0.206.206a_dst-jpg_p206x206&_nc_cat=108&ccb=1-7&_nc_sid=da31f3&_nc_eui2=AeHObDPEW4ShgJ9eebu-gfeKkIFNnl0Cf7qQgU2eXQJ_uj0GOxeFZqNsjVe4zf_tVnqFuGnD6Tg3AQlhm8mi-wJO&_nc_ohc=J8QIQJNGviIAX_NmT6M&_nc_ht=scontent.fdac99-1.fna&oh=00_AfCMlDPd7u6SGUzQChFoY--FcmvWaggzC562fDaUzbgDDA&oe=649D6E35'))),
                      ),
                      Container(
                        height: 50,
                        width: w / 4,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://scontent.fdac99-1.fna.fbcdn.net/v/t1.6435-9/120351630_916558922204467_6983492974136640267_n.jpg?stp=c41.0.206.206a_dst-jpg_p206x206&_nc_cat=108&ccb=1-7&_nc_sid=da31f3&_nc_eui2=AeHObDPEW4ShgJ9eebu-gfeKkIFNnl0Cf7qQgU2eXQJ_uj0GOxeFZqNsjVe4zf_tVnqFuGnD6Tg3AQlhm8mi-wJO&_nc_ohc=J8QIQJNGviIAX_NmT6M&_nc_ht=scontent.fdac99-1.fna&oh=00_AfCMlDPd7u6SGUzQChFoY--FcmvWaggzC562fDaUzbgDDA&oe=649D6E35'))),
                      ),
                      Container(
                        height: 50,
                        width: w / 4,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://th.bing.com/th?q=Profile+Vector&w=120&h=120&c=1&rs=1&qlt=90&cb=1&pid=InlineBlock&mkt=en-WW&cc=BD&setlang=en&adlt=moderate&t=1&mw=247'))),
                      ),
                      Container(
                        height: 50,
                        width: w / 4,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://scontent.fdac99-1.fna.fbcdn.net/v/t1.6435-9/120351630_916558922204467_6983492974136640267_n.jpg?stp=c41.0.206.206a_dst-jpg_p206x206&_nc_cat=108&ccb=1-7&_nc_sid=da31f3&_nc_eui2=AeHObDPEW4ShgJ9eebu-gfeKkIFNnl0Cf7qQgU2eXQJ_uj0GOxeFZqNsjVe4zf_tVnqFuGnD6Tg3AQlhm8mi-wJO&_nc_ohc=J8QIQJNGviIAX_NmT6M&_nc_ht=scontent.fdac99-1.fna&oh=00_AfCMlDPd7u6SGUzQChFoY--FcmvWaggzC562fDaUzbgDDA&oe=649D6E35'))),
                      ),
                      Container(
                        height: 50,
                        width: w / 4,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://th.bing.com/th?q=Profile+Vector&w=120&h=120&c=1&rs=1&qlt=90&cb=1&pid=InlineBlock&mkt=en-WW&cc=BD&setlang=en&adlt=moderate&t=1&mw=247'))),
                      ),
                      Container(
                        height: 50,
                        width: w / 4,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://th.bing.com/th?q=Profile+Vector&w=120&h=120&c=1&rs=1&qlt=90&cb=1&pid=InlineBlock&mkt=en-WW&cc=BD&setlang=en&adlt=moderate&t=1&mw=247'))),
                      ),
                      Container(
                        height: 50,
                        width: w / 4,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://scontent.fdac99-1.fna.fbcdn.net/v/t1.6435-9/120351630_916558922204467_6983492974136640267_n.jpg?stp=c41.0.206.206a_dst-jpg_p206x206&_nc_cat=108&ccb=1-7&_nc_sid=da31f3&_nc_eui2=AeHObDPEW4ShgJ9eebu-gfeKkIFNnl0Cf7qQgU2eXQJ_uj0GOxeFZqNsjVe4zf_tVnqFuGnD6Tg3AQlhm8mi-wJO&_nc_ohc=J8QIQJNGviIAX_NmT6M&_nc_ht=scontent.fdac99-1.fna&oh=00_AfCMlDPd7u6SGUzQChFoY--FcmvWaggzC562fDaUzbgDDA&oe=649D6E35'))),
                      ),
                      Container(
                        height: 50,
                        width: w / 4,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://th.bing.com/th?q=Profile+Vector&w=120&h=120&c=1&rs=1&qlt=90&cb=1&pid=InlineBlock&mkt=en-WW&cc=BD&setlang=en&adlt=moderate&t=1&mw=247'))),
                      ),
                      Container(
                        height: 50,
                        width: w / 4,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://scontent.fdac99-1.fna.fbcdn.net/v/t1.6435-9/120351630_916558922204467_6983492974136640267_n.jpg?stp=c41.0.206.206a_dst-jpg_p206x206&_nc_cat=108&ccb=1-7&_nc_sid=da31f3&_nc_eui2=AeHObDPEW4ShgJ9eebu-gfeKkIFNnl0Cf7qQgU2eXQJ_uj0GOxeFZqNsjVe4zf_tVnqFuGnD6Tg3AQlhm8mi-wJO&_nc_ohc=J8QIQJNGviIAX_NmT6M&_nc_ht=scontent.fdac99-1.fna&oh=00_AfCMlDPd7u6SGUzQChFoY--FcmvWaggzC562fDaUzbgDDA&oe=649D6E35'))),
                      ),
                      Container(
                        height: 50,
                        width: w / 4,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://scontent.fdac99-1.fna.fbcdn.net/v/t1.6435-9/120351630_916558922204467_6983492974136640267_n.jpg?stp=c41.0.206.206a_dst-jpg_p206x206&_nc_cat=108&ccb=1-7&_nc_sid=da31f3&_nc_eui2=AeHObDPEW4ShgJ9eebu-gfeKkIFNnl0Cf7qQgU2eXQJ_uj0GOxeFZqNsjVe4zf_tVnqFuGnD6Tg3AQlhm8mi-wJO&_nc_ohc=J8QIQJNGviIAX_NmT6M&_nc_ht=scontent.fdac99-1.fna&oh=00_AfCMlDPd7u6SGUzQChFoY--FcmvWaggzC562fDaUzbgDDA&oe=649D6E35'))),
                      ),
                      Container(
                        height: 50,
                        width: w / 4,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://th.bing.com/th?q=Profile+Vector&w=120&h=120&c=1&rs=1&qlt=90&cb=1&pid=InlineBlock&mkt=en-WW&cc=BD&setlang=en&adlt=moderate&t=1&mw=247'))),
                      ),
                      Container(
                        height: 50,
                        width: w / 4,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://scontent.fdac99-1.fna.fbcdn.net/v/t1.6435-9/120351630_916558922204467_6983492974136640267_n.jpg?stp=c41.0.206.206a_dst-jpg_p206x206&_nc_cat=108&ccb=1-7&_nc_sid=da31f3&_nc_eui2=AeHObDPEW4ShgJ9eebu-gfeKkIFNnl0Cf7qQgU2eXQJ_uj0GOxeFZqNsjVe4zf_tVnqFuGnD6Tg3AQlhm8mi-wJO&_nc_ohc=J8QIQJNGviIAX_NmT6M&_nc_ht=scontent.fdac99-1.fna&oh=00_AfCMlDPd7u6SGUzQChFoY--FcmvWaggzC562fDaUzbgDDA&oe=649D6E35'))),
                      ),
                      Container(
                        height: 50,
                        width: w / 4,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://th.bing.com/th?q=Profile+Vector&w=120&h=120&c=1&rs=1&qlt=90&cb=1&pid=InlineBlock&mkt=en-WW&cc=BD&setlang=en&adlt=moderate&t=1&mw=247'))),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: const Center(
                    child: Center(
                      child: Text(
                        'no videos available',
                        style:
                            TextStyle(fontSize: 22, color: Color(0xffd0d5cb)),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: GridView(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                    ),
                    children: [
                      Container(
                        height: 50,
                        width: w / 4,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://th.bing.com/th/id/OIP.vWXsn90V3eFj6GZskHcpLAHaGE?w=214&h=180&c=7&r=0&o=5&pid=1.7'))),
                      ),
                      Container(
                        height: 50,
                        width: w / 4,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://th.bing.com/th/id/OIP.PNO0iiJyLjRyjFrItKVwvAHaEK?w=316&h=180&c=7&r=0&o=5&pid=1.7'))),
                      ),
                    ],
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
