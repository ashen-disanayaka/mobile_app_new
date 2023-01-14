import 'package:flutter/material.dart';
import 'package:fuel_mobileapp/endpage.dart';
import 'package:fuel_mobileapp/signin.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/img/2.png',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
          Column(
            children: [

              Padding(
                padding: const EdgeInsets.only(top: 75),
                child: Center(
                  child: Container(
                    width: 340,
                    height: 420,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Text('You Entered fuel Queue Now',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: 'MerriweatherSans',
                              fontSize: 20,
                              color: Colors.black,
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 49,
                          width: 279,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        SizedBox(
                          height: 35,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 38),
                          child: Row(
                            children: [
                              Text('Arrival Time :',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'MerriweatherSans',
                                    fontSize: 16,
                                    color: Colors.black,
                                  )),
                              SizedBox(
                                width: 8,
                              ),
                              Text(' xx:xx ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'MerriweatherSans',
                                    fontSize: 16,
                                    color: Colors.black,
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 45,
                        ),
                        Center(
                          child: InkResponse(
                            onHover: (value) {},
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Endpage()),
                              );
                            },
                            child: Container(
                              height: 44,
                              width: 279,
                              decoration: BoxDecoration(
                                color: Color(0xffC17113),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black54,
                                    blurRadius: 4.0,
                                    spreadRadius: 1.5,
                                    offset: Offset(
                                      3,
                                      3,
                                    ),
                                  ),
                                ],
                              ),
                              child:Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircleAvatar(
                                        radius: 14,
                                        backgroundColor: Color(0xA6E09B52),
                                        child: Center(
                                            child: Icon(
                                              Icons.directions_run_outlined,
                                              color: Colors.yellow,
                                            ))),
                                    SizedBox(width: 12,),
                                    Text('Exit after Pump fuel',
                                        style: TextStyle(
                                          fontFamily: 'MerriweatherSans',
                                          fontSize: 16,
                                          color: Colors.white,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Center(
                          child: InkResponse(
                            onHover: (value) {},
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SignIn()),
                              );
                            },
                            child: Container(
                              height: 44,
                              width: 279,
                              decoration: BoxDecoration(
                                color: Color(0xffDC9C52),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black54,
                                    blurRadius: 4.0,
                                    spreadRadius: 1.5,
                                    offset: Offset(
                                      3,
                                      3,
                                    ),
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    CircleAvatar(
                                        radius: 14,
                                        backgroundColor: Color(0xA6FFEB3B),
                                        child: Center(
                                            child: Icon(
                                              Icons.exit_to_app_outlined,
                                              color: Colors.red,
                                            ))),
                                    SizedBox(width: 12,),
                                    Text('Exit before Pump fuel',
                                        style: TextStyle(
                                          fontFamily: 'MerriweatherSans',
                                          fontSize: 16,
                                          color: Colors.white,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
