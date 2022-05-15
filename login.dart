import 'package:e_commerce/screens/home_screen.dart';
import 'package:e_commerce/screens/sign_up.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var passwordcontroller = TextEditingController();

  var emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 60.0,
              ),
              const Text(
                "Login ",
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 45.0,
              ),
              TextFormField(
                controller: emailcontroller,
                onFieldSubmitted: (value) {},
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email Address",
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              TextFormField(
                controller: passwordcontroller,
                onFieldSubmitted: (value) {},
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: const Icon(Icons.password),
                  suffixIcon: const Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 25.0,
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
                        ));
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {},
                    child: const CircleAvatar(
                      radius: 28.0,
                      backgroundImage: AssetImage("assets/images/google.png"),
                    ),
                  ),
                  const SizedBox(
                    width: 18.0,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    child: const CircleAvatar(
                        radius: 28.0,
                        backgroundImage:
                            AssetImage("assets/images/facebook.png")),
                  )
                ],
              ),
              const SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't Have An Account?",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUp(),
                          ),
                        );
                      },
                      child: const Text(
                        "Register Now",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ))
                ],
              ),
              const SizedBox(
                height: 65.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
