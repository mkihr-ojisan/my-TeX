\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{kisoji}[2021/05/24 kisoji]

\LoadClass[jafontsize=11pt,linegap=7pt,jafontscale=0.9]{jlreq}
\RequirePackage{lastpage,newunicodechar,etoolbox,geometry,amssymb,enumitem,amsmath,comment}

\begin{comment}

############オンデマンド実験用テンプレート（ここから）############
\documentclass[ondemand,replace_punctuation]{kisoji}

\kamoku{理工学基礎実験２Ａ　情報理工・情報通信}
\koumoku{}
\keisiki{略式実験計画書}
\group{}
\han{}
\gakuseki{}
\author{}
\date{2021年月日}

\begin{document}
\maketitle

\end{document}
############オンデマンド実験用テンプレート（ここまで）############

############対面実験用テンプレート（ここから）############
\documentclass[taimen,replace_punctuation]{kisoji}

\kamoku{理工学基礎実験２Ａ　情報理工・情報通信}
\koumoku{}
\keisiki{}
\group{}
\han{}
\gakuseki{}
\author{}
\kyoudou{}
\date{2021年月日}
\situon{}
\situdo{}
\tenkou{}

\begin{document}
\maketitle

\end{document}
############対面実験用テンプレート（ここまで）############

\end{comment}

% クラスオプション
\DeclareOption{ondemand}{
    \ifdef{\kisoji@reporttype}{
        \ClassError{kisoji}{taimenとondemandは同時に指定できません}{}
    }{
        \newcommand{\kisoji@reporttype}{ondemand}
    }
}
\DeclareOption{taimen}{
    \ifdef{\kisoji@reporttype}{
        \ClassError{kisoji}{taimenとondemandは同時に指定できません}{}
    }{
        \newcommand{\kisoji@reporttype}{taimen}
    }
}
\DeclareOption{replace_punctuation}{
    \kcatcode"3000=15
    \newunicodechar{　}{{\char"3000}}
    \newunicodechar{、}{{\char"FF0C}}% <- 3001
    \newunicodechar{。}{{\char"FF0E}}% <- 3002
    \newunicodechar{〃}{{\char"3003}}
    \newunicodechar{〄}{{\char"3004}}
    \newunicodechar{々}{{\char"3005}}
    \newunicodechar{〆}{{\char"3006}}
    \newunicodechar{〇}{{\char"3007}}
    \newunicodechar{〈}{{\char"3008}}
    \newunicodechar{〉}{{\char"3009}}
    \newunicodechar{《}{{\char"300A}}
    \newunicodechar{》}{{\char"300B}}
    \newunicodechar{「}{{\char"300C}}
    \newunicodechar{」}{{\char"300D}}
    \newunicodechar{『}{{\char"300E}}
    \newunicodechar{』}{{\char"300F}}
    \newunicodechar{【}{{\char"3010}}
    \newunicodechar{】}{{\char"3011}}
    \newunicodechar{〒}{{\char"3012}}
    \newunicodechar{〓}{{\char"3013}}
    \newunicodechar{〔}{{\char"3014}}
    \newunicodechar{〕}{{\char"3015}}
    \newunicodechar{〖}{{\char"3016}}
    \newunicodechar{〗}{{\char"3017}}
    \newunicodechar{〘}{{\char"3018}}
    \newunicodechar{〙}{{\char"3019}}
    \newunicodechar{〚}{{\char"301A}}
    \newunicodechar{〛}{{\char"301B}}
    \newunicodechar{〜}{{\char"301C}}
    \newunicodechar{〝}{{\char"301D}}
    \newunicodechar{〞}{{\char"301E}}
    \newunicodechar{〟}{{\char"301F}}
    \newunicodechar{〠}{{\char"3020}}
    \newunicodechar{〡}{{\char"3021}}
    \newunicodechar{〢}{{\char"3022}}
    \newunicodechar{〣}{{\char"3023}}
    \newunicodechar{〤}{{\char"3024}}
    \newunicodechar{〥}{{\char"3025}}
    \newunicodechar{〦}{{\char"3026}}
    \newunicodechar{〧}{{\char"3027}}
    \newunicodechar{〨}{{\char"3028}}
    \newunicodechar{〩}{{\char"3029}}
    \newunicodechar{〪}{{\char"302A}}
    \newunicodechar{〫}{{\char"302B}}
    \newunicodechar{〬}{{\char"302C}}
    \newunicodechar{〭}{{\char"302D}}
    \newunicodechar{〮}{{\char"302E}}
    \newunicodechar{〯}{{\char"302F}}
    \newunicodechar{〰}{{\char"3030}}
    \newunicodechar{〱}{{\char"3031}}
    \newunicodechar{〲}{{\char"3032}}
    \newunicodechar{〳}{{\char"3033}}
    \newunicodechar{〴}{{\char"3034}}
    \newunicodechar{〵}{{\char"3035}}
    \newunicodechar{〶}{{\char"3046}}
    \newunicodechar{〷}{{\char"3047}}
    \newunicodechar{〸}{{\char"3038}}
    \newunicodechar{〹}{{\char"3039}}
    \newunicodechar{〺}{{\char"303A}}
    \newunicodechar{〻}{{\char"303B}}
    \newunicodechar{〼}{{\char"303C}}
    \newunicodechar{〽}{{\char"303D}}
    \newunicodechar{〾}{{\char"303E}}
    \newunicodechar{〿}{{\char"303F}}
}
\ProcessOptions\relax

% 余白
\geometry{top=30truemm,bottom=30truemm,left=25truemm,right=25truemm,includefoot}
% ページ番号
\ModifyPageStyle{plain}{
    nombre_position=bottom-right,
    nombre={p.\thepage /\pageref{LastPage}}
}
\pagestyle{plain}
% ポイントシステム
\RenewBlockHeading{section}{1}{
    label_format={\thesection .},
    before_lines=1
}
\RenewBlockHeading{subsection}{2}{
    before_lines=1
}
\RenewBlockHeading{subsubsection}{3}{
    before_lines=1
}
\SetBlockHeadingSpaces{
    {_section{lines=1,before_lines=1},_subsection{lines=1},_subsubsection{lines=1}}
    {_section{lines=1,before_lines=1},_subsection{lines=1}}
    {_subsection{lines=1,before_lines=1},_subsubsection{lines=1}}
}
% 式番号
\renewcommand{\theequation}{\thesection.\arabic{equation}}
\@addtoreset{equation}{section}
% 表番号、図番号
\renewcommand{\thetable}{\thesection.\arabic{table}}
\renewcommand{\thefigure}{\thesection.\arabic{figure}}
\@addtoreset{table}{section}
\@addtoreset{figure}{section}
\jlreqsetup{
    caption_font=\normalsize,
    caption_label_font=\normalsize,
}
% 箇条書き
\setlist[enumerate,1]{label={(\arabic*) },topsep=0mm,labelsep=0.5em}

% 表紙に書く項目を定義するコマンド
\newcommand{\kamoku}[1]{\newcommand{\kisoji@kamoku}{#1}}
\newcommand{\koumoku}[1]{\newcommand{\kisoji@koumoku}{#1}}
\newcommand{\keisiki}[1]{\newcommand{\kisoji@keisiki}{#1}}
\newcommand{\group}[1]{\newcommand{\kisoji@group}{#1}}
\newcommand{\han}[1]{\newcommand{\kisoji@han}{#1}}
\newcommand{\gakuseki}[1]{\newcommand{\kisoji@gakuseki}{#1}}
\renewcommand{\author}[1]{\newcommand{\kisoji@author}{#1}}
\newcommand{\kyoudou}[1]{\newcommand{\kisoji@kyoudou}{#1}}
\renewcommand{\date}[1]{\newcommand{\kisoji@date}{#1}}
\newcommand{\situon}[1]{\newcommand{\kisoji@situon}{#1}}
\newcommand{\situdo}[1]{\newcommand{\kisoji@situdo}{#1}}
\newcommand{\tenkou}[1]{\newcommand{\kisoji@tenkou}{#1}}

% 表紙
\renewcommand{\maketitle}{
    \ifundef{\kisoji@reporttype}{
        \ClassError{kisoji}{タイトルページを生成するにはondemandまたはtaimenオプションを指定してください}{}
    }{
        \ifdefstring{\kisoji@reporttype}{taimen}{
            % 対面実験用の報告書表紙
            \ifundef{\kisoji@kamoku}{\ClassError{kisoji}{kamokuコマンドで実験科目名を指定してください}{}\providecommand{\kisoji@error}{}}{}
            \ifundef{\kisoji@koumoku}{\ClassError{kisoji}{koumokuコマンドで実験項目名を指定してください}{}\providecommand{\kisoji@error}{}}{}
            \ifundef{\kisoji@keisiki}{\ClassError{kisoji}{keisikiコマンドで報告形式を指定してください}{}\providecommand{\kisoji@error}{}}{}
            \ifundef{\kisoji@group}{\ClassError{kisoji}{groupコマンドでグループ番号を指定してください}{}\providecommand{\kisoji@error}{}}{}
            \ifundef{\kisoji@han}{\ClassError{kisoji}{hanコマンドで班番号を指定してください}{}\providecommand{\kisoji@error}{}}{}
            \ifundef{\kisoji@gakuseki}{\ClassError{kisoji}{gakusekiコマンドで学籍番号を指定してください}{}\providecommand{\kisoji@error}{}}{}
            \ifundef{\kisoji@author}{\ClassError{kisoji}{authorコマンドで氏名を指定してください}{}\providecommand{\kisoji@error}{}}{}
            \ifundef{\kisoji@kyoudou}{\ClassError{kisoji}{kyoudouコマンドで共同実験者氏名を指定してください}{}\providecommand{\kisoji@error}{}}{}
            \ifundef{\kisoji@date}{\ClassError{kisoji}{dateコマンドで実験日を指定してください}{}\providecommand{\kisoji@error}{}}{}
            \ifundef{\kisoji@situon}{\ClassError{kisoji}{situonコマンドで室温を指定してください}{}\providecommand{\kisoji@error}{}}{}
            \ifundef{\kisoji@situdo}{\ClassError{kisoji}{situdoコマンドで湿度を指定してください}{}\providecommand{\kisoji@error}{}}{}
            \ifundef{\kisoji@tenkou}{\ClassError{kisoji}{tenkouコマンドで天候を指定してください}{}\providecommand{\kisoji@error}{}}{}
            
            \ifundef{\kisoji@error}{
                \thispagestyle{empty}
                \begin{center}
                    理工学基礎実験報告書（対面実験用）
                \end{center}
                \vspace{11pt}
                \allowitemize
                \begin{itemize}
                    \item[$\blacksquare$\hspace{11pt}] 実験科目名：\kisoji@kamoku
                    \item[$\blacksquare$\hspace{11pt}] 実験項目名：\kisoji@koumoku
                    \item[$\blacksquare$\hspace{11pt}] 報告形式：\kisoji@keisiki
                    \item[$\blacksquare$\hspace{11pt}] グループ番号：\kisoji@group
                    \item[$\blacksquare$\hspace{11pt}] 班番号：\kisoji@han
                    \item[$\blacksquare$\hspace{11pt}] 学籍番号：\kisoji@gakuseki
                    \item[$\blacksquare$\hspace{11pt}] 氏名：\kisoji@author
                    \item[$\blacksquare$\hspace{11pt}] 共同実験者氏名：\kisoji@kyoudou
                    \item[$\blacksquare$\hspace{11pt}] 実験日：\kisoji@date
                    \item[$\blacksquare$\hspace{11pt}] 室温：\kisoji@situon
                    \item[$\blacksquare$\hspace{11pt}] 湿度：\kisoji@situdo
                    \item[$\blacksquare$\hspace{11pt}] 天候：\kisoji@tenkou
                \end{itemize}
                \disallowitemize
                \newpage
                \setcounter{page}{1}
            }{}
        }{
            % オンデマンド実験用の報告書表紙
            \ifundef{\kisoji@kamoku}{\ClassError{kisoji}{kamokuコマンドで実験科目名を指定してください}{}\providecommand{\kisoji@error}{}}{}
            \ifundef{\kisoji@koumoku}{\ClassError{kisoji}{koumokuコマンドで実験項目名を指定してください}{}\providecommand{\kisoji@error}{}}{}
            \ifundef{\kisoji@keisiki}{\ClassError{kisoji}{keisikiコマンドで報告形式を指定してください}{}\providecommand{\kisoji@error}{}}{}
            \ifundef{\kisoji@group}{\ClassError{kisoji}{groupコマンドでグループ番号を指定してください}{}\providecommand{\kisoji@error}{}}{}
            \ifundef{\kisoji@han}{\ClassError{kisoji}{hanコマンドで班番号を指定してください}{}\providecommand{\kisoji@error}{}}{}
            \ifundef{\kisoji@gakuseki}{\ClassError{kisoji}{gakusekiコマンドで学籍番号を指定してください}{}\providecommand{\kisoji@error}{}}{}
            \ifundef{\kisoji@author}{\ClassError{kisoji}{authorコマンドで氏名を指定してください}{}\providecommand{\kisoji@error}{}}{}
            \ifundef{\kisoji@date}{\ClassError{kisoji}{dateコマンドで実験日を指定してください}{}\providecommand{\kisoji@error}{}}{}
            
            \ifundef{\kisoji@error}{
                \thispagestyle{empty}
                \begin{center}
                    理工学基礎実験報告書（オンデマンド実験用）
                \end{center}
                \vspace{11pt}
                \allowitemize
                \begin{itemize}
                    \item[$\blacksquare$\hspace{11pt}] 実験科目名：\kisoji@kamoku
                    \item[$\blacksquare$\hspace{11pt}] 実験項目名：\kisoji@koumoku
                    \item[$\blacksquare$\hspace{11pt}] 報告形式：\kisoji@keisiki
                    \item[$\blacksquare$\hspace{11pt}] グループ番号：\kisoji@group
                    \item[$\blacksquare$\hspace{11pt}] 班番号：\kisoji@han
                    \item[$\blacksquare$\hspace{11pt}] 学籍番号：\kisoji@gakuseki
                    \item[$\blacksquare$\hspace{11pt}] 氏名：\kisoji@author
                    \item[$\blacksquare$\hspace{11pt}] 実験日：\kisoji@date
                \end{itemize}
                \disallowitemize
                \newpage
                \setcounter{page}{1}
            }{}
        }
    }
}

% 文献
\newenvironment{bunken}[1]{
    \begin{enumerate}[label={\arabic*) }]
        \item 早稲田大学，基幹理工学部・創造理工学部，理工学基礎実験室編，理工学基礎実験２Ａ，#1，2021．
}{
    \end{enumerate}
}

% ...ref
\newcommand{\figref}[1]{
    \figurename\ref{#1}
}
\newcommand{\tabref}[1]{
    \tablename\ref{#1}
}
\renewcommand{\eqref}[1]{
    式\ref{#1}
}

% itemizeを禁止する
\newcommand{\kisoji@itemizeallowed}{false}
\newcommand{\allowitemize}{
    \renewcommand{\kisoji@itemizeallowed}{true}
}
\newcommand{\disallowitemize}{
    \renewcommand{\kisoji@itemizeallowed}{false}
}
\AtBeginEnvironment{itemize}{
    \ifdefstring{\kisoji@itemizeallowed}{false}{
        \ClassError{kisoji}{番号付き箇条書きを使用する必要があります}
    }{}
}