import 'package:flutter/material.dart';

class DocCatagoryList extends StatefulWidget {
  @override
  _DocCatagoryListState createState() => _DocCatagoryListState();
}

class _DocCatagoryListState extends State<DocCatagoryList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff23B2C5),
        elevation: 0,
        leading: IconButton(
          icon: Image.asset(
            "assets/icons/menu.png",
            isAntiAlias: true,
            fit: BoxFit.fitWidth,
          ),
          onPressed: () => {},
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage('assets/images/header_doc.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 40),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Hi John",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 90),
                        CircleAvatar(
                          radius: 34,
                          backgroundImage:
                              AssetImage('assets/images/profile_pic.png'),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 1),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                        ),
                        child: TextField(
                          textAlign: TextAlign.start,
                          onChanged: (val) {},
                          decoration: InputDecoration(
                            hintText: "Search what do you want?",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            prefixIcon: Icon(
                              Icons.search,
                              size: 30,
                            ),
                            suffixIcon: IconButton(
                              icon: Image.asset(
                                "assets/icons/search.png",
                                isAntiAlias: true,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                          ),
                          enableSuggestions: true,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Card(
                        elevation: 3,
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 34,
                            backgroundImage: AssetImage("assets/icons/vector_16.png"),
                          ),
                          trailing: GestureDetector(
                            onTap: (){},
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                minWidth: 75,
                                maxHeight: 36,
                              ),
                              child: Image.asset("assets/icons/vector_17.png", fit: BoxFit.fill),
                            ),
                          ) ,
                          title: Text('Prof.Dr.Michael Ellis'),
                          subtitle: Text('Medicine Specialist\nMBBS,FCPS,MD'),
                          selected: true,
                          onTap: () {
                            setState(() {
                              Text('List Tile was pressed');
                            });
                          },
                        ),
                      ),
                      Card(
                        elevation: 3,
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 34,
                            backgroundImage: AssetImage("assets/icons/vector_16.png"),
                          ),
                          trailing: GestureDetector(
                            onTap: (){},
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                minWidth: 75,
                                maxHeight: 36,
                              ),
                              child: Image.asset("assets/icons/vector_17.png", fit: BoxFit.fill,),
                            ),
                          ) ,
                          title: Text('Prof.Dr.Michael Ellis'),
                          subtitle: Text('Medicine Specialist\nMBBS,FCPS,MD'),
                          selected: true,
                          onTap: () {
                            setState(() {
                              Text('List Tile was pressed');
                            });
                          },
                        ),
                      ),
                      Card(
                        elevation: 3,
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 34,
                            backgroundImage: AssetImage("assets/icons/vector_16.png"),
                          ),
                          trailing: GestureDetector(
                            onTap: (){},
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                minWidth: 75,
                                maxHeight: 36,
                              ),
                              child: Image.asset("assets/icons/vector_17.png", fit: BoxFit.fill,),
                            ),
                          ) ,
                          title: Text('Prof.Dr.Michael Ellis'),
                          subtitle: Text('Medicine Specialist\nMBBS,FCPS,MD'),
                          selected: true,
                          onTap: () {
                            setState(() {
                              Text('List Tile was pressed');
                            });
                          },
                        ),
                      ),
                      Card(
                        elevation: 3,
                        child: ListTile(
                          leading: CircleAvatar(
                            radius: 34,
                            backgroundImage: AssetImage("assets/icons/vector_16.png"),
                          ),
                          trailing: GestureDetector(
                            onTap: (){},
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                minWidth: 75,
                                maxHeight: 36,
                              ),
                              child: Image.asset("assets/icons/vector_17.png", fit: BoxFit.fill,),
                            ),
                          ) ,
                          title: Text('Prof.Dr.Michael Ellis'),
                          subtitle: Text('Medicine Specialist\nMBBS,FCPS,MD'),
                          selected: true,
                          onTap: () {
                            setState(() {
                              Text('List Tile was pressed');
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
