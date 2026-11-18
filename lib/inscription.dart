import 'package:flutter/material.dart';

class Inscription extends StatefulWidget {
  const Inscription({super.key});



  @override  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  final _formkey=GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const  Text ("Inscription"),
      ),
      body: Form(
        key: _formkey,
        child: Column(children:
        [
          TextFormField(
            controller: _emailController,
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: 'Email',
      hintText: 'Saisir votre email',
    ),
    validator: (value) {
      if (value == null || !value.contains('@')) {
    return 'Email invalide';
  }
  return null;

    },
  ),
  SizedBox(height: 20),
  TextFormField(
    controller: _passwordController,
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: 'Password',
    ),
    obscureText: true,
    validator: (value) {
      if (value == null || value.length < 8) {
    return 'Le mot de passe doit contenir au moins 8 caractères';
  }
  return null;

    },
  ),
  ElevatedButton(
    onPressed: () {
      if (_formkey.currentState!.validate()) {
    // print ('formulaire validee: ${_emailController.text} - ${_passwordController.text}');
    
    ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('${_emailController.text} est bien inscrit '),
                    ),
    );

      _formkey.currentState!.reset();
      }
    },
    child: Text("Inscription"),
  ),

        ],
        ) ,

        
      ),
    );
  }
}