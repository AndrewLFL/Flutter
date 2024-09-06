class Planet
{
  String _name = "";
  String _diameter = "";
  String _climate = "";
  String _gravity = "";
  String _rotationPeriod = "";
  get name => this._name;

 set name( value) => this._name = value;

  get diameter => this._diameter;

 set diameter( value) => this._diameter = value;

  get climate => this._climate;

 set climate( value) => this._climate = value;

  get gravity => this._gravity;

 set gravity( value) => this._gravity = value;

  get rotationPeriod => this._rotationPeriod;

 set rotationPeriod( value) => this._rotationPeriod = value;

  Planet({name, diameter, climate, gravity, rotationPeriod})
  {
    this._name = name;
    this._diameter = diameter;
    this._climate = climate;
    this._gravity = gravity;
    this._rotationPeriod = rotationPeriod;
  }
}