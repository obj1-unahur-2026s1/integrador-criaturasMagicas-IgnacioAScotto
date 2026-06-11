class Criatura {
  const property poderMagico
  const astucia
  var rol

  method poderOfensivo() = (poderMagico * 10) + rol.extra()

  method esFormidable() = self.esAstuta() or self.esExtraordinaria()

  method esAstuta()
  method esExtraordinaria() = rol.esExtraordinario(self)

  method cambiarDeRol() {
    rol = rol.cambiar()
  }
}

class Duende inherits Criatura {
  override method poderOfensivo() = super() * 1.1

  override method esAstuta() = false
}

class Hada inherits Criatura {
  var kmQuePuedeVolar = 2

  method aumentarKm(){
    kmQuePuedeVolar= (kmQuePuedeVolar + 2).min(25)
  }

  override method esAstuta() = astucia > 50

  override method esExtraordinaria() = super() && kmQuePuedeVolar > 10
}