<?php

class AuthorManager {
    
    private $db;
    
    public function __construct(PDO $pdo) {
        $this->db = $pdo;
    }

}
