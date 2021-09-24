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
            for (var i = 0; i < users.length; i++)
              InkWell(
                onTap: () {},
                child: ContactItem(User(
                    id: users[i].id,
                    nama: users[i].nama,
                    email: users[i].email,
                    noHp: users[i].noHp,
                    imageUrl: users[i].imageUrl,)),
              ),
          ],
        ),
      ),
    );
  }
}