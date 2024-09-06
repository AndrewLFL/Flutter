class Starship {
  String _name = "";
  String _model = "";
  String _manufacturer = "";
  String _length = "";
  String _crew = "";
  get name => this._name;

 set name( value) => this._name = value;

  get model => this._model;

 set model( value) => this._model = value;

  get manufacturer => this._manufacturer;

 set manufacturer( value) => this._manufacturer = value;

  get length => this._length;

 set length( value) => this._length = value;

  get crew => this._crew;

 set crew( value) => this._crew = value;

  Starship({name, model, manufacturer, length, crew})
  {
    this._name = name;
    this._model = model;
    this._manufacturer = manufacturer;
    this._length = length;
    this._crew = crew;
  }
}
