import 'package:flutter/material.dart';
import 'signup.dart';
import 'signin.dart';
import 'package:google_fonts/google_fonts.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 226, 226),
      appBar: AppBar(
        backgroundColor:  const Color.fromARGB(255, 228, 226, 226),
        elevation: 4,
        toolbarHeight: 120, 
        title: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Bait Ward",
                style: GoogleFonts.suwannaphum(
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),
              SizedBox(height: 10),
              Text("Fresh. Fragrant. Forever.",
              style: GoogleFonts.suwannaphum(
                fontSize: 20,
              ),),
            ],
          ),
        ),
      ),

      
      body: 
        Column(
          children: [
            SizedBox(height: 70),
            
            Center(
              child: Row(
               
                children: [
              
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Image.asset("assets/images/flowerhand.png",
                      fit: BoxFit.contain),
                    )),
              
                SizedBox(width: 0),
              
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Image.asset("assets/images/redvase.png",
                      fit: BoxFit.contain),
                    )),
                  
               //this is the online image and it is working but to get the best UI possible i applied local images to be visible on the app
                  /*Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9GMtW0TZhwdf2xA0z3y5AgcudOPezN6mF2w&s",
                    width: 120,
                    height: 120,
                  ),*/
              
                ],
              ),
            ),

            SizedBox(height: 50),

            Text("From petals to bouquets,",
              style: GoogleFonts.suwannaphum(
                fontSize: 22,
                fontWeight: FontWeight.bold
              ),),

              Text("we bring smiles to life.",
              style: GoogleFonts.suwannaphum(
                fontSize: 20,
              ),),

              SizedBox(height: 40),

              ElevatedButton(onPressed: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => SignUp()));

            },
            style: ElevatedButton.styleFrom(
              minimumSize: Size(370, 54),
              backgroundColor: const Color.fromARGB(255, 210, 140, 186),
              shadowColor: Colors.black,
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
             child: Text("Sign Up",
                  style: TextStyle(color: Colors.black, fontSize: 19),)),
        
            SizedBox(height: 16),
        
             ElevatedButton(
              onPressed: () {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context) => SignIn()));
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(370, 54),
                backgroundColor: const Color.fromARGB(255, 244, 244, 244),
                shadowColor: Colors.black,
                elevation: 5,
                shape : RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(15),
                )
              ),
              child: Text("Sign In",
              style: TextStyle(color: Colors.black, fontSize: 19)),
            ),

        ]
        ),
    );
  }
}