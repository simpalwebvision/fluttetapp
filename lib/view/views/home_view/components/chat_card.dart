import 'package:chitrakala/view/model/message_model.dart';
import 'package:chitrakala/view/views/home_view/components/blinking_cursor.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

enum ChatCardType { human, gpt }

class ChatCard extends StatelessWidget {
  // final ChatCardType user;
  final MessageModel messageBlock;
  const ChatCard({
    // required this.user,
    required this.messageBlock,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        constraints: const BoxConstraints(
          minHeight: 110,
        ),
        decoration: BoxDecoration(
          border: messageBlock.author!.id != 'chatGPT'
              ? const Border(
                  bottom: BorderSide(color: Colors.black87, width: 0.6))
              : null,
          color: messageBlock.author!.id != 'chatGPT'
              ? Theme.of(context).primaryColor
              : Theme.of(context).cardColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    image: messageBlock.author!.id == 'chatGPT'
                        ? const DecorationImage(
                            image: AssetImage("assets/images/chatgpt_logo.png"),
                            fit: BoxFit.cover,
                          )
                        : null,
                    color: Colors.grey,
                  ),
                  child: messageBlock.author!.id != 'chatGPT'
                      ? Center(
                          child: Text(
                            "S",
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                        )
                      : null),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    messageBlock.message!,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum OtherCardType { loading, error }

class OtherCard extends StatelessWidget {
  final OtherCardType type;
  final Response? response;
  const OtherCard({super.key, required this.type, this.response});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        constraints: const BoxConstraints(
          minHeight: 110,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/chatgpt_logo.png"),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              type == OtherCardType.loading
                  ? const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: BlinkingCursor(),
                    )
                  : Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(response!.body,
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      color: Colors.red,
                                    )),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
