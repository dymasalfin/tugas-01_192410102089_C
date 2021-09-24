import 'package:flutter/material.dart';
import 'package:flutter_application_contact/models/user.dart';

class ContactItem extends StatelessWidget {
  final User users;
  ContactItem(this.users);
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.black87,
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image: AssetImage(
                          users.imageUrl,
                        ),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                width: 30,
              ),
              Flexible(
                child: Container(
                  alignment: Alignment.topLeft,
                            padding: EdgeInsets.fromLTRB(20, 5, 0, 5),
                            width: 320,
                            height: 100,
                            child: ListView(
                              children: <Widget> [
                                Text(users.nama,
                                style: TextStyle(color: Colors.white, fontSize: 17,),),
                                Text(users.email,
                                style: TextStyle(color: Colors.white54,fontStyle: FontStyle.italic),),
                                Text(users.noHp,
                                style: TextStyle(color: Colors.tealAccent[400], height: 2, fontSize: 20, ),),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
