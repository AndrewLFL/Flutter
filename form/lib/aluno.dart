class Aluno {
  String _nome = "";
  String _email = "";
  String _curso = "";
  List<String> _interesse = [];
  bool _noti = false;

  get nome => this._nome;

  set nome(value) => this._nome = value;

  get email => this._email;

  set email(value) => this._email = value;

  get curso => this._curso;

  set curso(value) => this._curso = value;

  get interesse => this._interesse;

  set interesse(value) => this._interesse = value;

  get noti => this._noti;

  set noti(value) => this._noti = value;

  Aluno(nome, email, curso, interesse, noti) {
    _nome = nome;
    _email = email;
    _curso = curso;
    _interesse = interesse;
    _noti = noti;
  }
}
