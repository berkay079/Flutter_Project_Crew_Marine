class Crew {

  final String _firstName;
  final String _lastName;
  final String _nationality;
  final String _title;

  get firstName => this._firstName;

  get lastName => this._lastName;

  get nationality => this._nationality;
  
  get title => this._title;




  Crew(this._firstName, this._lastName, this._nationality, this._title);
  
  @override
  String toString() {
    return '$_firstName - $_lastName';
  }
}
