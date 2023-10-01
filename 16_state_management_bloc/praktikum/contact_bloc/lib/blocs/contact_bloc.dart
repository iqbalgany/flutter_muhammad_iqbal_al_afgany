import 'package:bloc/bloc.dart';
import 'package:contact_bloc/models/contact_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(ContactInitial(contacts: [])) {
    on<AddContact>(_addContact);
    on<DeleteContact>(_deleteContact);
    on<UpdateContact>(_updateContact);
  }

  void _addContact(AddContact event, Emitter<ContactState> emit) {
    state.contacts.add(event.contactModel);
    emit(ContactUpdated(contacts: state.contacts));
  }

  void _deleteContact(DeleteContact event, Emitter<ContactState> emit) {
    state.contacts.remove(event.contactModel);
    emit(ContactUpdated(contacts: state.contacts));
  }

  void _updateContact(UpdateContact event, Emitter<ContactState> emit) {
    for (int i = 0; i < state.contacts.length; i++) {
      if (event.contactModel.name == state.contacts[i].name) {
        state.contacts[i] = event.contactModel;
      }
    }
    emit(ContactUpdated(contacts: state.contacts));
  }
}
