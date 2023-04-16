import 'package:flutter/material.dart';

class detail extends StatefulWidget {
  const detail({Key? key}) : super(key: key);

  @override
  _detailState createState() => _detailState();
}

class _detailState extends State<detail> {

  Widget ContainerDesign ( String value) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white70
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("$value" , style: TextStyle(
              fontSize: 20,
              color: Colors.blueAccent
          ),),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 40.0 , top: 40 , right: 40),
          child: Container(
            height: 500,
            decoration: BoxDecoration(
              color: Colors.purple[200],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ContainerDesign("height : "),
                    ContainerDesign("Mass : "),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ContainerDesign("Heir Color : "),
                      ContainerDesign("Skin Color : "),
                      ContainerDesign("Eye Color :")
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ContainerDesign("birthYear : "),
                    ContainerDesign("Gender : "),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white70
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Filems" , style: TextStyle(
                          fontSize: 20,
                          color: Colors.blueAccent
                      ),),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
