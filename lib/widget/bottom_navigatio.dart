import 'package:flutter/material.dart';

class Bottomnavigation extends StatefulWidget {
  // final String label;
  // final Widget icon;
  const Bottomnavigation({
    super.key,
    // required this.label,
    // required this.icon,
    });

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
   int selectedIndex = 0;
  
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: selectedIndex,
      onDestinationSelected: (index){
        setState(() {
          selectedIndex=index;
        });
      },
        destinations: const [
        NavigationDestination( icon: Icon(Icons.home),label: "Home",),
        NavigationDestination(icon: Icon(Icons.category), label: "Category"),
        NavigationDestination(icon: Icon(Icons.message), label: "Message"),
        NavigationDestination(icon: Icon(Icons.person), label: "Private"),
        ],
      );
      
    
  }
}
