class Endereco{
  String _logradouro = '';
  String _bairro = '';
  String _estado = '';
  String _regiao = '';
  String _ddd = '';
  get logradouro => this._logradouro;

 set logradouro( value) => this._logradouro = value;

  get bairro => this._bairro;

 set bairro( value) => this._bairro = value;

  get estado => this._estado;

 set estado( value) => this._estado = value;

  get regiao => this._regiao;

 set regiao( value) => this._regiao = value;

  get ddd => this._ddd;

 set ddd( value) => this._ddd = value;

  Endereco({logradouro, bairro, estado, regiao, ddd}){
    this._logradouro = logradouro;
    this._bairro = bairro;
    this._estado = estado;
    this._regiao = regiao;
    this._ddd = ddd;
  }

}