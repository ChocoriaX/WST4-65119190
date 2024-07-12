import 'package:flutter/material.dart';

void main() {
  runApp(const MyUI65119190());
}

class MyUI65119190 extends StatelessWidget { //----------------------------- 2.1 //
  const MyUI65119190({super.key}); // -------------------------------------- 2.2 //
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:UI65119190() // ------------------------------------------------- 2.3 //
    );
  }
}

class UI65119190 extends StatefulWidget {
  const UI65119190({super.key}); // ---------------------------------------- 2.4 //
  @override               
  State<UI65119190> createState() => _UI65119190State(); // ---------------- 2.5 //
}

class _UI65119190State extends State<UI65119190> { // ---------------------- 2.6 //
  
  String txtEmail = 'Line 1'; // ------------------------------------------------// 5.1 //
  String txtName = 'Line 2'; // -------------------------------------------------// 5.2 //

  TextEditingController cntName = TextEditingController(); //---------------------------// 6.1 //
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '65119190', // --------------------------------------------------- 3.1 //
          style: TextStyle(
            color: Colors.white // --------------------------------------- 3.2 //
          )),
          backgroundColor: Colors.blue, // ------------------------------- 3.4 //
          centerTitle: true, // << เพิ่มจากตัวอย่าง
      ),
      body: Center(
        child: Column(
          children: [
            //Text('Line 1', // -------------------------------------------- 3.5 //
            Text(txtEmail, // ----------------------------------------------------- 5.3 //
            style: const TextStyle(
              fontSize: 42, // --------------------------------------------- 3.6 //
              fontWeight: FontWeight.bold // ------------------------------- 3.7 //
            ),),
            Text(txtName, // --------------------------------------------------- // 5.4 //
            style: const TextStyle(
              fontSize: 24, // --------------------------------------------- 3.8 //
              //fontWeight: FontWeight.bold << ในตัวอย่างเป็นตัวหน้า
            ),),
            Container(
              margin: const EdgeInsets.all(10), // ------------------------------------ // 6.2 //
              child: TextField( // ---------------------------------------------------- // 6.3 //
                controller: cntName,
                decoration: const InputDecoration(
                  hintText: 'Input your name', // ------------------------------------- // 6.4 //
                  border: OutlineInputBorder() // ------------------------------------- // 6.5 //
                ),
                onChanged: (value) {
                  setState(() { // ---------------------------------------------------- // 6.6 //
                    txtName = value; // ----------------------------------------------- // 6.7 //
                  });
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton( // ----------------------- 4.1 // 5.5 //
        //child: const Icon(Icons.email), // ------------------------------- 4.2 //
        child: const Icon(Icons.add_comment), // -------------------------------------- // 6.8 //
        onPressed: () { // ตรวจสอบ event การกดปุ่ม // ------------------------ 4.3 //
          // ignore: avoid_print
          //print('Hello'); // --------------------------------------------- 4.4 //
        setState(() { // ------------------------------------------------------- // 5.6 // 6.9 //
          //txtEmail = 'Aphichet.kr@mail.wu.ac.th'; // ------------------------- // 5.7 //
          txtEmail = 'Hello ${cntName.text}'; // -------------------------------------- // 6.10 //
          //txtName = 'Aphichet'; // ------------------------------------------- // 5.8 //
        });
        },
      ),
    );
  }
}
