%% *** Identification ***
%% The class identifies itself and the LaTeX version needed
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ito}[10/08/2022 Estilo de tesis ITO]
\LoadClass{report}

\RequirePackage[letterpaper]{geometry}
\RequirePackage{fontspec}
\RequirePackage{amsmath,amssymb}
\RequirePackage[english,spanish,mexico]{babel}
\RequirePackage{csquotes}
\RequirePackage[pagestyles,explicit]{titlesec}
\RequirePackage{titletoc}
\RequirePackage{graphicx}
\RequirePackage[table,xcdraw,dvipsnames]{xcolor}
\RequirePackage{ragged2e}
\RequirePackage{float}
\RequirePackage[style=apa]{biblatex}
\RequirePackage{booktabs}
\RequirePackage{microtype}
\RequirePackage{csquotes}
\RequirePackage{subfig}
\RequirePackage{enumitem}
\RequirePackage{multirow}
\RequirePackage[toc]{appendix}
\RequirePackage{titlesec}
\RequirePackage{enumitem}
\RequirePackage{pdflscape}
\RequirePackage{lettrine}

\RequirePackage[useregional]{datetime2}

\AtBeginDocument{%
  \hypersetup{%
    pdftitle={\@titulo},%
    pdfauthor={\@autor},%
    pdfsubject={Tesis doctoral},%
    pdfkeywords={\@palabras},%
    pdflang={spanish},%
    linktoc=all,%
    colorlinks=true,%
    breaklinks=true,%
    urlcolor=cyan,%
    linkcolor=blue,%
    citecolor=red%
  }%
}
\RequirePackage{hyperref}

%% *** Definicion de estilo del documento doctoral ***

%% Espacio entre lineas
\linespread{1.5}
%% Fuente
\setmainfont{Times New Roman}
%% Espacio de parrafo
\setlength{\parskip}{8pt}
%% Indentacion general
\setlength{\parindent}{0pt}
\geometry{left=3.0cm,right=3.0cm,top=2.5cm,bottom=2.5cm}
\newcommand{\subfigureautorefname}{\figureautorefname}

\setlist[itemize]{itemsep=3pt}

\setlist[enumerate]{itemsep=3pt}
\addto\captionsspanish{
    \renewcommand{\contentsname}%
    {\fontsize{16pt}{1pt}\selectfont CONTENIDO \hfill}%
    \renewcommand{\listfigurename}%
    {\fontsize{12pt}{1pt}\selectfont LISTA DE FIGURAS \hfill}%
  \renewcommand{\listtablename}%
  {\fontsize{12pt}{1pt}\selectfont LISTA DE TABLAS \hfill}%
  \renewcommand\appendixname{Anexo}
  \renewcommand\appendixpagename{Anexos}
  \renewcommand\appendixtocname{ANEXOS}
}
\addto\extrasspanish{%
  \renewcommand{\appendixautorefname}{Anexo}%
}

\titleformat{\chapter}{\fontsize{16pt}{1pt}\normalfont\centering}{\MakeUppercase{\chaptertitlename}
\thechapter: }{0pt}{#1}%
\titleformat{\section}{\raggedright\fontsize{14pt}{1pt}\bfseries}{\thesection}{1em}{#1}%
\titleformat{\subsection}{\raggedright\fontsize{12pt}{1pt}\bfseries}{\thesubsection}{1em}{#1}%
\titleformat{\subsubsection}{\raggedright\fontsize{12pt}{1pt}\bfseries}{\thesubsubsection}{1em}{#1}%
\titlespacing{\chapter}{0pt}{-20pt}{10pt}%
\titlespacing*{\paragraph}{0pt}{3.25ex plus 1ex minus .2ex}{0.5em}

\titlecontents{chapter}% <section-type>
  [0pt]% <left>
  {}% <above-code>
  {\MakeUppercase{\@chapapp}\ \thecontentslabel: }% <numbered-entry-format>
  {}% <numberless-entry-format>
  {\titlerule*[0.3pc]{.}\contentspage}% <filler-page-format>

\titlecontents{section}% <section-type>
  [1em]% <left>
  {}% <above-code>
  {\thecontentslabel \hspace{1em}}% <numbered-entry-format>
  {}% <numberless-entry-format>
  {\titlerule*[0.3pc]{.}\contentspage}% <filler-page-format>

  \titlecontents{subsection}% <section-type>
  [2em]% <left>
  {}% <above-code>
  {\thecontentslabel \hspace{1em}}% <numbered-entry-format>
  {}% <numberless-entry-format>
  {\titlerule*[0.3pc]{.}\contentspage}% <filler-page-format>

  \titlecontents{subsubsection}% <section-type>
  [3em]% <left>
  {}% <above-code>
  {\thecontentslabel \hspace{1em}}% <numbered-entry-format>
  {}% <numberless-entry-format>
  {\titlerule*[0.3pc]{.}\contentspage}% <filler-page-format>

% Figuras
  \titlecontents{figure}
  [0em]%
  {Figura~}
  {\vspace{-10pt}\thecontentslabel.\hspace{1em}}
  {}%
  {\titlerule*[.3pc]{.}\contentspage}%
% Tablas
  \titlecontents{table}
  [0em]%
  {Tabla~}
  {\vspace{-10pt}\thecontentslabel.\hspace{1em}}
  {}%
  {\titlerule*[.3pc]{.}\contentspage}%


  \g@addto@macro\appendices{%
    \addtocontents{toc}{\protect\renewcommand{\protect\@chapapp}{\appendixname}}%
  }

  %% Traduccion de titulos

\DTMnewdatestyle{mydatestyle}{%
  \renewcommand*{\DTMdisplaydate}[4]{%
    \MakeUppercase{\MYshortmonthname{##2}} ##1}% ...or \DTMenglishshortmonthname
  \renewcommand*{\DTMDisplaydate}{\DTMdisplaydate}%
}

\newcommand\prechapter[1]{%
  \chapter*{#1}%
  \addcontentsline{toc}{chapter}{#1}}

\newcommand{\MYshortmonthname}[1]{%
  \ifcase#1% 0
    \or Enero%
    \or Febrero%
    \or Marzo%
    \or Abril%
    \or Mayo%
    \or Junio%
    \or Julio%
    \or Agosto%
    \or Septiembre%
    \or Octubre%
    \or Noviembre%
    \or Diciembre%
  \fi
}

%% Numero de pagina a la derecha
\newpagestyle{main}{\setfoot{}{}{\thepage}}
\pagestyle{main}
\assignpagestyle{\chapter}{main}

%% Se muestra solamente hasta subseccion
\setcounter{tocdepth}{3}
\setcounter{secnumdepth}{3}

% \directlua{pdf.setminorversion(7)}
% \pdfminorversion=7%
% \pdfcompresslevel=0%
% \pdfobjcompresslevel=0%

\special{pdf:minorversion 7} %set minorversion


\newcommand*{\titulo}[1]{\gdef\@titulo{#1}%
}

\newcommand*{\director}[1]{\gdef\@director{#1}%
}
\newcommand*{\codirector}[1]{\gdef\@codirector{#1}%
}
\newcommand*{\autor}[1]{\gdef\@autor{#1}%
}
\newcommand*{\keywords}[1]{\gdef\@keywords{#1}%
}
\newcommand*{\palabras}[1]{\gdef\@palabras{#1}%
}
% \let\keywords\@keywords
% \newcommand*{\@director}{FULANO}
% \newcommand*{\@codirector}{}
% \newcommand*{\@autor}{FULANO}
% \newcommand*{\@keywords}{Formato, ITO, Doctorado}

\renewcommand*{\maketitle}{%
\begin{titlepage}
  \vspace*{-2cm}
  \begin{figure}[H]
    \includegraphics[width=\textwidth,height=1.77cm]{portada/secretaria}
  \end{figure}

  \hrule height 3pt depth 0pt width \textwidth
  \vspace{2pt}
  \hrule height 6pt depth 0pt width \textwidth
  \vspace{2pt}
  \hrule height 3pt depth 0pt width \textwidth

  \hspace{12pt}
  \vrule height 0.8\textheight depth 0pt width 3pt
  \hspace{-1pt}
  \vrule height 0.8\textheight depth 0pt width 6pt
  \hspace{-1pt}
  \vrule height 0.8\textheight depth 0pt width 3pt

  \vspace*{-185mm}

  \begin{center}
    \textbf{DIVISIÓN DE ESTUDIOS POSGRADO E INVESTIGACIÓN}
  \end{center}

  \vspace{0.2\baselineskip}
  \begin{center}
    \fontsize{11}{12}\selectfont Opción 1.- TESIS \\
    \fontsize{12}{12}\selectfont \textbf{TRABAJO PROFESIONAL}
  \end{center}

  \vspace{0.5\baselineskip}
  \centering
  \begin{minipage}{13cm}
    \begin{center}
      \fontsize{12}{12}\selectfont \textbf{\@titulo}
    \end{center}
  \end{minipage}


  \vspace{0.5\baselineskip}
  \begin{center}
    \fontsize{11}{12}\selectfont \textbf{QUE PARA OBTENER EL GRADO DE:} \\
    \fontsize{12}{12}\selectfont \textbf{DOCTOR EN CIENCIAS} \\
    \fontsize{12}{12}\selectfont \textbf{DE LA INGENIERÍA}
  \end{center}

  \vspace{0.5\baselineskip}
  \begin{center}
    \fontsize{11}{12}\selectfont \textbf{PRESENTA:} \\
    \fontsize{12}{12}\selectfont \@autor
  \end{center}

  \vspace{1\baselineskip}
  \begin{center}
    \fontsize{11}{12}\selectfont \textbf{DIRECTOR DE TESIS:} \\
    \fontsize{12}{12}\selectfont \@director
  \end{center}

  \ifx\@codirector\empty
  \else
    \vspace{1\baselineskip}
    \begin{center}
        \fontsize{11}{12}\selectfont \textbf{CODIRECTOR DE TESIS:} \\
        \fontsize{12}{12}\selectfont \@codirector
    \end{center}
  \fi

 \vspace{2\baselineskip}
\noindent
 \begin{minipage}[t]{.2\textwidth}
\raggedleft

    \includegraphics[width=2.9cm,height=3.07cm]{portada/ito_logo}

\end{minipage}% <---------------- Note the use of "%"
\begin{minipage}[t]{.8\textwidth}
    \fontsize{10}{12}\selectfont \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ORIZABA, VERACRUZ, MÉXICO \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \DTMsetdatestyle{mydatestyle}  \today
\end{minipage}

\end{titlepage}

}

