import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          double containerWidth = constraints.maxWidth;
          double containerHeight = constraints.maxHeight;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  width: containerWidth * 0.77,
                  height: containerHeight * 0.15,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xFFB86907),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 2,
                        spreadRadius: 2,
                        offset: Offset(5, 0), // Right shadow
                      ),
                      BoxShadow(
                        color: Color.fromARGB(255, 97, 96, 96).withOpacity(0.5),
                        blurRadius: 5,
                        spreadRadius: 2,
                        offset: Offset(0, 5), // Bottom shadow
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: containerHeight * 0.05,
                        width: containerWidth * 0.3,
                        color: Colors.grey,
                        margin: EdgeInsets.only(
                          left: containerWidth * 0.02,
                        ),
                      ),
                      Container(
                        height: containerHeight * 0.05,
                        width: containerWidth * 0.6,
                        color: Colors.green[300],
                        margin: EdgeInsets.only(
                          left: containerWidth * 0.02,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Stack(
                alignment: AlignmentDirectional(0, 0),
                children: [
                  Center(
                    child: Container(
                      width: containerWidth * 0.7,
                      height: containerHeight * 0.15,
                      margin: EdgeInsets.only(top: 20, right: 20),
                      decoration: BoxDecoration(
                        color: Color(0xFFB86907),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 2,
                            spreadRadius: 2,
                            offset: Offset(5, 0), // Right shadow
                          ),
                          BoxShadow(
                            color: Color(0xFF616060).withOpacity(0.5),
                            blurRadius: 5,
                            spreadRadius: 2,
                            offset: Offset(0, 5), // Bottom shadow
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: containerHeight * 0.05,
                            width: containerWidth * 0.6,
                            color: Colors.green[300],
                            margin: EdgeInsets.only(
                                left: containerWidth * 0.02, top: 30),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    left: containerWidth * 0.22,
                    right: containerWidth * 0.22,
                    child: Container(
                      height: containerHeight * 0.05,
                      width: 100,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
