import 'package:flutter/material.dart';

class SquarTile extends StatelessWidget {
  final String imagePath;
  const SquarTile({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(  
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey.shade200,
      ),
      child: Image.asset(imagePath, height: 40,),
    );
  }
}
