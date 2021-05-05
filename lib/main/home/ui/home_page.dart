import 'package:flutter/material.dart';
import 'package:pms_telemedicine_flutter/main/doctor/ui/chat_doc.dart';
import 'package:pms_telemedicine_flutter/main/doctor/ui/doctor_catagory_list.dart';
import 'package:pms_telemedicine_flutter/main/doctor/ui/doctor_profile.dart';
import 'package:pms_telemedicine_flutter/main/doctor/ui/doctor_search.dart';
import 'chat_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _selectedItemIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildNavBarItem(Icons.dashboard_rounded, 0),
          buildNavBarItem2(Icons.mark_chat_unread, 1),
          buildNavBarItem2(Icons.search, 2),
          buildNavBarItem2(Icons.library_books_sharp, 3),
          buildNavBarItem3(Icons.account_circle_outlined, 4),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Color(0xff23B2C5),
        title: Text("Home"),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
            icon: Image.asset(
              "assets/icons/menu.png",
              isAntiAlias: true,
              fit: BoxFit.fitWidth,
            ),
            onPressed: () => _scaffoldKey.currentState.openDrawer()),
      ),
      drawer: Drawer(
        elevation: 10,
        child: Container(
          width: 337,
          height: 896,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/shape.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                margin: EdgeInsets.all(1),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 37,
                            backgroundImage:
                                AssetImage('assets/images/profile_pic.png'),
                          ),
                          SizedBox(width: 10),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'John McCollum',
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  'Patient',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text(
                        'Profile',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      leading: IconButton(
                        icon: Image.asset(
                          "assets/icons/vector_1.png",
                          isAntiAlias: true,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DoctorProfile()));
                      },
                    ),
                    ListTile(
                      title: Text(
                        'Diagnostic Center',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      leading: IconButton(
                        icon: Image.asset(
                          "assets/icons/vector_2.png",
                          isAntiAlias: true,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text(
                        'Doctor',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      leading: IconButton(
                        icon: Image.asset(
                          "assets/icons/vector_3.png",
                          isAntiAlias: true,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DoctorSearch()));
                      },
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          title: Text(
                            "Medicines",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DocCatagoryList()));
                          },
                        ),
                        ListTile(
                          title: Text(
                            "Pediatrician",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Chatlist()));
                          },
                        ),
                        ListTile(
                          title: Text(
                            "Gynecology",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          onTap: () {
                            Navigator.pop(context);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DoctorChat()));
                          },
                        ),
                        ListTile(
                          title: Text(
                            "Cardiology",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                    ListTile(
                      title: Text(
                        'Prescriptions',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      leading: IconButton(
                        icon: Image.asset(
                          "assets/icons/vector_4.png",
                          isAntiAlias: true,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text(
                        'Ambulance',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      leading: IconButton(
                        icon: Image.asset(
                          "assets/icons/vector_5.png",
                          isAntiAlias: true,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text(
                        'Lab Work',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      leading: IconButton(
                        icon: Image.asset(
                          "assets/icons/vector_6.png",
                          isAntiAlias: true,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text(
                        'Store',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      leading: IconButton(
                        icon: Image.asset(
                          "assets/icons/vector_7.png",
                          isAntiAlias: true,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text(
                        'Settings',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      leading: IconButton(
                        icon: Image.asset(
                          "assets/icons/vector_8.png",
                          isAntiAlias: true,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    height: 64,
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hi John",
                              style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "31 March, 2021",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(width: 120),
                        CircleAvatar(
                          radius: 34,
                          backgroundImage:
                              AssetImage('assets/images/profile_pic.png'),
                        ),
                      ],
                    ),
                  ),
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
                              prefixIcon: Icon(Icons.search),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                            ),
                            enableSuggestions: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/icons/icon_one.png',
                                fit: BoxFit.fill,
                              ),
                              Text(
                                "Diagnostic",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff3e3b3e),
                                  fontSize: 13,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                          width: 90,
                          height: 92,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x26000000),
                                blurRadius: 10,
                                offset: Offset(0, 0),
                              ),
                            ],
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/icons/icon_two.png',
                                fit: BoxFit.fill,
                              ),
                              Text(
                                "Doctors",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff3e3b3e),
                                  fontSize: 13,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                          width: 90,
                          height: 92,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x26000000),
                                blurRadius: 10,
                                offset: Offset(0, 0),
                              ),
                            ],
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/icons/icon_three.png',
                                fit: BoxFit.fill,
                              ),
                              Text(
                                "Prescriptions",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff3e3b3e),
                                  fontSize: 13,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                          width: 90,
                          height: 92,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x26000000),
                                blurRadius: 10,
                                offset: Offset(0, 0),
                              ),
                            ],
                            color: Colors.white,
                          ),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/icons/icon_four.png',
                                fit: BoxFit.fill,
                              ),
                              Text(
                                "Ambulance",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff3e3b3e),
                                  fontSize: 13,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                          width: 90,
                          height: 92,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x26000000),
                                blurRadius: 10,
                                offset: Offset(0, 0),
                              ),
                            ],
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/icons/icon_five.png',
                                fit: BoxFit.fill,
                              ),
                              Text(
                                "Lab Work",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff3e3b3e),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                          width: 90,
                          height: 92,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x26000000),
                                blurRadius: 10,
                                offset: Offset(0, 0),
                              ),
                            ],
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/icons/icon_six.png',
                                fit: BoxFit.fill,
                              ),
                              Text(
                                "Store",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff3e3b3e),
                                  fontSize: 13,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          width: 90,
                          height: 92,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x26000000),
                                blurRadius: 10,
                                offset: Offset(0, 0),
                              ),
                            ],
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Expanded(
                    child: Card(
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ambulance available outside your door!",
                                style: TextStyle(
                                  color: Color(0xff3e3b3e),
                                  fontSize: 14,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Ambulance available outside your door!\nAmbulance available outside your door!\nAmbulance available outside your door!\nAmbulance available outside your door!\nAmbul ance available outside.",
                                style: TextStyle(
                                  color: Color(0xff3e3b3e),
                                  fontSize: 12,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                        height: 212,
                        width: 385,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            alignment: Alignment.bottomRight,
                            image: AssetImage('assets/images/ambulance.png'),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Expanded(
                    child: Card(
                      child: Container(
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Stay Home During COVID!",
                                style: TextStyle(
                                  color: Color(0xff3e3b3e),
                                  fontSize: 14,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Ambulance available outside your door!\nAmbulance available outside your door!\nAmbulance available outside your door!\nAmbulance available outside your door!\nAmbul ance available outside.",
                                style: TextStyle(
                                  color: Color(0xff3e3b3e),
                                  fontSize: 12,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            alignment: Alignment.bottomRight,
                            image: AssetImage('assets/images/patient.png'),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        height: 212,
                        width: 385,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Center(
          //   child: Text("Hello from Item $_selectedItemIndex"),
          // ),
        ],
      ),
    );
  }

  Widget buildNavBarItem3(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 5,
        height: 54,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
          ),
          color: Color(0xff4bc9da),
        ),
        child: Icon(icon,
            color: index == _selectedItemIndex ? Colors.white : Colors.blueGrey,
            size: 30),
      ),
    );
  }

  Widget buildNavBarItem2(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 5,
        height: 54,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(0),
          ),
          color: Color(0xff4bc9da),
        ),
        child: Icon(icon,
            color: index == _selectedItemIndex ? Colors.white : Colors.blueGrey,
            size: 30),
      ),
    );
  }

  Widget buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 5,
        height: 54,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
          ),
          color: Color(0xff4bc9da),
        ),
        child: Icon(icon,
            color: index == _selectedItemIndex ? Colors.white : Colors.blueGrey,
            size: 30),
      ),
    );
  }

  AppBar buildAppBar(context) {
    return AppBar(
      backgroundColor: Color(0xff23B2C5),
      title: Text("Home"),
      centerTitle: true,
      elevation: 0,
      leading: IconButton(
        icon: Image.asset(
          "assets/icons/menu.png",
          isAntiAlias: true,
          fit: BoxFit.fitWidth,
        ),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      ),
    );
  }
}
