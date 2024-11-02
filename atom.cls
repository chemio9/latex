\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{atom}
\LoadClassWithOptions{ctexart}

\RequirePackage[quiet]{fontspec}

\RequirePackage[
  a4paper,
  top=30mm,
  bottom=30mm,
  inner=20mm,
  outer=20mm,
  headheight=15mm,
  headsep=3mm,
  footskip=20mm,
]{geometry}

\RequirePackage{hyperref}
\hypersetup{
  hidelinks,
  colorlinks = false
}

\RequirePackage{graphicx}
\graphicspath{{./pics/} {../pics/}}
\RequirePackage[twoside]{fancyhdr}

\fancypagestyle{firstpage}{
    \fancyhf{}
    \fancyhead[LE]{\leftmark} %\slshape

    \fancyhead[RO]{
      D/R.1/1/Rev.2%
%
      \makeatletter%
      { \def\svgwidth{\f@size pt} \input{./pics/atom_svg-tex.pdf_tex} }%
      \makeatother%
%
      \rightmark%
    }
    \fancyfoot[LE,RO]{\hyperlink{toc}{\thepage}}
    \renewcommand{\headrulewidth}{0.4pt}
    \renewcommand{\footrulewidth}{0.4pt}
  }

\fancypagestyle{style}{
    \fancyhf{}
    \fancyhead[LE]{\leftmark} %\slshape

    \fancyhead[RO]{
      \rightmark
    }
    \fancyfoot[LE,RO]{\hyperlink{toc}{\thepage}}
    \renewcommand{\headrulewidth}{0.4pt}
    \renewcommand{\footrulewidth}{0.4pt}
  }
\pagestyle{style}

\AtBeginDocument{
  \maketitle
  \thispagestyle{firstpage}
}
