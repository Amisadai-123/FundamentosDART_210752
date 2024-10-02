void main() {
  //Clase con parametros posicionales los parameytros deben respertar su orden para ser asignados en lña propieddad
  final Hero wolverine = Hero('Logan','Regeneracion');
  // Clase con parametros no posicionales , los puedo mandar en desorden
  final xmen = Team(name:'X-Men',type:"Heroes");
  final brotherhood = Team(name:"The Brtherhood of Evil Mutants");
  print ( wolverine);
  print ( wolverine.name);
  print ( wolverine.power);
  print ("-----------------------------------------");
  print (xmen);
  print (xmen.name);
  print (xmen.type);
  //Invocando al metodo reescrito con  @override
  print (xmen.toString());
   print ("-----------------------------------------");
  print (brotherhood);
  print (brotherhood.name);
  print (brotherhood.type);
  //Invocando al metodo reescrito con  @override
  print (brotherhood.toString());

}

class Hero {
  
  String name;
  String power;
  
  Hero( this.name,
         this.power);
  
  //Hero( String pName, String pPower)
   // : name = pName,
   // power  = pPower;
  
  
}

class Team {
  String name;
  String type;
   Team({required this.name, this.type="No definido"});
  @override
  String toString(){
    return 'Grupo: $name, Tipo: $type';
  }
  
  
}