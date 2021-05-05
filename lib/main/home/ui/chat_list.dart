import 'package:flutter/material.dart';

class Chatlist extends StatefulWidget {
  @override
  _ChatlistState createState() => _ChatlistState();
}

class _ChatlistState extends State<Chatlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 125,
        backgroundColor: Color(0xff23B2C5),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0),
            topRight: Radius.circular(0),
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        leading: IconButton(
          icon: Image.asset(
            "assets/icons/menu.png",
            isAntiAlias: true,
            fit: BoxFit.fitWidth,
          ),
          onPressed: () => {

          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CircleAvatar(
              radius: 42,
              backgroundImage: AssetImage('assets/images/profile_pic.png'),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(9.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12.0),
                      ),
                    ),
                    child: TextField(
                      textAlign: TextAlign.center,
                      onChanged: (val) {},
                      decoration: InputDecoration(
                        hintText: "Search messages",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        suffixIcon: Icon(
                          Icons.search,
                          size: 40,
                        ),
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                      ),
                      enableSuggestions: true,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 34,
                            backgroundImage:
                                AssetImage("assets/icons/vector_16.png"),
                          ),
                          title: Text('Prof.Dr.Michael Ellis'),
                          subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit..'),
                          selected: true,
                          onTap: () {
                            setState(() {
                              Text('List Tile was pressed');
                            });
                          },
                        ),
                        width: 356,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                          ),
                          color: Color(0x2604cc00),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 34,
                            backgroundImage:
                            AssetImage("assets/icons/vector_16.png"),
                          ),
                          title: Text('Prof.Dr.Michael Ellis'),
                          subtitle: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit..'),
                          selected: true,
                          onTap: () {
                            setState(() {
                              Text('List Tile was pressed');
                            });
                          },
                        ),
                        width: 356,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                          ),
                          color: Colors.grey[100],
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
