import 'dart:io';
import 'package:mason/mason.dart';

void run(HookContext context) {
  final filePath = 'example/lib/home_page.dart';
  final file = File(filePath);

  if (file.existsSync()) {
    context.logger.info('home_page.dart has been updated.');
  } else {
    context.logger.err('home_page.dart not found.');
  }
}
