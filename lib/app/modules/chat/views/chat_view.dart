import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      appBar: AppBar(
        backgroundColor: Colors.brown.shade100,
        title: Text("Chat", style: GoogleFonts.poppins(fontSize: 18, color: Colors.black),),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: 5, // contoh dummy chat
        separatorBuilder: (context, index) => const Divider(
          color: Colors.grey,
          height: 1,
          thickness: 1,
          indent: 16,
          endIndent: 16,
        ),
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(child: Icon(Icons.person)),
            title: Text("Agent ${index + 1}"),
            subtitle: const Text("Hello, how can I help you?"),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          );
        },
      )
    );
  }
}
