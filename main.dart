import 'calculs.dart'; 
main() {

  
  // Coder par Falilou Diop
  // Premier devoir Dart

// Question 1 : j'ai deja installe l'environnement Dart dans mon Vscode

//Question 2
  String nom = 'Falilou';
  int age = 23;

//Question 3
  double pi = 3.14;
  bool isflutterAwesome = true;

//Question 4
  final nomComplet = "Falilou Diop";
  const vitesseLumiere = 299792458;

//Question 5
  List<int> nombres = [1, 2, 3, 4, 5];
  nombres.add(6);

  // print(liste);

// Question 6
  Map<String, dynamic> Etudiant = {
    'nom': "Nogaye ndiaye",
    'age': 17,
    'classe': "DFE 4",
  };
  Etudiant['note'] = 85;

// Question 7
  void bonjour(String nom) {
    print("Bonjour : $nom ");
  }

  bonjour("Falilou");

// Question 8
  int addition(int a, int b) {
    return a + b;
  }

  print(addition(17, 19));

//Question 9
  var nombre = -8;

  if (nombre < 0) {
    print('Ce nombre est negatif');
  } else if (nombre > 0) {
    print("ce nombre est positif");
  } else {
    print('ce nombre est nul');
  }

//Question 10
  for (var i = 1; i <= 10; i++) {
    print(i);
  }

  var count = 10;

  while (count > 0) {
    print(count);
    count--;
  }

//Question 11
  double division(double a, double b) {
    if (b == 0) {
      throw Exception("Division par zéro");
    }
    return a / b;
  }

  print (division(15.5, 5.5));

   
  
  
  // Question 16
  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 2));
    return "Les Données reçues";
  }

  // Question 17
  Future<void> mainAsync() async {
    String donnee = await fetchData();
    print(donnee);
  }

  mainAsync();

  // Question 18
  Stream<int> generateStream() async* {
    for (int i = 1; i <= 9; i++) {
      await Future.delayed(Duration(seconds: 1));
      yield i;
    }
  }

  generateStream().listen(
    (value) {
      print("Reçeption : $value");
    },
    onError: (error) {
      print("Attention Erreur de : $error");
    },
    onDone: () {
      print("Cette Stream est terminé.");
    },
  );

  // Question 19
  int factorielle(int n) {
    if (n <= 1) return 1;
    return n * factorielle(n - 1);
  }
  print(factorielle(5));

  // Question 20
  List<int> filtrerPairs(List<int> chiffres) {
    return chiffres.where((n) => n % 2 == 0).toList();
  }
  print(filtrerPairs([45,66,77,89,27,90]));

}

// Question 12

class Personne {
    String nom;
    int age;

    Personne(this.nom, this.age);
  }

  Personne personne1 = Personne("Falilou", 23);

  // // Question 13
  class Etudiant extends Personne {
    String classe;

    Etudiant(String nom, int age, this.classe) : super(nom, age);
  }

  Etudiant etudiant1 = Etudiant("Falilou", 23, "DFE 4");

  // // Question 14
  class getPersonne {
    String _nom;
    int _age;

  getPersonne(this._nom, this._age);

    String get nom => _nom;
    set nom(String nom) => _nom = nom;

    int get age => _age;
    set age(int age) => _age = age;
  }

  // var personne2 = getPersonne("Falilou", 25);
  // personne2.nom = "Falilou";
  // print(personne2.nom);
