import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'dropdown_provider.dart';

class DropDown extends StatelessWidget {
  const DropDown();

  @override
  Widget build(BuildContext context) {
    return Consumer<DropdownText>(
      builder: (context, dropdown, _) {
        return DropdownButtonFormField<String>(
          items: dropdown.menuItems,
          value: dropdown.text,
          onChanged: (value) {
            dropdown.setText(value);
          },
        );
      },
    );
  }
}
