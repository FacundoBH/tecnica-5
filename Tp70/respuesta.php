<?php
class Empleado{
    private $nombre;
    private $horas;
    private $sueldo;

          function __construct($nom,$hor,$suel){
            $this->nombre = $nom; /*Variable para obtener el nombre*/
            $this->horas = $hor; /*Horas de trabajo*/
            $this->sueldo = $suel; /*Sueldo del empleado*/
          }
  
    public function getNombre()
    {return $this->nombre;}

    public function getHoras()
    {return  $this->horas;}

    public function getSueldo()
    {return $this->sueldo;}

    public function CalcularSueldoXhoras()
    {return $this -> horas * $this -> sueldo;}

  }

  $empleado = new Empleado($_POST['nombre'], $_POST['horas'], $_POST['sueldo']);
  
  echo "Ingrese su nombre: ".$empleado->getNombre()."<br>";  

  echo "Ingrese sueldo por hora: ".$empleado->getSueldo()."<br>";

  echo "Sueldo total empleado ".$empleado->getNombre()." : ".$empleado->CalcularSueldoXhoras()."<br>";
?>