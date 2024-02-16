import 'package:flutter/material.dart';
//import 'package:firebase_core/firebase_core.dart'; // Import Firebase Core package
import 'package:police/CasesPage.dart'; // Import CasesPage widget

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp(); // Initialize Firebase
  runApp(PoliceAdminPanel());
}

class PoliceAdminPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Police Admin Panel'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          DashboardItem(
            title: 'Reports',
            icon: Icons.description,
            onPressed: () {
              // Handle onPressed event
              print('Reports pressed');
            },
          ),
          DashboardItem(
            title: 'Cases',
            icon: Icons.assignment,
            onPressed: () {
              // Handle onPressed event
              print('Cases pressed');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CasesPage()), // Navigate to CasesPage
              );
            },
          ),
          DashboardItem(
            title: 'Officers',
            icon: Icons.people,
            onPressed: () {
              // Handle onPressed event
              print('Officers pressed');
            },
          ),
          DashboardItem(
            title: 'Statistics',
            icon: Icons.insert_chart,
            onPressed: () {
              // Handle onPressed event
              print('Statistics pressed');
            },
          ),
          // Add more DashboardItems as needed
        ],
      ),
    );
  }
}

class DashboardItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function onPressed;

  DashboardItem({required this.title, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Card(
        elevation: 4.0,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 50.0,
                color: Colors.blue,
              ),
              SizedBox(height: 10.0),
              Text(
                title,
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
