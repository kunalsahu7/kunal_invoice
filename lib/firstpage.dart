import 'package:flutter/material.dart';
import 'package:untitled5/Modalclassl/datascreen.dart';

class Bill extends StatefulWidget {
  const Bill({Key? key}) : super(key: key);

  @override
  State<Bill> createState() => _BillState();
}

class _BillState extends State<Bill> {
  TextEditingController txtname = TextEditingController();
  TextEditingController txtprodct = TextEditingController();
  TextEditingController txtQunity = TextEditingController();
  TextEditingController txtDiscount = TextEditingController();

  List<datascreen> L1 = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey,
            title: Text("Bill Genret",
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold)),
            centerTitle: true,
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                //  ListTile()
                  TextField(
                    controller: txtname,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Name"),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: txtprodct,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Prodct"),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: txtQunity,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Qunity"),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    controller: txtDiscount,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Discount"),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      datascreen d1 = datascreen(
                          Name: txtname.text,
                          Prodct: txtprodct.text,
                          Qunity: txtQunity.text,
                          Discount: txtDiscount.text);
                     Navigator.pushNamed(context, 'second', arguments: L1);

                    },
                    child: Text("Genreat"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(onPressed: () {
                    setState(() {
                      datascreen d1 = datascreen(
                          Name: txtname.text,
                          Prodct: txtprodct.text,
                          Qunity: txtQunity.text,
                          Discount: txtDiscount.text);
                      L1.add(d1);
                    });
                  }, child: Text("Add")),
                  Expanded(
                    child: ListView.builder(itemBuilder: (context, index) {
                      return ui(L1[index].Name,L1[index].Prodct,L1[index].Qunity,L1[index].Discount);
                    },itemCount:L1.length ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  Widget ui(String? name,prodcut,Qunity,discount) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height:80,
        width: double.infinity,
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("$name"),
            SizedBox(height: 10,),
            Text("$prodcut"),
            SizedBox(height: 10,),
            Text("$Qunity"),
            SizedBox(height: 10,),
            Text("$discount"),SizedBox(width: 10,),
            ElevatedButton(onPressed: () {
            },
                child: Row(
                  children: [
                    IconButton(onPressed: () {

                    }, icon: Icon(Icons.edit)),
                    IconButton(onPressed: () {
                      setState(() {
                        L1.remove(txtname.text);
                        L1.remove(txtprodct.text);
                        L1.remove(txtQunity.text);
                        L1.remove(txtDiscount.text);
                      });
                    }, icon: Icon(Icons.delete)),
                  ],
                ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey
              ),
            ),
          ],
        ),
      ),
    );
  }
}
