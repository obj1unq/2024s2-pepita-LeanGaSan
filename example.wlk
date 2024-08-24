object pepita {
	var energia = 100

	// Setter - Orden
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}

	// Setter - Orden
	method volar(distancia) {
		energia = energia - 10 - distancia
	}

	// Getter - Consulta
	method energia() {
		return energia
	}
}

object alpiste {
	// Getter - Consulta
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5

	// Getter - Consulta
	method madurez() {
		return madurez
	}

	// Setter - Orden
	method madurez(_madurez) {
		madurez = _madurez
	}

	// Setter - Orden
	method madurar() {
		self.madurez(madurez + 1)
	}

	// Getter - Consulta
	method energiaQueAporta() {
		return base * madurez
	}
	
}

// ## Ejercicio 1: Pepon
object pepon {
	var energia = 30

	// Setter - Orden
	method comer(comida) {
		energia = energia + comida.energiaQueAporta() / 2
	}

	// Setter - Orden
	method volar(distancia) {
		energia = energia - 20 - distancia * 2
	}

	// Getter - Consulta
	method energia() {
		return energia
	}
}

// ## Ejercicio 2: Roque
object roque {
	var ave = Pepita
	var cantidadDeCenas = 0

	// Getter - Consulta
	method aveQuTiene() {
		return ave
	}

	// Setter - Orden
	method alimentar(comida) {
		ave.comer(comida)
		cantidadDeCenas = cantidadDeCenas + 1
	}

	// Getter - Consulta
	method cenas() {
		return cantidadDeCenas	
	}
}
