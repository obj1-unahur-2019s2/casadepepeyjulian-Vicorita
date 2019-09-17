object heladera {
	method precio() { return 20000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 8000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 350 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 50 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 1200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

 object kiloMilanesas{
 	method precio() { return 260 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
 }
 object botellaSalsa{
 	method precio() { return 90 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
 }
 object microondas{
 	method precio() { return 4200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
 }
 object kiloCebollas{
 	method precio() { return 25 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
 }
 object dolar{
 	method cotizacion(){return 60}
 }
 object computadora{
 	method precio() { return 500 * dolar.cotizacion()}
	method esComida() { return false }
	method esElectrodomestico() { return true }	
 }
 object packComida{
 	const pack=[tiraDeAsado, botellaSalsa]
 	method precio() { return pack.sum({p=> p.precio()})}
	method esComida() { return true }
	method esElectrodomestico() { return false }	
 }
 object packRegalo{
 	const pack=[plancha, microondas]
 	method precio() { return pack.sum({p=> p.precio()}) * 0.8}
	method esComida() { return pack.all({p=> p.esComida()})}
	method esElectrodomestico() { return pack.any({p=> p.esElectrodomestico()})}	
 }