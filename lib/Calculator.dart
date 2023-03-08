import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final txtangka1 = TextEditingController();
    final txtangka2 = TextEditingController();

    String hasilakhir = '';
    //String kurang = '';

    onTambah() {
      setState(() {
        var angka1 = int.parse(txtangka1.text);
        var angka2 = int.parse(txtangka2.text);
        var hasil = angka1 + angka2;
        hasilakhir = hasil.toString();
      });
    };

    onKurang() {
      setState(() {
        var angka1 = int.parse(txtangka1.text);
        var angka2 = int.parse(txtangka2.text);
        var hasil = angka1 - angka2;
        hasilakhir = hasil.toString();
      });
    }

    return Scaffold(
      body: Column(
        children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 400.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: txtangka1,
                autofocus: false,
                decoration: const InputDecoration(
                    hintText: 'Number 1',
                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    border: OutlineInputBorder(borderSide: BorderSide())
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 400.0),
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: txtangka2,
                autofocus: false,
                decoration: const InputDecoration(
                    hintText: 'Number 2',
                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    border: OutlineInputBorder(borderSide: BorderSide())
                ),
              ),
            ),
          ElevatedButton(
              onPressed: onTambah,
              child: Text('Penjumlahan')
          ),
          SizedBox(height: 5),
          ElevatedButton(
              onPressed: onKurang,
              child: Text('Pengurangan')
          ),
          Container(
            width: 280,
            padding: EdgeInsets.all(10.0),
            child: Text("Hasil = $hasilakhir",style: TextStyle(
                color: Colors.blue,
                fontSize: 17,fontFamily:"Times new Roman")),
          )
        ],
      )
    );
  }

  void setState(Null Function() param0) {}
}
