class Person {
  String _name = "";
  int _height = 0;
  int _mass = 0;
  String _hairColor = "";
  String _skinColor = "";
  get name => this._name;

  set name(value) => this._name = value;

  get height => this._height;

  set height(value) => this._height = value;

  get mass => this._mass;

  set mass(value) => this._mass = value;

  get hairColor => this._hairColor;

  set hairColor(value) => this._hairColor = value;

  get skinColor => this._skinColor;

  set skinColor(value) => this._skinColor = value;

  Person({name, height, mass, hairColor, skinColor}) {
    this._name = name;
    this._height = height;
    this._mass = mass;
    this._hairColor = hairColor;
    this._skinColor = skinColor;
  }
}
