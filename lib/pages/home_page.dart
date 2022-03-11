import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id ="home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(child: Center(
              child: Text('welcome', style: TextStyle(fontSize: 22),).tr(),
            )),
            Row(
              children: [
                Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.green,
                    onPressed: (){
                      context.locale = Locale('en', 'US');
                    },
                    child: Text("English", style: TextStyle(color: Colors.white),),
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.purple,
                    onPressed: (){
                      context.locale = Locale('ru', 'RU');
                    },
                    child: Text("Russian", style: TextStyle(color: Colors.white),),
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  child: FlatButton(
                    height: 45,
                    color: Colors.blueAccent,
                    onPressed: (){
                      context.locale = Locale('uz', 'UZ');
                    },
                    child: Text("Uzbek", style: TextStyle(color: Colors.white),),
                  ),
                ),
              ],
            )
          ],

        ),
      )
    );
  }
}
