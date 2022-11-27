
import 'package:flutter/material.dart';
import 'package:library_app/dynamicview.dart';
import 'package:library_app/view%20library.dart';
class Formm extends StatelessWidget {
  const Formm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text("Bookname"),
            TextField(),
            Text("Author"),
            TextField(),
            Text("distributor"),
            TextField(),
            Text("Publisher"),
            TextField(),
            Text("Price"),
            TextField(),

            ElevatedButton(
                onPressed:(){

                }, child: Text("Submit")),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewLib()));

                }, child: Text("View")),
            ElevatedButton(
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>dview()));

                }, child: Text("D View"))
          ],
        ),
      ),
    );
  }
}
