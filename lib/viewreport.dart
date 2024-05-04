import 'package:flutter/material.dart';

class viewreport extends StatelessWidget {
  const viewreport({Key? key});

  @override
  Widget build(BuildContext context) {
    String _reportId = '';

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: Stack(
          children: [
            Positioned(
              left: 17,
              top: 6,
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/Group 85.png'),
              ),
            ),
            Positioned(
              right: 3,
              top: 9,
              child: IconButton(
                splashRadius: 29,
                onPressed: () {},
                icon: Image.asset(
                  'assets/images/heart.png',
                  width: 40,
                  height: 40,
                ),
                iconSize: 45,
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            left: 0,
            top: 26,
            child: Container(
              width: 412,
              height: 35,
              decoration: BoxDecoration(
                color: const Color(0xFF007FFF),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 4),
                    blurRadius: 4,
                  ),
                ],
                borderRadius: BorderRadius.circular(17.5),
              ),
              child: Center(
                child: Text(
                  "View Patient's Report",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 28,
            top: 123,
            child: Image.asset(
              'assets/images/obj.png.png',
              width: 133,
              height: 166,
            ),
          ),
          Positioned(
            left: 31,
            top: 270,
            child: Container(
              width: 320,
              height: 45,
              decoration: BoxDecoration(
                color: const Color(0xFFF9F9F9),
                border: Border.all(color: const Color(0xFFCCC9C9)),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 4),
                    blurRadius: 4,
                  ),
                ],
                borderRadius: BorderRadius.circular(9),
              ),
              child: Stack(
                children: [
                  Visibility(
                    visible: _reportId.isEmpty,
                    child: Positioned(
                      left: 10,
                      top: 11,
                      child: Text(
                        'Report ID',
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Color(0xFFC4C4C4),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 296,
                    height: 45,
                    padding: const EdgeInsets.only(left: 10),
                    child: TextField(
                      textAlign: TextAlign.start,
                      onChanged: (value) {
                        _reportId = value;
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: _reportId.isEmpty ? '' : '',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 110,
            top: 375,
            child: Container(
              width: 172,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  // Add your onPressed logic here
                },
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(const Color(0xFF007FFF)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    'Enter',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
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
                  _buildIcon('assets/images/1.png'),
                  _buildIcon('assets/images/2.png.png'),
                  _buildIcon('assets/images/3.png'),
                  _buildIcon('assets/images/4.png'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIcon(String imagePath) {
    return IconButton(
      onPressed: () {
        // Add your onPressed logic here
      },
      icon: Image.asset(
        imagePath,
        width: 30,
        height: 25,
      ),
    );
  }
}