### Username / discourseID
--------- dandi-p4Gx --------------


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
Data Cleaning in Shell

### Learning Objective
* Mengaplikasikan perintah bash untuk pemrosesan data
* Mengaplikasikan command csvkit untuk pemrosesan data
* Melakukan Cleaning Data di Shell
* Melakukan penggabungan, filtering column, filtering field, splitting data untuk menampilkan produk yang terjual

## Built With

This section should list any major frameworks/libraries used to bootstrap your project. Leave any add-ons/plugins for the acknowledgements section.

* WSL
* Ubuntu
* csvkit

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- Getting Started -->
## Getting Started

### Installation
1. Install WSL and Ubuntu 
2. Install csvkit adds-on
   ```sh
   pip install csvkit
   ```
3. Check csvkit already installed on your PC
   ```
   pip list | grep csvkit
   ```

<!-- Usage Example -->
## Usage

* Data used in this program can collectable from [csv data](https://drive.google.com/file/d/1rKkUQU-sXIDka3rVNBahp6q3wDhrPY-1/view)

* First, Run the program by `bash dandi-p4Gx-sql-4.sh` or `.\dandi-p4Gx-sql-4.sh`

* the program result is 
> `2019-sample-clean.csv`

<img src="https://github.com/DandiMahendris/data-cleaning-in-shell/blob/master/Picture/Data.png" width="30%"></img>

* Run 2019-sample-clean.csv to get electronics and smartphone category 

```
cat 2019-sample-clean.csv | grep electronics | grep smartphone | awk -F ',' '{print $5}' | sort | uniq -c | sort -nr
```

* or run simply using `bash filtering.sh`

<p align="right">(<a href="#top">back to top</a>)</p>

## Output

<img src="https://github.com/DandiMahendris/data-cleaning-in-shell/blob/master/Picture/Hasil%20Output.png" width="30%"></img>

<p align="right">(<a href="#top">back to top</a>)</p>
