//clase Estudiante
class Estudiante{

  String _nombre;
  int _edad;
  final String _genero;

  //constructor, se utilizara este por la variable final 
  Estudiante(this._genero,this._edad,this._nombre);

  //constructor convencional, este dara error por la variable '_genero' que es de tipo final
  /*Estudiante(String nombre, int edad, String genero){
    this._nombre=nombre;
    this._edad=edad;
    this._genero=genero;
  }*/

  //set and get, en este caso no se tendra el set de genero, ya que es de tipo final (constante) y no puede ser modificada
  //set convencional
  void setNombre(String nombre){
    this._nombre = nombre;
  }
  //con arrow function
  void setEdad(int edad) => this._edad=edad;    //el arrow function o literal, nos permite retornar el valor siempre y cuando la sentencia sea unica

  //get convencional
  String getNombre(){
    return _nombre;
  }
  //con arrow function
  int getEdad() => this._edad;
  String getGenero() => this._genero; 

  //get y set optimizados (propio de dart)
  //set convencional
  void set nombre(String nombre){
    this._nombre = nombre;
  }
  //con arrow function
  void set edad(int edad)=>this._edad = edad;

  //get convencional
  String get nombre{
    return this._nombre;
  }

  //con arrow function
  int get edad => this._edad;
  String get genero => this._genero;

  //metodos adicional
  //mostrar
  void mostrar(){
    print("${this._nombre}\n${this._edad}\n${this._genero}\n");   // \n es un salto de linea
  }

}
