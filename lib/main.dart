import 'package:flutter/material.dart';
import 'package:flutter_semana5_retostate/item_menu_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  List <Map <String, dynamic>>  data = [
    {
      "id": 1,
      "dias":"Lun - Mie - Vier",
      "costo": "5",
      "image":"https://images.pexels.com/photos/1126359/pexels-photo-1126359.jpeg?cs=srgb&dl=pexels-suzy-hazelwood-1126359.jpg&fm=jpg",
    },
    {
      "id": 2,
      "dias":"Mar - Jue - Sab",
      "costo": "6",
      "image": "https://images.pexels.com/photos/4559174/pexels-photo-4559174.jpeg?cs=srgb&dl=pexels-ahmed-rabea-4559174.jpg&fm=jpg&_gl=1*18p2hg1*_ga*NTY3OTQ2MDUwLjE2NjQ5MDE4MDc.*_ga_8JE65Q40S6*MTY2NjYxOTM0NS45LjEuMTY2NjYxOTQyMi4wLjAuMA..",
    },
    {
      "id": 3,
      "dias":"Mar - Mie - Vier",
      "costo": "7",
      "image":"https://images.pexels.com/photos/6605653/pexels-photo-6605653.jpeg?cs=srgb&dl=pexels-geraud-pfeiffer-6605653.jpg&fm=jpg&_gl=1*mqsbbk*_ga*NTY3OTQ2MDUwLjE2NjQ5MDE4MDc.*_ga_8JE65Q40S6*MTY2NjYxOTM0NS45LjEuMTY2NjYxOTUwNi4wLjAuMA..",
    },
    {
      "id": 4,
      "dias":"Lun - Mie - Vier",
      "costo": "8",
      "image":"https://images.pexels.com/photos/6210959/pexels-photo-6210959.jpeg?cs=srgb&dl=pexels-tim-douglas-6210959.jpg&fm=jpg&_gl=1*1q8l69a*_ga*NTY3OTQ2MDUwLjE2NjQ5MDE4MDc.*_ga_8JE65Q40S6*MTY2NjYxOTM0NS45LjEuMTY2NjYxOTU2MS4wLjAuMA..",
    },
    {
      "id": 5,
      "dias":"Lun - Mie - Vier",
      "costo": "9",
      "image":"https://images.pexels.com/photos/3843224/pexels-photo-3843224.jpeg?cs=srgb&dl=pexels-marianna-3843224.jpg&fm=jpg&_gl=1*16o7yip*_ga*NTY3OTQ2MDUwLjE2NjQ5MDE4MDc.*_ga_8JE65Q40S6*MTY2NjYxOTM0NS45LjEuMTY2NjYxOTU4Ni4wLjAuMA..",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("SetSate Cards Assets App"),
          backgroundColor: Colors.amber,
          centerTitle: true,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.0),
                Text(
                  "Selecciona tu mejor elección ",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,

                  ),
                ),
                SizedBox(height: 12.0),

                ListView.builder(
                  shrinkWrap: true,
                  itemCount: data.length,
                  //physics: ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index){
                    return ItemMenuWidget(item: data[index],);
                      //ItemListWidget(item: data[index],);
                  },
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
