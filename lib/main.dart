// packages include flutter_riverpod, go_router, appwrite, etc...

import 'package:flutter/material.dart';
import 'package:vtop/responsive/responsive_layout.dart';
import './responsive/mobile_scaffold.dart';
import 'responsive/tablet_scaffold.dart';
import './responsive/desktop_scaffold.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold(),
      ),
    );
  }
}
