part of 'contact_bloc.dart';

@immutable
abstract class ContactEvent {
  const ContactEvent();

  List<Object> get props => [];
}

class AddContactEvent extends ContactEvent {}

class DeleteContactEvent extends ContactEvent {
  final int index;

  const DeleteContactEvent({required this.index});
}

class EditContactEvent extends ContactEvent {
  final int index;
  final ContactModel contact;

  const EditContactEvent({
    required this.contact,
    required this.index,
  });
}
