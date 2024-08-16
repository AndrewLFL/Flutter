class Pokemon{
  String _name="";
  String _type="";
  String _imageUrl="";

  get name => this._name;

 set name( value) => this._name = value;

  get type => this._type;

 set type( value) => this._type = value;

  get imageUrl => this._imageUrl;

 set imageUrl( value) => this._imageUrl = value;
  
  Pokemon(this._name, this._type, this._imageUrl);
}