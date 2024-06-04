<?php

namespace App;

interface Model
{
    public function create($requests);
    public function update($requests, $id);
    public function delete($id);
    public function find($value,$column = 'id');
    public function all();
}

?>