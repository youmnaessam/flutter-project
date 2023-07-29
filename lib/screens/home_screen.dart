import 'package:flutter/material.dart';
import 'package:flutter_project/screens/login_screen.dart';
import '../reusable_widgets/reusable_widget.dart';
import '../utils/color_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
      /*//hexStringToColor("FDF8C9"),
      hexStringToColor("F6E9F6"),
      hexStringToColor("CDA6CB"),
      hexStringToColor("000000"),*/
      hexStringToColor("C8A2C8"),
      hexStringToColor("CDA6CB"),
      hexStringToColor("000000"),
      ],begin: Alignment.topCenter, end: Alignment.bottomCenter
       )
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(1400, 0, 20, 0),
          child: Column(
            children: <Widget>[
              
             const SizedBox(
                height: 20,
                ),
                Center(
                  child: ElevatedButton(
                    child: Text("Logout",style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold, fontSize:16), ),
                    onPressed: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => LogInScreen(),
                       )
                       );
                    },
                    style: ButtonStyle(
                     backgroundColor: MaterialStateProperty.resolveWith((states) {
                      if(states.contains(MaterialState.pressed)){
                        return Colors.white;
                      }//Colors.black26
                         return Colors.black54;
                        }),
                       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)
                      )
                    )
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("LogOut"),
          onPressed: (){
            Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => LogInScreen()));
          },
        ),
      ),
    );*/
  }
}