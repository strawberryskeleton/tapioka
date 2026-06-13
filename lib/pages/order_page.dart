import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        elevation: 0,
      ),

      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Icon(
                  Icons.done,
                  size: 40,
                  color: Colors.green,
                ),
              ),
              
            ),
        
            const SizedBox(height: 20),
        
            Text(
              "Ordered Successfully",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}