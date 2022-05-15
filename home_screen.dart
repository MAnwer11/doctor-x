import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 238, 238, 238),
        actions: [
          MaterialButton(
            onPressed: () {},
            child: const CircleAvatar(
              backgroundImage: AssetImage("assets/images/user.png"),
              radius: 15.0,
            ),
          )
        ],
        leading: IconButton(
          onPressed: () {},
          color: const Color.fromARGB(255, 122, 116, 116),
          icon: const Icon(Icons.menu_rounded),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Our",
              style: TextStyle(
                fontSize: 35.0,
                color: Color.fromARGB(255, 145, 144, 144),
              ),
            ),
            const Text(
              "Products",
              style: TextStyle(
                fontSize: 35.0,
                color: Color.fromARGB(255, 53, 53, 53),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            Row(
              children: [
                SizedBox(
                  width: 338.0,
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 214, 211, 211),
                      hintText: "Search Products...",
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.filter_alt)),
              ],
            ),
            const SizedBox(
              height: 40.0,
            ),
            Row(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 238, 238, 238),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
