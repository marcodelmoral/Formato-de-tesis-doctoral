# Formato en LaTeX para tesis doctoral

Este formato surge de la necesidad de estandarizar la presentación de tesis doctorales y reportes intersemestrales de la División de Estudios de Posgrado e Investigación (DEPI) del Tecnológico Nacional de México (TecNM) a través del Instituto Tecnológico de Orizaba (ITO).

## Introducción

[LaTeX](https://es.wikipedia.org/wiki/LaTeX) es un sistema para la creación de textos precisos ampliamente ocupado en la industria editorial científica. Se pronuncia ***latek***. Es de código abierto y se puede compilar en cualquier sistema operativo.

LaTeX tiene ventajas con respecto a los editores [WYSIWYG](https://es.wikipedia.org/wiki/WYSIWYG), por ejemplo, configurar las citas, referencias, tablas de contenido/figuras/tablas es bastante sencillo y a veces hasta automatizado.

### Ventajas

Algunas ventajas de usar LaTeX para escribir una tesis son:

- LaTeX se encarga de gestionar automáticamente la posición de los elementos en el documento. Tal como imágenes, tablas, ecuaciones, texto, párrafos, títulos, pies de página. Solo preocúpate por escribir, el formato ya lo trae todo.
- No hay mejor sistema para estilizar fórmulas matemáticas y ecuaciones. Básicamente todos los libros publicados usan LaTeX para sus fórmulas.
- Gestión de citas y referencias muy potente. No es necesario abrir una ventana y dar muchos clicks o instalar plugins para Mendeley, con dos macros es más que suficiente.
- Fácil integrácion con herramientas de control de versiones y cambios. No vuelvas a perder tu trabajo, puedes trazar absolutamente todos los cambios y sincronizarlos en la nube (no más archivos tipo tesis-final-orasilabuena.doc, tesis-nosequehagoconmivida.doc, etc).
- La tipografía es muy superior a la de Word y alternativas.
- Excluyendo el tiempo de compilación, el rendimiento es muy superior. Lo que lo hace ideal para trabajar en documentos con muchas imágenes en computadoras con pocos recursos.
- Puedes separar tu documento en distintos archivos para mejorar su gestión.
- Puedes usar comentarios en tu texto que no saldrán en el archivo final.

## Formato

Para adaptar el formato al usuario, hay que cambiar el nombre del autor, de la tesis, el codirector etcétera. Definidas como macros dentro del archivo ``formato.tex``. Tan solo hay que escribir dentro de los corchetes el contenido que se desea definir:

```latex
\autor{NOMBRE DEL AUTOR}
\titulo{TÍTULO DEL TRABAJO}
\director{NOMBRE DEL DIRECTOR}
\codirector{NOMBRE DEL CODIRECTOR}
\fecha{\today}
\keywords{SOME, KEY, WORDS}
\palabras{ALGUNAS, PALABRAS, CLAVE}
```

Esto definirá la información que se mostrará en la portada del documento, las palabras clave a mostrar en secciones subsecuentes y también los metadatos del archivo PDF.

Los metadatos de un PDF son información descriptiva del autor, el título del documento, sus palabras claves, idiomas y tema. Es importante colocarlo, ya que asiste a tareas de cienciometría, bibliografía y para actividades de archivo.

Para su compilación se recomienda usar **pdflatex** y **biber**.

Dentro del formato encontrarás algunos ejemplos de uso, como referencias, citas, figuras, tablas y ecuaciones.

Solo hace falta borrar el paquete lipsum y sus comandos para tener un formato completo y funcional.

### Como obtener

#### Overleaf

<https://www.overleaf.com/latex/templates/formato-de-tesis-tecnm-itorizaba/pjhnfkgskmrx>

#### Github

<https://github.com/marcodelmoral/Formato-de-tesis-doctoral>

```bash
git clone https://github.com/marcodelmoral/Formato-de-tesis-doctoral.git
```

También lo puedes descargar como ``.zip``.

El formato se encuentra definido como template y se puede ocupar para crear un nuevo repositorio de manera sencilla en github.

### Contenido

Agregar el contenido es muy fácil, ya que no se requieren configuraciones de formato extra a tablas, figuras o listas; basta con escribir texto plano.

El contenido se encuentra organizado en tres partes:

- Preámbulo: resumen, abstract, introducción, hipótesis, justificación, objetivos, planteamiento.
- Capítulos: antecedentes, estado del arte, metodología y resultados.
- Epílogo: conclusiones, productos, recomendaciones y anexos.

#### Comentarios

Los comentarios en LaTeX se definen utilizando el símbolo ``%`` al inicio de la línea.

```latex
% Esto es ejemplo
% de un comentario
% en LaTeX.
```

### Flotantes

Los flotantes son aquellos elementos dentro de un documento que se colocan dentro de una sola página, es decir, generalmente no se pueden dividir entre múltiples páginas. Estos flotantes generalmente se listan después de la tabla de contenido.

Los flotantes de este formato son las figuras, tablas y ecuaciones.

Los elementos de los flotantes son:

- La entidad contenida dentro del flotante: figura, tabla o ecuación.
- La posición con respecto al texto: arriba, medio, abajo, izquierda, derecha, al final, justo aquí, etc.
- Una leyenda: que describe el flotante tanto dentro del texto como en su lista.
- Numeración: que define cada flotante en función a su posición dentro del texto, puede ser consecutivo o dividido por sección y capítulo.
- Etiqueta: que define cada flotante como único para su posterior referencia dentro del texto.

Los identificadores de posición para flotantes son:

| Specifier | Permission                                                                                                                                                                                                                       |
|-----------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| h         | Place the float here, i.e., approximately at the same point it occurs in the source text (however, not exactly at the spot)                                                                                                      |
| t         | Position at the top of the page.                                                                                                                                                                                                 |
| b         | Position at the bottom of the page.                                                                                                                                                                                              |
| p         | Put on a special page for floats only.                                                                                                                                                                                           |
| !         | Override internal parameters LATEX uses for determining "good" float positions.                                                                                                                                                  |
| H         | Places the float at precisely the location in the LATEX code. Requires the float package (\usepackage{float}). This is somewhat equivalent to h!, though some errors may arise if you have too many consecutive floats with [H]. |

#### Figuras

Configurar el directorio donde se encontrarán las imágenes, en formato ``.jpg``, ``.png``, o ``.pdf``. Se pueden organizar las imágenes en subdirectorios para una mejor organización. Por defecto estás se encuentran en la carpeta ``imagenes/``, para modificarlo solo cambia la ruta en el comando ``\graphicspath{ {imagenes/} }`` dentro del formato.

Primeramente podemos observar la letra H junto al macro de inicio de figura, esta indica la posición (H de here 'aquí'); esto cambia el comportamiento natural de LaTeX para posicionar las figuras. En LaTeX, las figuras son flotantes, es decir, el programa decide cual será su posición en función al acomodo del texto, es por ello que se trata de evitar el uso de frases como "en la siguiente figura".

Posteriormente vemos el comando ``\centering``, que centra la figura con respecto al texto.

Luego entre corchetes el tamaño, en función al ancho y alto del texto. Esta configuración también se puede hacer en unidades métricas, imperiales, por proporción o pixeles.

Se puede ver la ruta de la imagen a insertar, la ruta inicia con un subdirectorio que se encuentra dentro del directorio que se configuro en el archivo ``formato.tex``, aunque esto no es necesario.

Por último nos encontramos los comandos ``\caption{Descripción}`` que coloca la descripción de la imagen abajo de la figura (o arriba dependiendo de donde se coloque el comando) y también esta descripción se muestra en la Lista de Figuras. Para referenciar las figuras, se utilizará el comando ``\cref{fig:etiqueta}``, este comando inserta automáticamente la palabra Figura antes del número asignado; esta etiqueta también se coloca automaticamente en la lista de figuras. La palabra ``fig``, sirve para distinguir las referencias de las figuras, se puede substituir por otra palabra para mejor organización, por ejemplo, ``fig_capitulo1:figura1``, ``fig_capitulo2:figura3``.

```latex
\begin{figure}[H]
    \centering
    \includegraphics[width=\textwidth,height=\textwidth]{capitulo/imagen1.png}
    \caption{Descripción}\label{fig:fig1}
\end{figure}
```

#### Tablas

En la siguiente liga se puede encontrar un tutorial y descripción a fondo de la creación y uso de tablas en LaTeX [Tutorial de tablas en LaTeX](https://manualdelatex.com/tutoriales/tablas/).

El código independientemente de la tabla es igual al de las figuras: se tiene una configuración de posición (H), la descripción y la etiqueta. Las tablas se referencían igual con el comando ``\cref{tab:tabla1}``.

```latex
\begin{table}[H]
  \centering
  \caption{Horizontes y resolución}\label{tab:resolucion}
  \begin{tabular}{@{}ll@{}}
    \toprule
    Horizontes   espaciales & Horizontes   temporales \\ \midrule
    Entidad                 & Anual                   \\
    Municipio               & Mensual                 \\
    AGEB                    & Diario                  \\
    Manzana                 & Por   hora              \\ \bottomrule
  \end{tabular}
\end{table}
```

Para facilitar el proceso de creación de tablas, se deja el enlace de un
sitio para crear tablas de latex [Tablas en latex](https://www.tablesgenerator.com/latex_tables/). En el cual se pueden cargar tablas de excel, copiar y pegar y genera el código de manera fácil y sencilla.

#### Ecuaciones

Para las ecuaciones se definió un entorno para flotantes llamado ``eq``. El cual define la ecuación, etiqueta y referencia. Notar que la fórmula debe estar entre ``\[`` y ``\]``.

```latex
\begin{eq}[H]
 \caption{Mi ecuación}\label{eq:ecuacion1}
 \[
    1 + 1 = 2
 \]
\end{eq}
```

### Secciones

Se utilizan los comandos ``\section{Nombre}``, ``\subsection{Nombre}``, ``\subsection{Nombre}`` para colocar secciones anidadas. Estas se colocan automáticamente en la tabla de contenido.

### Referencias

Si queremos referenciar una tabla, ecuación o figura se usa el comandos ``\autoref`` . Este coloca automáticamente el nombre del flotante sin necesidad de escribirlo (Tabla 1, Figura 2, etc.).

También podemos colocar etiquetas ``\label`` a otros elementos como capítulos, secciones y anexos.

### Citas bibliográficas

Las referencias para este documento se encuentran definidas en el formato [APA](https://www.revista.unam.mx/wp-content/uploads/3_Normas-APA-7-ed-2019-11-6.pdf).

El manejo de referencias en LaTeX es relativamente sencillo, aunque a simple vista se podría observar complejo.

Para citar en LaTeX, solo se requiere el uso del comando ``\cite{articulo}`` , ``\parencite{articulo}`` o ``\autocite{articulo}``, este comando imprimirá la etiqueta en el lugar donde se colocó el comando y, lo más importante, permitirá a LaTeX la impresión automática de la tabla de referencias utilizando el macro ``\printbibliography``.

#### Archivo ``.bib``

Las referencias se toman de un archivo ``.bib`` que contiene una colección estructurada de las obras consultadas. La estructura general la podemos ver a continuación:

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

No es necesario generar el archivo ``.bib`` de manera manual, la aplicación [Mendeley](https://www.mendeley.com/) (y todas las aplicaciones de gestión de referencias) tienen la capacidad de exportar su contenido en formato ``.bib``. Basta con generar este archivo, colocarlo en algún lugar del directorio raiz o un subdirectorio, y avisarle a LaTeX mediante el comando ``\addbibresource{referencias.bib}`` donde se encuentra. Se pueden tener múltiples de estos archivos.

### Tabla de contenidos y listas

Los siguientes comandos sirven para imprimir la tabla de contenidos y las listas de figuras, tablas y ecuaciones.

```latex
\tableofcontents
\listoffigures
\listoftables
\listofeqs
```

### Sentencia ``\includeonly``

Esta sentencia permite elegir cuales de los capítulos se compilan en el documento. Esto permite reducir el tiempo de compilación para trabajar de manera más ágil con el documento. Para eliminar capítulo, basta con comentar la línea correspondiente usando el símbolo ``%``; como se muestra a continuación:

```latex
\includeonly{
    contenido/preambulo/resumen,
    contenido/preambulo/abstract,
    contenido/preambulo/introduccion,
    contenido/preambulo/planteamiento,
    contenido/preambulo/justificacion,
    contenido/preambulo/hipotesis,
    contenido/preambulo/objetivos,
    contenido/capitulos/antecedentes,
    contenido/capitulos/estado,
    contenido/capitulos/metodologia,
    contenido/capitulos/resultados,
    contenido/epilogo/conclusiones,
    % contenido/epilogo/recomendaciones,
    % contenido/epilogo/productos,
    % contenido/epilogo/anexos
}
```

## Instalación local

La forma más fácil de trabajar con LaTeX es usando un editor en línea como [Overleaf](https://www.overleaf.com/) o [Papeeria](https://papeeria.com/). La ventaja es que no requiere instalación alguna en el sistema local, permite el acceso al documento desde cualquier parte y guarda los cambios en la nube (No más temor a que la PC/HDD muera y se pierda tu tesis!!!1) y la edición colaborativa del texto entre varias personas. Las desventajas son que no podrás acceder a tu tesis si no tienes internet, las funciones más interesantes y avanzadas están detrás de una subscripción monetaria, y que para la gestión de contenido externo como imágenes se hace más tediosa.

Una instalación local cuenta con las siguientes ventajas:

- No requiere conexión a internet.
- Es más fácil la gestión de imágenes y demás contenido.
- Puedes integrar un control de versiones robusto.
- En algunos editores puedes instalar editores de estilo, gramaticales y ortográficos.

### LaTeX

Existen distintas distribuciones de LaTeX para los sistemas operativos. Debido a que la instalación de LaTeX en Linux es bastante trivial, se describirán los pasos para instalar en sistemas operativos Windows.

La distribución a instalar será Texlive, que es robusta y tiene todo lo necesario para trabajar sin requerir configuraciones externas. En Windows, incluye también un intérprete de ``Perl``. El único problema es que pesa bastante, ya que contiene todo lo necesario, es por ello que su instalación es bastante tardada.

Descarga de [Instalador TexLive](https://mirror.ctan.org/systems/texlive/tlnet/install-tl-windows.exe).

### Editores nativos

[Existen muchisimos editores nativos para LaTeX](https://en.wikipedia.org/wiki/Comparison_of_TeX_editors) que cuentan con funciones avanzadas como compilación automática, autocompletado de código, gestión de referencias y citas, sincronización código-pdf, inserción de comandos útiles. La instalación de TexLive ya incluye un editor: TexWorks, que funciona para todas actividades básicas para la redacción de una tesis. A continuación se enumeran otros que se han probado y que funcionan bastante bien en Windows.

- [TexStudio](https://www.texstudio.org/).
- [TexMaker](https://www.xm1math.net/texmaker/).
- [Lyx](https://www.lyx.org/Home).

## Algunos enlaces útiles

- <https://ctan.org/>
- <https://youtu.be/jIh_gBND02U>
- <https://manualdelatex.com/>
- <https://tex.stackexchange.com/>
- <https://mirror.informatik.hs-fulda.de/tex-archive/info/lshort/spanish/lshort-a4.pdf>
- <https://www.latextemplates.com/>
- <https://www.tablesgenerator.com/latex_tables>

## Características por definir

- Tabla de contenidos.
  - Cantidad de subsecciones a mostrar.
  - Tamaños de letra.
- Fuentes
  - Fuente del documento alternativa a Times New Roman.
  - Tamaño de las fuentes y pesos para contenido, títulos de capítulo, sección, subsección, etc.
- Figuras
  - Tamaño de la figura.
  - Posición relativa de la figura en el texto.
  - Formato de referencia (número absoluto o sección).
- Tablas
  - Tamaños de letra.
  - Orientación de tablas grandes.
  - Formato de referencia (número absoluto o sección).
  - Posición relativa de la tabla en el texto.
  - Formato de tabla.
- Páginas del trámite de titulación.
- Tipo de licencia de software.
- Organización.
- Portada
  - Obtener imágenes en HD.
  - Formato de la fecha.
  - ¿Qué fecha se pone? La de la publicación o la de la creación del documento?.
  - Validar estética.
- Ecuaciones y algoritmos.
- Nomenclaturas y abreviaciones.
- Bibliografía al final.
- Una sola página o lado y lado.
- Formato de los anexos y su numeración.
- Formato de las etiquetas para flotantes.
- Añadir sangría.

## TODO

- Agregar opción para reporte intersemestral.
- Lista de paquetes utilizados.
- Gestión de archivos e imágenes.
- Tipos de archivo de las imagenes.
- Lista de tutoriales y videos.
- Notas al pie.
- Paquete longtable.
- Paginas horizontales.
- Explicar modo draft y final.
- Gestión de paquetes y CTAN.
- Tutorial para ecuaciones y matemáticas.
- Instalación y configuración de entorno de desarrollo local.
  - VSCODE.
  - Git.
  - Extensiones -> workshop, todo tree, utils
  - Otras herramientas.

<sub><sup>¿Por qué los objetivos específicos van en negrita?</sup></sub>

<sub><sup>Hay una R de marca registrada en el logo del ITO </sup></sub>

<sub><sup>Creo que 12pt es muy grande para la fuente </sup></sub>

<!-- ## Visual Studio code

Configuracion de entorno local de desarrollo.

Descarga de [Visual Studio Code](https://code.visualstudio.com/download).

### Extensiones

#### Latex workshop

#### Code spellcheck

#### TODO tree

## Control de versiones

### Git

### Github

### Git Latexdiff

### package todonotes

### pgfplotstable y pgfplots

### Tasks en vscode

### Custom keybinds: invert pdf, synctex, etc.

### Analisis de datos con jupyter

### Tablas con pandas

### Gitlens -->

## Contacto

marcojulioarg@gmail.com

[//]: # ( #TODO agregar screenshots)
