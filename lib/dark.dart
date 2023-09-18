import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const _MyHomeScreenState(),
      darkTheme: ThemeData.dark(),
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
        // backgroundColor: Colors.black,
        body: Container(
          decoration: const BoxDecoration(color: Colors.black,
          image: DecorationImage(image: NetworkImage("https://img.freepik.com/premium-photo/boy-with-grey-shirt-gray-shirt-is-looking-camera_81048-9919.jpg"),
          fit: BoxFit.cover,
          opacity: 180
          )
        ),
          child: Center(
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
                      fontSize: 65,
                      color: Colors.white
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
              //   TextSpan(
              //   text: 'FACI ',
              //   children: <InlineSpan>[
              //     TextSpan(
              //       text: 'O',
              //       style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.green),
              //     )
              //   ]
              // ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Opacity(
                    opacity: 0.5,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon : Icon(Icons.email,color: Colors.white),
                        filled: true,
                        fillColor: Color.fromARGB(255, 122, 115, 115)
                        ),
                      
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Opacity(
                    opacity: 0.5,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon : Icon(Icons.lock,color: Colors.white,),
                        filled: true,
                        fillColor: Color.fromARGB(255, 122, 115, 115)
                      ),
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
                    const Text("Keep me logged in.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17
                      ),
                    ),
                  ],
                ),
                TextButton(onPressed: (){
            }, child: Container(
              width: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 64, 167, 144),
                ),
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              child: const Text("LOGIN",
              style: TextStyle(
                fontSize: 20
                ,color: Colors.white),
                textAlign: TextAlign.center,),
            )
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 15),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Forgot password?",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white
                  ),
                  ),
                  Text("Recover here",
                  style: TextStyle(
                    color: Color.fromARGB(255, 64, 167, 144),fontSize: 16),
                  ),
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white
                ),
                ),
                Text("Signup here",
                style: TextStyle(color: Color.fromARGB(255, 64, 167, 144),
                fontSize: 16),
                ),
              ],
            )
              ],
            ),
          ),
        ),
    )
    );
  }
}