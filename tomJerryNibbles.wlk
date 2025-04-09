object tom {
    var energia = 50
    method energia() = energia
    method velocidadMaxima(){
        return 5 + energia/10
    }
    method correr(distancia){
        energia = energia - distancia / 2
    }
   
    method comerUnRaton(unRaton){
         energia = energia +  12 + unRaton.peso()
    }
    method puedeCazarADistancia(distancia){
        return energia - distancia / 2  > 0
    }
    method cazarUnRatonADistancia(unRaton,distancia){
        if(self.puedeCazarADistancia(distancia)){
            self.correr(distancia)
            self.comerUnRaton(unRaton)
        }
    }
}

object jerry {
  var edad = 2
  method cumplirAnios(){
    edad = edad + 1 
  }
  method peso() = edad * 20
}

object nibbles {
  method peso()= 35

}


// Inventar otro ratón
object rino {
    var edad = 10
    method peso() = 100
    method cumplirAnios(){
    edad = edad + 1 
  }
}