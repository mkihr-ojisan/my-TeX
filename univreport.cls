\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{univreport}[2021/05/24 univreport]

\LoadClass[]{jlreq}
\RequirePackage{lastpage,newunicodechar,etoolbox,geometry,amssymb,enumitem,amsmath,comment,varwidth}

\newcommand{\subject}[1]{
    \providecommand{\@subject}{#1}
}
\newcommand{\subtitle}[1]{
    \providecommand{\@subtitle}{#1}
}
\newcommand{\affiliation}[1]{
    \providecommand{\@affiliation}{#1}
}
\newcommand{\studentnum}[1]{
    \providecommand{\@studentnum}{#1}
}


\renewcommand{\maketitle}{
    \thispagestyle{empty}

    \vspace*{4cm}
    \begin{center}
        \fontsize{24pt}{24pt}\selectfont
        \ifdef{\@subject}{\@subject \\ \vspace{\baselineskip}}{}
        \@title
    \end{center}
    \vspace*{\fill}

    \begin{center}
        \begin{varwidth}{\textwidth}
            \begin{description}[labelwidth=5\zw,font=\normalfont,leftmargin=50pt]
                \item[提出日:] \ifdef{\@date}{\@date}{\today}
                \item[所属:] \@affiliation
                \item[学籍番号:] \@studentnum
                \item[氏名:] \@author 
            \end{description}
        \end{varwidth}
    \end{center}

    \newpage
    \setcounter{page}{1}
}