import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _MyHomeScreenState(),
    );
  }
}

class _MyHomeScreenState extends StatefulWidget {
  const _MyHomeScreenState();

  @override
  State<_MyHomeScreenState> createState() => __MyHomeScreenStateState();
}

class __MyHomeScreenStateState extends State<_MyHomeScreenState> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("FACI",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 65
                  ),
                  ),
                  Text("O",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 65,
                color: Color.fromARGB(255, 64, 167, 144)
              ),
              ),
                ],
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon : Icon(Icons.email)
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon : Icon(Icons.lock),
                  ),
                ),
              ),
              // CheckboxListTile(
              //       title: Text("Remember me"),
              //       selectedTileColor: Color.fromARGB(255, 63, 139, 117),
              //       selected: isChecked,
              //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
              //       value: isChecked, onChanged: (value){
              //         isChecked = value ?? false;
              //         setState(() {
                        
              //         });
              //       })
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: Transform.scale(
                      scale: 2.0,
                      child: Checkbox(
                        shape: const CircleBorder(),
                        activeColor: const Color.fromARGB(255, 136, 202, 182),
                        checkColor: const Color.fromARGB(255, 64, 167, 144),
                        splashRadius: 20,
                        value: isChecked, onChanged: (value){
                          isChecked = value ?? false;
                          setState(() {
                            
                          });
                        }),
                    ),
                  ),
                  const Text("Remember me",
                  style: TextStyle(color: Colors.black),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 85),
                    child: const Text("Forgot password?",
                    style: TextStyle(
                      color: Color.fromARGB(255, 64, 167, 144),
                      fontSize: 15
                      ),
                    ),
                  )
                ],
              ),
              TextButton(onPressed: (){
          }, 
          child: Container(
            width: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 64, 167, 144),
              ),
            
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(20),
            child: const Text("LOGIN",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white
              )
              ,textAlign: TextAlign.center,),
          )
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account?",
              style: TextStyle(
                fontSize: 17
              ),
              ),
              Text("SignUp here",
              style: TextStyle
              (color: Color.fromARGB(255, 64, 167, 144),
              fontSize: 17
              ),
              ),
            ],
          )
            ],
          ),
        ),
    )
    );
  }
}