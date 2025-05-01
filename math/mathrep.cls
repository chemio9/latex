\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mathrep}
\LoadClassWithOptions{ctexart}

% \RequirePackage[
%   a4paper,
%   top=30mm,
%   bottom=30mm,
%   inner=20mm,
%   outer=20mm,
%   headheight=15mm,
%   headsep=3mm,
%   footskip=20mm,
% ]{geometry}

\RequirePackage{amsmath,amssymb}
\RequirePackage{amsthm}

\theoremstyle{definition}
\newtheorem{note}{编者补充笔记}[section]
\newtheorem{definition}{定义}[section]

\RequirePackage{array}
\RequirePackage{graphicx}
\RequirePackage{lmodern}
\RequirePackage{microtype}
\RequirePackage{siunitx}
\RequirePackage{times}
\RequirePackage{booktabs}
\RequirePackage{xcolor}

% disable hyperref temporarily, see https://github.com/CTeX-org/ctex-kit/issues/725
\RequirePackage{hyperref}
\hypersetup{
	hidelinks,
	colorlinks = false
}

\RequirePackage{cleveref}
\crefname{definition}{定义}{定义}
\crefname{enumi}{项}{项}
\crefname{figure}{图}{图}
\crefname{lemma}{引理}{引理}
\crefname{table}{表}{表}
\crefname{theorem}{定理}{定理}
\crefname{section}{章节}{章节}
\crefname{subsection}{小节}{小节}
\crefname{equation}{式}{式}
\crefname{note}{编者补充笔记}{编者补充笔记}

\RequirePackage{tikz}
\RequirePackage{tikz-3dplot}

\usetikzlibrary{patterns}
\usetikzlibrary{positioning} % for relative positions
\usetikzlibrary{matrix}
\usetikzlibrary{3d,calc}

% \newcommand{\env}[2]{\begin{#1}#2\end{#1}}

\newcommand{\abs}[1]{
	\ensuremath{\left\lvert #1 \right\rvert}
}
