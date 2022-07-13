<?php
  class CRectangle {
      private $length;
      private $width;
      
        function __construct($len,$wid){
          $this -> length = $len;
          $this -> width = $wid;}
    
          public function getlength()
          {return $this -> length;}

          public function getwidth()
          {return $this -> width;}

            public function CalcularArea()
            {return $this -> length * $this->width;}

            public function CalcularPerimetro()
            {return $this -> length*2 + $this -> width*2;}
     
  }
                  $rect = new CRectangle($_POST['width'], $_POST['length']);
                    
                    echo "Length = " . $rect -> getlength()."<br>";
                    echo "Width = " . $rect -> getwidth()."<br>";
                    echo "Area = " . $rect -> CalcularArea()."<br>";
                    echo "Perimetro = " . $rect -> CalcularPerimetro()."<br>";

?>