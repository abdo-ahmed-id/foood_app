import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:foood_app/helpers/app_theme.dart';
import 'package:foood_app/modules/login/bloc/login_form_bloc.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginFormBloc = context.bloc<LoginFormBloc>();
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGIN'),
      ),
      body: FormBlocListener<LoginFormBloc, String, Object>(
        child: Column(
          children: [
            TextFieldBlocBuilder(
              textFieldBloc: loginFormBloc.email,
              decoration: InputDecoration(
                hintText: 'email or userName',
                icon: Icon(
                  Icons.perm_identity,
                  color: AppTheme.iconColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
