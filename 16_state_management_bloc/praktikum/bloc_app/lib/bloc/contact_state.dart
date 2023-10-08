part of 'contact_bloc.dart';

@immutable
abstract class ContactState {
  const ContactState();
}

final class Contacts extends ContactState {
  final List<ContactModel> contacts;

  const Contacts({required this.contacts});
}
