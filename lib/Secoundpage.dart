import 'package:flutter/material.dart';
import 'package:untitled5/Modalclassl/datascreen.dart';

class Billgenret extends StatefulWidget {
  const Billgenret({Key? key}) : super(key: key);

  @override
  State<Billgenret> createState() => _BillgenretState();
}

class _BillgenretState extends State<Billgenret> {
  @override
  Widget build(BuildContext context) {
    List<datascreen> d1 = ModalRoute.of(context)!.settings.arguments as List<datascreen>;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Bill Genret"),
          centerTitle: true,
        ),
        body: ListView.builder(itemBuilder: (context, index) {
          return uii(d1[index].Name,d1[index].Prodct,d1[index].Qunity,d1[index].Discount);
        },itemCount: d1.length,),
      ),
    );
  }
  Widget uii(String? name,prodcut,Qunity,discount) {
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
            Text("$discount"),SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
