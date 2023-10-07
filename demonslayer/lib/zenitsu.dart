import 'package:flutter/material.dart';

class Zenitsu extends StatefulWidget{
  const Zenitsu({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ZenitsuState createState() => _ZenitsuState();
}

class _ZenitsuState extends State<Zenitsu>{
  final TextEditingController _textController = TextEditingController();

  @override
  void dispose(){
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Plan twice, Slay once."),
        titleTextStyle: const TextStyle( fontFamily: "pixelBold" ),
        ),
        body: Padding(padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          controller: _textController,
          maxLines: null,
          expands: true,
          decoration: 
            const InputDecoration(
            alignLabelWithHint: true,
            hintText: "Practice a 1000 times, Slay only once...",
            border: OutlineInputBorder(),
          ),
        )
        )

    );
  }

}