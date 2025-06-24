import settings;
import size10;

prc = false;
settings.outformat = "pdf";
settings.inlinetex = false;
settings.tex = "lualatex";

defaultpen(fontsize(10));

// Включает/отключает локаль (например, десятичный разделитель --- запятая)
// locale("ru_RU.UTF-8");

texpreamble("
\usepackage[no-math]{fontspec}
\usepackage{polyglossia}
\setdefaultlanguage[indentfirst=true,spelling=modern]{russian}
\setotherlanguage{english}

\usepackage{unicode-math}
\usepackage{accents}

\unimathsetup{
  % math-style=french,
  math-style=TeX,
  % bold-style=ISO
  mathbf=sym,
  mathrm=sym,
}

\setmainfont[Ligatures=TeX]{IBM Plex Serif}
\setromanfont[Ligatures=TeX]{IBM Plex Serif}
\setsansfont[Ligatures=TeX]{IBM Plex Sans}
\setmonofont[Ligatures=TeX]{IBM Plex Mono}

\setmathfont{TeX Gyre Pagella Math}

\usepackage{physics}
% Нужно, если включена локаль, иначе какая-то беда
% с сеткой на графиках см. https://asymptote.sourceforge.io/FAQ/section4.html#decsep
%\usepackage{icomma}
");