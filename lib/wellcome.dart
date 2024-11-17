import "package:flutter/material.dart";

// ignore: camel_case_types
class wellcomepage extends StatelessWidget {
  const wellcomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: const [
            Color.fromARGB(190, 0, 238, 255),
            Color.fromARGB(160, 123, 16, 224),
            Color.fromARGB(190, 0, 238, 255)
          ])),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                ),
                Image.asset(
                  "assets/google-quiz.png",
                  width: 300,
                ),
                SizedBox(
                  height: 60,
                ),
                Text("Wellcome To Quize Game App"),
                SizedBox(
                  height: 80,
                ),
                Image.asset(
                  "assets/logo_web.png",
                  width: 200,
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  decoration: ShapeDecoration(
                      shape: StadiumBorder(),
                      gradient: LinearGradient(colors: const [
                        Color.fromARGB(255, 253, 255, 124),
                        Color(0xFFFFBC2B),
                        Color.fromARGB(255, 255, 174, 0),
                        Color.fromARGB(255, 255, 174, 0),
                        Color.fromARGB(255, 255, 174, 0)
                      ])),
                  child: SizedBox(
                      height: 60,
                      width: 350,
                      child: MaterialButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/quiz');
                          },
                          child: Text("Play"))),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                    height: 60,
                    width: 350,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/help');
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all(Colors.white),
                          shape: WidgetStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)))),
                      child: Text(
                        "How To Play",
                        style: TextStyle(
                            fontStyle: FontStyle.italic, fontSize: 20),
                      ),
                    )),
              ],
            ),
          ),
        ));
  }
}