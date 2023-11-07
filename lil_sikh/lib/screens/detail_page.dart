import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// appabr
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(
            'assets/images/back_icon.png',
            height: 20,
            width: 20,
          ),
        ),
        centerTitle: false,
        title: const Text(
          'When we comb here',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/read_icon.png',
              height: 20,
              width: 20,
              fit: BoxFit.scaleDown,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/share_icon.png',
              height: 20,
              width: 20,
              fit: BoxFit.scaleDown,
            ),
          ),
        ],
      ),

      /// body
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        physics: const BouncingScrollPhysics(),
        children: [

          /// top box
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Hello world this is the demo application for the application user.'
                  'this is just for the practice for the beginners.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 16),
                Image.asset('assets/images/play_icon.png',
                  height: 40,
                  width: 40,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),

          const SizedBox(height: 24),
          Image.asset('assets/images/option_3_single.png',
            height: 180,
            width: 180,
            fit: BoxFit.scaleDown,
          ),

          const SizedBox(height: 24),


        ],
      ),
    );
  }
}
