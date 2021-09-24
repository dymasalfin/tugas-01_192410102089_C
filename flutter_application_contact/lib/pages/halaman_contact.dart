import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_contact/models/user.dart';
import 'package:flutter_application_contact/widgets/item_contact.dart';


class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  late List<User> users;
  @override
  void initState() {
    users = User.getUser();
    users.sort((a, b) => a.nama.compareTo(b.nama));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DAFTAR CONTACT',
        style: TextStyle(color: Colors.black87),),
        centerTitle: true,
        backgroundColor: Colors.tealAccent[400],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            for (var card = 0; card < users.length; card++)
              InkWell(
                onTap: () {},
                child: ContactItem(User(
                    id: users[card].id,
                    nama: users[card].nama,
                    email: users[card].email,
                    noHp: users[card].noHp,
                    imageUrl: users[card].imageUrl,)),
              ),
          ],
        ),
      ),
    );
  }
}
