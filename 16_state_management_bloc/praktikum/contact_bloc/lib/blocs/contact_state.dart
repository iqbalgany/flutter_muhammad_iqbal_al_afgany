part of 'contact_bloc.dart';

@immutable
abstract class ContactState {
  List<ContactModel> contacts;
  ContactState({
    required this.contacts,
  });
}

class ContactInitial extends ContactState {
  ContactInitial({
    required List<ContactModel> contacts,
  }) : super(contacts: contacts);
}

class ContactUpdated extends ContactState {
  ContactUpdated({
    required List<ContactModel> contacts,
  }) : super(contacts: contacts);
}
