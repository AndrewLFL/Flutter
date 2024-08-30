class Aluno
{
  String _nome = "";
  String _ra = "";
  get nome => this._nome;

 set nome( value) => this._nome = value;

  get ra => this._ra;

 set ra( value) => this._ra = value;

  Aluno(this._nome, this._ra);

}