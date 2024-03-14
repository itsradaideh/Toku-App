import 'package:flutter/material.dart';
import 'package:toku_app/screens/numbers_page.dart';
import 'package:toku_app/screens/phrases_page.dart';

import '../components/category_item.dart';
import 'colors_page.dart';
import 'family_members_page.dart';
    
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFAFAFA),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text('Toku',style: TextStyle(
    color: Colors.white,),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset('assets/images/home/book-lovers.png',width: 250),
            ),
            Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const NumbersPage();
                }));
              },
              text: 'Numbers',
              // color: const Color(0xFFF99531),
            ),
            Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const FamilyMembersPage();
                }));
              },
              text: 'FamilyMembers',
              // color: const Color(0xFF528032),
            ),
            Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ColorsPage();
                }));
              },
              text: 'Colors',
              // color: const Color(0xFF79359F),
            ),
            Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const PhrasesPage();
                }));
              },
              text: 'Phrases',
              // color: const Color(0xFF47A5CB),
            ),
          
          ],
        ),
      ),
    );
  }
}

