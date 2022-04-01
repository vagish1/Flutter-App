import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Faker faker = Faker();

    return ListView.builder(
      itemBuilder: (_, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(faker.image.image()),
          ),
          title: Text(faker.person.name()),
          subtitle: Text(
            faker.lorem.sentences(1).toString(),
            maxLines: 1,
          ),
        );
      },
      itemCount: 20,
    );
  }
}
