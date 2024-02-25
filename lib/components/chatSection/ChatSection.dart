import 'package:flutter/material.dart';

class ChatSection extends StatefulWidget {
  const ChatSection({super.key});

  @override
  State<ChatSection> createState() => _ChatSectionState();
}

class _ChatSectionState extends State<ChatSection> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<int>(
      stream: getNumberStream(),
      builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
        if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }

        switch (snapshot.connectionState) {
          case ConnectionState.none:
            return Text('Not connected to the stream');
          case ConnectionState.waiting:
            return Text('Waiting for data...');
          case ConnectionState.active:
            return Text('Current data: ${snapshot.data}');
          case ConnectionState.done:
            return Text('Stream has closed');
        }
      },
    );
  }

  Stream<int> getNumberStream() {
    return Stream.periodic(Duration(seconds: 1), (int count) {
      return count; // This stream emits an integer every second
    });
  }
}
