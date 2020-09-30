import 'package:flutter_form_bloc/flutter_form_bloc.dart';

class LoginFormBloc extends FormBloc<String, Object> {
  final email = TextFieldBloc(
    validators: [FieldBlocValidators.required],
  );
  final password = TextFieldBloc(
    validators: [FieldBlocValidators.required],
  );
  LoginFormBloc() {
    addFieldBlocs(fieldBlocs: [
      email,
      password,
    ]);
  }

  @override
  void onSubmitting() {
    // TODO: implement onSubmitting
  }
}

@override
void onSubmitting() async {}
