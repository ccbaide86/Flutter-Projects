void main() {
  //Ejercicio 1
  print('Ejercio 1: ');
  final int numero = 50;
  
  if (numero % 2 == 0) {
    print('$numero es un número par');
  } else {
    print('$numero es un número impar');
  }
  
  //Ejercicio 2
  print('\nEjercio 2: ');
  final List<int> numeros = [1, 2, 3, 4, 5]; 
  int suma = 0;
  
  for (int numero in numeros) {
    suma += numero;
  }
  print('La suma de los números es: $suma');

  //Ejercicio 3
  print('\nEjercio 3: ');
  final List<int> fibonacci = [0,1];
  
  for (int i = 2; i < 15; i++){
    int numero = fibonacci [i-1] + fibonacci[i-2];
    fibonacci.add(numero);
  }
  print('Los primeros 15 numeros de la sucesion de Fibonacci son:');
  print(fibonacci);
  
  print('\nEjercicio 10:');
  Rectangulo r = Rectangulo(5.0,3.0);
  double area = r.calcularArea();
  print("El area del rectangulo es: $area");
  
}

class Rectangulo {
  //Atributos
  final double ancho;
  final double largo;
  //Constructores 
  Rectangulo (
    this.ancho,
    this.largo
  );
  //Metodos 
  double calcularArea(){
    return ancho * largo;
  }
  
}
