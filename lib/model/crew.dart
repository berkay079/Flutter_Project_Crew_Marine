class Crew {

  final String _firstName;
  final String _lastName;
  final String _nationality;
  final String _title;
  final String _certificate;
  final String _certificate2;

  get firstName => this._firstName;

  get lastName => this._lastName;

  get nationality => this._nationality;
  
  get title => this._title;

  get certifica => this._certificate;
  
  get certifica2 => this._certificate2;





  Crew(this._firstName, this._lastName, this._nationality, this._title, this._certificate, this._certificate2);
  
  @override
  String toString() {
    return '$_firstName - $_lastName';
  }
}
