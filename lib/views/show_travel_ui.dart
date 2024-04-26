// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_sau_project/models/travel.dart';

class ShowTravelUI extends StatefulWidget {
  Travel? travelInfo;
  ShowTravelUI({super.key, this.travelInfo});

  @override
  State<ShowTravelUI> createState() => _ShowTravelUIState();
}

class _ShowTravelUIState extends State<ShowTravelUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          'แสดงข้อมูลการเดินทาง',
          style: GoogleFonts.kanit(),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.file(
                  File(widget.travelInfo!.pictureTravel!),
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.width * 0.4,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Text(
                'สถานที่ที่เดินทางไป',
              ),
              Text(
                widget.travelInfo!.placeTravel!,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Text(
                'ค่าใช้จ่ายที่ใช้',
              ),
              Text(
                widget.travelInfo!.costTravel!,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Text(
                'วันที่เดินทางไป',
              ),
              Text(
                widget.travelInfo!.dateTravel!,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Text(
                'จำนวนวันที่เดินทางไป (วัน)',
              ),
              Text(
                widget.travelInfo!.dayTravel!,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}