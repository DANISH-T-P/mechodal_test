import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(16, 93, 56, 56),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/mechodal_bg.png'),fit: BoxFit.cover)
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 90),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 255, 255, 1),
                          borderRadius: BorderRadius.circular(24)),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Whats's app Direct",
                      style: TextStyle(
                          fontSize: 24,
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Enter Mobile number & message",
                      style: TextStyle(
                          fontSize: 12,
                          color: Color.fromRGBO(255, 174, 88, 1),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'Enter Phone Number',
                      border: InputBorder.none,
                      hintStyle:
                          TextStyle(color: Color.fromRGBO(255, 255, 255, 1),fontSize: 24)),
                  keyboardType: const TextInputType.numberWithOptions(),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              height: 250,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(16, 93, 56, 24),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.only(top: 8, left: 15),
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: 'write Description',
                      border: InputBorder.none,
                      hintStyle:
                          TextStyle(color: Color.fromRGBO(255, 255, 255, 1))),
                  maxLines: null,
                  expands: true,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color.fromRGBO(76, 208, 128, 1),
                ),
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'SEND MESSAGE',
                      style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                    ))),
          )
        ],
      ),
    );
  }
}
