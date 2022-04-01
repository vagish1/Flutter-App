import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);

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
          subtitle: Text(faker.date.time()),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.call_outlined,
            ),
          ),
        );
      },
      itemCount: 20,
    );
  }
}
