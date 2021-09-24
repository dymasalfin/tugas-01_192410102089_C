class User{
  final int id;
  final String nama;
  final String email;
  final String noHp;
  final String imageUrl;

User({required this.id, required this.nama, required this.email, required this.noHp, required this.imageUrl, });

static List <User> getUser(){
  return <User>[
    User(
      id: 1,
      nama: 'Muhammad Dymas Alfin Zainur Roziqin panjang',
      email: 'dymasalfinn@gmail.com',
      noHp: '081234567876',
      imageUrl: 'images/griezmann.jpeg'),
    User(
      id: 2,
      nama: 'Amangly Bambang santoso',
      email: 'amangsss@gmail.com',
      noHp: '082234567876',
      imageUrl: 'images/ronaldo.jpeg'
    ),
    User(
      id: 3,
      nama: 'Erik subandi',
      email: 'erikwqa@gmail.com',
      noHp: '083234567876',
      imageUrl: 'images/neymar.jpg'
    ),
        User(
      id: 4,
      nama: 'Ahmad suprianto',
      email: 'ahmaddd@gmail.com',
      noHp: '083234567876',
      imageUrl: 'images/reus.jpg'
    ),
    User(
      id: 5,
      nama: 'helda',
      email: 'heldad@gmail.com',
      noHp: '081334768909',
      imageUrl: 'images/helda.jpeg'
    ),
    User(
      id: 6,
      nama: 'ivtary',
      email: 'ivtary123@gmail.com',
      noHp: '083234567876',
      imageUrl: 'images/ivtari.jpeg'
    ),
    User(
      id: 7,
      nama: 'savikaaa',
      email: 'savikaaad@gmail.com',
      noHp: '082345678987',
      imageUrl: 'images/savika.jpeg'
    ),
    User(
      id: 8,
      nama: 'Dymas Alfin',
      email: 'alfinn112@gmail.com',
      noHp: '082778000999',
      imageUrl: 'images/alfin.jpg'
    ),
  ];
}
}
