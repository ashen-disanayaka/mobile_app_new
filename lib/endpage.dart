import 'package:flutter/material.dart';
import 'package:fuel_mobileapp/home.dart';

class Endpage extends StatefulWidget {
  const Endpage({Key? key}) : super(key: key);

  @override
  _EndpageState createState() => _EndpageState();
}

class _EndpageState extends State<Endpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/img/1.png',
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
                      children:  [
                        SizedBox(height: 50,),
                        Text('You got fuel quota successful ',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontFamily: 'MerriweatherSans',
                              fontSize: 20,
                              color: Colors.black,
                            )),
                        SizedBox(height: 60,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Arrival Time  :',
                                style: TextStyle(

                                  fontFamily: 'MerriweatherSans',
                                  fontSize: 16,
                                  color: Colors.black,
                                )),
                            SizedBox(width: 10,),
                            Text('xx : xx',
                                style: TextStyle(

                                  fontFamily: 'MerriweatherSans',
                                  fontSize: 16,
                                  color: Colors.black,
                                )),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Depart Time  : ',
                                style: TextStyle(

                                  fontFamily: 'MerriweatherSans',
                                  fontSize: 16,
                                  color: Colors.black,
                                )),
                            SizedBox(width: 10,),
                            Text('xx : xx',
                                style: TextStyle(

                                  fontFamily: 'MerriweatherSans',
                                  fontSize: 16,
                                  color: Colors.black,
                                )),
                          ],
                        ),
                        SizedBox(height: 120,),
                        Center(
                          child: InkResponse(
                            onHover: (value) {},
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Home()),
                              );

                            },

                            child: Container(
                              height: 44,
                              width: 284,
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
                              child: const Center(
                                child: Text('Thank You  come again...',
                                    style: TextStyle(
                                      fontFamily: 'MerriweatherSans',
                                      fontSize: 17,
                                      color: Colors.white,
                                    )),
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
