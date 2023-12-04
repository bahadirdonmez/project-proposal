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
% Geometry
%=====================================================================================%
\RequirePackage{geometry} % Required for adjusting page dimensions and margins
%\RequirePackage[showframe]{geometry} % Required for adjusting page dimensions and margins
% Page margins and indentations
\newlength{\generalpagemargin}
\setlength{\generalpagemargin}{2cm}
\newlength{\topbottompagemargin}
\setlength{\topbottompagemargin}{4cm}
\newlength{\paragraphmargin}
\setlength{\paragraphmargin}{1cm}
\newlength{\contentwidth}
\setlength{\contentwidth}{\dimexpr\paperwidth-2\generalpagemargin\relax}
\geometry{
    top=\generalpagemargin, % Top margin
    bottom=\topbottompagemargin, % Bottom margin
    left=\generalpagemargin, % Left margin
    right=\generalpagemargin, % Right margin
    headheight=0cm, % Header height
    headsep=0cm, % Header separation
    footskip=0.5\topbottompagemargin, % Header separation
}
%=====================================================================================%
% Graphics and Tables
%=====================================================================================%
\RequirePackage{tikz}  % Creating graphic elements
\usetikzlibrary{calc} % Required for coordinate calculation.
\RequirePackage[many]{tcolorbox} % Required for making colored boxes

%=====================================================================================%
% Colors
%=====================================================================================%
\RequirePackage{xcolor} % Color extensions for LaTeX
\definecolor{backgroundcolor}{HTML}{F9FBFE} %RGB: 12, 44, 70
\definecolor{maintextcolor}{HTML}{061623} %RGB: 12, 44, 70
\definecolor{titlecolor}{HTML}{0C2C46} %RGB: 12, 44, 70
\definecolor{palettecolor1}{HTML}{52B3F4} %RGB: 82, 179, 244
\definecolor{palettecolor2}{HTML}{C52E51} %RGB: 82, 179, 244

%=====================================================================================%
% Typography
%=====================================================================================%
\RequirePackage[english]{babel} % Set language and hyphenation for American English
\RequirePackage{csquotes} % Recommended to load when using babel.
\RequirePackage[babel=true, final=true]{microtype} % Microtypographical enhancements
%=========================================%
% Custom Fonts
%=========================================%
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
%=========================================%
% Title Font
%=========================================%
\newlength{\titlefontsize}
\setlength{\titlefontsize}{24.00pt}
\newlength{\titlelineheight}
\setlength{\titlelineheight}{1.10\titlefontsize}
\newcommand\titlefont{
    \fontsize{\titlefontsize}{\titlelineheight}\fontseries{b}\sffamily\selectfont\raggedright%
}
%=========================================%
% Badge Font
%=========================================%
\newlength{\badgefontsize}
\setlength{\badgefontsize}{14.50pt}
\newlength{\badgelineheight}
\setlength{\badgelineheight}{1.17\badgefontsize}
\newcommand\badgefont{
    \fontsize{\badgefontsize}{\badgelineheight}\fontseries{b}\sffamily\selectfont\raggedright%
}
\newlength{\badgexpadding}
\newlength{\badgeypadding}
\setlength{\badgexpadding}{\dimexpr0.5\paragraphmargin\relax}
\setlength{\badgeypadding}{\dimexpr0.25\paragraphmargin\relax}
%=========================================%
% Main Text Font
%=========================================%
\newlength{\maintextfontsize}
\setlength{\maintextfontsize}{12.00pt}
\newlength{\maintextlineheight}
\setlength{\maintextlineheight}{1.47059\maintextfontsize}
\setlength\parindent{\paragraphmargin} 	% Set paragraph indentation length
\newcommand\setmaintextfont{
    \fontsize{\maintextfontsize}{\maintextlineheight}\rmfamily\selectfont
}

%=====================================================================================%
% Page Settings
%=====================================================================================%
\makeatletter
\newcommand{\makepage}{
    \pagecolor{backgroundcolor}
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
    % Title
    %=========================================%
    \newlength{\titleheight}
    \settoheight{\titleheight}{\vbox{\titlefont\@projecttitle}}
    \setlength{\titleheight}{\dimexpr\titleheight+2\titlelineheight-2\titlefontsize\relax}
    \newlength{\titlexpos}
    \setlength{\titlexpos}{\dimexpr0.5\paperwidth\relax}
    \newlength{\titleypos}
    \setlength{\titleypos}{\dimexpr-\generalpagemargin-0.5\titleheight\relax}
    %=========================================%
    % Project Type
    %=========================================%
    \newlength{\projecttypeheight}
    \newlength{\projecttypelength}
    \settoheight{\projecttypeheight}{\vbox{\badgefont\@projecttype}}
    \setlength{\projecttypeheight}{\dimexpr\projecttypeheight+\badgelineheight-\badgefontsize\relax}
    \settowidth{\projecttypelength}{\badgefont{\@projecttype}}
    \newlength{\projecttypexpos}
    \setlength{\projecttypexpos}{\dimexpr\generalpagemargin+0.5\projecttypelength+\badgexpadding\relax}
    \newlength{\projecttypeypos}
    \setlength{\projecttypeypos}{\dimexpr\titleypos-0.5\titleheight-\projecttypeheight-0.5\badgexpadding\relax}
    %=========================================%
    % Project Semester
    %=========================================%
    \newlength{\projectsemesterheight}
    \newlength{\projectsemesterlength}
    \settoheight{\projectsemesterheight}{\vbox{\badgefont\@projectsemester}}
    \setlength{\projectsemesterheight}{\dimexpr\projectsemesterheight+\badgelineheight-\badgefontsize\relax}
    \settowidth{\projectsemesterlength}{\badgefont{\@projectsemester}}
    \newlength{\projectsemesterexpos}
    \setlength{\projectsemesterexpos}{\dimexpr\projecttypexpos+0.5\projecttypelength+0.5\projectsemesterlength+2.5\badgexpadding\relax}
    \newlength{\projectsemestereypos}
    \setlength{\projectsemestereypos}{\projecttypeypos}
    \begin{tikzpicture}[remember picture,overlay]
        \node at (current page.north west) {
            \begin{tikzpicture}[remember picture,overlay]
                \draw (\titlexpos,\titleypos) node {
                    \parbox[c][\titleheight][c]{\contentwidth}{
                        \titlefont\@projecttitle
                    }
                };
                \draw (\projecttypexpos,\projecttypeypos) node
                [fill=palettecolor1, fill opacity=1, inner sep=\badgexpadding, inner ysep=\badgeypadding]  {
                    \parbox[c][\projecttypeheight][c]{\projecttypelength}{
                        \color{backgroundcolor}\badgefont\@projecttype
                    }
                };
                \draw (\projectsemesterexpos,\projectsemestereypos) node
                [fill=palettecolor2, fill opacity=1, inner sep=0.50\paragraphmargin, inner ysep=0.25\paragraphmargin]  {
                    \parbox[c][\projectsemesterheight][c]{\projectsemesterlength}{
                        \color{backgroundcolor}\badgefont\@projectsemester
                    }
                };
            \end{tikzpicture}
        };
    \end{tikzpicture}
}
\makeatother
