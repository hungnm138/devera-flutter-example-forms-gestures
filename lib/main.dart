import 'package:flutter/material.dart';

import 'drap_and_drop/drag_widget.dart';
import 'dropdown_menu/dropdown_button.dart';
import 'dropdown_menu/dropdown_provider.dart';
import 'forms_and_validation/layout.dart';
import 'package:provider/provider.dart';

import 'swipe_to_dismiss/swipe_items.dart';

void main() {
  // runApp(FormsAndValidationApp());
  // runApp(DropdownMenuApp());
  // runApp(DrapAndDropDemoApp());
  runApp(SwipeToDismissDemoApp());
}

/// Forms and Validation
class FormsAndValidationApp extends StatelessWidget {
  const FormsAndValidationApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Forms and Validation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: const Layout(),
      ),
    );
  }
}

/// Dropdown menu demo
class DropdownMenuApp extends StatelessWidget {
  const DropdownMenuApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dropdown Example"),
        ),
        body: ChangeNotifierProvider<DropdownText>(
          create: (_) => DropdownText(),
          child: Center(
            child: const SizedBox(
              width: 250,
              height: 100,
              child: DropDown(),
            ),
          ),
        ),
      ),
    );
  }
}

/// Drap and Drop Demo
class DrapAndDropDemoApp extends StatelessWidget {
  const DrapAndDropDemoApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Drag and Drop Demo"),
          ),
          body: const Center(
            child: DragWidget(),
          )),
    );
  }
}

/// Swipe to dismiss demo
class SwipeToDismissDemoApp extends StatelessWidget {
  const SwipeToDismissDemoApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Swipe to delete"),
          ),
          body: const Center(
            child: SwipeItems(),
          )),
    );
  }
}
