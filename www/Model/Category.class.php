<?php

class Category {
    private $idcategory, $thecategtitle;
    
    public function __construct(array $datas) {
        $this->hydrate($datas);
    }
    
    private function hydrate(Array $donnees){
        foreach ($donnees as $key => $value){
            $methode = "set".ucfirst($key);
            if(method_exists($this,$methode)){
                $this->$methode($value);
            }
        }
    }
    public function getIdcategory() {
        return $this->idcategory;
    }

    public function getThecategtitle() {
        return $this->thecategtitle;
    }

    public function setIdcategory($idcategory) {
        $this->idcategory = $idcategory;
    }

    public function setThecategtitle($thecategtitle) {
        $this->thecategtitle = $thecategtitle;
    }


}
