%=====================================================================================%
%
% Project Proposal Template by Bahadır Dönmez
% Class Definitions File
% v1.0.0 (30/11/2023)
% 
% Author:
% Bahadır Dönmez (bhdr.donmez@gmail.com)
%
%=====================================================================================%

%=====================================================================================%
% Identification
%=====================================================================================%
% The class identifies itself, and the LaTeX version needed
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{project-proposal}[2023/11/30 v1.0.0 Project Proposal Template by Bahadır Dönmez]

%=====================================================================================%
% Preliminary Declarations
%=====================================================================================%
% This part handles the options passed to the class
% All unknown options will be passed to the article document class.
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax % Execute the code for each option
% Specify the book class as the document class and pass the following options:
%   - Set the font size for the document to 12 points.
%   - Set the paper size to a4paper
\LoadClass[12pt, a4paper]{article}


%=====================================================================================%
% Miscellaneous Packages
%=====================================================================================%
\RequirePackage{environ} % Required for creating new environments with  \NewEnviron command
\RequirePackage{mdframed} % Styling of environments
\RequirePackage{amsthm} % Styling of environments

%=====================================================================================%
% Geometry
%=====================================================================================%
\RequirePackage{geometry} % For adjusting page dimensions and margins
%\RequirePackage[showframe]{geometry} % For adjusting page dimensions and margins
% Page margins and indentations
\newlength{\generalpagemargin}
\setlength{\generalpagemargin}{1.5cm}
\newlength{\contentwidth}
\setlength{\contentwidth}{\dimexpr\paperwidth-2\generalpagemargin\relax}
\geometry{
    top=\generalpagemargin, % Top margin
    bottom=\generalpagemargin, % Bottom margin
    left=\generalpagemargin, % Left margin
    right=\generalpagemargin, % Right margin
    headheight=0cm, % Header height
    headsep=0cm, % Header separation
    footskip=0cm, % Header separation
}
%=====================================================================================%
% Graphics and Tables
%=====================================================================================%
\RequirePackage{tikz}  % Creating graphic elements
\usetikzlibrary{calc} % For coordinate calculation
\RequirePackage[many]{tcolorbox} % Required for making colored boxes
\usetikzlibrary{shapes.geometric} % For drawing geometric shapes
\RequirePackage{array} % Defining new column types for tables
\RequirePackage{mdframed} % Styling of environments
\RequirePackage{changepage} % For adjustwidth command to shift tables to right or left
%=====================================================================================%
% Colors
%=====================================================================================%
\RequirePackage{xcolor} % Color extensions for LaTeX
\definecolor{backgroundcolor1}{HTML}{FAFCFF}
\definecolor{backgroundcolor2}{HTML}{0C2C46}
\definecolor{maintextcolor}{HTML}{061623}
\definecolor{titlecolor}{HTML}{0C2C46}
\definecolor{lighttextcolor}{HTML}{FAFCFF}
\definecolor{palettecolor1}{HTML}{52B3F4}
\definecolor{palettecolor2}{HTML}{C52E51}

%=====================================================================================%
% Typography
%=====================================================================================%
\RequirePackage[english]{babel} % Set language and hyphenation for American English
\RequirePackage{csquotes} % Recommended to load when using babel.
\RequirePackage[babel=true, final=true]{microtype} % Microtypographical enhancements
\RequirePackage{enumitem} % Control the layout of list environments: enumerate and itemize
\RequirePackage{fontawesome} % Fontawesome symbols
\RequirePackage{fontspec}
\setmainfont{SF-Pro-Text}[
    Path = ./assets/fonts/sf-pro-text/,
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
    FontFace={xxk}{it}{*-BlackItalic}
]
\setsansfont{SF-Pro-Display}[
    Path = ./assets/fonts/sf-pro-display/,
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
    FontFace={xxk}{it}{*-BlackItalic}
]

%---------------------------------------------------------------------------
% Links Style
%---------------------------------------------------------------------------
\RequirePackage{hyperref} % Required for handling cross-referencing commands to produce hypertext links in the document.
\hypersetup{
    pdfstartview={FitV},    % fits the width of the page to the window
    pdftitle={Lab Integration of Multi‑Client Digital Laser Lock Box for Trapped Ion Experiments}, % PDF title
    pdfauthor={Bahad{\i}r Dönmez}, % Author name
    colorlinks = true,
    urlcolor=titlecolor
}
\urlstyle{same}

%=====================================================================================%
% Font Settings
%=====================================================================================%
%=========================================%
% Header Font
%=========================================%
\newlength{\headerfontsize}
\setlength{\headerfontsize}{20.00pt}
\newlength{\headerlineheight}
\setlength{\headerlineheight}{1.20\headerfontsize}
\newcommand\headerfont{
    \fontsize{\headerfontsize}{\headerlineheight}\fontseries{xk}\sffamily\selectfont\raggedright%
}
%=========================================%
% Badge Font
%=========================================%
\newlength{\badgefontsize}
\setlength{\badgefontsize}{10.00pt}
\newlength{\badgelineheight}
\setlength{\badgelineheight}{1.20\badgefontsize}
\newcommand\badgefont{
    \fontsize{\badgefontsize}{\badgelineheight}\fontseries{b}\sffamily\selectfont\raggedright%
}
\newlength{\badgexpadding}
\setlength{\badgexpadding}{\dimexpr0.20\generalpagemargin\relax}
\newlength{\badgeypadding}
\setlength{\badgeypadding}{\dimexpr0.10\generalpagemargin\relax}
%=========================================%
% Section Font
%=========================================%
\newlength{\sectionfontsize}
\setlength{\sectionfontsize}{11.00pt}
\newlength{\sectionlineheight}
\setlength{\sectionlineheight}{1.20\sectionfontsize}
\newcommand\sectionfont{%
    \fontsize{\sectionfontsize}{\sectionlineheight}\fontseries{b}\sffamily\selectfont\raggedright%
}
\newlength{\sectionlinewidth}
\setlength{\sectionlinewidth}{2pt}
\newlength{\sectionxpadding}
\setlength{\sectionxpadding}{\dimexpr0.20\generalpagemargin\relax}
\newlength{\sectionypadding}
\setlength{\sectionypadding}{\dimexpr0.10\generalpagemargin\relax}
%=========================================%
% Main Text Font
%=========================================%
\newlength{\maintextfontsize}
\setlength{\maintextfontsize}{10.00pt}
\newlength{\maintextlineheight}
\setlength{\maintextlineheight}{1.28\maintextfontsize}
\setlength\parindent{0pt} 	% Set paragraph indentation length
\newcommand\setmaintextfont{
    \fontsize{\maintextfontsize}{\maintextlineheight}\rmfamily\selectfont
}

%=====================================================================================%
% Page Settings
%=====================================================================================%
\makeatletter
\newcommand{\makepage}{
    \pagestyle{empty}
    \pagecolor{backgroundcolor1}
}
\makeatother

%=====================================================================================%
% Header
%=====================================================================================%
\makeatletter
\newcommand{\makeheader}[3]{
    \def\@projecttitle{#1}
    \def\@projecttype{#2}
    \def\@projectsemester{#3}
    %=========================================%
    % Header
    %=========================================%
    \newlength{\headerheight}
    \settoheight{\headerheight}{\vbox{\headerfont\@projecttitle}}
    \setlength{\headerheight}{\dimexpr\headerheight+2\headerlineheight-2\headerfontsize\relax}
    \newlength{\headerxpos}
    \setlength{\headerxpos}{\dimexpr0.5\paperwidth\relax}
    \newlength{\headerypos}
    \setlength{\headerypos}{\dimexpr-\generalpagemargin-0.5\headerheight\relax}
    %=========================================%
    % Project Type
    %=========================================%
    \newlength{\projecttypeheight}
    \settoheight{\projecttypeheight}{\vbox{\badgefont\@projecttype}}
    \setlength{\projecttypeheight}{\dimexpr\projecttypeheight+\badgelineheight-\badgefontsize\relax}
    \newlength{\projecttypelength}
    \settowidth{\projecttypelength}{\badgefont{\@projecttype}}
    \newlength{\projecttypexpos}
    \setlength{\projecttypexpos}{\dimexpr\generalpagemargin+0.5\projecttypelength+\badgexpadding\relax}
    \newlength{\projecttypeypos}
    \setlength{\projecttypeypos}{\dimexpr\headerypos-0.5\headerheight-\projecttypeheight-0.5\badgexpadding\relax}
    %=========================================%
    % Project Semester
    %=========================================%
    \newlength{\projectsemesterheight}
    \settoheight{\projectsemesterheight}{\vbox{\badgefont\@projectsemester}}
    \setlength{\projectsemesterheight}{\dimexpr\projectsemesterheight+\badgelineheight-\badgefontsize\relax}
    \newlength{\projectsemesterlength}
    \settowidth{\projectsemesterlength}{\badgefont{\@projectsemester}}
    \newlength{\projectsemesterexpos}
    \setlength{\projectsemesterexpos}{\dimexpr\projecttypexpos+0.5\projecttypelength+0.5\projectsemesterlength+2.5\badgexpadding\relax}
    \newlength{\projectsemestereypos}
    \setlength{\projectsemestereypos}{\projecttypeypos}
    \begin{tikzpicture}[remember picture,overlay]
        \node at (current page.north west) {
            \begin{tikzpicture}[remember picture,overlay]
                \draw (\headerxpos,\headerypos) node {
                    \parbox[c][\headerheight][c]{\contentwidth}{
                        \headerfont\@projecttitle
                    }
                };
                \draw (\projecttypexpos,\projecttypeypos) node
                [fill=palettecolor1, fill opacity=1, inner sep=\badgexpadding, inner ysep=\badgeypadding, text depth=0cm]  {
                    \parbox[c][\projecttypeheight][c]{\projecttypelength}{
                        \color{lighttextcolor}\badgefont\strut\@projecttype
                    }
                };
                \draw (\projectsemesterexpos,\projectsemestereypos) node
                [fill=palettecolor2, fill opacity=1, inner sep=\badgexpadding, inner ysep=\badgeypadding, text depth=0cm]  {
                    \parbox[c][\projectsemesterheight][c]{\projectsemesterlength}{
                        \color{lighttextcolor}\badgefont\strut\@projectsemester
                    }
                };
            \end{tikzpicture}
        };
    \end{tikzpicture}
    \vspace{2\generalpagemargin}
}
\makeatother

%=====================================================================================%
% Environments
%=====================================================================================%
%=========================================%
% Section with Single Column and Image
%=========================================%
% Define a new length for minipage width
\newlength{\minipagewidth}
% Remove the meaning of \section and \endsection
\let\section\relax
\let\endsection\relax
% Now we can redefine section style
\tikzstyle{sectiontitle} =[
trapezium, draw=backgroundcolor2, trapezium left angle=90, trapezium right angle=240,
fill=backgroundcolor2, text=lighttextcolor, right=0cm, inner sep=\sectionxpadding,
inner ysep=\sectionypadding, text depth=0cm, yshift=0.40\generalpagemargin
]
\tikzstyle{sectionlinenode1} = [yshift=0.18\generalpagemargin]
\tikzstyle{sectionlinenode2} = [
yshift=0.18\generalpagemargin,xshift=\dimexpr\paperwidth-2\generalpagemargin-2pt\relax
]
\tikzstyle{sectionline} = [line width=\sectionlinewidth, color=backgroundcolor2]
\tikzstyle{sectiontext} = [rectangle, inner sep=0cm]
\tikzstyle{sectionimage} =[inner sep=0.30\generalpagemargin, inner ysep=0cm, text depth=0cm]
% Define section environment with optional image argument
\NewEnviron{section}[3][]{
    \phantomsection % Phantom section for hyperlink
    \addcontentsline{toc}{section}{#3} % Add section to the table of contents
    \vspace{-0.3\generalpagemargin}
    \begin{tikzpicture}
        % Adjust the width of the minipage if an image is provided
        \ifx&#1&  % No image argument provided
        \setlength{\minipagewidth}{\dimexpr\paperwidth-2\generalpagemargin-2pt\relax}
        \else  % Image argument provided
        \setlength{\minipagewidth}{\dimexpr\paperwidth-2.30\generalpagemargin-2pt-#2\relax}
        \fi
        % Text node
        \node [sectiontext] (box){
            \begin{minipage}{\minipagewidth}
                \BODY
            \end{minipage}
        };
        % Image node (displayed only if image argument is provided)
        \ifx&#1&\else
        \node [sectionimage, anchor=north west] at (box.north east)  {
            \includegraphics[width=#2]{#1}
        };
        \fi
        % Title and line
        \node[sectiontitle] at (box.north west) {\strut\sectionfont#3};
        \draw[sectionline] ([sectionlinenode1]box.north west) -- ([sectionlinenode2]box.north west);
    \end{tikzpicture}
    \vspace{0.25\generalpagemargin}
}
%=========================================%
% Sections with Two Columns
%=========================================%
\tikzstyle{sectionlinecolumnnode2} = [
yshift=0.18\generalpagemargin,xshift=\dimexpr0.5\paperwidth-1.25\generalpagemargin-1pt\relax
]
% Define a new environment for sections with two titles and two different texts
\NewEnviron{sectiontwocolumns}[4]{
    \phantomsection % Phantom section for hyperlink
    \addcontentsline{toc}{section}{#1} % Add section to the table of contents
    \addcontentsline{toc}{section}{#3} % Add section to the table of contents
    \vspace{-0.30\generalpagemargin}
    \begin{tikzpicture}
        % Set the width for the two title minipages
        \setlength{\minipagewidth}{0.5\dimexpr\paperwidth-2.5\generalpagemargin-2pt\relax}
        % Left title and text node
        \node [sectiontext] (leftbox){
            \begin{minipage}{\minipagewidth}
                #2
            \end{minipage}
        };
        % Right title and text node
        \node [sectiontext, right=0.5\generalpagemargin, anchor=north west] (rightbox) at (leftbox.north east){
            \begin{minipage}{\minipagewidth}
                #4
            \end{minipage}
        };
        % Left title
        \node[sectiontitle] at (leftbox.north west) {\strut\sectionfont#1};
        % Right title
        \node[sectiontitle] at (rightbox.north west) {\strut\sectionfont#3};
        % Draw lines under titles
        \draw[sectionline] ([sectionlinenode1]leftbox.north west) -- ([sectionlinecolumnnode2]leftbox.north west);
        \draw[sectionline] ([sectionlinenode1]rightbox.north west) -- ([sectionlinecolumnnode2]rightbox.north west);
    \end{tikzpicture}
    \vspace{0.25\generalpagemargin}
}
%=========================================%
% Section with Timeline
%=========================================%
% Define section environment with timeline
\NewEnviron{sectiontimeline}[1]{
    \phantomsection % Phantom section for hyperlink
    \addcontentsline{toc}{section}{#1} % Add section to the table of contents
    \vspace{-0.25\generalpagemargin}
    \begin{mdframed}[
            backgroundcolor=backgroundcolor1, skipabove=0pt,
            skipbelow=0.25\generalpagemargin, innerleftmargin=0pt, innerrightmargin=0pt,
            innertopmargin=0pt, innerbottommargin=0pt, leftmargin=0pt, rightmargin=0pt,
            hidealllines=true
        ]
        \begin{tikzpicture}
            % Title and line
            \node[sectiontitle] at (0,0) {\strut\sectionfont#1};
            \draw[sectionline] (0,0.18\generalpagemargin) -- (\dimexpr\paperwidth-2\generalpagemargin-2pt\relax,0.18\generalpagemargin);
        \end{tikzpicture}
        \BODY
    \end{mdframed}
    \vspace{0.35\generalpagemargin}
}
% Use to align an element of tabular table
\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{J}[1]{>{\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
% Command to add an entry to the timeline
\newcommand\tikzmark[1]{\tikz[remember picture,overlay] \coordinate (#1);}
\newcommand{\timelineentry}[3]{
    \vspace{-0.20\generalpagemargin}
    \setlength\tabcolsep{0pt}
    \setlength{\extrarowheight}{0pt}
    \begin{adjustwidth}{0cm}{}
        \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}L{2.1cm} C{1cm} J{\dimexpr\textwidth -3.1cm\relax}}
            & \tikzmark{a} & \\
            \tikzmark{c} & \tikzmark{d} & #3 \\
            & \tikzmark{b} & \\
        \end{tabular*}
    \end{adjustwidth}
    \vspace{-0.30\generalpagemargin}
    \tikz[remember picture,overlay]
    {
        \draw[draw=backgroundcolor2,line width=2pt]([yshift=-0.5ex]a) -- ([yshift=1.8ex]b) {};
        \draw[draw=backgroundcolor2,line width=2pt]([yshift=0.6ex]d) node[circle,draw=backgroundcolor2, fill=white, inner sep=0pt,minimum size=5pt] {};
        \path([yshift=0.6ex]c) node[below= 0.2 cm,right=0cm] {#1};
        \path([yshift=0.6ex]c) node[above= 0.2 cm,right=0cm] {\textbf{#2}};
    }
}
\newcommand{\timelineentryspacer}{
    \vspace{-0.35\generalpagemargin}
    \setlength\tabcolsep{0pt}
    \setlength{\extrarowheight}{0pt}
    \begin{adjustwidth}{0cm}{}
        \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}L{2.1cm} C{1cm} L{\dimexpr\textwidth -3.1cm\relax}}
            & \tikzmark{a} & \\
            & \tikzmark{b} & \\
        \end{tabular*}
    \end{adjustwidth}
    \vspace{-0.50\generalpagemargin}
    \tikz[remember picture,overlay]
    {
        \draw[draw=backgroundcolor2,line width=2pt]([yshift=0.6ex]a) -- ([yshift=0.7ex]b) {};
    }
}

%=====================================================================================%
% List Style
%=====================================================================================%
% First level itemize
\setlist[itemize,1]{
    leftmargin=*,labelindent=0.25\generalpagemargin,
    labelsep=0.125\generalpagemargin, topsep=1mm
}
% Custom bullet points
\renewcommand\labelitemi{
    \begin{tikzpicture}[baseline=-0.6ex] % Align the bullet with the text baseline
        % Define nodes
        \node[inner xsep=0pt] (A) at (0, 0) {};
        \node[inner xsep=0pt] (B) at (0.25\generalpagemargin, 0) {};
        % Draw line
        \draw [line width=\sectionlinewidth] (A.center)--(B.center);
    \end{tikzpicture}
}

