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
%\RequirePackage[showframe]{geometry} % Required for adjusting page dimensions and margins
\RequirePackage{geometry} % Required for adjusting page dimensions and margins
% Page margins and indentations
\newlength{\generalpagemargin}
\setlength{\generalpagemargin}{1.5cm}
\newlength{\topbottompagemargin}
\setlength{\topbottompagemargin}{4.5cm}
\newlength{\contentwidth}
\setlength{\contentwidth}{\dimexpr\paperwidth-2\generalpagemargin\relax}
\geometry{
    top=\topbottompagemargin, % Top margin
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
\usetikzlibrary{shapes.geometric} % For drawing geometric shapes
\RequirePackage[many]{tcolorbox} % Required for making colored boxes

%=====================================================================================%
% Colors
%=====================================================================================%
\RequirePackage{xcolor} % Color extensions for LaTeX
\definecolor{backgroundcolor1}{HTML}{F9FBFE}
\definecolor{backgroundcolor2}{HTML}{0C2C46}
\definecolor{maintextcolor}{HTML}{061623}
\definecolor{titlecolor}{HTML}{0C2C46}
\definecolor{lighttextcolor}{HTML}{F9FBFE}
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
\setlength{\sectionfontsize}{12.00pt}
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
\setlength\parindent{\generalpagemargin} 	% Set paragraph indentation length
\newcommand\setmaintextfont{
    \fontsize{\maintextfontsize}{\maintextlineheight}\rmfamily\selectfont
}

%=====================================================================================%
% Page Settings
%=====================================================================================%
\makeatletter
\newcommand{\makepage}{
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
}
\makeatother

%=====================================================================================%
% Environments
%=====================================================================================%
%=========================================%
% Section with Optional Image
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
inner ysep=\sectionypadding, text depth=0cm, yshift=0.35\generalpagemargin
]
\tikzstyle{sectionlinenode1} = [yshift=0.13\generalpagemargin]
\tikzstyle{sectionlinenode2} = [
yshift=0.13\generalpagemargin,xshift=\dimexpr\paperwidth-2\generalpagemargin-2pt\relax
]
\tikzstyle{sectionline} = [line width=\sectionlinewidth, color=backgroundcolor2]
\tikzstyle{sectiontext} = [rectangle, inner sep=0cm]
\tikzstyle{sectionimage} =[
right=0.25\generalpagemargin, inner sep=0cm, inner ysep=0cm, text depth=0cm,
]
% Define section environment with optional image argument
\NewEnviron{section}[2][]{
    \vspace{-0.3\generalpagemargin}
    \noindent
    \begin{tikzpicture}
        % Adjust the width of the minipage if an image is provided
        \ifx&#1&  % No image argument provided
        \setlength{\minipagewidth}{\dimexpr\paperwidth-2\generalpagemargin-2pt\relax}
        \else  % Image argument provided
        \setlength{\minipagewidth}{0.67\dimexpr\paperwidth-2\generalpagemargin-2pt\relax}
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
            \includegraphics[width=0.30\dimexpr\paperwidth-2\generalpagemargin-2pt\relax]{#1}
        };
        \fi
        % Title and line
        \node[sectiontitle] at (box.north west) {\strut\sectionfont#2};
        \draw[sectionline] ([sectionlinenode1]box.north west) -- ([sectionlinenode2]box.north west);
    \end{tikzpicture}
    \vspace{0.25\generalpagemargin}
}
%=========================================%
% Sections with Two Columns
%=========================================%
\tikzstyle{sectionlinecolumnnode2} = [
yshift=0.13\generalpagemargin,xshift=\dimexpr0.5\paperwidth-1.25\generalpagemargin-1pt\relax
]
% Define a new environment for sections with two titles and two different texts
\NewEnviron{sectiontwocolumns}[4]{
    \vspace{-0.3\generalpagemargin}
    \noindent
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
        \node [sectiontext, right=0.5\generalpagemargin] (rightbox) at (leftbox.east){
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

%=====================================================================================%
% List Style
%=====================================================================================%
% First level itemize
\setlist[itemize,1]{
    leftmargin=*,labelindent=0.25\generalpagemargin,
    labelsep=0.125\generalpagemargin, topsep=1mm
}
% First level enumerate
\setlist[enumerate,1]{leftmargin=*,labelindent=0.25\generalpagemargin,labelsep=0.125\generalpagemargin}
% Custom bullet points
\renewcommand\labelitemi{%
    \begin{tikzpicture}%
        \node[left, inner xsep=0pt] at (0, 0.5\sectionlinewidth) (A) {\hspace*{0pt}};%
        \pgfkeysgetvalue{/pgf/inner xsep}{\myAxsep}%
        \node[right, inner xsep=0pt] at (0.25\generalpagemargin, 0.5\sectionlinewidth) (B) {\hspace*{0pt}};%
        \pgfkeysgetvalue{/pgf/inner xsep}{\myBxsep}%
        \draw [line width=\sectionlinewidth] (A)--(B);%
        \pgfresetboundingbox%
        \useasboundingbox ($(A.south west)+(\myAxsep,-3pt)$) rectangle ($(B.north east)-(\myBxsep,0)$);%
    \end{tikzpicture}%
}