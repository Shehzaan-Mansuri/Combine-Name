import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(
    title: new Text("EPA Infotech")));
}

class MyApp extends StatefulWidget {
  MyApp({this.title, this.someText});
  final Widget title, someText;
  @override
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<MyApp>{
    String firstName = "";
    String middleName = "";
    String lastName = "";
    @override
  Widget build(BuildContext context){
      ThemeData.dark();
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Center(child: widget.title),),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15 ,10 ,15 ,10),
              child: TextField(
                textAlign: TextAlign.center,
                decoration:  InputDecoration(hintText: "First Name",
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    filled: true,
                    fillColor: Colors.grey[200]
                ),
                onChanged: (String text){
                  setState(() {
                    firstName = text;
                  });
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(15 ,10 ,15 ,10),
              child: TextField(
                textAlign: TextAlign.center,
                decoration:  InputDecoration(hintText: "Second Name",
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    filled: true,
                    fillColor: Colors.grey[200]
                ),
                onChanged: (String text){
                  setState(() {
                    middleName = text;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15 ,10 ,15 ,10),
              child: TextField(
                textAlign: TextAlign.center,
                decoration:  InputDecoration(hintText: "Last Name",
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue),
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  filled: true,
                  fillColor: Colors.grey[200]
                ),
                onChanged: (String text){
                  setState(() {
                    lastName = text;
                  });
                },
              ),
            ),
           new Text("\n\n\n $firstName $middleName $lastName")
          ],
        ),
      )
    );
  }
}