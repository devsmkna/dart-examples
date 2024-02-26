class Contact {
  final String id;
  final String name;
  final String email;
  final String imageURL;
  final String phoneNumber;
  final String address;

  Contact(
      {required this.id,
      required this.name,
      required this.email,
      required this.imageURL,
      required this.phoneNumber,
      required this.address});
}

final contacts = [
  Contact(
      id: '1',
      name: 'Davide',
      email: 'davidevisco@email.com',
      imageURL: 'https://picsum.photos/200',
      phoneNumber: '3665253007',
      address: 'Via Vincenzo Bellini, 66, Tremestieri Etneo, Catania, 95030'),
  Contact(
      id: '2',
      name: 'Vito',
      email: 'vitomeli@email.com',
      imageURL: 'https://picsum.photos/200',
      phoneNumber: '3665253007',
      address: 'Via Vincenzo Bellini, 66, Tremestieri Etneo, Catania, 95030'),
];
