import 'package:flutter/material.dart';

Widget attractionCard(String title, List<String> categories, String address, String imgUrl, bool isFree) {

  return Expanded(
      child: SizedBox(
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 50,
            child: Column(
              children: <Widget> [
                const Text("Riverside Park", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Expanded(
                    child: SizedBox(
                      child: Image.network(
                        imgUrl,
                        fit: BoxFit.cover, 
                      )
                    ),
                ),
                Expanded(
                    child: SizedBox(
                      width: 50,
                      height: 50,
                      child: ListView.builder(
                        itemCount: categories.length,
                        itemBuilder: (BuildContext ctx, int idx){
                          return Card(
                            child: Text(categories[idx]),
                          );
                        }
                      ),
                    ),
                ),
                Text(address),
                const Icon(Icons.attach_money)
              ]),
          ),
      ),
  );
}