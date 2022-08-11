# Formato en LaTeX para tesis doctoral

Este formato surge de la necesidad de estandarizar la presentación de tesis doctorales y reportes intersemestrales de la División de Estudios de Posgrado e Investigación (DEPI) del Tecnológico Nacional de México (TecNM) a través del Instituto Tecnológico de Orizaba (ITO).

## Introducción

[LaTeX](https://es.wikipedia.org/wiki/LaTeX) es un sistema para la creación de textos precisos ampliamente ocupado en la industria editorial científica. Se pronuncia ***latek***. Es de código abierto y se puede compilar en cualquier sistema operativo.

LaTeX tiene ventajas con respecto a los editores [WYSIWYG](https://es.wikipedia.org/wiki/WYSIWYG), por ejemplo, configurar las citas, referencias, tablas de contenido/figuras/tablas es bastante sencillo y a veces hasta automatizado.

## Formato

Para adaptar el formato al usuario, hay que cambiar el nombre del autor, de la tesis, el codirector etcétera. Definidas como macros dentro del archivo ``formato.tex``. Tan solo hay que escribir dentro de los corchetes el contenido que se desea definir:

```latex
\autor{NOMBRE DEL AUTOR}
\titulo{TÍTULO DEL TRABAJO}
\director{NOMBRE DEL DIRECTOR}
\codirector{NOMBRE DEL CODIRECTOR}
\keywords{SOME, KEY, WORDS}
\palabras{ALGUNAS, PALABRAS, CLAVE}
```

Esto definirá la información que se mostrará en la portada del documento, las palabras clave a mostrar en secciones subsecuentes y también los metadatos del archivo PDF.

Los metadatos de un PDF son información descriptiva del autor, el título del documento, sus palabras claves, idiomas y tema. Es importante colocarlo, ya que asiste a tareas de cienciometría, bibliografía y para actividades de archivo.

Para su compilación, el formato requiere versiones modernas de LaTeX, por ejemplo *LuaTeX* o *XeLaTeX*. Este formato fue desarrollado usando el segundo.

### Como obtener

#### Overleaf

<https://www.overleaf.com/read/xjkgghqzbjpx>

#### Github

<https://github.com/marcodelmoral/Formato-de-tesis-doctoral>


```bash
git clone https://github.com/marcodelmoral/Formato-de-tesis-doctoral.git
```

### Contenido

Agregar el contenido es muy fácil, ya que no se requieren configuraciones de formato extra a tablas, figuras o listas; basta con escribir texto plano.

El contenido se encuentra organizado en tres partes:

- Preámbulo: resumen, abstract, introducción, hipótesis, justificación, objetivos, planteamiento.
- Capítulos: antecedentes, estado del arte, metodología y resultados.
- Epílogo: conclusiones, productos, recomendaciones y anexos.

### Figuras

Configurar el directorio donde se encontrarán las imágenes, en formato ``.jpg``, ``.png``, o ``.pdf``. Se pueden organizar las imágenes en subdirectorios para una mejor organización. Por defecto estás se encuentran en la carpeta ``imagenes/``.

Primeramente podemos observar la letra H junto al macro de inicio de figura, esta indica la posición (H de here 'aquí'); esto cambia el comportamiento natural de LaTeX para posicionar las figuras. En LaTeX, las figuras son flotantes, es decir, el programa decide cual será su posición en función al acomodo del texto, es por ello que se trata de evitar el uso de frases como "en la siguiente figura".

Posteriormente vemos el comando ``\centering``, que centra la figura con respecto al texto.

Luego entre corchetes el tamaño, en función al ancho y alto del texto. Esta configuración también se puede hacer en unidades métricas o imperiales.

Se puede ver la ruta de la imagen a insertar, la ruta inicia con un subdirectorio que se encuentra dentro del directorio que se configuro en el archivo ``formato.tex``, aunque esto no es necesario.

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

### Secciones

Se utilizan los comandos ``\section{Nombre}``, ``\subsection{Nombre}``, ``\subsection{Nombre}`` para colocar secciones anidadas. Estas se colocan automáticamente en la tabla de contenido.

### Referencias

Las referencias para este documento se encuentran definidas en el formato [APA](https://www.revista.unam.mx/wp-content/uploads/3_Normas-APA-7-ed-2019-11-6.pdf).

El manejo de referencias en LaTeX es relativamente sencillo, aunque a simple vista se podría observar complejo.

Para citar en LaTeX, solo se requiere el uso del comando ``\cite{articulo}`` o ``\parencite{articulo}``, este comando imprimirá la etiqueta en el lugar donde se colocó el comando y, lo más importante, permitirá a LaTeX la impresión automática de la tabla de referencias utilizando el comando ``\printbibliography``.

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

#### Mendeley

No es necesario generar el archivo ``.bib`` de manera manual, la aplicación [Mendeley](https://www.mendeley.com/) (y todas las aplicaciones de gestión de referencias) tienen la capacidad de exportar su contenido en formato ``.bib``. Basta con generar este archivo, colocarlo en algún lugar del directorio raiz o un subdirectorio, y avisarle a LaTeX mediante el comando ``\addbibresource{referencias.bib}`` donde se encuentra.

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

#### TODO

- Agregar opción para reporte intersemestral.
- Instalación y configuración de entorno de desarrollo local.
  - VSCODE.
  - Git.
  - Extensiones.
  - Otras herramientas.

<sub><sup>¿Por qué los objetivos específicos van en negrita?</sup></sub>

<sub><sup>Hay una R de marca registrada en el logo del ITO </sup></sub>

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

### Gitlens -->

## Contacto

marcojulioarg@gmail.com

[//]: # ( #TODO agregar screenshots)
