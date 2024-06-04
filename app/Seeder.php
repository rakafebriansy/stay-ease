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
    public function clear()
    {
        $this->db->executeNonQuery('DELETE FROM reservasi; ALTER TABLE reservasi AUTO_INCREMENT = 1');
        $this->db->executeNonQuery('DELETE FROM kamar; ALTER TABLE kamar AUTO_INCREMENT = 1');
        $this->db->executeNonQuery('DELETE FROM detail_tipe_kamar; ALTER TABLE detail_tipe_kamar AUTO_INCREMENT = 1');
        $this->db->executeNonQuery('DELETE FROM tipe_kamar; ALTER TABLE tipe_kamar AUTO_INCREMENT = 1');
        $this->db->executeNonQuery('DELETE FROM fasilitas; ALTER TABLE fasilitas AUTO_INCREMENT = 1');
        $this->db->executeNonQuery('DELETE FROM tamu; ALTER TABLE tamu AUTO_INCREMENT = 1');
        $this->db->executeNonQuery('DELETE FROM resepsionis; ALTER TABLE resepsionis AUTO_INCREMENT = 1');
        $this->db->executeNonQuery('DELETE FROM manager; ALTER TABLE manager AUTO_INCREMENT = 1');
    }
    public function new()
    {
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
            'username' => 'raka',
            'nik' => '1234567890123456',
            'no_telp' => '08123456789',
            'email' => 'raka@gmail.com',
            'password' => 'raka123',
        ]);

        //FASILITAS
        $this->db->create('fasilitas',[
            'id' => 1,
            'nama' => 'Ruang Keluarga Luas',
            'gambar' => '1.png',
        ]);
        $this->db->create('fasilitas',[
            'id' => 2,
            'nama' => 'Fasilitas Hiburan',
            'gambar' => '2.png',
        ]);
        $this->db->create('fasilitas',[
            'id' => 3,
            'nama' => 'Mini Bar dan Pembuat Kopi/Teh',
            'gambar' => '3.png',
        ]);
        $this->db->create('fasilitas',[
            'id' => 4,
            'nama' => 'Kamar Mandi Premium',
            'gambar' => '4.png',
        ]);
        $this->db->create('fasilitas',[
            'id' => 5,
            'nama' => 'Ruang Keluarga',
            'gambar' => '5.png',
        ]);
        $this->db->create('fasilitas',[
            'id' => 6,
            'nama' => 'Kamar Anak Khusus',
            'gambar' => '6.png',
        ]);
        $this->db->create('fasilitas',[
            'id' => 7,
            'nama' => 'Bathub',
            'gambar' => '7.png',
        ]);
        $this->db->create('fasilitas',[
            'id' => 8,
            'nama' => 'Dapur Kecil',
            'gambar' => '8.png',
        ]);

        //TIPE_KAMAR
        $this->db->create('tipe_kamar',[
            'id' => 1,
            'tipe' => 'Standart Room',
            'harga' => 3000000,
            'deskripsi' => 'Didesain dengan elegan dan dilengkapi dengan fasilitas modern, kamar ini menawarkan tempat tidur king size yang nyaman, televisi layar datar, akses Wi-Fi gratis, meja kerja, dan kamar mandi pribadi dengan perlengkapan mandi premium.',
            'gambar' => 'standart.png',
        ]);
        $this->db->create('tipe_kamar',[
            'id' => 2,
            'tipe' => 'Superior Room',
            'harga' => 4000000,
            'deskripsi' => 'Kamar ini dilengkapi dengan tempat tidur queen atau twin, televisi layar datar, Wi-Fi gratis, minibar, dan fasilitas pembuat kopi/teh. Kamar mandi dalam dengan shower modern dan perlengkapan mandi eksklusif menjamin kenyamanan Anda selama menginap.',
            'gambar' => 'superior.png',
        ]);
        $this->db->create('tipe_kamar',[
            'id' => 3,
            'tipe' => 'Twin Room',
            'harga' => 5000000,
            'deskripsi' => 'Suite ini memiliki ruang tamu terpisah, tempat tidur king, televisi layar datar di setiap kamar, dan akses Wi-Fi gratis. Dapur kecil yang lengkap, meja kerja besar, dan kamar mandi mewah dengan bathtub dan shower terpisah.',
            'gambar' => 'twin.png',
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
        $this->db->create('detail_tipe_kamar',[
            'id' => 4,
            'id_fasilitas' => 4,
            'id_tipe_kamar' => 2
        ]);
        $this->db->create('detail_tipe_kamar',[
            'id' => 5,
            'id_fasilitas' => 5,
            'id_tipe_kamar' => 2
        ]);
        $this->db->create('detail_tipe_kamar',[
            'id' => 6,
            'id_fasilitas' => 6,
            'id_tipe_kamar' => 2
        ]);
        $this->db->create('detail_tipe_kamar',[
            'id' => 7,
            'id_fasilitas' => 1,
            'id_tipe_kamar' => 3
        ]);
        $this->db->create('detail_tipe_kamar',[
            'id' => 8,
            'id_fasilitas' => 7,
            'id_tipe_kamar' => 3
        ]);
        $this->db->create('detail_tipe_kamar',[
            'id' => 9,
            'id_fasilitas' => 8,
            'id_tipe_kamar' => 3
        ]);

        //KAMAR
        $this->db->create('kamar',[
            'id' => 1,
            'nomor' => 101,
            'dipesan' => 0,
            'id_tipe_kamar' => 1,
            'id_manager' => 1
        ]);
        $this->db->create('kamar',[
            'id' => 2,
            'nomor' => 102,
            'dipesan' => 0,
            'id_tipe_kamar' => 1,
            'id_manager' => 1
        ]);
        $this->db->create('kamar',[
            'id' => 3,
            'nomor' => 103,
            'dipesan' => 0,
            'id_tipe_kamar' => 1,
            'id_manager' => 1
        ]);
        $this->db->create('kamar',[
            'id' => 4,
            'nomor' => 201,
            'dipesan' => 0,
            'id_tipe_kamar' => 2,
            'id_manager' => 1
        ]);
        $this->db->create('kamar',[
            'id' => 5,
            'nomor' => 202,
            'dipesan' => 0,
            'id_tipe_kamar' => 2,
            'id_manager' => 1
        ]);
        $this->db->create('kamar',[
            'id' => 6,
            'nomor' => 301,
            'dipesan' => 0,
            'id_tipe_kamar' => 3,
            'id_manager' => 1
        ]);
    }
    public function fresh()
    {
        $this->clear();
        $this->new();
    }
}

?>