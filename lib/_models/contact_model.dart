import 'package:flutter_bloc/flutter_bloc.dart';

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

class ContactCubit extends Cubit<List<Contact>> {
  ContactCubit() : super([]);

  void addContact(Contact contact) {
    emit([...state, contact]);
  }

  void removeContact(String id) {
    emit(state.where((element) => element.id != id).toList());
  }

  void sort(bool isAsc) {
    isAsc
    ? state.sort((a, b) => a.name.compareTo(b.name))
    : state.sort((a, b) => b.name.compareTo(a.name));
  }
}