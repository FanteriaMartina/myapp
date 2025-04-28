import 'dart:ffi';
import 'dart:nativewrappers/_internal/vm/lib/mirrors_patch.dart';

import "package:myapp/data/data.dart";
import "package:myapp/helpers/color_helper.dart";
import 'package:myapp/widgets/bar_chart.dart';
import 'package:myapp/models/category_model.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  _buildCategory( Category category, double totalAmountSpend){
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder : (_)=> CategoryScreen(category: category),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        height: 100.0,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: const [
            BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 6.0,
          ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  category.name,
                  style: const TextStyle( 
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text( 
                  

                ),

              ],
            ),
          ]

        ),


      ),
      


    )
  }
}