import 'package:flutter/material.dart';
import 'package:text_editor/text_editor.dart';

class ActionsPage extends StatefulWidget {
  const ActionsPage({Key? key}) : super(key: key);

  @override
  _ActionsPageState createState() => _ActionsPageState();
}

class _ActionsPageState extends State<ActionsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'images/location_background.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          TextEditor(
            fonts: const ['roboto', 'raleway'],
            text: 'Simply perform required operations here',
            paletteColors: const [
              Colors.white,
            ],
            onEditCompleted: (TextStyle, TextAlign, String) async {
              setState(() {});
            },
            textStyle: const TextStyle(color: Colors.white),
            decoration: EditorDecoration(
              doneButton: const Icon(Icons.close, color: Colors.white),
              fontFamily: const Icon(Icons.title, color: Colors.white),
              colorPalette: const Icon(Icons.palette, color: Colors.white),
              alignment: AlignmentDecoration(
                left: const Text(
                  'left',
                  style: TextStyle(color: Colors.white),
                ),
                center: const Text(
                  'center',
                  style: TextStyle(color: Colors.white),
                ),
                right: const Text(
                  'right',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
