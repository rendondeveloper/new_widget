import 'package:aplazo_material/{{name_widget.snakeCase()}}/aplazo_{{name_widget.snakeCase()}}.dart';
import 'package:aplazo_material/pages/pages_demo/page_demo.dart';
import 'package:flutter/material.dart';

class {{name_widget.pascalCase()}}Page extends StatelessWidget {
  
  const {{name_widget.pascalCase()}}Page({super.key});

  @override
  Widget build(BuildContext context) {
    return const DemoPage(
        title: '{{name_widget.pascalCase()}} Screen',
        description: '{{description}}',
        content: Aplazo{{name_widget.pascalCase()}}(),
        );
  }
}
