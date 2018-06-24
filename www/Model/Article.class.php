<?php

class Article {
    private $idarticle, $thetitle, $thetext, $thedate, $authoridauthor, $categoryidcategory;
    
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
    public function getIdarticle() {
        return $this->idarticle;
    }

    public function getThetitle() {
        return $this->thetitle;
    }

    public function getThetext() {
        return $this->thetext;
    }

    public function getThedate() {
        return $this->thedate;
    }

    public function getAuthoridauthor() {
        return $this->authoridauthor;
    }

    public function getCategoryidcategory() {
        return $this->categoryidcategory;
    }

    public function setIdarticle($idarticle) {
        $this->idarticle = $idarticle;
    }

    public function setThetitle($thetitle) {
        $this->thetitle = $thetitle;
    }

    public function setThetext($thetext) {
        $this->thetext = $thetext;
    }

    public function setThedate($thedate) {
        $this->thedate = $thedate;
    }

    public function setAuthoridauthor($authoridauthor) {
        $this->authoridauthor = $authoridauthor;
    }

    public function setCategoryidcategory($categoryidcategory) {
        $this->categoryidcategory = $categoryidcategory;
    }


}
