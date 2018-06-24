<?php

class Author {
    private $idauthor, $thelogin, $thename, $thepwd;
    
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
    
    public function getIdauthor() {
        return $this->idauthor;
    }

    public function getThelogin() {
        return $this->thelogin;
    }

    public function getThename() {
        return $this->thename;
    }

    public function getThepwd() {
        return $this->thepwd;
    }

    public function setIdauthor($idauthor) {
        $this->idauthor = $idauthor;
    }

    public function setThelogin($thelogin) {
        $this->thelogin = $thelogin;
    }

    public function setThename($thename) {
        $this->thename = $thename;
    }

    public function setThepwd($thepwd) {
        $this->thepwd = $thepwd;
    }



}
