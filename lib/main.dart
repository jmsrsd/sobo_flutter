import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'note/view/note_main_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sobo',
      theme: ThemeData.dark(),
      home: const NoteMainView(),
    );
  }
}
