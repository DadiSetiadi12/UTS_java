/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tiket;

import java.util.List;
public class Film {
    public String judul, genre;
    public int durasi, harga;
    public List<String> jamTayang;

    public Film(String judul, String genre, int durasi, int harga, List<String> jamTayang) {
        this.judul = judul;
        this.genre = genre;
        this.durasi = durasi;
        this.harga = harga;
        this.jamTayang = jamTayang;
    }
    
    public String getJudul() { return judul; }
    public String getGenre() { return genre; }
    public int getDurasi() { return durasi; }
    public int getHarga() { return harga; }
    public List<String> getJadwal() { return jamTayang; 
   
   }
}