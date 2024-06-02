<?php

namespace App;
use App\Database;

class Seeder
{
    private Database $db;
    public function __construct(Database $db) 
    {
        $this->db = $db;
    }
    public function fresh()
    {
        $this->db->executeNonQuery('DELETE FROM reservasi; ALTER TABLE reservasi AUTO_INCREMENT = 1');
        $this->db->executeNonQuery('DELETE FROM kamar; ALTER TABLE kamar AUTO_INCREMENT = 1');
        $this->db->executeNonQuery('DELETE FROM detail_tipe_kamar; ALTER TABLE detail_tipe_kamar AUTO_INCREMENT = 1');
        $this->db->executeNonQuery('DELETE FROM tipe_kamar; ALTER TABLE tipe_kamar AUTO_INCREMENT = 1');
        $this->db->executeNonQuery('DELETE FROM fasilitas; ALTER TABLE fasilitas AUTO_INCREMENT = 1');
        $this->db->executeNonQuery('DELETE FROM tamu; ALTER TABLE tamu AUTO_INCREMENT = 1');
        $this->db->executeNonQuery('DELETE FROM resepsionis; ALTER TABLE resepsionis AUTO_INCREMENT = 1');
        $this->db->executeNonQuery('DELETE FROM manager; ALTER TABLE manager AUTO_INCREMENT = 1');

        //MANAGER
        $this->db->create('manager',[
            'id' => 1,
            'username' => 'via',
            'password' => 'via123',
        ]);

        //RESEPSIONIS
        $this->db->create('resepsionis',[
            'id' => 1,
            'username' => 'zafira',
            'password' => 'zaf123',
        ]);
        $this->db->create('resepsionis',[
            'id' => 2,
            'username' => 'nisa',
            'password' => 'nis123',
        ]);
        
        //TAMU
        $this->db->create('tamu',[
            'id' => 1,
            'nama' => 'raka',
            'nik' => '1234567890123456',
            'no_telp' => '08123456789',
            'email' => 'raka@gmail.com',
            'password' => 'raka123',
        ]);

        //FASILITAS
        $this->db->create('fasilitas',[
            'id' => 1,
            'nama' => 'Ruang Keluarga Luas',
        ]);
        $this->db->create('fasilitas',[
            'id' => 2,
            'nama' => 'Fasilitas Hiburan',
        ]);
        $this->db->create('fasilitas',[
            'id' => 3,
            'nama' => 'Mini Bar dan Pembuat Kopi/Teh',
        ]);

        //TIPE_KAMAR
        $this->db->create('tipe_kamar',[
            'id' => 1,
            'tipe' => 'Standart Room',
            'harga' => 3000000
        ]);

        //DETAIL_TIPE_KAMAR
        $this->db->create('detail_tipe_kamar',[
            'id' => 1,
            'id_fasilitas' => 1,
            'id_tipe_kamar' => 1
        ]);
        $this->db->create('detail_tipe_kamar',[
            'id' => 2,
            'id_fasilitas' => 2,
            'id_tipe_kamar' => 1
        ]);
        $this->db->create('detail_tipe_kamar',[
            'id' => 3,
            'id_fasilitas' => 3,
            'id_tipe_kamar' => 1
        ]);
    }

}

?>