import 'package:flutter/material.dart';

class ViewLib extends StatelessWidget {
  // const ViewLib({Key? key}) : super(key: key);
   var title=["Macbeth","Bouquet","Happiness","Glow","Positivity","Doors will open","science","PhySics","Biology","chemistry"];
   var categ=["Horror","Loving","Fun","Humour","Funny","Education","education","Education","Education","Education"];
   var author=["pv","pk","ok","lo","ik","ok","hk","ki","pl","hu"];
   var price=[354,35654,65353,5365,534,565453,356,3568,6876854,3653];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text("Library"),
        ),
        body: ListView.builder(
          itemCount: title.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title:Text(title[index]),
                  leading: Icon(Icons.book,size: 25,color: Colors.blue),
                  subtitle: Text(categ[index]+"\n"+"author  "+author[index]+"\n"+"prie   "+price[index].toString()),
                ),
              );

            },),

      ) ,
    );



  }
}
