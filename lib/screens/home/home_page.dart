import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  final bool isSelected;

  const CategoryButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.color,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? color : Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: color,
          width: isSelected ? 0 : 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
          children: [
            Icon(
              icon,
              color: isSelected ? Colors.white : color,
            ),
            SizedBox(height: 8.0),
            Text(
              text,
              style: TextStyle(
                color: isSelected ? Colors.white : color,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var value1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 16.0), // Add spacing
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello,',
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                  Text(
                    'Peerapat Phuangsapsin',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/'),
                radius: 45.0,
              ),
            ),
            SizedBox(height: 16.0), // Add spacing
            Container(
              color: Color.fromARGB(255, 222, 250, 255),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 8.0),
                    child: Text('Courses', style: TextStyle(fontSize: 26.0)),
                  ),
                  SizedBox(height: 16.0), // Add spacing
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CategoryButton(
                        text: 'News Video',
                        icon: Icons.alarm,
                        color: Colors.blue,
                        isSelected: value1,
                      ),
                      SizedBox(width: 16.0), // Add spacing
                      CategoryButton(
                        text: 'Popular Video',
                        icon: Icons.star,
                        color: Colors.red,
                        isSelected: true,
                      ),
                      SizedBox(width: 16.0), // Add spacing
                      CategoryButton(
                        text: 'Favorite Video',
                        icon: Icons.favorite,
                        color: Colors.pinkAccent,
                        isSelected: true,
                      ),
                      SizedBox(width: 16.0), // Add spacing
                      CategoryButton(
                        text: 'Search Video',
                        icon: Icons.search ,
                        color: Colors.green,
                        isSelected: true,
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0), // Add spacing
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            value1 = !value1;
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text('View'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0), // Add spacing
            SizedBox(height: 200), // Example: Add empty space
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}
