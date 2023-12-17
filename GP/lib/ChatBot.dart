import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];

  void _handleSubmitted(String text) {
    _textController.clear();

    // Simulate a response from the chatbot after a short delay
    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        _messages.insert(0, ChatMessage(
          text: text,
          isUser: true,
        ));

        _messages.insert(0, const ChatMessage(
          text: 'Hello! I am your FitBot.',
          isUser: false,
        ));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Set the background color to black
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child:

              Text(
              'MyFitBot',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFFB6FF00), // Set text color to green (#B6FF00)
              ),
            ),
          ),
          Flexible(
            child: ListView.builder(
              reverse: true,
              padding: const EdgeInsets.all(8.0),
              itemBuilder: (_, int index) => _messages[index],
              itemCount: _messages.length,
            ),
          ),
          const Divider(height: 1.0),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[700], // Set the common background color to grey
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: _buildTextComposer(),
          ),
        ],
      ),
    );
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).colorScheme.secondary),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                controller: _textController,
                onSubmitted: _handleSubmitted,
                decoration: const InputDecoration(
                  hintText: 'How can i help you coach?',
                  filled: true,
                  fillColor: Colors.transparent, // Set the bar color to transparent
                  border: InputBorder.none, // Remove the border
                ),
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize:22 ), // Set text color to white and font weight to bold
                cursorColor: Colors.white, // Set cursor color to white
                keyboardAppearance: Brightness.dark, // Set keyboard appearance to dark
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              decoration: BoxDecoration(
                color: Colors.transparent, // Set the button background color to transparent
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: IconButton(
                icon: const Icon(Icons.send),
                color: const Color(0xFFB6FF00), // Set icon color to green (#B6FF00)
                iconSize: 28,
                onPressed: () => _handleSubmitted(_textController.text),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  final String text;
  final bool isUser;

  const ChatMessage({Key? key, required this.text, required this.isUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CrossAxisAlignment messageAlignment =
    isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start;
    final MainAxisAlignment rowAlignment =
    isUser ? MainAxisAlignment.end : MainAxisAlignment.start;
    final Color containerColor = isUser ? Colors.grey[700]! : Colors.grey[700]!;
    const Color avatarColor = Color(0xFFB6FF00);
    const Color textColor = Colors.black; // Set text color to black

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: messageAlignment,
        children: [
          Row(
            mainAxisAlignment: rowAlignment,
            children: [
              isUser
                  ? Container()
                  : Container(
                margin: const EdgeInsets.only(right: 16.0),
                child: const CircleAvatar(
                  backgroundColor: avatarColor,
                  child: Text(
                    'M',
                    style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5.0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  text,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22
                  ),
                ),
              ),
              isUser
                  ? Container(
                margin: const EdgeInsets.only(left: 16.0),
                child: const CircleAvatar(
                  backgroundColor: avatarColor,
                  child: Text(
                    'U',
                    style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
                  ),
                ),
              )
                  : Container(),
            ],
          ),
          isUser
              ? Text(
            'User',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
          )
              : Text(
            'MyFittbot',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}