import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class completed_order extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context,index)=>buildCompletedItem(),
        separatorBuilder:(context,index)=>SizedBox(height: 10,),
        itemCount: 10);
  }
Widget buildCompletedItem()=>Container(
  child: Padding(
    padding: const EdgeInsets.all(15.0),
    child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 90,
              height: 90,
              child: Image(
                image: AssetImage('images/testorder.png'),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Container(
                height: 90,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Mustard Chunky '),
                    Text('Cable Knit Sweater'),
                    Spacer(),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text('Qty(1)',style: TextStyle(fontSize: 16),),
                            Text('350 L.E',style: TextStyle(fontWeight: FontWeight.w700),),
                          ],
                        ),
                        SizedBox(width: 30,),
                        CircleAvatar(backgroundColor: HexColor('#27374D'),
                            child: Text('L', style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold),), radius: 16),
                        Spacer(),
                        TextButton(onPressed: (){}, child: Text('Leave Review',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),))

                      ],
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ],
    ),
  ),
);
}