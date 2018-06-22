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
    
}
