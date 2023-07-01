import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xff2b475e),
          body: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.white, width: 0.9)),
                          width: 200,
                        ),
                        const CircleAvatar(
                          radius: 100,
                          backgroundColor: Colors.transparent,
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Image(
                              image: AssetImage('images/logo.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      'Ahmed El-said',
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        color: Colors.white,
                        fontSize: 32,
                      ),
                    ),
                    const Text(
                      'Flutter Developer',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff6c8090),
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Divider(
                      color: Colors.grey,
                      thickness: 1,
                      height: 1,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      padding: const EdgeInsets.all(0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          label: Text("Phone"),
                          hintText: 'Enter Your Phone',
                          prefixIcon: Icon(Icons.phone),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      padding: const EdgeInsets.all(0),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          label: Text("Email"),
                          hintText: 'Enter Your Email',
                          prefixIcon: Icon(Icons.email),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
