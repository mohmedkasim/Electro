import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class LecturesInfo extends StatefulWidget {
  const LecturesInfo({Key key}) : super(key: key);

  @override
  _LecturesInfoState createState() => _LecturesInfoState();
}

class _LecturesInfoState extends State<LecturesInfo> {
  var primaryColor = Color.fromRGBO(71, 116, 233, 1);
  var backgroundColor = Color.fromRGBO(244, 244, 250, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text('Electure IOT'),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      body: Column(
        children: [
          CardInfo(
            courseNum: '11041',
            teacherName: 'مهاب إبراهيم',
            teacherNumber: '092-0000000',
            lectureState: 'حضور',
            timeFrom: '10:00',
            timeTo: '12:00',),
        ],
      )
    );
  }
}
class CardInfo extends StatelessWidget {
  final courseNum;
  final teacherName;
  final teacherNumber;
  final lectureState;
  final timeFrom;
  final timeTo;

  const CardInfo({Key key, this.courseNum, this.teacherName, this.teacherNumber, this.lectureState, this.timeFrom, this.timeTo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.only(top:12.0,right: 30,left: 30),
        child: Container(

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text('اسم المقرر'),
                    Text('استاذ المقرر'),
                    Text('وقت المحاضرة'),
                    Text('الحالة'),
                    Text('رقم الهاتف')
                  ],
                ),
                Column(
                  children: [
                    Text(courseNum),
                    Text(teacherName),
                    Row(
                      children: [
                        Text('من: '),
                        Text(timeFrom),
                        SizedBox(width: 10,),
                        Text('إلي: '),
                        Text(timeTo)
                      ],
                    ),
                    Text(lectureState),


                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blueGrey[700]
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(

                            children: [

                              Text(teacherNumber,style: TextStyle(color:Colors.white),),
                              SizedBox(width: 5,),
                              Icon(Icons.phone,color: Colors.white,size: 11,),
                            ],
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
