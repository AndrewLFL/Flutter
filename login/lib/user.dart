class User{
  String _username = "";
  String _password = "";

  User(this._username, this._password);

  get username => this._username;

 set username( value) => this._username = value;

  get password => this._password;

 set password( value) => this._password = value;
}