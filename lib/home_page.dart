import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'AI Control',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.lightBlue,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(

            children: [

              Container(
                child: Stack(
                  children: [

                    Opacity(opacity: 0.5,
                      child: ClipPath(
                        clipper:WaveClipper(),
                        child: Container(
                          color:Colors.lightBlueAccent,
                          height: 200,
                        ),
                      ),
                    ),
                    ClipPath(
                      clipper:WaveClipper(),
                      child: Container(
                        color:Colors.lightBlue,
                        height: 180,
                        alignment: Alignment.center,

                      ),
                    ),
                    Center(
                      child: Container(
                        width: 264,
                          height: 264,
                          child: Image(image: AssetImage('assets/images/my.png'))),
                    ),
                  ],
                ),
              ),


              Row(
                children: [
                  SizedBox(width: 26,),
                  Expanded(
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 70,
                          backgroundImage: NetworkImage(
                            'https://th.bing.com/th/id/R.5e617cdf4e5b4adf7e620d449f07ca3c?rik=9S1kSyhL%2fVFVAw&pid=ImgRaw&r=0'
                          ),
                        ),
                        Container(
                          child: CircularPercentIndicator(
                            radius: 70.0,
                            lineWidth: 15.0,
                            percent: 70/100,
                            animation: true,
                            animationDuration: 1500,
                            center: new Text(
                              '70%',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            footer: new Text(
                              'Water',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            progressColor: Colors.lightBlueAccent,
                            circularStrokeCap: CircularStrokeCap.round,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 70,
                          backgroundImage: NetworkImage(
                              'https://th.bing.com/th/id/R.4e2d1b2740485a92e7d37e0415f86cf9?rik=FbytJm1GtEVHoA&pid=ImgRaw&r=0'
                          ),
                        ),
                        Container(
                          child: CircularPercentIndicator(
                            radius: 70.0,
                            lineWidth: 15.0,
                            percent: 35/100,
                            animation: true,
                            animationDuration: 1500,
                            center: new Text(
                              '35%',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            footer: new Text(
                              'Humidity',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            progressColor: Colors.blueGrey,
                            circularStrokeCap: CircularStrokeCap.round,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SizedBox(width: 84,),

                  Container(

                    child: LinearPercentIndicator(
                      width: 100.0,
                      lineHeight: 15.0,
                      percent: 15/100,
                      animation: true,
                      animationDuration: 1500,
                      leading: new Text(
                        '15%',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      trailing: new Text(
                        'Charger',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      progressColor: Colors.redAccent,



                    ),
                  ),
                ],
              ),
              SizedBox(height: 40,),
              Row(
                children: [
                  SizedBox(
                    width: 26,
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 70,
                          backgroundImage: NetworkImage(
                              'https://th.bing.com/th/id/R.6133d80831ec9be74326d4d1141ad4cc?rik=ts3S0iN2jMiuaQ&pid=ImgRaw&r=0'
                          ),
                        ),
                        Container(
                          child: CircularPercentIndicator(
                            radius: 70.0,
                            lineWidth: 15.0,
                            percent: 45/100,
                            animation: true,
                            animationDuration: 1500,
                            center: new Text(
                              '45%',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            footer: new Text(
                              'Salinity',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            progressColor: Colors.cyanAccent,
                            circularStrokeCap: CircularStrokeCap.round,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: 70,
                          backgroundImage: NetworkImage(
                              'https://makhro.co.za/wp-content/uploads/2020/11/high-potash.jpg'
                          ),
                        ),
                        Container(
                          child: CircularPercentIndicator(
                            radius: 70.0,
                            lineWidth: 15.0,
                            percent: 84/100,
                            animation: true,
                            animationDuration: 1500,
                            center: new Text(
                              '84%',
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            footer: new Text(
                              'Potassium',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            progressColor: Colors.black54,
                            circularStrokeCap: CircularStrokeCap.round,
                          ),
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
    );
  }
}

//Costom CLipper class with Path
class WaveClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = new Path();
    path.lineTo(0, size.height); //start path with this if you are making at bottom
    var firstStart = Offset(size.width / 5, size.height);
    //fist point of quadratic bezier curve
    var firstEnd = Offset(size.width / 2.25, size.height - 50.0);
    //second point of quadratic bezier curve
    path.quadraticBezierTo(firstStart.dx, firstStart.dy,
        firstEnd.dx, firstEnd.dy);

    var secondStart = Offset(size.width - (size.width / 3.24),
        size.height - 105);
    //third point of quadratic bezier curve
    var secondEnd = Offset(size.width, size.height - 10);
    //fourth point of quadratic bezier curve
    path.quadraticBezierTo(secondStart.dx, secondStart.dy,
        secondEnd.dx, secondEnd.dy);
    path.lineTo(size.width, 0); //end with this path if you are making wave at bottom
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; //if new instance have different instance than old instance
    //then you must return true;
  }
}