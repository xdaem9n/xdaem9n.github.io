import 'package:flutter/material.dart';
import 'package:momnah_portfolio/hover_underline_button.dart';

class HomePage extends StatefulWidget {
  final VoidCallback toggleTheme;
  final bool isDarkMode;

  const HomePage({required this.toggleTheme, required this.isDarkMode, super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.isDarkMode ? Colors.black : Colors.white,
      appBar: AppBar(
        backgroundColor: widget.isDarkMode ? Colors.black : Colors.white,
        iconTheme: IconThemeData(color: widget.isDarkMode ? Colors.white : Colors.black),
        actions: [
          const SizedBox(width: 10),
          HoverUnderlineButton(
            label: 'Tutorials',
            color: widget.isDarkMode ? Colors.white : Colors.black,
            onPressed: () {},
          ),
          HoverUnderlineButton(
            label: 'Snippets',
            color: widget.isDarkMode ? Colors.white : Colors.black,
            onPressed: () {},
          ),
          HoverUnderlineButton(
            label: 'Blog',
            color: widget.isDarkMode ? Colors.white : Colors.black,
            onPressed: () {},
          ),
          HoverUnderlineButton(
            label: 'Tags',
            color: widget.isDarkMode ? Colors.white : Colors.black,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search, color: widget.isDarkMode ? Colors.white : Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.brightness_6, color: widget.isDarkMode ? Colors.white : Colors.black),
            onPressed: widget.toggleTheme,
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(flex: 2),
                      ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return const LinearGradient(
                            colors: <Color>[Colors.green, Colors.blue],
                            tileMode: TileMode.mirror,
                          ).createShader(bounds);
                        },
                        child: const Text(
                          'ORGANIZE YOUR NOTES WITH EASE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 80,
                            fontWeight: FontWeight.bold,
                            height: 0.95,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Capture, organize, and share your notes. Sign up to be notified',
                        style: TextStyle(
                          color: widget.isDarkMode ? Colors.white : Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Image.asset(
                        widget.isDarkMode ? 'assets/dark_theme_image.png' : 'assets/light_theme_image.png',
                        width: 50,
                        height: 50,
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: widget.isDarkMode ? Colors.grey[800] : Colors.grey[300],
                                hintText: 'Your email',
                                hintStyle: const TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                              style: TextStyle(color: widget.isDarkMode ? Colors.white : Colors.black),
                            ),
                          ),
                          const SizedBox(width: 10),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: widget.isDarkMode ? Colors.blue : Colors.green,
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            child: const Text('Notify Me'),
                          ),
                        ],
                      ),
                      const Spacer(flex: 3),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/arrow.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
