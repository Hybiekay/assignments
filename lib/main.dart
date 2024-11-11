import 'package:flutter/material.dart';
import 'package:my_flutter_app/onboarding.dart';

void main() {
  runApp(const MyFlutterApp());
}

class MyFlutterApp extends StatelessWidget {
  const MyFlutterApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "My Flutter App",
        debugShowCheckedModeBanner: false,
        home: Onboarding());
  }
}

/// How to create a Stateful widget
class MyStatefull extends StatefulWidget {
  const MyStatefull({super.key});
  @override
  State createState() => StateForMyStatefull();
}
class StateForMyStatefull extends State<MyStatefull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // scrollDirection: Axis.horizontal,
        children: [
          const Icon(Icons.android),
          const Text(
            "Hello World",
            style: TextStyle(color: Colors.green, fontSize: 20),
          ),
          Container(
            height: 200,
            decoration: const BoxDecoration(color: Colors.amber),
          ),
          Image.network(
              'https://letsenhance.io/static/8f5e523ee6b2479e26ecc91b9c25261e/1015f/MainAfter.jpg'),
          const TextField(
            decoration: InputDecoration(
                hintText: "Enter Your Name",
                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(Icons.visibility),
                border: OutlineInputBorder()),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                fixedSize: const Size(300, 40),
                shape: const RoundedRectangleBorder()),
            child: const Text(
              "Submit",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          "Home",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: const Icon(
          Icons.menu,
          size: 28,
          color: Colors.white,
        ),
        actions: [
          const Icon(
            Icons.notifications,
            color: Colors.white,
            size: 40,
          ),
          Container(
            padding: const EdgeInsets.all(9),
            margin: const EdgeInsets.all(9),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: const Icon(Icons.save),
          )
        ],
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login Page"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: Colors.amberAccent,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.android,
                    size: 80,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Wecome Back",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Login To Continue",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Email"),
              const TextField(
                decoration: InputDecoration(
                    hintText: "Enter Your email", border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text("Password"),
              const TextField(
                decoration: InputDecoration(
                    hintText: "Enter Your Password",
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(
                      Icons.visibility,
                    )),
              ),
              const SizedBox(
                height: 5,
              ),
              const Align(
                alignment: Alignment.bottomRight,
                child: Text("Forget Password"),
              ),
              const SizedBox(
                height: 200,
              ),
              Container(
                alignment: Alignment.center,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      fixedSize: const Size(300, 45)),
                  child: const Text("Login"),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't Have An account"),
                  SizedBox(width: 6),
                  Text(
                    "Sign UP",
                    style: TextStyle(
                      color: Colors.amber,
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController countryController = TextEditingController();

  String? name;
  String? age;
  String? country;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          Container(
            height: 200,
            padding: const EdgeInsets.only(top: 20),
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 65,
                  backgroundImage: AssetImage("assets/images/cat.jpeg"),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name ?? "Ademola Ibukun",
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Age:  ${age ?? 12}",
                          style: const TextStyle(fontSize: 15),
                        ),
                        Container(
                          margin: const EdgeInsets.all(6),
                          width: 5,
                          height: 12,
                          color: Colors.white,
                        ),
                        Text(
                          "Country: ${country ?? "Ghana"}",
                          style: const TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    const Text("Skils",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    const SizedBox(
                      width: 150,
                      child: Wrap(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text("Dart"),
                          ),
                          Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text("Flutter"),
                          ),
                          Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text("Githup"),
                          ),
                          Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text("Firebase"),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    labelText: "Name",
                    hintText: "Enter Your name",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: ageController,
                  decoration: const InputDecoration(
                    labelText: "Age",
                    hintText: "Enter Your Age",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: countryController,
                  decoration: const InputDecoration(
                    labelText: "Country",
                    hintText: "Enter Your Country",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        fixedSize: const Size(300, 50)),
                    onPressed: () {
                      setState(() {
                        name = nameController.text;
                        age = ageController.text;
                        country = countryController.text;
                      });
                    },
                    child: const Text("Submit"))
              ],
            ),
          )
        ],
      ),
    ));
  }
}
