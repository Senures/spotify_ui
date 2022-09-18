import 'package:flutter/material.dart';

class BookPage extends StatefulWidget {
  const BookPage({super.key});

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              alignment: Alignment.bottomCenter,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.14,
              //color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Your Library",
                      style: const TextStyle(
                          letterSpacing: 0.5,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0)),
                ],
              ),
            ),
          ),
          //////////
          ///
          ///
          const SizedBox(height: 50),

          ElevatedButton(
            onPressed: () {},
            child: Text('Deneme Button'),
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(
                  Size(MediaQuery.of(context).size.width * .7, 150)),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28.0),
                    side: const BorderSide(color: Colors.yellowAccent)),
              ),
              
            ),
          ),
        ],
      ),
    );
  }
}
