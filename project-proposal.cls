%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Project Proposal Template by Bahadır Dönmez
% Class Definitions File
% v1.0.0 (30/11/2023)
%
% Author:
% Bahadır Dönmez (bhdr.donmez@gmail.com) 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%---------------------------------------------------------------------------------------
% Identification
%---------------------------------------------------------------------------------------
% The class identifies itself, and the LaTeX version needed
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{project-proposal}[30/11/2023 Project Proposal Template by Bahadır Dönmez]

%---------------------------------------------------------------------------------------
% Preliminary declarations
%---------------------------------------------------------------------------------------
% This part handles the options passed to the class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}} % All unknown options will be passed to the book document class.
\ProcessOptions\relax % Execute the code for each option
% Specify the book class as the document class and pass the following options:
%   - Set the font size for the document to 12 points.
%   - Set the paper size to a4paper
\LoadClass[12pt, a4paper]{article}

%---------------------------------------------------------------------------------------
% Geometry
%---------------------------------------------------------------------------------------
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
    top=\topbottompagemargin, % Top margin
    bottom=\topbottompagemargin, % Bottom margin
    left=\generalpagemargin, % Left margin
    right=\generalpagemargin, % Right margin
    headheight=0.25\topbottompagemargin, % Header height
    headsep=0.25\topbottompagemargin, % Header separation
    footskip=0.5\topbottompagemargin, % Header separation
}
    
%---------------------------------------------------------------------------------------
% Typography
%---------------------------------------------------------------------------------------
\RequirePackage[english]{babel} % Set language and load hyphenation patterns for American English
\RequirePackage{csquotes} % Recommended to load when using babel.
\RequirePackage[babel=true, final=true]{microtype} % Microtypographical enhancements which can prevent overfull boxes
    %-----------------------------------------------------------------------------------
    % Custom Fonts
    %-----------------------------------------------------------------------------------
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
        FontFace={xxk}{it}{*-BlackItalic}%
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
        FontFace={xxk}{it}{*-BlackItalic}%
    ]
    %-----------------------------------------------------------------------------------
    % Main Text
    %-----------------------------------------------------------------------------------
    \newlength{\maintextfontsize}
    \setlength{\maintextfontsize}{26.00pt}
    \newlength{\maintextlineheight}
    \setlength{\maintextlineheight}{1.47059\maintextfontsize}
    \setlength\parindent{\paragraphmargin} 	% Set paragraph indentation length
    \newcommand\maintextfont{%
        \fontsize{\maintextfontsize}{\maintextlineheight}\rmfamily\selectfont%
    }

%---------------------------------------------------------------------------------------
% Page Header
%---------------------------------------------------------------------------------------
\makeatletter
    \newcommand{\makepageheader}[1]{%
        \def\@projecttitle{#1}
    }%
\makeatother



