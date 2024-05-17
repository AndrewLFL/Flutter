
class Filme{
  String _titulo;
  String _capa;
  double _preco;

  Filme(this._titulo, this._capa, this._preco);
  
  get titulo => this._titulo;

  set titulo(value) => this._titulo = value;

  get capa => this._capa;

  set capa(value) => this._capa = value;

  get preco => this._preco;

  set preco(formacoes) => this._preco = formacoes;
}