import 'package:chitrakala/view/model/empty_state_card_model.dart';
import 'package:chitrakala/view/views/home_view/components/intro_card.dart';

import 'package:flutter/material.dart';

class EmptyState extends StatefulWidget {
  const EmptyState({
    Key? key,
  }) : super(key: key);

  @override
  State<EmptyState> createState() => _EmptyStateState();
}

class _EmptyStateState extends State<EmptyState> {
  final List<EmptyStateCardModel> list = [
    exampleCardModel,
    capabilitiesCardModel,
    limitationsCardModel
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        20,
        20,
        20,
        8,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text("ChatGPT",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 30,
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return IntroCards(
                    card: list[index],
                  );
                }),
          ],
        ),
      ),
    );
  }
}
