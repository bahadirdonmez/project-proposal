%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Scientific Report and Thesis Template by Bahadir Dönmez
% Class Definitions File
% v3.0 (17/10/2022)
%
% Author:
% Bahadir Dönmez (bhdr.donmez@gmail.com) 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%---------------------------------------------------------------------------
% Identification
%---------------------------------------------------------------------------
% The class identifies itself and the LaTeX version needed
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesisbahadir}[2022/10/17 Scientific Report and Thesis Template by Bahadir Dönmez]

%---------------------------------------------------------------------------
% Preliminary declarations
%---------------------------------------------------------------------------
% This part handles the options passed to the class
\DeclareOption{twocolumn}{\OptionNotUsed} % twocolumn option should not be used. It will be ignored and have no effect.
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}} % All unknown options will be passed to the book document class.
\ProcessOptions\relax % Execute the code for each option
% Specify the book class as the document class and pass the following options:
%   - Set the font size for the document to 12 points.
%   - Pass onecolumn option to typeset in a single column layout
%   - Pass twoside option to typeset in a two-sided layout, with odd and even pages having different margins.
%   - Pass titlepage option to have a separate title page.
%   - Pass openright option to start chapters on a right-hand page.
%   - Pass final option to produce final form.
\LoadClass[12pt, onecolumn, twoside, titlepage, openright, final]{book}

%---------------------------------------------------------------------------
% Geometry
%---------------------------------------------------------------------------
% Page margins and indentations
\newlength{\generalpagemargin}
\setlength{\generalpagemargin}{3cm}
\newlength{\topbottompagemargin}
\setlength{\topbottompagemargin}{4cm}
\newlength{\paragraphmargin}
\setlength{\paragraphmargin}{1cm}
% Define stretching settings
\newcommand\figureboxstretchtopbottom{\vskip 0pt plus 0.1325\paragraphmargin}
%\RequirePackage[showframe]{geometry} % Required for adjusting page dimensions and margins
\RequirePackage{geometry} % Required for adjusting page dimensions and margins
\geometry{
    paper=a4paper, % Paper size, change to letterpaper for US letter size
    top=\topbottompagemargin, % Top margin
    bottom=\topbottompagemargin, % Bottom margin
    left=\generalpagemargin, % Left margin
    right=\generalpagemargin, % Right margin
    headheight=0.25\topbottompagemargin, % Header height
    headsep=0.25\topbottompagemargin, % Header separation
    footskip=0.5\topbottompagemargin, % Header separation
}

%---------------------------------------------------------------------------
% Graphics and Tables
%---------------------------------------------------------------------------
\RequirePackage{tikz}  % Required for creating graphic elements, also loads graphicx package
\usetikzlibrary{calc} % Required for coordinate calculation.
\RequirePackage{minted} % Required for presenting codes
\RequirePackage[many]{tcolorbox} % Required for making colored boxes
\tcbuselibrary{theorems,listings,skins,breakable,minted} % Required for presenting codes
\RequirePackage{xparse} % Required for presenting codes
\RequirePackage{accsupp} % Patch accsupp to avoid copying line numbers when copying from listing
\RequirePackage{fontawesome} % Required for fontawesome symbols
\RequirePackage{lettrine} % Required for producing a dropped capital <letter>
\RequirePackage{fancyhdr} % Required for fancy header and footer styling
\RequirePackage[explicit]{titlesec} % Required for custom section style
\RequirePackage{subcaption} % Required for subfigures
\RequirePackage{changepage} % Required for adjustwidth command to shift tables to right or left
\RequirePackage{float} % Required for float specifier H
\setlength\intextsep{-0.10\paragraphmargin+\paragraphmargin} % Control the additional space above and below the figure
\setlength\belowcaptionskip{-0.34\paragraphmargin} % Control the space below the caption
\captionsetup{skip=-0.025\paragraphmargin+0.5\paragraphmargin} % Control the space above the caption
\captionsetup[sub]{skip=-0.025\paragraphmargin+0.375\paragraphmargin} % Control the space above the subcaption
\AddToHook{cmd/caption/before}{\figureboxstretchtopbottom}
\AtBeginEnvironment{figure}{\figureboxstretchtopbottom}
\AtEndEnvironment{figure}{\figureboxstretchtopbottom}
\AtBeginEnvironment{table}{\vspace{0.075\paragraphmargin}\figureboxstretchtopbottom}
\AtEndEnvironment{table}{\figureboxstretchtopbottom}
\RequirePackage{tabularray} % Required for fancy good-looking tables
\UseTblrLibrary{booktabs} % Required for tabularray to load booktabs

%---------------------------------------------------------------------------
% Colors
%---------------------------------------------------------------------------
% Define custom colors
\definecolor{color1}{HTML}{061623} %RGB: 6, 22, 35
\definecolor{color2}{HTML}{0C2C46} %RGB: 12, 44, 70
\definecolor{color3}{HTML}{52B3F4} %RGB: 82, 179, 244
\definecolor{color4}{HTML}{C52E51} %RGB: 197, 46, 81
\definecolor{color5}{HTML}{248232} %RGB: 36, 130, 50
\definecolor{color6}{HTML}{ECF7FD} %RGB: 236, 247, 253
\definecolor{color7}{HTML}{F9FBFE} %RGB: 249, 251, 254

%---------------------------------------------------------------------------
% Math
%---------------------------------------------------------------------------
\RequirePackage{amssymb} % Required for math symbols
\RequirePackage{amsmath}  % Required for rescaling math symbols
\RequirePackage{siunitx} % Use SI units
\RequirePackage{tabularx} % Required for displaying equation parameters with parameters environment

%---------------------------------------------------------------------------
% TOC and Minitoc
%---------------------------------------------------------------------------
\RequirePackage{titletoc} % Required for alternative headings for table of content
\RequirePackage{minitoc} % Required for mini table of contents
\nomtcrule % No horizontal rule
\tightmtctrue % More tight space between lines

%---------------------------------------------------------------------------
% Typography
%---------------------------------------------------------------------------
\RequirePackage[english]{babel} % Set language and load hyphenation patterns for American English
\RequirePackage{csquotes} % Recommended to load when using babel.
\RequirePackage[babel=true, final=true]{microtype} % Microtypographical enhancements which can prevent overfull boxes
\RequirePackage{indentfirst} % Indent first paragraph after section header
\RequirePackage{textcomp} % Offers copyright symbols to use with image courtesy
\RequirePackage{enumitem} % Control the layout of list environments: enumerate and itemize
\RequirePackage{afterpage} % Provides the \afterpage command to execute a code after the current page 
% Custom Fonts
\RequirePackage{fontspec}
\setmainfont{SF-Pro-Text}[
    Path = ./Fonts/,
    Extension = .otf,
    FontFace={xxl}{n}{*-UltraLight},
    FontFace={xxl}{it}{*-UltraLightItalic},
    FontFace={xl}{n}{*-Thin},
    FontFace={xl}{it}{*-ThinItalic},
    FontFace={l}{n}{*-Light},
    FontFace={l}{it}{*-LightItalic},
    UprightFont = *-Regular,
    ItalicFont = *-RegularItalic,
    FontFace={m}{n}{*-Medium},
    FontFace={m}{it}{*-MediumItalic},
    FontFace={mb}{n}{*-Semibold},
    FontFace={mb}{it}{*-SemiboldItalic},
    BoldFont = *-Bold,
    BoldItalicFont = *-BoldItalic,
    FontFace={xk}{n}{*-Heavy},
    FontFace={xk}{it}{*-HeavyItalic},
    FontFace={xxk}{n}{*-Black},
    FontFace={xxk}{it}{*-BlackItalic}%
]
\setsansfont{SF-Pro-Display}[
    Path = ./Fonts/,
    Extension = .otf,
    FontFace={xxl}{n}{*-UltraLight},
    FontFace={xxl}{it}{*-UltraLightItalic},
    FontFace={xl}{n}{*-Thin},
    FontFace={xl}{it}{*-ThinItalic},
    FontFace={l}{n}{*-Light},
    FontFace={l}{it}{*-LightItalic},
    UprightFont = *-Regular,
    ItalicFont = *-RegularItalic,
    FontFace={m}{n}{*-Medium},
    FontFace={m}{it}{*-MediumItalic},
    FontFace={mb}{n}{*-Semibold},
    FontFace={mb}{it}{*-SemiboldItalic},
    BoldFont = *-Bold,
    BoldItalicFont = *-BoldItalic,
    FontFace={xk}{n}{*-Heavy},
    FontFace={xk}{it}{*-HeavyItalic},
    FontFace={xxk}{n}{*-Black},
    FontFace={xxk}{it}{*-BlackItalic}%
]

%---------------------------------------------------------------------------
% Common Font Styles
%---------------------------------------------------------------------------
%-----------------------------------------------------------------------
% Page Title
%-----------------------------------------------------------------------
\newlength{\pagetitlefontsize}
\setlength{\pagetitlefontsize}{24.00pt}
\newlength{\pagetitlelineheight}
\setlength{\pagetitlelineheight}{1.1\pagetitlefontsize}
\newcommand\pagetitlefont{%
    \fontsize{\pagetitlefontsize}{\pagetitlelineheight}\fontseries{b}\sffamily\selectfont\raggedright%
}
\newlength{\pagetitlelinewidth}
\setlength{\pagetitlelinewidth}{3.00pt}
%-----------------------------------------------------------------------
% Section Title
%-----------------------------------------------------------------------
\newlength{\sectiontitlefontsize}
\setlength{\sectiontitlefontsize}{18.00pt}
\newlength{\sectiontitlelineheight}
\setlength{\sectiontitlelineheight}{1.125\sectiontitlefontsize}
\newcommand\sectiontitlefont{%
    \fontsize{\sectiontitlefontsize}{\sectiontitlelineheight}\fontseries{b}\sffamily\selectfont\raggedright%
}
\newlength{\sectiontitlelinewidth}
\setlength{\sectiontitlelinewidth}{2.25pt}
%-----------------------------------------------------------------------
% Subsection Title
%-----------------------------------------------------------------------
\newlength{\subsectiontitlefontsize}
\setlength{\subsectiontitlefontsize}{14.50pt}
\newlength{\subsectiontitlelineheight}
\setlength{\subsectiontitlelineheight}{1.16667\subsectiontitlefontsize}
\newcommand\subsectiontitlefont{%
    \fontsize{\subsectiontitlefontsize}{\subsectiontitlelineheight}\fontseries{b}\sffamily\selectfont\raggedright%
}
%-----------------------------------------------------------------------
% Subsubsection Title
%-----------------------------------------------------------------------
\newlength{\subsubsectiontitlefontsize}
\setlength{\subsubsectiontitlefontsize}{13.50pt}
\newlength{\subsubsectiontitlelineheight}
\setlength{\subsubsectiontitlelineheight}{1.16667\subsubsectiontitlefontsize}
\newcommand\subsubsectiontitlefont{%
    \fontsize{\subsubsectiontitlefontsize}{\subsubsectiontitlelineheight}\fontseries{b}\sffamily\selectfont\raggedright%
}
%-----------------------------------------------------------------------
% Main Text
%-----------------------------------------------------------------------
\newlength{\maintextfontsize}
\setlength{\maintextfontsize}{12.00pt}
\newlength{\maintextlineheight}
\setlength{\maintextlineheight}{1.47059\maintextfontsize}
\setlength\parindent{\paragraphmargin} 	% Set paragraph indentation length
\newcommand\maintextfont{%
    \fontsize{\maintextfontsize}{\maintextlineheight}\fontseries{r}\rmfamily\selectfont%
}
%-----------------------------------------------------------------------
% Footer and Caption Text
%-----------------------------------------------------------------------
\newlength{\footertextfontsize}
\setlength{\footertextfontsize}{10.50pt}
\newlength{\footertextlineheight}
\setlength{\footertextlineheight}{1.2\footertextfontsize}
\newcommand\footertextfont{%
    \fontsize{\footertextfontsize}{\footertextlineheight}\fontseries{r}\rmfamily\selectfont%
}
\DeclareCaptionFont{captionfont}{\footertextfont}
\captionsetup{font=captionfont, labelfont=bf}
\captionsetup[sub]{font=captionfont, labelfont=bf}
%-----------------------------------------------------------------------
% Table Text
%-----------------------------------------------------------------------
\newcommand\tableheaderfont{%
    \fontsize{\maintextfontsize}{\maintextlineheight}\rmfamily\selectfont%
}
%-----------------------------------------------------------------------
% Back Page Abstract Text
%-----------------------------------------------------------------------
\newlength{\backpageabstracttextfontsize}
\setlength{\backpageabstracttextfontsize}{11pt}
\newlength{\backpageabstracttextlineheight}
\setlength{\backpageabstracttextlineheight}{1.47059\backpageabstracttextfontsize}
\newcommand\backpageabstracttextfont{%
    \fontsize{\backpageabstracttextfontsize}{\backpageabstracttextlineheight}\fontseries{r}\rmfamily\selectfont%
}

%---------------------------------------------------------------------------
% Miscellaneous Packages
%---------------------------------------------------------------------------
\RequirePackage{comment} % Required for using \includecomment to selectively include/exclude portions of text
\RequirePackage{listofitems} % Required for splitting string into list of items
\RequirePackage{amsthm} % Styling of environments
\RequirePackage{mdframed} % Styling of environments
\RequirePackage{environ} % Required for creating new environments with  \NewEnviron command
\RequirePackage{silence} % Required to silence certain warnings

%---------------------------------------------------------------------------
% Links, Bibliography and Index
%---------------------------------------------------------------------------
\RequirePackage[style=nature,citestyle=numeric,sorting=none,sortcites=true,url=true,isbn=false,autopunct=true,hyperref=true,defernumbers=true,abbreviate=false,backend=biber]{biblatex}
\addbibresource{thesisbahadir.bib} % BibTeX bibliography file
\defbibheading{bibempty}{}
\DeclareFieldFormat{labelnumberwidth}{\mkbibbrackets{#1}}
\RequirePackage{makeidx} % Required to make an index
\makeindex % Tells LaTeX to create the files required for indexing
% Load this package as last package
\RequirePackage{hyperref} % Required for handling cross-referencing commands to produce hypertext links in the document.
\hypersetup{%
    pdfstartview={FitV},    % fits the width of the page to the window
    pdftitle={Towards a Distributed Low-Noise Signal Generation System for Quantum Gas Experiments: A Scalable FPGA-Based Design}, % Thesis title
    pdfauthor={Bahad{\i}r Dönmez}, % Author name
    colorlinks = true, % 
    allcolors = .,%
}%
\RequirePackage{xurl} % Hyphen URLs containing very long words

%---------------------------------------------------------------------------
% Custom Commands
%---------------------------------------------------------------------------
%-----------------------------------------------------------------------
% Select Quality of Images
%-----------------------------------------------------------------------
% Choose "Print Ready" or "Web Optimized"
\newcommand{\pdfquality}{"Print Ready"}
%-----------------------------------------------------------------------
% Silence Certain Warnings
%-----------------------------------------------------------------------
%\WarningFilter*{latex}{Reference `ch}
%\WarningFilter*{latex}{Reference `eq}
%\WarningFilter*{latex}{Reference `subsec}
%\WarningFilter*{latex}{There were undefined references}

%-----------------------------------------------------------------------
% Custom Clear Page Commands
%-----------------------------------------------------------------------
% Empty page after front cover
\providecommand\cleartooddpage{}
\renewcommand{\cleartooddpage}{%
    \clearpage\ifodd\c@page\else
        \hbox{}
        \vspace*{\fill}
        \pagecolor{color7}
        \thispagestyle{empty}
        \newpage
    \fi}
% Empty page before back cover
\providecommand\cleartoevenpage{}
\renewcommand{\cleartoevenpage}{%
    \clearpage\ifodd\c@page
        \hbox{}
        \vspace*{\fill}
        \pagecolor{color7}
        \thispagestyle{empty}
        \newpage
    \else
    \fi}
% Remove the header from even empty pages at the end of chapters
\renewcommand{\cleardoublepage}{%
    \clearpage\ifodd\c@page\thispagestyle{plain}\else
        \hbox{}
        \vspace*{\fill}
        \thispagestyle{plain}
        \newpage
    \fi}
%-----------------------------------------------------------------------
% Math Symbols
%-----------------------------------------------------------------------
% Scale math symbols
\newcommand{\RescaleSymbol}[2][.75]{\mathop{\vcenter{\hbox{\scalebox{#1}{$#2$}}}}}
% Bold arrows
\DeclareRobustCommand\BoldRightArrow{%
    \begin{tikzpicture} %
        \node[left, inner xsep=0pt] at (0, 0.375\pagetitlelinewidth) (A) {\hspace*{0.2\paragraphmargin}}; %
        \pgfkeysgetvalue{/pgf/inner xsep}{\myAxsep} %
        \node[right, inner xsep=0pt] at (0.6\paragraphmargin, 0.3755\pagetitlelinewidth) (B) {\hspace*{0.2\paragraphmargin}}; %
        \pgfkeysgetvalue{/pgf/inner xsep}{\myBxsep} %
        \draw [line width=0.75\pagetitlelinewidth, -latex] (A) -- (B); %
        \pgfresetboundingbox %
        \useasboundingbox ($(A.south west)+(\myAxsep,0)$) rectangle ($(B.north east)-(\myBxsep,0)$); %
    \end{tikzpicture} %
}
%-----------------------------------------------------------------------
% List Style
%-----------------------------------------------------------------------
% First level itemize
\setlist[itemize,1]{leftmargin=*,labelindent=1.128\paragraphmargin,labelsep=0.527\paragraphmargin}
% First level enumerate
\setlist[enumerate,1]{leftmargin=*,labelindent=1.258\paragraphmargin,labelsep=0.40\paragraphmargin}
% Custom bullet points
\renewcommand\labelitemi{%
    \begin{tikzpicture}%
        \node[left, inner xsep=0pt] at (0, 0.5\pagetitlelinewidth) (A) {\hspace*{0pt}};%
        \pgfkeysgetvalue{/pgf/inner xsep}{\myAxsep}%
        \node[right, inner xsep=0pt] at (0.56\paragraphmargin, 0.5\pagetitlelinewidth) (B) {\hspace*{0pt}};%
        \pgfkeysgetvalue{/pgf/inner xsep}{\myBxsep}%
        \draw [line width=\pagetitlelinewidth] (A)--(B);%
        \pgfresetboundingbox%
        \useasboundingbox ($(A.south west)+(\myAxsep,0)$) rectangle ($(B.north east)-(\myBxsep,0)$);%
    \end{tikzpicture}%
}
% Patch accsupp to avoid copying line numbers when copying from listing in code snippets
\newcommand\emptyaccsupp[1]{\BeginAccSupp{ActualText={}}#1\EndAccSupp{}}
\let\theHFancyVerbLine\theFancyVerbLine
\def\theFancyVerbLine{\rmfamily\tiny\emptyaccsupp{\arabic{FancyVerbLine}}}
%-----------------------------------------------------------------------
% Table Style
%-----------------------------------------------------------------------
\NewTableCommand{\middleHeader}{
    \SetCell[c=\arabic{colcount}]{c, fg=color1, bg=color2!10}
}
\NewTableCommand{\middleHeaderHlineTop}{
    \ifodd\value{rownum}{}\else{\hline[wd=\sectiontitlelinewidth, fg=color7]}\fi
}
\NewTableCommand{\middleHeaderHlineBottom}{
    \ifodd\value{rownum}{\hline[wd=\sectiontitlelinewidth, fg=color7]}\else{}\fi
}
\NewTableCommand{\dummyRow}{
    \SetRow{ht=0pt, rowsep=0pt}
}
\NewTblrEnviron{customtblr}
\SetTblrInner[customtblr]{
    hborder{1-Z} = {abovespace=0pt, belowspace=0pt},
    vborder{1-Z} = {leftspace=0pt, rightspace=0pt},
    stretch = 0,
    hspan = even,
    vspan = even,
    vline{1-Z} = {wd=0cm},
    vline{2-Y} = {wd=\sectiontitlelinewidth, fg=color7},
    rows = {
            ht=0pt, fg=color1, font=\maintextfont, valign=m, abovesep=0.3075\paragraphmargin+0.04\maintextlineheight, belowsep=0.3075\paragraphmargin-0.04\maintextlineheight
        },
    row{odd} = {bg=color3!10},
    row{even} = {bg=color7},
    row{1} = {valign=m, bg=color2, fg=color7, font=\tableheaderfont},
    columns = {halign=c, leftsep=0.5\paragraphmargin, rightsep=0.5\paragraphmargin},
    column{1} = {halign=l},
}
\newenvironment{continuedtable}{%
    \addtocounter{table}{-1}%
    \renewcommand{\thetable}{\arabic{chapter}.\arabic{table} (Continued)}%
    \vspace*{-1.30\paragraphmargin+\paragraphmargin}
}{%
    \renewcommand{\thetable}{\arabic{chapter}.\arabic{table}}%
}%
%-----------------------------------------------------------------------
% Figure Style
%-----------------------------------------------------------------------
% Vertical space after subcaption
\newcommand{\subfigcaption}[1]{\caption{#1}\vspace{-\belowcaptionskip}}

%---------------------------------------------------------------------------
% Front Cover and Title Page
%---------------------------------------------------------------------------
\makeatletter
\newcommand{\thesiscoverandtitle}[8]{%
    \pagestyle{empty}
    \def\@thesistype{#1}
    \def\@thesistitle{#2}
    \def\@thesisauthor{#3}
    \def\@thesissupervisors{#4}
    \def\@thesisprincipleinvestigator{#5}
    \def\@thesislab{#6}
    \def\@thesisdate{#7}
    \def\@thesisdegreetext{#8}
    %-----------------------------------------------------------------------
    % Set the fonts
    %-----------------------------------------------------------------------
    % Thesis Title and Subtitle Font
    % Divide Title and Subtitle into List of Items
    \setsepchar{:}
    \readlist*\thesistitleandsubtitle{\@thesistitle}
    % Title Font
    \newlength{\thesistitlefontsize}
    \setlength{\thesistitlefontsize}{33.85pt}
    \newlength{\thesistitlelineheight}
    \setlength{\thesistitlelineheight}{1.08349\thesistitlefontsize}
    \newcommand\thesistitlefont{%
        \fontsize{\thesistitlefontsize}{\thesistitlelineheight}\fontseries{xk}\sffamily\selectfont\raggedright%
    }
    \newlength{\thesistitleheight}
    \settototalheight{\thesistitleheight}{\vbox{\thesistitlefont{\thesistitleandsubtitle[1]}}}
    \setlength{\thesistitleheight}{\thesistitleheight+2\thesistitlelineheight-2\thesistitlefontsize}
    % Subtitle Font
    \newlength{\thesissubtitlefontsize}
    \setlength{\thesissubtitlefontsize}{19.75pt}
    \newlength{\thesissubtitlelineheight}
    \setlength{\thesissubtitlelineheight}{1.47059\thesissubtitlefontsize}
    \newcommand\thesissubtitlefont{%
        \fontsize{\thesissubtitlefontsize}{\thesissubtitlelineheight}\fontseries{l}\sffamily\selectfont\raggedright%
    }
    \newlength{\thesissubtitleheight}
    \settototalheight{\thesissubtitleheight}{\vbox{\thesissubtitlefont{\thesistitleandsubtitle[2]}}}
    \setlength{\thesissubtitleheight}{\thesissubtitleheight+2\thesissubtitlelineheight-2\thesissubtitlefontsize}
    % Author Name Font
    \newlength{\authornamefontsize}
    \setlength{\authornamefontsize}{24.00pt}
    \newlength{\authornamelineheight}
    \setlength{\authornamelineheight}{1.0\authornamefontsize}
    \newcommand\authornamefont{%
        \fontsize{\authornamefontsize}{\authornamelineheight}\fontseries{b}\sffamily\selectfont\raggedright%
    }
    \newlength{\authornameheight}
    \settototalheight{\authornameheight}{\vbox{\authornamefont{\@thesisauthor}}}
    \setlength{\authornameheight}{\authornameheight+2\authornamelineheight-2\authornamefontsize}
    \newlength{\authornamelength}
    \settowidth{\authornamelength}{\authornamefont{\@thesisauthor}}
    % Thesis Type
    \newlength{\thesistypefontsize}
    \setlength{\thesistypefontsize}{14.10pt}
    \newlength{\thesistypelineheight}
    \setlength{\thesistypelineheight}{1.47059\thesistypefontsize}
    \newcommand\thesistypefont{%
        \fontsize{\thesistypefontsize}{\thesistypelineheight}\fontseries{b}\sffamily\selectfont\raggedright%
    }
    \newlength{\thesistypeheight}
    \settototalheight{\thesistypeheight}{\vbox{\thesistypefont{\@thesistype}}}
    \setlength{\thesistypeheight}{\thesistypeheight+\thesistypelineheight-\thesistypefontsize}
    \newlength{\thesistypelength}
    \settowidth{\thesistypelength}{\thesistypefont{\@thesistype}}
    % Supervisors and Principal Investigator Title Font
    \newlength{\supervisorstitlefontsize}
    \setlength{\supervisorstitlefontsize}{11.50pt}
    \newlength{\supervisorstitlelineheight}
    \setlength{\supervisorstitlelineheight}{1.47059\supervisorstitlefontsize}
    \newcommand\supervisorstitlefont{%
        \fontsize{\supervisorstitlefontsize}{\supervisorstitlelineheight}\fontseries{b}\sffamily\selectfont\raggedright%
    }
    \newlength{\supervisorstitleheight}
    \settototalheight{\supervisorstitleheight}{\vbox{\supervisorstitlefont{Supervisors}}}
    \setlength{\supervisorstitleheight}{\supervisorstitleheight+2\supervisorstitlelineheight-2\supervisorstitlefontsize}
    % Supervisors and Principal Investigator Name Font
    % Divide Supervisor Names into List of Items
    \setsepchar{;}
    \readlist*\listofsupervisors{\@thesissupervisors}
    \newlength{\supervisorsnamefontsize}
    \setlength{\supervisorsnamefontsize}{14.35pt}
    \newlength{\supervisorsnamelineheight}
    \setlength{\supervisorsnamelineheight}{1.16667\supervisorsnamefontsize}
    \newcommand\supervisorsnamefont{%
        \fontsize{\supervisorsnamefontsize}{\supervisorsnamelineheight}\fontseries{l}\sffamily\selectfont\raggedright%
    }
    \newlength{\supervisorsnameheight}
    \settototalheight{\supervisorsnameheight}{\vbox{\supervisorsnamefont{\@thesissupervisors}}}
    \setlength{\supervisorsnameheight}{\supervisorsnameheight+2\supervisorsnamelineheight-2\supervisorsnamefontsize}
    % Logo Image
    \newlength{\thesislogolength}
    \setlength{\thesislogolength}{0.295\paperwidth}
    \newlength{\thesislogoheight}
    \setlength{\thesislogoheight}{0.16212\thesislogolength}
    % Lab Name
    \newlength{\labnamefontsize}
    \setlength{\labnamefontsize}{11.50pt}
    \newlength{\labnamelineheight}
    \setlength{\labnamelineheight}{1.47059\labnamefontsize}
    \newcommand\labnamefont{%
        \fontsize{\labnamefontsize}{\labnamelineheight}\fontseries{xk}\sffamily\selectfont\raggedleft%
    }
    \newlength{\labnameheight}
    \settototalheight{\labnameheight}{\vbox{\labnamefont{\@thesislab}}}
    \setlength{\labnameheight}{\labnameheight+0.75\labnamelineheight-0.75\labnamefontsize}
    \newlength{\labnamelength}
    \settowidth{\labnamelength}{\labnamefont{\@thesislab}}
    % Thesis Date of Submission
    \newlength{\thesisdatefontsize}
    \setlength{\thesisdatefontsize}{11.50pt}
    \newlength{\thesisdatelineheight}
    \setlength{\thesisdatelineheight}{1.47059\thesisdatefontsize}
    \newcommand\thesisdatefont{%
        \fontsize{\thesisdatefontsize}{\thesisdatelineheight}\fontseries{l}\sffamily\selectfont\raggedleft%
    }
    \newlength{\thesisdateheight}
    \settototalheight{\thesisdateheight}{\vbox{\thesisdatefont{\@thesisdate}}}
    \setlength{\thesisdateheight}{\thesisdateheight+0.75\thesisdatelineheight-0.75\thesisdatefontsize}
    \newlength{\thesisdatelength}
    \settowidth{\thesisdatelength}{\thesisdatefont{\@thesisdate}}
    % Degree fulfilment text font
    \newlength{\thesisdegreetextfontsize}
    \setlength{\thesisdegreetextfontsize}{14.10pt}
    \newlength{\thesisdegreetextlineheight}
    \setlength{\thesisdegreetextlineheight}{1.47059\thesisdegreetextfontsize}
    \newcommand\thesisdegreetextfont{%
        \fontsize{\thesisdegreetextfontsize}{\thesisdegreetextlineheight}\fontseries{l}\sffamily\selectfont\raggedright%
    }
    \newlength{\thesisdegreetextheight}
    \settototalheight{\thesisdegreetextheight}{\vbox{\thesisdegreetextfont{\@thesisdegreetext}}}
    \setlength{\thesisdegreetextheight}{\thesisdegreetextheight+2\thesisdegreetextlineheight-2\thesisdegreetextfontsize}
    % Presented by text font
    \newcommand\presentedbyfont{%
        \fontsize{\thesisdegreetextfontsize}{\thesisdegreetextlineheight}\fontseries{l}\sffamily\selectfont\raggedright%
    }
    \newlength{\presentedbyheight}
    \settototalheight{\presentedbyheight}{\vbox{\presentedbyfont{presented by}}}
    \setlength{\presentedbyheight}{\presentedbyheight+2\thesisdegreetextlineheight-2\thesisdegreetextfontsize}
    %-----------------------------------------------------------------------
    % Front book cover page
    %-----------------------------------------------------------------------
    % Place background color
    \pagecolor{color2}
    % Place texts, logo and shapes
    \begin{tikzpicture}[remember picture,overlay]
        \node at (current page.north west) {%
            \begin{tikzpicture}[remember picture,overlay]
                % Thesis Title
                \draw (0.5\paperwidth, -\generalpagemargin-0.5\thesistitleheight) node {%
                    \parbox[c][\thesistitleheight][c]{\paperwidth-2\generalpagemargin} {%
                        \thesistitlefont{\color{color7}\thesistitleandsubtitle[1]}%
                    }%
                };%
                % Thesis Subtitle
                \draw (0.5\paperwidth,-\generalpagemargin-\thesistitleheight-0.5\thesissubtitleheight) node {%
                    \parbox[c][\thesissubtitleheight][c]{\paperwidth-2\generalpagemargin} {%
                        \thesissubtitlefont{\color{color7}\thesistitleandsubtitle[2]}%
                    }%
                };%
                % Author Name
                \draw (\generalpagemargin + 0.5\authornamelength,-\generalpagemargin-\thesistitleheight-\thesissubtitleheight-\authornameheight) node {%
                    \parbox[c][\authornameheight][c]{\authornamelength} {%
                        \authornamefont{\color{color3}\@thesisauthor}%
                    }%
                };%
                % Semester, Master's or PhD Thesis?
                \draw (0.5\paperwidth+0.5\generalpagemargin+0.5\authornamelength+\thesistypelineheight/2-\thesistypefontsize/2,-\generalpagemargin-\thesistitleheight-\thesissubtitleheight-1.6\authornameheight+0.5\thesistypeheight) node
                [fill=color3, fill opacity=1, inner sep=0cm] {%
                    \parbox[c][\thesistypeheight][c]{\paperwidth-\generalpagemargin-\authornamelength-\thesistypelineheight+\thesistypefontsize} {%
                        \thesistypefont{\hspace{\thesistypelineheight/2-\thesistypefontsize/2}\color{color7}\@thesistype}%
                    }%
                };%
                % Supervisors
                \draw (0.5\paperwidth,-\generalpagemargin-\thesistitleheight-\thesissubtitleheight-3\authornameheight) node {%
                    \parbox[c][\supervisorstitleheight][c]{\paperwidth-2\generalpagemargin} {%
                        \supervisorstitlefont{\color{color7}Supervisors}%
                    }%
                };%
                \draw (0.5\paperwidth,-\generalpagemargin-\thesistitleheight-\thesissubtitleheight-3\authornameheight-0.5\supervisorstitleheight-0.5\supervisorsnameheight) node {%
                    \parbox[c][\supervisorsnameheight][c]{\paperwidth-2\generalpagemargin} {%
                        \supervisorsnamefont{\foreachitem\x\in\listofsupervisors[]{\ifnum\xcnt=1\else\ \;$\RescaleSymbol[0.50]{\color{color3}\blacksquare}$\; \fi\color{color7}\x}}%
                    }%
                };%
                % Principal Investigator
                \draw (0.5\paperwidth,-\generalpagemargin-\thesistitleheight-\thesissubtitleheight-3\authornameheight-1.5\supervisorstitleheight-\supervisorsnameheight) node {%
                    \parbox[c][\supervisorstitleheight][c]{\paperwidth-2\generalpagemargin} {%
                        \supervisorstitlefont{\color{color7}Principal Investigator}%
                    }%
                };%
                \draw (0.5\paperwidth,-\generalpagemargin-\thesistitleheight-\thesissubtitleheight-3\authornameheight-2\supervisorstitleheight-1.5\supervisorsnameheight) node {%
                    \parbox[c][\supervisorsnameheight][c]{\paperwidth-2\generalpagemargin} {%
                        \supervisorsnamefont{\color{color7}\@thesisprincipleinvestigator}%
                    }%
                };%
                % Place Cover Figure
                \draw (0.5\paperwidth,-19.75cm) node {%
                    \expandafter\ifstrequal\expandafter{\pdfquality}{"Print Ready"}{%
                        \includegraphics[width=\paperwidth-2\generalpagemargin]{Chapter00/Figures/cover_figure_print_ready.pdf}%
                    }{%
                        \includegraphics[width=\paperwidth-2\generalpagemargin]{Chapter00/Figures/cover_figure_web_optimized.pdf}%
                    }%
                };%
                % Logo image
                \draw (\generalpagemargin+\thesislogolength/2,-\paperheight+\thesislogoheight/2+\generalpagemargin) node  {%
                    \expandafter\ifstrequal\expandafter{\pdfquality}{"Print Ready"}{%
                        \includegraphics[width=\thesislogolength]{Chapter00/Figures/eth_logo_kurz_neg_print_ready.pdf}
                    }{%
                        \includegraphics[width=\thesislogolength]{Chapter00/Figures/eth_logo_kurz_neg_web_optimized.pdf}%
                    }%
                };%
                % Thesis Lab and Date
                \draw (\paperwidth-\generalpagemargin-\labnamelength/2,-\paperheight+\generalpagemargin+\thesislogoheight-\labnameheight/2) node {%
                    \parbox[c][\labnameheight][c]{\labnamelength} {%
                        \labnamefont{\color{color7}\@thesislab}%
                    }%
                };%
                \draw (\paperwidth-\generalpagemargin-\thesisdatelength/2,-\paperheight+\generalpagemargin+\thesisdateheight/2) node {%
                    \parbox[c][\thesisdateheight][c]{\thesisdatelength} {%
                        \thesisdatefont{\color{color7}\@thesisdate}%
                    }%
                };%
            \end{tikzpicture}%
        };%
    \end{tikzpicture}%
    % Empty page after front cover
    \cleartooddpage
    %-----------------------------------------------------------------------
    % Title page
    %-----------------------------------------------------------------------
    % Place texts, logo and shapes
    \begin{tikzpicture}[remember picture,overlay]%
        \node at (current page.north west) {%
            \begin{tikzpicture}[remember picture,overlay]%
                % Thesis Title
                \draw (0.5\paperwidth, -\generalpagemargin-0.5\thesistitleheight) node {%
                    \parbox[c][\thesistitleheight][c]{\paperwidth-2\generalpagemargin} {%
                        \thesistitlefont{\color{color2}\thesistitleandsubtitle[1]}%
                    }%
                };%
                % Thesis Subtitle
                \draw (0.5\paperwidth,-\generalpagemargin-\thesistitleheight-0.5\thesissubtitleheight) node {%
                    \parbox[c][\thesissubtitleheight][c]{\paperwidth-2\generalpagemargin} {%
                        \thesissubtitlefont{\color{color2}\thesistitleandsubtitle[2]}%
                    }%
                };%
                % Semester, Master's or PhD Thesis?
                \draw (0.5\paperwidth,-\generalpagemargin-\thesistitleheight-\thesissubtitleheight-1.5\authornameheight+0.5\thesistypeheight) node {%
                    \parbox[c][\thesistypeheight][c]{\paperwidth-2\generalpagemargin} {%
                        \thesistypefont{\color{color2}\@thesistype}%
                    }%
                };%
                % Degree fulfilment text
                \draw (0.5\paperwidth,-\generalpagemargin-\thesistitleheight-\thesissubtitleheight-1.5\authornameheight-0.5\thesisdegreetextheight) node {%
                    \parbox[c][\thesisdegreetextheight][c]{\paperwidth-2\generalpagemargin} {%
                        \thesisdegreetextfont{\color{color2}\@thesisdegreetext}%
                    }%
                };%
                % Presented by
                \draw (0.5\paperwidth,-\generalpagemargin-\thesistitleheight-\thesissubtitleheight-3\authornameheight-\thesisdegreetextheight) node {%
                    \parbox[c][\presentedbyheight][c]{\paperwidth-2\generalpagemargin} {%
                        \presentedbyfont{\color{color2}presented by}%
                    }%
                };%
                % Author Name
                \draw (0.5\paperwidth,-\generalpagemargin-\thesistitleheight-\thesissubtitleheight-3.5\authornameheight-\thesisdegreetextheight-0.5\presentedbyheight) node {%
                    \parbox[c][\authornameheight][c]{\paperwidth-2\generalpagemargin} {%
                        \authornamefont{\color{color2}\@thesisauthor}%
                    }%
                };%
                % Supervisors
                \draw (0.5\paperwidth,-\generalpagemargin-\thesistitleheight-\thesissubtitleheight-5.5\authornameheight-\thesisdegreetextheight-0.5\presentedbyheight) node {%
                    \parbox[c][\supervisorstitleheight][c]{\paperwidth-2\generalpagemargin} {%
                        \supervisorstitlefont{\color{color2}Supervisors}%
                    }%
                };%
                \draw (0.5\paperwidth,-\generalpagemargin-\thesistitleheight-\thesissubtitleheight-5.5\authornameheight-\thesisdegreetextheight-0.5\presentedbyheight-0.5\supervisorstitleheight-0.5\supervisorsnameheight) node {%
                    \parbox[c][\supervisorsnameheight][c]{\paperwidth-2\generalpagemargin} {%
                        \supervisorsnamefont{\foreachitem\x\in\listofsupervisors[]{\ifnum\xcnt=1\else\ \;$\RescaleSymbol[0.50]{\color{color2}\blacksquare}$\; \fi\color{color1}\x}}%
                    }%
                };%
                % Principal Investigator
                \draw (0.5\paperwidth,-\generalpagemargin-\thesistitleheight-\thesissubtitleheight-5.5\authornameheight-\thesisdegreetextheight-0.5\presentedbyheight-1.5\supervisorstitleheight-\supervisorsnameheight) node {%
                    \parbox[c][\supervisorstitleheight][c]{\paperwidth-2\generalpagemargin} {%
                        \supervisorstitlefont{\color{color2}Principal Investigator}%
                    }%
                };%
                \draw (0.5\paperwidth,-\generalpagemargin-\thesistitleheight-\thesissubtitleheight-5.5\authornameheight-\thesisdegreetextheight-0.5\presentedbyheight-2\supervisorstitleheight-1.5\supervisorsnameheight) node {%
                    \parbox[c][\supervisorsnameheight][c]{\paperwidth-2\generalpagemargin} {%
                        \supervisorsnamefont{\color{color2}\@thesisprincipleinvestigator}%
                    }%
                };%
                % Logo image
                \draw (\generalpagemargin+\thesislogolength/2,-\paperheight+\thesislogoheight/2+\generalpagemargin) node {%
                    \expandafter\ifstrequal\expandafter{\pdfquality}{"Print Ready"}{%
                        \includegraphics[width=\thesislogolength]{Chapter00/Figures/eth_logo_kurz_pos_print_ready.pdf}%
                    }{%
                        \includegraphics[width=\thesislogolength]{Chapter00/Figures/eth_logo_kurz_pos_web_optimized.pdf}%
                    }%
                };%
                % Thesis Lab and Date
                \draw (\paperwidth-\generalpagemargin-\labnamelength/2,-\paperheight+\generalpagemargin+\thesislogoheight-\labnameheight/2) node {%
                    \parbox[c][\labnameheight][c]{\labnamelength} {%
                        \labnamefont{\color{color2}\@thesislab}%
                    }%
                };%
                \draw (\paperwidth-\generalpagemargin-\thesisdatelength/2,-\paperheight+\generalpagemargin+\thesisdateheight/2) node {%
                    \parbox[c][\thesisdateheight][c]{\thesisdatelength} {%
                        \thesisdatefont{\color{color2}\@thesisdate}%
                    }%
                };%
            \end{tikzpicture}%
        };%
    \end{tikzpicture}%
    % Empty page after title page
    \cleartooddpage
}%
\makeatother

%---------------------------------------------------------------------------
% Abstract
%---------------------------------------------------------------------------
\makeatletter
% Define necessary lengths
\newlength{\abstracttitleheight}
\newlength{\abstracttextheight}
\newcommand{\thesisabstract}[3]{%
    \expandafter\ifstrequal\expandafter{#1}{Abstract}{
        % Copy the current definition of \thispagestyle to \defthispagestyle
        \let\defthispagestyle\thispagestyle
        % Make sure the abstract starts on an odd (right side) page
        \cleartooddpage
        % Remove headers and footers
        \pagestyle{empty}
        % Redefine \thispagestyle to do nothing. 
        % This will remove the page number from the abstract page.
        \renewcommand{\thispagestyle}[1]{}
    }{
        % Make sure the acknowledgments start on an odd (right side) page
        \cleardoublepage
    }
    \def\@abstracttitle{#1}
    \def\@abstractlettrine{\lettrine[findent=0pt,lines=3,nindent=0.5em]{\color{color2}\fbox{\fontseries{b}\sffamily{#2}}}{}}
    \def\@abstracttext{#3}
    % Abstract Title
    \settototalheight{\abstracttitleheight}{\vbox{\pagetitlefont{\@abstracttitle}}}
    \setlength{\abstracttitleheight}{\abstracttitleheight+2\pagetitlelineheight-2\pagetitlefontsize}
    % Abstract Text
    \settototalheight{\abstracttextheight}{\vbox{\maintextfont{\@abstractlettrine\hspace*{0.50em}\@abstracttext}}}
    \setlength{\abstracttextheight}{\abstracttextheight+2\maintextlineheight-2\maintextfontsize}
    % Place abstract title and text
    \begin{tikzpicture}[remember picture,overlay]%
        \node at (current page.north west) {%
            \begin{tikzpicture}[remember picture,overlay]%
                % Abstract title
                \draw (0.5\paperwidth,-0.5\paperheight+0.5\abstracttitleheight+0.5\abstracttextheight) node {%
                    \parbox[c][\abstracttitleheight][c]{\paperwidth-2\generalpagemargin} {%
                        \phantomsection % Phantom section for abstract hyperlink
                        \addcontentsline{toc}{chapter}{\@abstracttitle} % Add abstract to the table of contents
                        \pagetitlefont{\color{color2}\@abstracttitle}%
                    }%
                };%
                \draw[line width=\pagetitlelinewidth, color2, anchor=west,inner sep=0pt]%
                (\generalpagemargin,-0.5\paperheight+0.5\abstracttextheight-\pagetitlelinewidth) -- (\paperwidth-\generalpagemargin,-0.5\paperheight+0.5\abstracttextheight-\pagetitlelinewidth);%
                % Abstract text
                \draw (0.5\paperwidth,-0.5\paperheight-0.5\abstracttitleheight) node {%
                    \parbox[c][\abstracttextheight][c]{\paperwidth-2\generalpagemargin} {%
                        \maintextfont{\color{color1}\@abstractlettrine\hspace*{0.50em}\@abstracttext}%
                    }%
                };%
            \end{tikzpicture}%
        };%
    \end{tikzpicture}
    \expandafter\ifstrequal\expandafter{#1}{Abstract}{
        % Restore the original definition of \thispagestyle
        \let\thispagestyle\defthispagestyle
        % Make sure the next chapter starts on an odd (right-side) page
        \cleartooddpage
    }{
        % Make sure the next chapter starts on an odd (right-side) page
        \cleardoublepage
    }
    % Enable headers and footers
    \pagestyle{fancy}
}
\makeatother

%---------------------------------------------------------------------------
% Index
%---------------------------------------------------------------------------
\newcommand{\thesisindex}{%
    \setlength{\columnsep}{\paragraphmargin} % Space between the 2 columns of the index
    \pagestyle{plain}%
    \printindex % Output the index
}

%----------------------------------------------------------------------------------------
% Declaration of Originality
%----------------------------------------------------------------------------------------
\newcommand{\thesisoriginality}{%
    % Copy the current definition of \thispagestyle to \defthispagestyle
    \let\defthispagestyle\thispagestyle
    % Make sure the abstract starts on an odd (right side) page
    \cleardoublepage
    % Remove headers and footers
    \pagestyle{empty}
    % Redefine \thispagestyle to do nothing. 
    % This will remove the page number from the abstract page.
    \renewcommand{\thispagestyle}[1]{}
    \phantomsection
    \tikz[overlay,remember picture] \node at (current page.center) {\includegraphics[width=\paperwidth,page=1]{Chapter00/declaration-originality.pdf}};
    \addcontentsline{toc}{chapter}{\textcolor{color2}{Declaration of Originality}} % Add an Index heading to the table of contents
    % Restore the original definition of \thispagestyle
    \let\thispagestyle\defthispagestyle
    % Make sure the next chapter starts on an odd (right side) page
    \cleartooddpage
}

%---------------------------------------------------------------------------
% Back Cover
%---------------------------------------------------------------------------
\makeatletter
\newcommand{\backcover}[5]{%
    % Make sure the abstract starts on an odd (right side) page
    \cleartoevenpage
    % Place background color
    \pagecolor{color2}
    \def\@thesistype{#1}
    \def\@thesistitle{#2}
    \def\@thesisauthor{#3}
    \def\@abstractlettrine{\lettrine[findent=0pt,lines=3,nindent=0.50em]{\color{color7}\fbox{\fontseries{b}\sffamily{#4}}}{}}
    \def\@abstracttext{#5}
    % Abstract Text
    \settototalheight{\abstracttextheight}{\vbox{\backpageabstracttextfont{\@abstractlettrine\hspace*{0.50em}\@abstracttext}}}
    \setlength{\abstracttextheight}{\abstracttextheight}
    % Place texts, logo and shapes
    \begin{tikzpicture}[remember picture,overlay]
        \node at (current page.north west) {%
            \begin{tikzpicture}[remember picture,overlay]
                % Thesis Title
                \draw (0.5\paperwidth, -\generalpagemargin-0.5\thesistitleheight) node {%
                    \parbox[c][\thesistitleheight][c]{\paperwidth-2\generalpagemargin} {%
                        \thesistitlefont{\color{color7}\thesistitleandsubtitle[1]}%
                    }%
                };%
                % Thesis Subtitle
                \draw (0.5\paperwidth,-\generalpagemargin-\thesistitleheight-0.5\thesissubtitleheight) node {%
                    \parbox[c][\thesissubtitleheight][c]{\paperwidth-2\generalpagemargin} {%
                        \thesissubtitlefont{\color{color7}\thesistitleandsubtitle[2]}%
                    }%
                };%
                % Author Name
                \draw (\generalpagemargin + 0.5\authornamelength,-\generalpagemargin-\thesistitleheight-\thesissubtitleheight-\authornameheight) node {%
                    \parbox[c][\authornameheight][c]{\authornamelength} {%
                        \authornamefont{\color{color3}\@thesisauthor}%
                    }%
                };%
                % Semester, Master's or PhD Thesis?
                \draw (0.5\paperwidth+0.5\generalpagemargin+0.5\authornamelength+\thesistypelineheight/2-\thesistypefontsize/2,-\generalpagemargin-\thesistitleheight-\thesissubtitleheight-1.6\authornameheight+0.5\thesistypeheight) node
                [fill=color3, fill opacity=1, inner sep=0cm] {%
                    \parbox[c][\thesistypeheight][c]{\paperwidth-\generalpagemargin-\authornamelength-\thesistypelineheight+\thesistypefontsize} {%
                        \thesistypefont{\hspace{\thesistypelineheight/2-\thesistypefontsize/2}\color{color7}\@thesistype}%
                    }%
                };%
                % Abstract text
                \draw (0.5\paperwidth,-\paperheight+0.45\abstracttextheight+\generalpagemargin) node {%
                    \parbox[c][\abstracttextheight][c]{\paperwidth-2\generalpagemargin} {%
                        \backpageabstracttextfont{\color{color7}\@abstractlettrine\hspace*{0.50em}\@abstracttext}%
                    }%
                };%
            \end{tikzpicture}%
        };%
    \end{tikzpicture}%
}
\makeatother

%---------------------------------------------------------------------------
% Table of Content
%---------------------------------------------------------------------------
% Table of contents
\newcommand{\thesistableofcontent}{%
    % Disable headers and footers
    \pagestyle{empty}
    % Copy the current definition of \thispagestyle to \defthispagestyle
    \let\defthispagestyle\thispagestyle
    % Redefine \thispagestyle to do nothing. 
    % This will remove the page number from Contents page.
    \renewcommand{\thispagestyle}[1]{}
    % Notify Latex we want to use minitoc and then create the table of contents
    \dominitoc[n]
    \tableofcontents
    % Restore the original definition of \thispagestyle
    \let\thispagestyle\defthispagestyle
    % Clear to odd page to before starting new chapter
    \cleartooddpage
    % Enable headers and footers
    \pagestyle{fancy}%
}
%---------------------------------------------------------------------------
% Chapter styling
%---------------------------------------------------------------------------
\newlength{\tocchchapterfontsize}
\setlength{\tocchchapterfontsize}{14.00pt}
\newlength{\tocchchapterlineheight}
\setlength{\tocchchapterlineheight}{1.47059\tocchchapterfontsize}
\newcommand\tocchchapterfont{%
    \fontsize{\tocchchapterfontsize}{\tocchchapterlineheight}\fontseries{b}\sffamily\selectfont%
}
% Spacing for chapter titles
\newlength{\tocchtopspace}
\setlength{\tocchtopspace}{0.65\paragraphmargin}
\newcommand{\toctitlescaling}{0.30} % Define an integer variable for scaling
\newlength{\tocchbottomspace}
\setlength{\tocchbottomspace}{\dimexpr\toctitlescaling\tocchtopspace\relax}
% Edit chapter title style
\titlecontents{chapter}
[\generalpagemargin] % Left indentation
{\addvspace{\tocchtopspace}\tocchchapterfont} % Spacing and font options for chapters
{\color{color7}\contentslabel[\begingroup\fboxsep=0pt\colorbox{color2}{%
            \vrule width 0pt %
            height 1.25\ht\strutbox % 
            depth 1.5\dp\strutbox %
            \makebox[\generalpagemargin][c]{Chapter \thecontentslabel}%
        }\endgroup]{\generalpagemargin}\color{color2}\hspace{0.1\generalpagemargin}} % Formatting of numbered sections of this type
{\color{color2}\hspace{-\generalpagemargin}} % Formatting of numberless sections of this type
{\color{color2}\;\titlerule*[0.5pc]{.}\;\thecontentspage\hspace{-0.25\generalpagemargin}\vspace{\tocchbottomspace}} % Formatting of the filler to the right of the heading and the page number
%---------------------------------------------------------------------------
% Section styling
%---------------------------------------------------------------------------
\newlength{\tocchsectionfontsize}
\setlength{\tocchsectionfontsize}{13.00pt}
\newlength{\tocchsectionlineheight}
\setlength{\tocchsectionlineheight}{1.47059\tocchsectionfontsize}
\newcommand\tocchsectionfont{%
    \fontsize{\tocchsectionfontsize}{\tocchsectionlineheight}\fontseries{mb}\sffamily\selectfont%
}
% Spacing for section titles
\newlength{\tocsectopspace}
\setlength{\tocsectopspace}{\dimexpr\toctitlescaling\tocchtopspace\relax}
\newlength{\tocsecbottomspace}
\setlength{\tocsecbottomspace}{\dimexpr\toctitlescaling\tocsectopspace\relax}
% Edit section title style
\titlecontents{section}
[0.3\generalpagemargin] % Left indentation
{\addvspace{\tocsectopspace}\tocchsectionfont} % Spacing and font options for sections
{\color{color1}\contentslabel[\thecontentslabel]{0.3\generalpagemargin}} % Formatting of numbered sections of this type
{\color{color1}} % Formatting of numberless sections of this type
{\color{color1}\;\titlerule*[0pc]{.}\;\thecontentspage\hspace{-0.25\generalpagemargin}\vspace{\tocsecbottomspace}} % Formatting of the filler to the right of the heading and the page number

%---------------------------------------------------------------------------
% Subsection styling
%---------------------------------------------------------------------------
\newcommand\tocchsubsectionfont{%
    \fontsize{\maintextfontsize}{\maintextlineheight}\fontseries{l}\sffamily\selectfont%
}
% Spacing for section titles
\newlength{\tocsubsectopspace}
\setlength{\tocsubsectopspace}{\dimexpr\toctitlescaling\tocsectopspace\relax}
\newlength{\tocsubsecbottomspace}
\setlength{\tocsubsecbottomspace}{\dimexpr\toctitlescaling\tocsubsectopspace\relax}
% Edit section title style
\titlecontents{subsection}
[0.7\generalpagemargin] % Left indentation
{\addvspace{\tocsubsectopspace}\tocchsubsectionfont} % Spacing and font options for subsections
{\color{color1}\contentslabel[\thecontentslabel]{0.4\generalpagemargin}} % Formatting of numbered subsections of this type
{\color{color1}} % Formatting of numberless subsections of this type
{\color{color1}\;\titlerule*[0pc]{.}\;\thecontentspage\hspace{-0.25\generalpagemargin}\vspace{\tocsubsecbottomspace}} % Formatting of the filler to the right of the heading and the page number

%---------------------------------------------------------------------------
% Unnumbered Chapter Style
%---------------------------------------------------------------------------
\makeatletter
\renewcommand{\@makeschapterhead}[1]{%
    \def\@unnumberedchapterheading{#1}%
    % Chapter image
    \def\@unnumberedchapterheadingimage{%
        \expandafter\ifstrequal\expandafter{\pdfquality}{"Print Ready"}{%
            \expandafter\ifstrequal\expandafter{\contentsname}{Contents}{\node[anchor=north west,inner sep=0pt] at (0,0){\includegraphics[width=\paperwidth]{Chapter00/Figures/contents_print_ready.pdf}};}{} %
            \expandafter\ifstrequal\expandafter{#1}{References}{\node[anchor=north west,inner sep=0pt] at (0,0){\includegraphics[width=\paperwidth]{Chapter00/Figures/references.pdf}};}{} %
            \expandafter\ifstrequal\expandafter{#1}{Index}{\node[anchor=north west,inner sep=0pt] at (0,0){\includegraphics[width=\paperwidth]{Chapter00/Figures/index.pdf}};}{} %
        }{%
            \expandafter\ifstrequal\expandafter{\contentsname}{Contents}{\node[anchor=north west,inner sep=0pt] at (0,0){\includegraphics[width=\paperwidth]{Chapter00/Figures/contents_web_optimized.pdf}};}{}%
            \expandafter\ifstrequal\expandafter{#1}{References}{\node[anchor=north west,inner sep=0pt] at (0,0){\includegraphics[width=\paperwidth]{Chapter00/Figures/references.pdf}};}{}%
            \expandafter\ifstrequal\expandafter{#1}{Index}{\node[anchor=north west,inner sep=0pt] at (0,0){\includegraphics[width=\paperwidth]{Chapter00/Figures/index.pdf}};}{}% 
        }%
    }%
    % Image courtesy
    \def\@unnumberedchapterheadingimagecourtesy{%
        Image: %
        \expandafter\ifstrequal\expandafter{#1}{References}{\input{Chapter00/Figures/references_image_courtesy.txt}}%
        {\expandafter\ifstrequal\expandafter{#1}{Index}{\input{Chapter00/Figures/index_image_courtesy.txt}}%
            {\expandafter\ifstrequal\expandafter{\contentsname}{Contents}{\input{Chapter00/Figures/contents_image_courtesy.txt}}{}}}%
    }%
    \def\@unnumberedchapterheadingspace{%
        \expandafter\ifstrequal\expandafter{#1}{References}{\vspace{-0.15\topbottompagemargin+0.36\topbottompagemargin}}%
        {\expandafter\ifstrequal\expandafter{#1}{Index}{\vspace{0.36\topbottompagemargin}}%
            {\expandafter\ifstrequal\expandafter{\contentsname}{Contents}{\vspace{-\tocchtopspace-0.2\topbottompagemargin+0.36\topbottompagemargin}}{}}}%
    }%
    % Place chapter title and image
    \begin{tikzpicture}[remember picture,overlay]%
        \node at (current page.north west) {%
            \begin{tikzpicture}[remember picture,overlay]%
                % Background image
                \@unnumberedchapterheadingimage%
                % Unnumbered chapter title
                \draw (0.5\paperwidth,-0.25\topbottompagemargin) node%
                [fill=color2, fill opacity=.90, inner sep=0pt] {%
                    \parbox[c][0.5\topbottompagemargin][c]{\paperwidth} {%
                        \phantomsection % Phantom section for unnumbered chapter page hyperlink
                        \addcontentsline{toc}{chapter}{\@unnumberedchapterheading} % Add unnumbered chapter to the table of contents
                        \adjustmtc\adjustmtc % Adjust the minitoc counter whenever we use \addcontentsline command
                        \pagetitlefont{\color{color7}\hspace{0.2\topbottompagemargin} \@unnumberedchapterheading}%
                    }%
                };%
                % Image courtesy
                \draw (0.5\paperwidth,-0.57137\paperwidth+0.125\topbottompagemargin) node%
                [fill=color1, fill opacity=.90, inner sep=0pt] {%
                    \parbox[c][0.25\topbottompagemargin][c]{\paperwidth} {%
                        \footertextfont{\color{color7}\hspace{0.2\topbottompagemargin}\@unnumberedchapterheadingimagecourtesy}%
                    }%
                };%
            \end{tikzpicture}%
        };%
    \end{tikzpicture}%
    \vspace{0.57137\paperwidth-\topbottompagemargin}\figureboxstretchtopbottom%
    \@unnumberedchapterheadingspace%
}%
\makeatother

%---------------------------------------------------------------------------
% Numbered Chapter Style
%---------------------------------------------------------------------------
% Define minitoc box and box title style
\newlength{\minitoctitletopbottommargin}
\setlength{\minitoctitletopbottommargin}{0.125\topbottompagemargin}
\addtolength{\minitoctitletopbottommargin}{0.85\dimexpr-\ht\strutbox\relax}
\tikzstyle{minitoctitle} =[fill=color2, text=color7, inner sep=0.5\paragraphmargin, inner ysep=\minitoctitletopbottommargin]
\tikzstyle{minitocicon} =[fill=color2, text=color7, inner sep=\minitoctitletopbottommargin, inner ysep=\minitoctitletopbottommargin]
% Define summary box style
\newlength{\summarytopbottommargin}
\setlength{\summarytopbottommargin}{1.76\paragraphmargin}
\makeatletter
\renewcommand{\@makechapterhead}[1]{%
    \def\@numberedchapterheading{#1}%
    \def\@numberedchapterheadingimage{%
        \node[anchor=north west,inner sep=0pt] at (0,0){%
            \expandafter\ifstrequal\expandafter{\pdfquality}{"Print Ready"}{%
                \includegraphics[width=\paperwidth]{{Chapter0\thechapter}/Figures/background_print_ready.pdf}%
            }{%
                \includegraphics[width=\paperwidth]{{Chapter0\thechapter}/Figures/background_web_optimized.pdf}%
            }%
        };%
    }%
    \def\@numberedchapterheadingimagecourtesy{%
        Image: %
        \input{Chapter0\thechapter/Figures/background_image_courtesy.txt}%
    }%
    % Place chapter title and image
    \begin{tikzpicture}[remember picture,overlay]%
        \node at (current page.north west) {%
            \begin{tikzpicture}[remember picture,overlay]%
                % Background image
                \@numberedchapterheadingimage%
                % Numbered chapter title
                \draw (0.5\paperwidth,-0.25\topbottompagemargin) node%
                [fill=color2, fill opacity=.90, inner sep=0pt] {%
                    \parbox[c][0.5\topbottompagemargin][c]{\paperwidth} {%
                        \pagetitlefont{\color{color7}\hspace{0.2\topbottompagemargin}\thechapter. \@numberedchapterheading}%
                    }%
                };%
                % Image courtesy
                \draw (0.5\paperwidth,-0.57137\paperwidth+0.125\topbottompagemargin) node%
                [fill=color1, fill opacity=.90, inner sep=0pt] {%
                    \parbox[c][0.25\topbottompagemargin][c]{\paperwidth} {%
                        \footertextfont{\color{color7}\hspace{0.2\topbottompagemargin}\@numberedchapterheadingimagecourtesy}%
                    }%
                };%
                % Chapter contents (minitoc)
                \draw[anchor=north west,inner sep=0pt] (0.31\paperwidth,-0.75\topbottompagemargin) node%
                [fill=color3!20,%
                    fill opacity=0.90,%
                    draw=color2,%
                    draw opacity=1,%
                    line width=\sectiontitlelinewidth,%
                    %rounded corners,%
                    inner sep=0.15\paragraphmargin]%
                (0,0)%
                {\parbox[t][0.57137\paperwidth-1.25\topbottompagemargin-0.30\paragraphmargin][t]{0.69\paperwidth-0.25\topbottompagemargin-0.30\paragraphmargin}%
                    {\vspace{-\tocsectopspace+0.15\paragraphmargin}%
                        \hfuzz=0.5\topbottompagemargin% Remove Overfull \hbox too wide warning and fix the overflow
                        \minitoc}};%
                % Minitoc title and symbol
                \draw[anchor=north west,inner sep=0pt] (0.31\paperwidth,-0.75\topbottompagemargin) node%
                [minitoctitle, right=\paragraphmargin]%
                (0,0)%
                {\strut In This Chapter~};%
                \draw[anchor=north west,inner sep=0pt] (\paperwidth-0.35\topbottompagemargin,-0.57137\paperwidth/2+1.25\topbottompagemargin/2-0.65\topbottompagemargin) node%
                [minitocicon, minimum size=0.2\topbottompagemargin, right=0.25\sectiontitlelinewidth]%
                (0,0)%
                {\faList};%
            \end{tikzpicture}%
        };%
    \end{tikzpicture}%
    \vspace{0.57137\paperwidth-\topbottompagemargin-0.11\topbottompagemargin+\summarytopbottommargin}\figureboxstretchtopbottom%
}%
\makeatother

%---------------------------------------------------------------------------
% Section Styles
%---------------------------------------------------------------------------
\titleformat{\section}
{\sectiontitlefont\color{color2}}
{\thesection}
{1em}
{#1}
[{\titlerule[\sectiontitlelinewidth]}] % Underlining ruler for sections

\titleformat{\subsection}
{\subsectiontitlefont\color{color1}}
{\thesubsection}
{1em}
{#1}

\titleformat{\subsubsection}
{\subsubsectiontitlefont\color{color1}}
{}
{}
{\begingroup\fboxsep=-0.5\sectiontitlelinewidth\fboxrule=0.5\sectiontitlelinewidth\fbox{%
        \color{color3!10}\raisebox{.5\fontcharht\font`E-.5\height}{\rule{1.25\fontcharht\font`E}{1.25\fontcharht\font`E}}%
    }\endgroup%
    \hspace{0.75\fontcharht\font`E}%
    #1%
}

%---------------------------------------------------------------------------
% Fancy Header and Footers
%---------------------------------------------------------------------------
%-----------------------------------------------------------------------
% Fancy Page
%-----------------------------------------------------------------------
\fancyhf{} % Disable headers
\renewcommand{\chaptermark}[1]{\markboth{\color{color7}\subsectiontitlefont\quad\chaptername \; \thechapter\fontseries{l}\selectfont\quad #1}{}} % Styling for the current chapter in the header
\renewcommand{\sectionmark}[1]{\markright{\color{color7}\subsectiontitlefont\fontseries{l}\selectfont\thesection \; #1\quad}{}} % Styling for the current section in the header
\renewcommand{\headrulewidth}{0pt}

\fancyhead[LE]{% Left corner on even page
    \begin{tikzpicture}[remember picture,overlay]
        \node at (current page.north west) {
            \begin{tikzpicture}[remember picture,overlay]
                \draw (0.5\paperwidth, -0.125\topbottompagemargin - 0.5\topbottompagemargin) node
                [fill=color2, fill opacity=1, inner sep=0pt] {%
                    \parbox[c][0.25\topbottompagemargin][c]{\paperwidth-2\generalpagemargin}{\leftmark}%
                };
            \end{tikzpicture}
        };
    \end{tikzpicture}
}
\fancyhead[RO]{%
    \begin{tikzpicture}[remember picture,overlay]
        \node at (current page.north west) {
            \begin{tikzpicture}[remember picture,overlay]
                \draw (0.5\paperwidth, -0.125\topbottompagemargin - 0.5\topbottompagemargin) node
                [fill=color2, fill opacity=1, inner sep=0pt] {%
                    \parbox[c][0.25\topbottompagemargin][c]{\paperwidth-2\generalpagemargin}{\raggedleft\rightmark}%
                };
            \end{tikzpicture}
        };
    \end{tikzpicture}
}
\renewcommand\headrule{} % No header rule
\fancyfoot[LE]{% Left corner on even page
    \begin{tikzpicture}[remember picture,overlay]
        \node at (current page.south east) {
            \begin{tikzpicture}[remember picture,overlay]
                \draw (-\paperwidth+\generalpagemargin+0.25\topbottompagemargin, 0.125\topbottompagemargin + 0.5\topbottompagemargin) node
                [fill=color2, fill opacity=1, inner sep=0pt] {%
                    \parbox[c][0.25\topbottompagemargin][c]{0.5\topbottompagemargin} {%
                        \centering\maintextfont{\color{color7}\thepage}%
                    }
                };
            \end{tikzpicture}
        };
    \end{tikzpicture}
}
\fancyfoot[RE]{% Right corner on even page
    \begin{tikzpicture}[remember picture,overlay]
        \node at (current page.south west) {
            \begin{tikzpicture}[remember picture,overlay]
                \draw[line width=\sectiontitlelinewidth, color2, anchor=west,inner sep=0pt]
                (\generalpagemargin,0.5\topbottompagemargin- 0.5\sectiontitlelinewidth+0.25\topbottompagemargin) -- (\paperwidth-\generalpagemargin,0.5\topbottompagemargin- 0.5\sectiontitlelinewidth+0.25\topbottompagemargin);
            \end{tikzpicture}
        };
    \end{tikzpicture}
}
\fancyfoot[RO]{% Right corner on odd page
    \begin{tikzpicture}[remember picture,overlay]
        \node at (current page.south east) {
            \begin{tikzpicture}[remember picture,overlay]
                \draw (-\generalpagemargin-0.25\topbottompagemargin, 0.125\topbottompagemargin + 0.5\topbottompagemargin) node
                [fill=color2, fill opacity=1, inner sep=0pt] {%
                    \parbox[c][0.25\topbottompagemargin][c]{0.5\topbottompagemargin} {%
                        \centering\maintextfont{\color{color7}\thepage}%
                    }
                };
            \end{tikzpicture}
        };
    \end{tikzpicture}
}%
\fancyfoot[LO]{% Left corner on odd page
    \begin{tikzpicture}[remember picture,overlay]
        \node at (current page.south west) {
            \begin{tikzpicture}[remember picture,overlay]
                \draw[line width=\sectiontitlelinewidth, color2, anchor=west,inner sep=0pt]
                (\generalpagemargin,0.5\topbottompagemargin- 0.5\sectiontitlelinewidth+0.25\topbottompagemargin) -- (\paperwidth-\generalpagemargin,0.5\topbottompagemargin- 0.5\sectiontitlelinewidth+0.25\topbottompagemargin);
            \end{tikzpicture}
        };
    \end{tikzpicture}
}%
%-----------------------------------------------------------------------
% Plain Page
%-----------------------------------------------------------------------
\fancypagestyle{plain}{% Style for when a plain pagestyle is specified
    \fancyhf{} % Disable headers
    \renewcommand\headrule{} % No header rule
    \fancyfoot[LE]{% Left corner on even page
        \begin{tikzpicture}[remember picture,overlay]
            \node at (current page.south east) {
                \begin{tikzpicture}[remember picture,overlay]
                    \draw (-\paperwidth+\generalpagemargin+0.25\topbottompagemargin, 0.125\topbottompagemargin + 0.5\topbottompagemargin) node
                    [fill=color2, fill opacity=1, inner sep=0pt] {%
                        \parbox[c][0.25\topbottompagemargin][c]{0.5\topbottompagemargin} {%
                            \centering\maintextfont{\color{color7}\thepage}%
                        }
                    };
                \end{tikzpicture}
            };
        \end{tikzpicture}
    }
    \fancyfoot[RE]{% Right corner on even page
        \begin{tikzpicture}[remember picture,overlay]
            \node at (current page.south west) {
                \begin{tikzpicture}[remember picture,overlay]
                    \draw[line width=\sectiontitlelinewidth, color2, anchor=west,inner sep=0pt]
                    (\generalpagemargin,0.5\topbottompagemargin- 0.5\sectiontitlelinewidth+0.25\topbottompagemargin) -- (\paperwidth-\generalpagemargin,0.5\topbottompagemargin- 0.5\sectiontitlelinewidth+0.25\topbottompagemargin);
                \end{tikzpicture}
            };
        \end{tikzpicture}
    }
    \fancyfoot[RO]{% Right corner on odd page
        \begin{tikzpicture}[remember picture,overlay]
            \node at (current page.south east) {
                \begin{tikzpicture}[remember picture,overlay]
                    \draw (-\generalpagemargin-0.25\topbottompagemargin, 0.125\topbottompagemargin + 0.5\topbottompagemargin) node
                    [fill=color2, fill opacity=1, inner sep=0pt] {%
                        \parbox[c][0.25\topbottompagemargin][c]{0.5\topbottompagemargin} {%
                            \centering\maintextfont{\color{color7}\thepage}%
                        }
                    };
                \end{tikzpicture}
            };
        \end{tikzpicture}
    }%
    \fancyfoot[LO]{% Left corner on odd page
        \begin{tikzpicture}[remember picture,overlay]
            \node at (current page.south west) {
                \begin{tikzpicture}[remember picture,overlay]
                    \draw[line width=\sectiontitlelinewidth, color2, anchor=west,inner sep=0pt]
                    (\generalpagemargin,0.5\topbottompagemargin- 0.5\sectiontitlelinewidth+0.25\topbottompagemargin) -- (\paperwidth-\generalpagemargin,0.5\topbottompagemargin- 0.5\sectiontitlelinewidth+0.25\topbottompagemargin);
                \end{tikzpicture}
            };
        \end{tikzpicture}
    }%
}

%---------------------------------------------------------------------------
% Bibliography
%---------------------------------------------------------------------------
\makeatletter
% Bibliography
\newcommand{\thesisbibliographypage}[2]{%
    \def\@bibliographyheading{#1}%
    \pagestyle{plain}%
    \chapter*{\@bibliographyheading}%
    % Change link colors for bibliography only
    \begingroup%
    \hypersetup{urlcolor = color3}%
    \printbibliography[heading=bibempty]%
    \vfill
    #2
    \endgroup%
}%
\makeatother

%---------------------------------------------------------------------------
% Environments
%---------------------------------------------------------------------------
\makeatletter
%-----------------------------------------------------------------------
% Summary
%-----------------------------------------------------------------------
% Summary font
\newlength{\summaryfontsize}%
\setlength{\summaryfontsize}{11pt}%
\newlength{\summarylineheight}%
\setlength{\summarylineheight}{1.47059\summaryfontsize}%
\newcommand\summaryfont{%
    \fontsize{\summaryfontsize}{\summarylineheight}\fontseries{l}\rmfamily\itshape\selectfont%
}%
% Define box and box title style
\tikzstyle{summarytext} = [%
inner sep=1.5\paragraphmargin, inner ysep=0cm%
]%
\NewEnviron{summary}{%
    \noindent% Get rid of the indent
    \begin{tikzpicture}%
        \node [summarytext] (box){%
            \begin{minipage}{\textwidth-3\paragraphmargin}%
                \summaryfont{\BODY}%
            \end{minipage}%
        };%
    \end{tikzpicture}%
    \vspace{-0.24\topbottompagemargin+\summarytopbottommargin}\figureboxstretchtopbottom%
}%
%-----------------------------------------------------------------------
% Remark
%-----------------------------------------------------------------------
% Define box and box title style
\newlength{\remarktitletopbottommargin}
\setlength{\remarktitletopbottommargin}{0.125\topbottompagemargin}
\addtolength{\remarktitletopbottommargin}{0.85\dimexpr-\ht\strutbox\relax}
\tikzstyle{remarktext} = [%
draw=color2, fill=color3!10,%
line width = \sectiontitlelinewidth, rectangle,%
inner sep=\paragraphmargin-0.25\sectiontitlelinewidth, inner ysep=\paragraphmargin,%
]%
\tikzstyle{remarktitle} =[fill=color2, text=color7, inner sep=0.5\paragraphmargin, inner ysep=\remarktitletopbottommargin]
\tikzstyle{remarkicon} =[fill=color2, text=color7, inner sep=\remarktitletopbottommargin, inner ysep=\remarktitletopbottommargin, remember picture, overlay]
\NewEnviron{remark}{%
    \vspace{-0.60\paragraphmargin+0.125\topbottompagemargin+\paragraphmargin}\figureboxstretchtopbottom%
    \noindent% Get rid of the indent
    \begin{tikzpicture}%
        \node [remarktext] (box){%
            \begin{minipage}{\textwidth-2\paragraphmargin-0.5\sectiontitlelinewidth}%
                \vspace{0.030\paragraphmargin}\figureboxstretchtopbottom
                \BODY%
                \vspace{-0.030\paragraphmargin}\figureboxstretchtopbottom
            \end{minipage}%
        };%
        \node[remarktitle, right=\paragraphmargin] at (box.north west) {\strut Remark~};%
        \node[remarkicon, minimum size=0.2\topbottompagemargin, right=-0.1\topbottompagemargin-0.5\sectiontitlelinewidth] at (box.east) {\faLightbulbO};%
    \end{tikzpicture}%
    \vspace{-0.30\paragraphmargin+\paragraphmargin}\figureboxstretchtopbottom%
}%
%-----------------------------------------------------------------------
% Code Snippet
%-----------------------------------------------------------------------
% Define box and box title style
% New listing for code snippet
\newcounter{codesnippetcounter}
\newtcblisting[use counter=codesnippetcounter, number within=chapter]{codesnippet}[4][]{%
    listing engine=minted,
    minted language=#2,
    minted options={%
            linenos,
            breaklines,
            autogobble,
            numbersep=0.60\paragraphmargin,
            tabsize=2,
            baselinestretch=1,
        },%
    listing only, breakable, enhanced jigsaw, sharpish corners,
    left=-2.5\sectiontitlelinewidth+\paragraphmargin,
    right=-2.5\sectiontitlelinewidth+\paragraphmargin,
    top=-0.27\paragraphmargin+\paragraphmargin,
    bottom=-0.27\paragraphmargin+\paragraphmargin,
    colframe=color2,
    coltitle=color7,
    boxrule=\sectiontitlelinewidth,
    colback=color3!10,
    coltext=color2,
    attach boxed title to top left={xshift=\paragraphmargin, yshift=-\tcboxedtitleheight/2},%
    boxed title style = {%
            colback=color2, sharpish corners, boxrule=0pt,
            boxsep=0pt, left=0.5\paragraphmargin, right=0.5\paragraphmargin, %
            top =\remarktitletopbottommargin, bottom = \remarktitletopbottommargin%
        },
    title=\strut Code Snippet \thetcbcounter: #3~,%
    underlay={%
            \begin{tcbclipinterior}
                \fill[color3!20] (frame.south west) rectangle ([xshift=0.55\paragraphmargin]frame.north west);
            \end{tcbclipinterior}%
        },%
    overlay={%
            \node[remarkicon, minimum size=0.2\topbottompagemargin, right=-0.11\topbottompagemargin-0.5\sectiontitlelinewidth] at (frame.east) {\faCode};%
        },%
    label=#4,%
    before upper=\vspace{0cm}\figureboxstretchtopbottom,%
    after upper=\vspace{-0.475\paragraphmargin}\figureboxstretchtopbottom,%
    before={\ifthenelse{\equal{#1}{fullpage}}%
            {\pagebreak\vspace*{-1.25\paragraphmargin+0.125\topbottompagemargin}\vspace*{\fill}}%
            {\vspace{-0.60\paragraphmargin+0.125\topbottompagemargin+\paragraphmargin}\figureboxstretchtopbottom}%
        },%
    after={\ifthenelse{\equal{#1}{fullpage}}
            {\vspace*{-0.30\paragraphmargin}\vspace*{\fill}\pagebreak}%
            {\vspace{-0.30\paragraphmargin+\paragraphmargin}\figureboxstretchtopbottom}%
        },%
}%
%-----------------------------------------------------------------------
% Terminal Output
%-----------------------------------------------------------------------
% Define box and box title style
% New listing for code snippet
\newtcblisting{terminaloutput}[1]{%
    listing engine=minted,
    minted language=console,
    minted options={%
            breaklines,
            autogobble,
            tabsize=2,
            baselinestretch=1,
        },%
    listing only, breakable, enhanced jigsaw, sharpish corners,
    left=-2.5\sectiontitlelinewidth+\paragraphmargin,
    right=-2.5\sectiontitlelinewidth+\paragraphmargin,
    top=-0.27\paragraphmargin+\paragraphmargin,
    bottom=-0.27\paragraphmargin+\paragraphmargin,
    colframe=color2,
    coltitle=color7,
    boxrule=\sectiontitlelinewidth,
    colback=color3!10,
    coltext=color2,
    attach boxed title to top left={xshift=\paragraphmargin, yshift=-\tcboxedtitleheight/2},%
    boxed title style = {%
            colback=color2, sharpish corners, boxrule=0pt,
            boxsep=0pt, left=0.5\paragraphmargin, right=0.5\paragraphmargin, %
            top =\remarktitletopbottommargin, bottom = \remarktitletopbottommargin%
        },
    title=\strut Terminal Output: #1~,%
    overlay={%
            \node[remarkicon, minimum size=0.2\topbottompagemargin, right=-0.1\topbottompagemargin-0.5\sectiontitlelinewidth] at (frame.east) {\faTerminal};%
        },%
    before upper=\vspace{0cm}\figureboxstretchtopbottom,%
    after upper=\vspace{-0.475\paragraphmargin}\figureboxstretchtopbottom,%
    before={\vspace{-0.60\paragraphmargin+0.125\topbottompagemargin+\paragraphmargin}\figureboxstretchtopbottom},%
    after={\vspace{-0.30\paragraphmargin+\paragraphmargin}\figureboxstretchtopbottom}%
}%
%-----------------------------------------------------------------------
% Equation Parameters
%-----------------------------------------------------------------------
\newenvironment{parameters}[1][where]{%
#1\quad\tabularx{\textwidth-\widthof{#1\quad}}[t]{%
>{$}l<{$} @{${}:{}$} X@{}%
}%
}{%
\endtabularx\vspace{\baselineskip+\belowdisplayshortskip}%
}%
\makeatother

%----------------------------------------------------------------------------------------
% 
%----------------------------------------------------------------------------------------