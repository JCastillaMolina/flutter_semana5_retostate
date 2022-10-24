import 'package:flutter/material.dart';

class ItemMenuWidget extends StatelessWidget {

  Map<String, dynamic> item;

   ItemMenuWidget({ required this.item});

  @override
  Widget build(BuildContext context) {
    return  Container(
      //color: Colors.blueAccent,
      //height: 300,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(
          width: 1.6,
          color: Colors.black54,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Row(
          children: [
            Container(
              height: 80,
              width: 80,

              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
                image: DecorationImage(
                  image: NetworkImage(item["image"],),

                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(width: 10.0,),
            Column(
              children: [
                Text("Menú ${item["id"]}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,

                  ),
                ),
                SizedBox(height: 4.0,),
                Text(" ${item["dias"]}",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14.0,

                  ),
                ),
                SizedBox(height: 16.0,),
                Text("S/. ${item["costo"]}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,

                  ),),
              ],
            ),
          ],
        ),
      ),

    );

  }
}
