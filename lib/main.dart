import 'package:flutter/material.dart';

main() {runApp(MaterialApp(debugShowCheckedModeBanner: false,
home: MyApp(),
));}
class MyApp extends StatelessWidget {
  TextEditingController Firstname = TextEditingController();
  TextEditingController Lastname = TextEditingController();
  TextEditingController Nationality = TextEditingController();
  TextEditingController Country = TextEditingController();
  TextEditingController Phone_Number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Info"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(
            controller: Firstname,
            decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)),
              labelText: "Enter your Firstname"
            ),
          ),

          TextField(
            controller: Lastname,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)),
                labelText: "Enter your Lastname"
            ),
          ),

          TextField(
            controller: Nationality,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)),
                labelText: "Enter your Nationality"
            ),
          ),

          TextField(
            controller: Country,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)),
                labelText: "Enter your Country"
            ),
          ),

          TextField(
            controller: Phone_Number,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)),
                labelText: "Enter your Phone Number"
            ),
          ),
          ElevatedButton(
              onPressed: (){
                //here we will give the data
            Navigator.push(context,
                MaterialPageRoute(
                    builder: (context)=>NextScreen(
                        Firstname: Firstname.text,
                        Lastname: Lastname.text,
                        Nationality: Nationality.text,
                        Country: Country.text,
                        Phone_Number: Phone_Number.text,
                ))).whenComplete(() => {
                Firstname.clear(),
                Lastname.clear(),
                Nationality.clear(),
                Country.clear(),
                Phone_Number.clear(),
                });
          }, child: Text("Continue"))
        ],
      ),
    ),
    );
  }
}

class NextScreen extends StatelessWidget{
  String? Firstname,Lastname,Nationality,Country,Phone_Number;
  //creating constructor
  NextScreen({
  this.Phone_Number,this.Country,this.Nationality,this.Lastname,this.Firstname
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Firstname : " + Firstname.toString(),style: TextStyle(fontSize: 20),),
            Text("Lastname : " + Lastname.toString(),style: TextStyle(fontSize: 20),),
            Text("Nationality : " + Nationality.toString(),style: TextStyle(fontSize: 20),),
            Text("Country : " + Country.toString(),style: TextStyle(fontSize: 20),),
            Text("Phone_Number : " + Phone_Number.toString(),style: TextStyle(fontSize: 20),),
          ],
        ),
        ),
      ),
    );
  }
}

