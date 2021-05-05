import 'package:flutter/material.dart';

class DoctorProfile extends StatefulWidget {
  @override
  _DoctorProfileState createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
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
            width: 414,
            height: 223,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              color: Color(0xb200b4cc),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minWidth: 228,
                          maxHeight: 215,
                        ),
                        child: Image.asset("assets/images/dr_franklin.png",
                            fit: BoxFit.scaleDown),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit.\n-Franklin',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff00ee34),
                          ),
                        ),
                        Text(
                          'Dr. Franklin',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0xb200b4cc),
                          ),
                        ),
                        Text(
                          'Medicine Specialist\nAssistant professor\nHarvard Medical School\nMBBS, FCPS, MRCP',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 14),
                  Container(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 42.05,
                        maxHeight: 42.05,
                      ),
                      child: Image.asset("assets/icons/vector_18.png",
                          fit: BoxFit.fill),
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 42.05,
                        maxHeight: 42.05,
                      ),
                      child: Image.asset("assets/icons/vector_19.png",
                          fit: BoxFit.fill),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Date',
                      style: TextStyle(
                        color: Color(0xe53e3b3e),
                        fontSize: 17,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Center(
                              child: Text(
                                "4\nSun",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xe53e3b3e),
                                  fontSize: 18,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            width: 59.53,
                            height: 67.24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x26000000),
                                  blurRadius: 2,
                                  offset: Offset(0, 2),
                                ),
                              ],
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Center(
                              child: Text(
                                "5\nMon",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xe53e3b3e),
                                  fontSize: 18,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            width: 59.53,
                            height: 67.24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x26000000),
                                  blurRadius: 2,
                                  offset: Offset(0, 2),
                                ),
                              ],
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                            flex: 1,
                            child: Container(
                              child: Center(
                                child: Text(
                                  "6\nTus",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xe53e3b3e),
                                    fontSize: 18,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              width: 59.53,
                              height: 67.24,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x26000000),
                                    blurRadius: 2,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                                color: Color(0xff4bc9da),
                              ),
                            )),
                        SizedBox(width: 5),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: SizedBox(
                              width: 29.16,
                              height: 49.55,
                              child: Center(
                                child: Text(
                                  "7\nWed",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xe53e3b3e),
                                    fontSize: 18,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            width: 59.53,
                            height: 67.24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x26000000),
                                  blurRadius: 2,
                                  offset: Offset(0, 2),
                                ),
                              ],
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Center(
                              child: Text(
                                "8\nThu",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xe53e3b3e),
                                  fontSize: 18,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            width: 59.53,
                            height: 67.24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x26000000),
                                  blurRadius: 2,
                                  offset: Offset(0, 2),
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Center(
                              child: Text(
                                "9\nFri",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xe53e3b3e),
                                  fontSize: 18,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            width: 59.53,
                            height: 67.24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x26000000),
                                  blurRadius: 2,
                                  offset: Offset(0, 2),
                                ),
                              ],
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Center(
                              child: Text(
                                "10\nSat",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xe53e3b3e),
                                  fontSize: 18,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            width: 59.53,
                            height: 67.24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x26000000),
                                  blurRadius: 2,
                                  offset: Offset(0, 2),
                                ),
                              ],
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Center(
                              child: Text(
                                "11\nSun",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xe53e3b3e),
                                  fontSize: 18,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            width: 59.53,
                            height: 67.24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x26000000),
                                  blurRadius: 2,
                                  offset: Offset(0, 2),
                                ),
                              ],
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Center(
                              child: Text(
                                "12\nMon",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xe53e3b3e),
                                  fontSize: 18,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            width: 59.53,
                            height: 67.24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x26000000),
                                  blurRadius: 2,
                                  offset: Offset(0, 2),
                                ),
                              ],
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Center(
                              child: Text(
                                "13\nTus",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xe53e3b3e),
                                  fontSize: 18,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            width: 59.53,
                            height: 67.24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x26000000),
                                  blurRadius: 2,
                                  offset: Offset(0, 2),
                                ),
                              ],
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 13),
                    Text(
                      "Time",
                      style: TextStyle(
                        color: Color(0xe53e3b3e),
                        fontSize: 17,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            child: Center(
                              child: Text(
                                "9:00 am",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xe53e3b3e),
                                  fontSize: 16,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            width: 96,
                            height: 27,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x26000000),
                                  blurRadius: 2,
                                  offset: Offset(0, 2),
                                ),
                              ],
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: Container(
                            child: Center(
                              child: Text(
                                "10:00 am",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xe53e3b3e),
                                  fontSize: 16,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            width: 96,
                            height: 27,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x26000000),
                                  blurRadius: 2,
                                  offset: Offset(0, 2),
                                ),
                              ],
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: Container(
                            child: Center(
                              child: Text(
                                "11:00 am",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xe53e3b3e),
                                  fontSize: 16,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            width: 96,
                            height: 27,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x26000000),
                                  blurRadius: 2,
                                  offset: Offset(0, 2),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            child: Center(
                              child: Text(
                                "12:00 pm",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xe53e3b3e),
                                  fontSize: 16,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            width: 96,
                            height: 27,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x26000000),
                                  blurRadius: 2,
                                  offset: Offset(0, 2),
                                ),
                              ],
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: Container(
                            child: Center(
                              child: Text(
                                "3:00 pm",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xe53e3b3e),
                                  fontSize: 16,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            width: 96,
                            height: 27,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x26000000),
                                  blurRadius: 2,
                                  offset: Offset(0, 2),
                                ),
                              ],
                              color: Color(0xff4bc9da),
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: Container(
                            child: Center(
                              child: Text(
                                "4:00 pm",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xe53e3b3e),
                                  fontSize: 16,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                            width: 96,
                            height: 27,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x26000000),
                                  blurRadius: 2,
                                  offset: Offset(0, 2),
                                ),
                              ],
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: (){},
                          child: Container(
                            child: Center(
                              child: Text(
                                "Book Appointment",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            width: 323,
                            height: 39,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x26000000),
                                  blurRadius: 3,
                                  offset: Offset(0, 2),
                                ),
                              ],
                              color: Color(0xff42cbdd),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
