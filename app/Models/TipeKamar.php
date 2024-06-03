<?php

namespace App\Models;
use App\Database;

class TipeKamar
{
    private $db;
    private $table = 'tipe_kamar';
    public function __construct() {
        $this->db = new Database();
    }
    public function create($requests)
    {
        return $this->db->create($this->table,$requests);
    }
    public function update($requests, $id)
    {
        return $this->db->update($this->table,$requests,$id);
    }
    public function delete($id)
    {
        return $this->db->delete($this->table,$id);
    }
    public function find($value,$column = 'id')
    {
        return $this->db->readOne($this->table,[$column,'=',$value]);
    }
    public function all()
    {
        return $this->db->readMany($this->table);
    }
}

?>