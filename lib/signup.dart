import 'package:flower_app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();
  bool hiddenPass = true;
  bool hiddenConfirmPass = true;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 207, 176, 196),
      appBar: AppBar(
        toolbarHeight: 130,
        backgroundColor: const Color.fromARGB(255, 207, 176, 196),
        automaticallyImplyLeading: false,
        title: Center(
          child: Row(
            children: [
              const BackButton(),
              const SizedBox(width: 40),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Bait Ward",
                    style: GoogleFonts.suwannaphum(
                      fontSize: 33,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Fresh. Fragrant. Forever.",
                    style: GoogleFonts.suwannaphum(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 35),
          Expanded(
            child: Center(
              child: Container(
                
                width: 390,
                decoration: const BoxDecoration(
                  color:  Color.fromARGB(255, 237, 235, 235),
                  boxShadow: [
                    BoxShadow(
                     color: Colors.black,
                     blurRadius: 10,
                     offset:  Offset(0, 4),
                 ),
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const SizedBox(height: 32),
                      Text(
                        "Register",
                        style: GoogleFonts.poppins(
                          fontSize: 29,
                          fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 42),
                      Padding(
                        padding: const EdgeInsets.all(9.0),
              
              
              
                        child: TextFormField(
                          controller: fnameController, 
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "First Name is required.";
                            }
                            if (value[0] != value[0].toUpperCase()) {
                              return "First letter must be uppercase.";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: "First Name",
                            prefixIcon: const Icon(Icons.person),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            )
                          ),
                        ),
              
                      ),
              
                      SizedBox(height: 7),
              
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: lnameController,
                        
                          validator: (value) {
                            if(value == null || value.isEmpty){
                              return "Last Name is required.";
                            }
                            if(value[0] != value[0].toUpperCase()) {
                              return "First Letter must be uppercase";
                            }
                            else{
                              return null;
                            }
                          },
                        
                          decoration: InputDecoration(
                            labelText: "Last Name",
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            )
                          ),
                        ),
                      ),
              
                      SizedBox(height: 7),
              
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: emailController,
                        
                          validator: (value) {
                            if(value == null || value.isEmpty){
                              return "Email is required.";
                            }
                            if(!value.contains('@')) {
                              return "Emaul format is not correct";
                            }
                            else{
                              return null;
                            }
                          },
                        
                          decoration: InputDecoration(
                            labelText: "Email",
                            prefixIcon: Icon(Icons.mail),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            )
                          ),
                        ),
                      ),
              
                      SizedBox(height: 7),
              
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: passController,
                          obscureText: hiddenPass,
                        
                          validator: (value) {
                            if(value == null || value.isEmpty){
                              return "Password is required";
                            }
                            if(value.length < 6) {
                              return "Password must be at least 6 characters";
                            }
                            else{
                              return null;
                            }
                          },
                        
                          decoration: InputDecoration(
                            labelText: "Password",
                            prefixIcon: Icon(Icons.lock),
                            suffixIcon: IconButton(onPressed: () {
                              setState(() {
                                hiddenPass =! hiddenPass;
                              });
                            }, icon: hiddenPass
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            )
                          ),
                        ),
                      ),
              
                    SizedBox(height: 7),
              
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: confirmPassController,
                        obscureText: hiddenConfirmPass,
                      
                        validator: (value) {
                          if(value == null || value.isEmpty){
                            return "Confirm Password is required.";
                          }
                          if(value != passController.text){
                            return "Passwords do not match";
                          }
                          else{
                            return null;
                          }
                        },
                      
                        decoration: InputDecoration(
                          labelText: "Confirm Password",
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(onPressed: () {
                            setState(() {
                              hiddenConfirmPass =! hiddenConfirmPass;
                            });
                          }, 
                          icon: hiddenConfirmPass
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility)
                          ),
                      
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          )
                      
                        ),
                      ),
                    ),
              
              
                    SizedBox(height: 33),
              
                  ElevatedButton(onPressed: () {
                    if(_formKey.currentState!.validate()) {
                      showDialog(context: context, builder: (context) {
                        return AlertDialog(
              title: Text("Signed Up"),
              content: Text("You've created an account"),
              
              actions: [
                ElevatedButton(onPressed: () {
                  Navigator.pop(context);



                  Navigator.of(context).pushReplacement(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, seconaryAnimation) => HomePage(),
                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                        return FadeTransition(
                          opacity: animation,
                          child: child,
                        );
                      },
                      transitionDuration: Duration(milliseconds: 600),
                      )
                    );

                  },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(20),
                  )
                )
                , child: Text("Proceed", 
                      style: TextStyle(color: Colors.white)))
              ],
                        );
                      }
                      );
                    }
              
                  },
                  
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(370, 55),
                    backgroundColor: const Color.fromARGB(255, 207, 176, 196),
                    shadowColor: Colors.black,
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(15),
                    )
                  ),
              
                   child: Text("Sign up",
                        style: TextStyle(
              color: Colors.black,
              fontSize: 17 
                        )))
              
              
              
              
              
              
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
