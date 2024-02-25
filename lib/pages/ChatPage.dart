import 'package:carseller/components/chatSection/ChatSection.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              const Expanded(
                  child: TextField(
                style: TextStyle(fontSize: 12),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  hintText: "Enter Text here..",
                ),
              )),
              GestureDetector(
                child: Container(
                  margin: EdgeInsets.only(
                    left: 10,
                  ),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green),
                  child: Icon(Icons.send),
                ),
              )
            ],
          ),
        ),
        appBar: AppBar(
          actions: const <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.downloading,
                size: 15,
              ),
            )
          ],
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios_new_outlined, size: 15),
          ),
          title: const Center(
              child: Text(
            "sandeep sharma",
            style: TextStyle(
              fontSize: 15,
            ),
          )),
        ),
        body: ChatSection());
  }
}
