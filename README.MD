<!-- Table of Content -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

<!-- About The Project -->
## About the Project 

### Learning Objective
* Mengaplikasikan perintah bash untuk pemrosesan data
* Mengaplikasikan command csvkit untuk pemrosesan data
* Melakukan Cleaning Data di Shell
* Melakukan penggabungan, filtering column, filtering field, splitting data untuk menampilkan produk yang terjual

### Background
Anda diminta untuk membersihkan data traffic ecommerce di tempat anda bekerja. Data yang diberikan adalah data bulan oktober dan november tahun 2019. Atasan anda ingin melakukan analisis produk yang terjual. Anda diminta untuk membersihkan datanya, dan menyisakan data-data yang relevan

Berikut gambaran awal data yang di berikan:
[![Gambaran awal data][screenshot-1]](....)

[![Gambaran awal data-1][screenshot-2]](...)

Dari data di atas diminta untuk melakukan
1. **Menggabungkan kedua data** ke dalam 1 file
2. **Menyeleksi kolom yang relevan** untuk analisis produk.
3. **Melakukan filtering** untuk mendapatkan **aktivitas pembelian saja.**
4. **Melakukan splitting data kategori produk dan nama product** pada kolom category
code

**Note** : category produk berada di posisi kata pertama dan nama produk di posisi kata
terakhir dari kolom category_code

## Built With

This section should list any major frameworks/libraries used to bootstrap your project. Leave any add-ons/plugins for the acknowledgements section.

* [![WSL]][WSL-url]
* [![Ubuntu]][Ubuntu-url]
* [![Csvkit]][csvkit-url]

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- Getting Started -->
## Getting Started

### Installation
1. Install WSL and Ubuntu 
2. Install csvkit adds-on
   '''sh
   pip install csvkit
   '''
3. Check csvkit already installed on your PC
   '''
   pip list | grep csvkit
   '''

<!-- Usage Example -->
## Usage

