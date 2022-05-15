import 'package:e_commerce/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.keyboard),
                  labelText: "First Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.keyboard),
                  labelText: "last Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.remove_red_eye),
                  prefixIcon: const Icon(Icons.password),
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.password),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  labelText: "Re-Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Container(
                width: double.infinity,
                color: const Color.fromARGB(255, 142, 97, 219),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "Sing Up",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 55.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {},
                    child: const CircleAvatar(
                      radius: 25.0,
                      backgroundImage: AssetImage("assets/images/google.png"),
                    ),
                  ),
                  const SizedBox(
                    width: 18.0,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    child: const CircleAvatar(
                      radius: 25.0,
                      backgroundImage: AssetImage("assets/images/facebook.png"),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
