part of 'contact_bloc.dart';

@immutable
abstract class ContactEvent {}

class AddContact extends ContactEvent {
  final ContactModel contactModel;

  AddContact({
    required this.contactModel,
  });
}

class DeleteContact extends ContactEvent {
  final ContactModel contactModel;

  DeleteContact({
    required this.contactModel,
  });
}

class UpdateContact extends ContactEvent {
  final ContactModel contactModel;

  UpdateContact({
    required this.contactModel,
  });
}
