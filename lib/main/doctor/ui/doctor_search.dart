import 'package:flutter/material.dart';

class DoctorSearch extends StatefulWidget {
  @override
  _DoctorSearchState createState() => _DoctorSearchState();
}

class _DoctorSearchState extends State<DoctorSearch> {
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
                image: AssetImage('assets/images/header.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(11.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hi John",
                              style: TextStyle(
                                  fontSize: 34,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "31 March, 2021",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Lorem ipsum dolor sit a met,consistency",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(width: 40),
                        CircleAvatar(
                          radius: 34,
                          backgroundImage:
                              AssetImage('assets/images/profile_pic.png'),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 3),
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
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Text(
                            'Catagories',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            'See all',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff23B2C5)),
                          ),
                        ),
                      ],
                    ),
                  ),
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
                                'assets/icons/vector_10.png',
                                fit: BoxFit.fill,
                              ),
                              Text(
                                "Medicine",
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
                                'assets/icons/vector_11.png',
                                fit: BoxFit.fill,
                              ),
                              Text(
                                "Pediatrician",
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
                                'assets/icons/vector_12.png',
                                fit: BoxFit.fill,
                              ),
                              Text(
                                "Gynecology",
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
                  SizedBox(height: 8),
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
                                'assets/icons/vector_13.png',
                                fit: BoxFit.fill,
                              ),
                              Text(
                                "Cardiology",
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
                                'assets/icons/vector_14.png',
                                fit: BoxFit.fill,
                              ),
                              Text(
                                "Dentist",
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
                                'assets/icons/vector_15.png',
                                fit: BoxFit.fill,
                              ),
                              Text(
                                "Dermatology",
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
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Text(
                            'Doctors',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Text(
                            'See all',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff23B2C5)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Card(
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Dr. Franklin",
                                    style: TextStyle(
                                      color: Color(0xff3e3b3e),
                                      fontSize: 12,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "Medicine Specialist\nAssistant Professor\nHarvard Medical School\nMBBS, FCPS, MRCP",
                                    style: TextStyle(
                                      color: Color(0xff3e3b3e),
                                      fontSize: 10,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            width: 175,
                            height: 210,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                alignment: Alignment.bottomRight,
                                image: AssetImage('assets/images/doctor_1.png'),
                                fit: BoxFit.scaleDown,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x26000000),
                                  blurRadius: 3,
                                  offset: Offset(0, 2),
                                ),
                              ],
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Card(
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Dr. Franklin",
                                    style: TextStyle(
                                      color: Color(0xff3e3b3e),
                                      fontSize: 12,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "Medicine Specialist\nAssistant Professor\nHarvard Medical School\nMBBS, FCPS, MRCP",
                                    style: TextStyle(
                                      color: Color(0xff3e3b3e),
                                      fontSize: 10,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            width: 175,
                            height: 210,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                alignment: Alignment.bottomRight,
                                image: AssetImage('assets/images/doctor_2.png'),
                                fit: BoxFit.scaleDown,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x26000000),
                                  blurRadius: 3,
                                  offset: Offset(0, 2),
                                ),
                              ],
                              color: Colors.white,
                            ),
                          ),
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
