import 'package:flutter/material.dart';

class dview extends StatefulWidget {
  const dview({Key? key}) : super(key: key);

  @override
  State<dview> createState() => _dviewState();
}

class _dviewState extends State<dview> {
  List name=[];
  List auth=[];
  List price=[];
  List categ=[];
  TextEditingController namee=TextEditingController();
  TextEditingController author=TextEditingController();
  TextEditingController pricee=TextEditingController();
  TextEditingController category=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title: Text("Check and display"),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                TextField(
                  controller: namee,
                  decoration: InputDecoration(
                    hintText: "Enter book name",
                    labelText: "Book name",
                  ),
                ),
                TextField(
                  controller: author,
                  decoration: InputDecoration(
                    hintText: "Enter Author",
                    labelText: "Author",
                  ),
                ),
                TextField(
                  controller: pricee,
                  decoration: InputDecoration(
                    hintText: "Enter Price",
                    labelText: "price",
                  ),
                ),
                TextField(
                  controller: category,
                  decoration: InputDecoration(
                    hintText: "Enter Category",
                    labelText: "category"
                  ),
                ),
                ElevatedButton(
                    onPressed:(){
                      var getName=namee.text;
                      var getAuthor=author.text;
                      var getPrice=pricee.text;
                      var getCateg=category.text;

                      setState(() {
                        name.add(getName);
                        auth.add(getAuthor);
                        price.add(getPrice);
                        categ.add(getCateg);
                      });
                      print(getName);
                      print(getAuthor);
                      print(getPrice);
                      print(getCateg);


                    }, child: Text("check")),

                ListView.builder(
                  shrinkWrap: true,
                  itemCount: price.length==null ? 0 :price.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          leading: Icon(Icons.book_rounded,size: 30),
                          trailing: GestureDetector(
                            onTap: (){
                              setState(() {
                                name.removeAt(index);
                                auth.removeAt(index);
                                price.removeAt(index);
                                categ.removeAt(index);
                              });
                            },
                              child: Icon(Icons.delete,size: 30)),
                          title: Text(name[index]),
                          subtitle: Text("Author  "+auth[index]+"\n"+"price  "+price[index]+"\n"+"category  "+categ[index]),
                        )
                      );
                    },)
              ],
            ),
          ),
        ),

      ),
    );
  }
}
