import 'package:flutter/material.dart';
import 'package:laboratorymodule/dashboard.dart';
import 'package:laboratorymodule/signout.dart';
import 'package:laboratorymodule/tests.dart';
import 'package:laboratorymodule/viewreport.dart';

class bottomnavigation extends StatelessWidget {
  const bottomnavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      bottom: 0,
      child: Container(
        width: 420,
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xFF007FFF),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              offset: Offset(0, 4),
              blurRadius: 4,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildIconButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Dashboard()),
              );
            }, 'assets/images/homeicon.png'),
            _buildIconButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => tests()),
              );
            }, 'assets/images/testicon.png'),
            _buildIconButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => viewreport()),
              );
            }, 'assets/images/reporticon.png'),
            _buildIconButton(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => signout(
                        name: 'Hania Khan',
                        email: 'haniakhan@gmail.com',
                        age: 19,
                        gender: 'Female',
                        workinghours: '9am - 5pm',
                        shifttimmming: "Monday - Thursday")),
              );
            }, 'assets/images/profileicon.png'),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton(Function() onPressed, String imagePath) {
    return IconButton(
      onPressed: onPressed,
      icon: Image.asset(
        imagePath,
        width: 30,
        height: 25,
      ),
    );
  }
}
