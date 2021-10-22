# Formato para tesis doctoral

> Tecnológico Nacional de México
> > Instituto Tecnológico de Orizaba
> > > Departamento de Posgrado

## Introducción

Se pronuncia ``latek``.

LaTeX tiene ventajas con respecto a los editores WYSIWYG, por ejemplo, configurar las citas, referencias, tablas de contenido/figuras/tablas es bastante sencillo y a veces hasta automatizado.

Se basa en entornos.

## Overleaf

Enlace de [Overleaf](https://www.overleaf.com/).

Descarga de [Formato en Overleaf](https://www.overleaf.com/read/xbyyyvxmvzns/).

## Formato

Para adaptar el formato al usuario, hay que cambiar el nombre del autor, de la tesis, el codirector etcétera, para encontrar la cadena a modificar, hacemos uso de la función de búsqueda, todos las cadenas a cambiar están debidamente comentadas e identificadas.

### Portada

En la portada se tienen que definir los nombres del autor, de la tesis, del director así como el del codirector. También se tiene que colocar la fecha.

### Contenido

Agregar el contenido es muy fácil ya que no se requieren configuraciones de formato extra a tablas, figuras o listas; basta con escribir texto plano.

El contenido se encuentra organizado en tres partes:

* Preámbulo: resumen/abstract, introducción, hipótesis, justificación, objetivos, planteamiento.
* Capítulos: antecedentes, estado del arte, metodología y resultados.
* Epílogo: conclusiones, productos, recomendaciones y anexos.

### Figuras

Configurar el directorio donde se encontrarán las imágenes, en formato .jpg, .png o .pdf. Se pueden organizar las imágenes en subdirectorios para una mejor organización. Por defecto estás se encuentran en la carpeta ``imagenes/``.

El código para insertar figuras e imágenes se muestra a continuación.

Primeramente podemos observar la letra H junto al macro de inicio de figura, esta indica la posición (H de here 'aquí'); esto cambia el comportamiento natural de LaTeX para posicionar las figuras. En LaTeX, las figuras son flotantes, es decir, el programa decide cual será su posición en función al acomodo del texto, es por ello que se trata de evitar el uso de frases como "en la siguiente figura".

Posteriormente vemos el comando ``\centering``, que centra la figura con respecto al texto.

Luego entre corchetes el tamaño, en función al ancho y alto del texto. Esta configuración también se puede hacer en unidades métricas o imperiales.

Se puede ver la ruta de la imagen a insertar, la ruta inicia con un subdirectorio que se encuentra dentro del directorio que se configuro en el archivo main.tex, aunque esto no es necesario.

Por último nos encontramos los comandos ``\caption{Descripción}`` que coloca la descripción de la imagen abajo de la figura (o arriba dependiendo de donde se coloque el comando) y también esta descripción se muestra en la Lista de Figuras. Para referenciar las figuras, se utilizará el comando ``\autoref{fig:etiqueta}``, este comando inserta automáticamente la palabra Figura antes del número asignado; esta etiqueta también se coloca automaticamente en la lista de figuras. La palabra ``fig``, sirve para distinguir las referencias de las figuras, se puede substituir por otra palabra para mejor organización, por ejemplo, ``fig_capitulo1:figura1``, ``fig_capitulo2:figura3``.

```latex
\begin{figure}[H]
    \centering
    \includegraphics[width=\textwidth,height=\textwidth]{capitulo/imagen1.png}
    \caption{Descripción}\label{fig:fig1}
\end{figure}
```

### Tablas

En la siguiente liga se puede encontrar un tutorial y descripción a fondo de la creación y uso de tablas en LaTeX [Tutorial de tablas en LaTeX](https://manualdelatex.com/tutoriales/tablas/).

El código independientemente de la tabla es igual al de las figuras: se tiene una configuración de posición (H), la descripción y la etiqueta. Las tablas se referencían igual con el comando ``\autoref{tab:tabla1}``.

```latex
\begin{table}[H]
    \centering
    \begin{tabular}{@{}llr@{}}
        \toprule
        \multicolumn{2}{c}{Item} &                          \\ \cmidrule(r){1*2}
        Animal                   & Description & Price (\$) \\ \midrule
        Gnat                     & per gram    & 13.65      \\
                                 & each        & 0.01       \\
        Gnu                      & stuffed     & 92.50      \\
        Emu                      & stuffed     & 33.33      \\
        Armadillo                & frozen      & 8.99       \\ \bottomrule
    \end{tabular}
    \caption{Mi tabla uno}
    \label{tab:tabla1}
\end{table}
```

Para facilitar el proceso de creación de tablas, se deja el enlace de un 
sitio para crear tablas de latex [Tablas en latex](https://www.tablesgenerator.com/latex_tables/). En el cual se pueden cargar tablas de excel, copiar y pegar y genera el código de manera fácil y sencilla.

### Secciones

Se utilizan los comandos ``\section Nombre``, ``\subsection Nombre``, ``\subsection Nombre`` para colocar secciones anidadas. Estas se colocan automáticamente en la tabla de contenido.

### Metadata

Los metadatos de un PDF son información descriptiva del autor, el título del documento, sus palabras claves, idiomas y tema. Es importante colocarlo ya que asiste a tareas de cienciometría, bibliografía y para actividades de archivo. El comando ``\hypersetup{}`` se encarga de configurar la metadata.

### Referencias

El manejo de referencias en LaTeX es relativamente sencillo, aunque a simple vista se podría observar complejo.

Para citar en LaTeX, solo se requiere el uso del comando ``\cite{articulo``, este comando imprimirá la etiqueta en el lugar donde se colocó el comando y, lo más importante, permitirá a LaTeX la impresión automática de la tabla de referencias utilizando el comando ``\printbibliography``.

#### Archivo .bib

Las referencias se toman de un archivo .bib que contiene una colección estructurada de las obras consultadas. La estructura general la podemos ver a continuación:

```bib
@article{knuth:1984,
  title     = {Literate Programming},
  author    = {Donald E. Knuth},
  journal   = {The Computer Journal},
  volume    = {27},
  number    = {2},
  pages     = {97**111},
  year      = {1984},
  publisher = {Oxford University Press}
}
```

#### Mendeley

No es necesario generar el archivo .bib de manera manual, la aplicación Mendeley (y todas las aplicaciones de gestión de referencias) tienen la capacidad de exportar su contenido en formato .bib. Basta con generar este archivo, colocarlo en algún lugar del directorio raiz o un subdirectorio, y avisarle a LaTeX mediante el comando ``\addbibresource{referencias.bib}`` donde se encuentra.

## Instalación local

Una instalación local cuenta con las siguientes ventajas:

* No requiere conexión a internet.
* Es más fácil la gestión de imágenes.

### Latex

Existen distintas distribuciones de LaTeX para los sistemas operativos. Debido a que la instalación de LaTeX en Linux es bastante trivial, se describirán los pasos para instalar en sistemas operativos Windows.

La distribución a instalar será Texlive, que es robusta y tiene todo lo necesario para trabajar sin requerir configuraciones externas. En Windows, incluye también un intérprete de ``Perl``. El único problema es que pesa bastante ya que contiene todo lo necesario, es por ello que su instalación es bastante tardada.

Descarga de [Instalador TexLive](https://mirror.ctan.org/systems/texlive/tlnet/install-tl-windows.exe).

#### Editores nativos

[Existen muchisimos editores nativos para LaTeX](https://en.wikipedia.org/wiki/Comparison_of_TeX_editors) que cuentan con funciones avanzadas como compilación automática, autocompletado de código, gestión de referencias y citas, sincronización código-pdf, inserción de comandos útiles. La instalación de TexLive ya incluye un editor: TexWorks, que funciona para todas actividades básicas para la redacción de una tesis. A continuación se enumeran otros que se han probado y que funcionan bastante bien en Windows.

* [TexStudio](https://www.texstudio.org/).
* [TexMaker](https://www.xm1math.net/texmaker/).
* [Lyx](https://www.lyx.org/Home).

## Características por definir

* Tabla de contenidos.
  * Cantidad de subsecciones a mostrar.
  * Tamaños de letra.
* Fuentes
  * Fuente del documento alternativa a Times New Roman.
  * Tamaño de las fuentes y pesos para contenido, títulos de capítulo, sección, subsección, etc.
* Referencias
  * Formato de citas en texto (al final del párrafo, dentro de la línea, etc).
  * Formato de referencias (APA, IEEE, Nature, etc).
* Figuras
  * Posición de la etiqueta(arriba o abajo).
  * Tamaño de la figura.
  * Posición relativa de la figura en el texto.
  * Formato de referencia.
* Tablas
  * Posición de la etiqueta(arriba o abajo).
  * Tamaños de letra.
  * Orientación de tablas grandes.
  * Formatos de referencia.
  * Posición relativa de la tabla en el texto.
* Metadatos del archivo PDF.
* Páginas del trámite de titulación.
* Tipo de licencia de software.
* Organización
* Portada
  * Obtener imágenes en HD.
  * Mejorar diseño y posición de elementos.
  * Formato de la fecha.
* Ecuaciones y algoritmos.
* Nomenclaturas y abreviaciones.
* Bibliografía al final.
* Una sola página o lado y lado.

<sub><sup>Porque los objetivos especificos van en negrita?</sup></sub>

<sub><sup>Hay una R de marca registrada en el logo del ITO </sup></sub>

<sub><sup>El formato APA es pesimo </sup></sub>

<!-- ## Visual Studio code

La forma más cómoda de trabajar en LaTeX es usando un procesador profesional de texto

Descarga de [Visual Studio Code](https://code.visualstudio.com/download).

### Extensiones

#### Latex workshop

#### Code spellcheck

#### TODO tree

## Control de versiones

### Git

### Github

### Gitlens -->

## Contacto

marcojulioarg@gmail.com

[//]: # ( #TODO agregar screenshots)
