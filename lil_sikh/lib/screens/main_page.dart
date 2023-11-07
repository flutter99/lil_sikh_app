import 'package:flutter/material.dart';
import 'package:lil_sikh/screens/detail_page.dart';
import 'package:lil_sikh/screens/language_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// appbar
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        centerTitle: false,
        title: const Text(
          'Lily Sikh Study',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/message_icon.png',
              height: 20,
              width: 20,
              fit: BoxFit.scaleDown,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LanguagePage(),
                ),
              );
            },
            icon: Image.asset(
              'assets/images/setting_icon.png',
              height: 20,
              width: 20,
              fit: BoxFit.scaleDown,
            ),
          ),
        ],
      ),

      /// body
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 14,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(vertical: 20),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailPage(),
                ),
              );
            },
            child: Image.asset(
              'assets/images/option_${index + 1}.png',
            ),
          );
        },
      ),
    );
  }
}
