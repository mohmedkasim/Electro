import 'package:electure_project/LecturesInfo.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var primaryColor = Color.fromRGBO(71, 116, 233, 1);
  var backgroundColor = Color.fromRGBO(244, 244, 250, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: primaryColor,
        centerTitle: true,
        title: Text('Electure IOT'),
      ),
      backgroundColor: backgroundColor,

      body: Column(
        children: [
          Container(
            height: 70,
            width: double.infinity,
            color: primaryColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start  ,
                  children: [
                    Text('User: omar12',style: TextStyle(color: Colors.white,fontSize: 20),),
                    Text('Information Technology', style: TextStyle(color: Colors.white70),)
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('10:00pm',style: TextStyle(color: Colors.white),),
                    Text('2021-02-02', style: TextStyle(color: Colors.white))
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.only(right:15.0,left: 15.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LecturesInfo()));
                },
                child: Container(

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,

                  ),
                  child: Padding(
                    padding:  EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text('المحاضرات'),
                        Padding(
                          padding: const EdgeInsets.only(top:10.0, bottom: 10.0),
                          child: Divider(
                            indent: 15,
                            endIndent: 15,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(

                            children: [
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: primaryColor
                                    ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('00',style: TextStyle(color: Colors.white),),
                                  ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text('تم الحضور')
                                ],
                              ),
                              SizedBox(
                                height: 15
                              ),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: primaryColor
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('00',style: TextStyle(color: Colors.white),),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text('غياب')
                                ],
                              ),
                              SizedBox(height: 15),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: primaryColor
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('00',style: TextStyle(color: Colors.white),),
                                    ),
                                  ),
                                  SizedBox(width: 10,),
                                  Text('لم يحدد وقت')
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),

    );
  }
}
