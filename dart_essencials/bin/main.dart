import 'estudiante.dart'; //llamada a la clase estudiante


//llamada la funcion principal
void main(){

  //tipos de variables
  //variables que pueden tomar muchos valores (tipado debil)
  var Carrera = "Informatica";      //String, int, double, bool....
  num matricula = 3;    //valores enteros o dobles (int, double)
  Object cuaderno;      //cualquier clase de objeto
  
  //En flutter utilizaremos los de tipo Widget
  //Widget texto;
  
  //variables de tipado fuerte
  String universidad = "Universidad Mayor de San Andres";
  int semestre = 6;
  double longitud = 3.4;
  bool aprobado = false; 

  //clases de variables
  // constantes
  const double pi= 3.14;   //su valor nunca cambiara en el tiempo, debe ser inicialiazada siempre
  //final String saludo;   // a diferencia de const, pueden ser inicializadas en cualquier momento de la aplicacion, cuando el usuario lo solicite, una vez, su valor no cambiara
  //las variables de tipo final, usualmente son utilizadas en constructores de objetos

  //tipos de acceso para las variables
  //publico (acceso publico)
  int nroMaterias = 5;
  //privado (acceso restringido solo para el objeto instanciado), se denota al iniciar la variable con "_"seguido del nombre de la variable
  int _ci = 1102938;
  //statico (acceso restringido solo para la clase creada, no pueden acceder ni los objetos instanciados)
  //static int gestion = 2019;

  //orientacion a objetos
  //creacion de un objeto (tipo Estudiante)
  Estudiante alvaro = Estudiante("masculino",20,"Alvaro");
  print("\tPrimer estudiante");
  alvaro.mostrar();
  //instanciamos dos estudiantes mas
  print("\tSiguientes estudiantes:");
  Estudiante fernanda = Estudiante("femenino",22,"Fernanda");
  fernanda.mostrar();
  Estudiante pamela = Estudiante("femenino",21,"Pamela");
  pamela.mostrar();
  
  //en este caso instanciaremos el mismo estudiante solo que cambiaremos sus nombres con set, ya que este esta errado, todo esto con funcion cascada
  Estudiante marcos = Estudiante("masculino",22,"Alvaro")
    ..nombre = "Marcos"   //set nombre
    ..mostrar();    //mostrar
  Estudiante gerardo = Estudiante("masculino",22,"Alvaro")
    ..setNombre("Gerardo")     //set nombre con el set convencional
    ..mostrar();

    
  //colecciones
  //en este caso, sera una lista de tipo <Object>, para que obtenga cualquier valor
  List<Object> prueba = [
    "soy una cadena",
    2454,
    132.545,
    alvaro,   //objeto de tipo estudiante
    false
  ];

  //Esta es una lista mas adecuada e infinita (valores de tipo <Estudiante>)
  List<Estudiante> estudiantes = List()
    ..add(alvaro)
    ..add(fernanda)
    ..add(pamela)
    ..add(marcos)
    ..add(gerardo);

  //iteradores (loops)
  //for convencional
  print("\n\tFor convencional");
  for (int i=0;i<prueba.length;i++){
    print(prueba[i]);
  }

  //for optimizado y adecuado en listas
  //en este caso nuestro iterador sera de tipo Estudiante, ya que son los valores que tiene nuestra lista
  print("\n\tFor Optimizado");
  for(Estudiante iterador  in estudiantes){
    iterador.mostrar();
  }

  //while y do while trabajan de la misma forma que en java
  while(aprobado){print("aprobe!");}
  do{print("aprobe!");}while(aprobado);

  //condicionales
  //if convencional
  print("\n\tIf Convencional");
  if(aprobado){
    print("Aprobe una vez mas!!!");
  }else{
    print("aun no aprobe");
  }

  //operador Elvis
  //misma funcion que if, ademas que tambien es un literal
  //seguido del signo ? (se desarrollara por verdad) : (se desarrollara por falso)
  print("\n\tFuncion Elvis");
  aprobado ? print("soy una funcion elvis que aprobo!")
          : print("soy una funcion elvis que no aprobo");

  //Ejercicio, mostrar solo a las estudiantes mujeres (genero femenino)
  //"sin condicionales"
  print("\n\n\tEjercicio solo mostrar mujeres");
  for(Estudiante iterador in estudiantes){
    String genero = iterador.genero;    //set
    genero == "femenino" ? iterador.mostrar()
        : print("\n");
  }
}
