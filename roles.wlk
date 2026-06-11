object guardian{
  method extra() = 100

  method esExtraordinario(unaCriatura) = unaCriatura.poderMagico() > 50 

  method cambiar() = new Domador(mascotas = [dinamita])
}

class Domador {
  const mascotas = []
  //conocer edad y si tiene cuernos
  method extra() =  mascotas.count({m=>m.tieneCuernos()}) * 150

  method esExtraordinario(unaCriatura) = unaCriatura.poderMagico() >= 15 && mascotas.all({m=>m.esVeterana()})

  method edadDeMascota(unaMascota) = unaMascota.edad()
  method esMascotaConCuernos(unaMascota) = unaMascota.tieneCuernos()

  method cambiar() = if (mascotas.any({m=>m.tieneCuernos()})) hechizero else self.error("No se puedo cambiar")
}

object hechizero{
  method extra() = 0

  method esExtraordinario() = true

  method cambiar() = guardian
  
}

class Mascota {
  const property edad
  const property tieneCuernos

  method esVeterana() = edad >= 10
}

const dinamita = new Mascota(edad=1, tieneCuernos = false)