class Medico {
  String _nome = "";
  String _crm = "";
  List<String> _formacoes = [];
  bool _call = false;

  Medico(this._nome, this._crm, this._formacoes, this._call);

  get nome => this._nome;

  set nome(value) => this._nome = value;

  get crm => this._crm;

  set crm(value) => this._crm = value;

  get formacoes => this._formacoes;

  set formacoes(formacoes) => this._formacoes = formacoes;

  get call => this._call;

  set call(value) => this._call = value;
}
