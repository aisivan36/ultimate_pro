import 'package:flutter/material.dart';
import 'package:imaging/caty/star.dart';

class UserLocalScreen extends StatelessWidget {
  const UserLocalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pussy Cat'),
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/mountain.jpg',
          ),
          Transform.translate(
            offset: Offset(0, 100),
            child: Column(
              children: [
                _buildUserImage(context),
                _buildUserDetails(context),
                _buildAction(context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildUserImage(BuildContext context) {
  return Container(
    width: 200.0,
    height: 200.0,
    child: ClipOval(
      child: Image.asset(
        'assets/cat.jpg',
        fit: BoxFit.fitWidth,
      ),
    ),
  );
}

Widget _buildUserDetails(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Pussy Cat',
          style: TextStyle(
            fontSize: 37,
            fontWeight: FontWeight.w400,
          ),
        ),
        StarRating(
          value: 5,
          starSize: 21,
          color: Colors.yellow,
        ),
        _buildCat('Age', ': 2'),
        _buildCat('Status', ': Anger'),
      ],
    ),
  );
}

Widget _buildCat(String personal, String doing) {
  return Row(
    children: [
      Text(
        personal,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Text(
        doing,
        style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
      ),
    ],
  );
}

Widget _buildAction(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      _buildIcon(Icons.restaurant, 'Feed'),
      _buildIcon(Icons.favorite, 'Pet'),
      _buildIcon(Icons.directions_walk, 'Walk'),
    ],
  );
}

Widget _buildIcon(IconData icon, String text) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      children: [
        Icon(
          icon,
          size: 40.0,
        ),
        Text(text),
      ],
    ),
  );
}
