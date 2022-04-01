import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Faker faker = Faker();
    return Column(
      children: [
        const SizedBox(
          height: 16.0,
        ),
        ListTile(
          leading: const CircleAvatar(
            backgroundColor: Colors.green,
            maxRadius: 28.0,
          ),
          title: const Text("Add Status"),
          onTap: () {},
        ),
        const SizedBox(
          height: 16.0,
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: 4,
          itemBuilder: (_, index) {
            return ListTile(
              leading: CircleAvatar(
                child: CircleAvatar(
                  maxRadius: 25.0,
                  backgroundImage: NetworkImage(
                    faker.image.image(),
                  ),
                ),
                maxRadius: 28.0,
              ),
              title: Text(faker.person.name()),
              subtitle: Text(faker.date.time()),
            );
          },
        ),
      ],
    );
  }
}
