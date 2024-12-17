import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mynotes/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:mynotes/views/widgets/add_notes_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
        listener: (context, state) {
          if (state is AddNotesFailure) {
            print("failure : ${state.errMsg} ");
          }
          if (state is AddNotesSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNotesLoading ? true : false,
            child:  Padding(
              padding: EdgeInsets.only(
                  left: 16.0, right: 16, bottom: MediaQuery.of(context).viewInsets.bottom),
              child: const SingleChildScrollView(child: AddNotesForm()),
            ),
          );
        },
      ),
    );
  }
}
