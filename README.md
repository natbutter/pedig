# pedig
Dockerfile for PEDIG: a Fortran Package for Pedigree Analysis Suited for large populations 

The Dockerfile rebuilds the fortran codes in an Ubuntu environemnt, using the ```compile.sh``` script. 

To build this docker file
```docker build -t pedig . --no-cache```

To run this container locally mounting the current directory:
 * Windows
```docker run -it --rm -v C:\WORK\ShortProjects\pedigree\:/workspace pedig ```
 * Linux
```sudo docker run -it --rm -v`pwd`:/workspace pedig ```


See for https://www6.jouy.inrae.fr/gabi/Outils-scientifiques/Logiciels/Pedig more details.
