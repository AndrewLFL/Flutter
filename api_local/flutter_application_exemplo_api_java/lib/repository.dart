import 'package:flutter_application_exemplo_api_java/aluno.dart';

class AlunoRepository{
  List<Aluno> _listaAl = [];

  AlunoRepository();

  get listaAl => this._listaAl;
  set listaAl(value) => this._listaAl = value;
}