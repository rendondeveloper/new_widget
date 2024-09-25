import 'dart:io';
import 'package:mason/mason.dart';

void run(HookContext context) {
  final nameSnackCase = context.vars['name_widget'].toString().snakeCase;
  final namePascalCase = context.vars['name_widget'].toString().pascalCase;
  final filePath = 'example/lib/home_page.dart';
  final file = File(filePath);

  if (file.existsSync()) {
    final content = file.readAsStringSync();

    final updatedContent2 = content.replaceFirst(
      '''//*Insert Import*//''',
'''import 'package:widgets_ui_app/pages/$nameSnackCase/widget_${nameSnackCase}_page.dart';
//*Insert Import*//''');

    final updatedContent = updatedContent2.replaceFirst(
      '//*Insert Widget*//',
      '''WidgetModel(
      page: const ${namePascalCase}Page(),
      name: '$namePascalCase Page',
    ),
    //*Insert Widget*//''',
    );

    file.writeAsStringSync(updatedContent);
    context.logger.info('home_page.dart has been updated.');
  } else {
    context.logger.err('home_page.dart not found.');
  }
}
