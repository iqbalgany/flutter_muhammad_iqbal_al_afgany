part of 'contact_bloc.dart';

@immutable
abstract class ContactEvent {
  const ContactEvent();

  List<Object> get props => [];
}

class AddContactEvent extends ContactEvent {
  final ContactModel contact;

  const AddContactEvent({required this.contact});
}

class DeleteContactEvent extends ContactEvent {
  final int index;

  const DeleteContactEvent({required this.index});
}

class EditContactEvent extends ContactEvent {
  final String name;
  final String phoneNumber;

  const EditContactEvent({
    required this.name,
    required this.phoneNumber,
  });
}
