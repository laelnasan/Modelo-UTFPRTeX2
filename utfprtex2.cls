%%
%% Customizações do abnTeX2 (http://abnTeX2.googlecode.com) para a 
%% Universidade Tecnológica Federal do Paraná campus Pato Branco
%% por Lael N. Santos - 2017
%%
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% This work has the LPPL maintenance status `maintained'.
%% 
%% The Current Maintainer of this work is SEU_NOME, SEU_EMAIL
%%
%% Further information about abnTeX2 are available on http://abntex2.googlecode.com/
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{utfprtex2}[2017/09/20 v1.0 Modelo da Universidade Tecnológica Federal do Paraná campus Pato Branco baseado em abnTeX2]

%
% Repassa todos os parametros a classe abntex2, 
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{abntex2}%
}
\ProcessOptions\relax
\LoadClass{abntex2}

% resolvendo problemas com o uppercase

\pdfstringdefDisableCommands{\edef\uppercase{}}

% resolvendo problema com hifenização de url
\sloppy

% alterando tamanho e fonte de capítulos, seções e subseções
\renewcommand{\ABNTEXchapterfont}{\sffamily}
\renewcommand{\ABNTEXchapterfontsize}{\bfseries}
\renewcommand{\ABNTEXsectionfontsize}{}
\renewcommand{\ABNTEXsubsectionfontsize}{}
\renewcommand{\ABNTEXsubsubsectionfontsize}{}

% alterando a capa
\renewcommand{\imprimircapa}{%
  \begin{capa}%
    \center
    \ABNTEXchapterfont{UNIVERSIDADE TECNOL\'OGICA FEDERAL DO PARAN\'A\\
  DEPARTAMENTO ACAD\^EMICO DE EL\'ETRICA\\
  CURSO DE ENGENHARIA EL\'ETRICA}
    
    \vfill
    
    {\ABNTEXchapterfont\MakeTextUppercase{\imprimirautor}}

    \vfill
    \begin{center}
    \ABNTEXchapterfont\bfseries\Large\MakeTextUppercase{\imprimirtitulo}
    \end{center}
    \vfill
    
    \MakeTextUppercase{\imprimirtipotrabalho}
    
    \vfill
    
    \MakeTextUppercase{\imprimirlocal}
    
    \imprimirdata
    
  \end{capa}
}



% folha de rosto 

\makeatletter

\renewcommand{\folhaderostocontent}{
\begin{center}

{\ABNTEXchapterfont\MakeTextUppercase{\imprimirautor}}

\vfill

\begin{center}
\ABNTEXchapterfont\bfseries\Large\MakeTextUppercase{\imprimirtitulo}
\end{center}

\vspace*{\fill}

\abntex@ifnotempty{\imprimirpreambulo}{%
  \hspace{.45\textwidth}
  \begin{minipage}{.5\textwidth}
  \SingleSpacing
  \imprimirpreambulo
  \end{minipage}%
  \vspace*{\fill}
}%

\vspace*{\fill}

{\ABNTEXchapterfont\MakeTextUppercase{\imprimirlocal}}

\par

{\ABNTEXchapterfont\imprimirdata}
\vspace{2cm}
\ 
\end{center}
}

\makeatother