<?php 
//$alturas = array('1','3','2','1','2','1','5','3','3','4','2'); // Pruebas con el Ejemplo del anunciado.
$alturas = array('1','4','5','6','7','8','15','12','9','4','9','8','12','14','22','45','67','89','87','86','85','23','56','67','21','88','11','44','56','91','67','45','45','45','45','45','44','21','89','90','90','87','45','91','12','45','57');
$columnas = count($alturas);
$pisos = max($alturas);
$trazos=0;
$pintar =false;

for ($i=1; $i <= $pisos; $i++) { 
	# Recorremos cada piso
	$pintar = false;

	for ($j=0; $j < $columnas; $j++) { 
		# Recorremos por columnas en cada piso
		if( $i <= $alturas[$j]){
			
			$pintar = true;
			
			//**Contar trazo si es el final de la columna
			if($j == ($columnas-1))
				$trazos++;

		}else{
			//Contar trazo si pinto y hubo corte de pared
			if($pintar == true)
				$trazos++;
			//Inicializar variable 
			$pintar = false;
		}

	}
}

//Mostrar resultados
echo 'Total de Pisos: '.$pisos.' ***** Total de Trazos: '.$trazos.' realizados por la maquina.';

?>