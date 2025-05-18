\NeedsTeXFormat{LaTeX2e}
\RequirePackage{expl3}
\ProvidesExplClass{mathrep} {2025-05-25} {v0.1.0} {Math Report Class for CSMC}

\RequirePackage { filehook }
\AtEndOfPackageFile* { fontspec }
{ \msg_redirect_name:nnn { fontspec } { no-script } { none } }
\AtEndOfPackageFile* { xeCJK }
{
  \msg_redirect_name:nnn { xeCJK } { CJKfamily-redef } { none }
  \defaultCJKfontfeatures
  {
    Script  = CJK,
  }
}

\LoadClassWithOptions{ctexbook}

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

\RequirePackage{fontspec}
\setmainfont{NewCM10-Book}
\setsansfont{NewCMSans10-Book}
\setmonofont{NewCMMono10-Book}

\RequirePackage{graphicx}
\RequirePackage{amsmath,amssymb}
\RequirePackage{subcaption}
\RequirePackage{bm}
\RequirePackage{amsthm}

\theoremstyle{definition}
\newtheorem{note}{编者补充笔记}[section]
\newtheorem{definition}{定义}[section]
\newtheorem{example}{例}[section]
\newtheorem{theorem}{定理}[section]

\RequirePackage{lmodern}
% \RequirePackage{times}
\RequirePackage{microtype}
\RequirePackage{siunitx}
\RequirePackage{booktabs}
\RequirePackage{xcolor}

\RequirePackage{hyperref}
\hypersetup{
  hidelinks,
  colorlinks = false
}

\RequirePackage{cleveref}
\newcommand{\crefpairconjunction}{~和~}
\newcommand{\crefmiddleconjunction}{、}
\newcommand{\creflastconjunction}{~和~}
\newcommand{\crefpairgroupconjunction}{~和~}
\newcommand{\crefmiddlegroupconjunction}{、}
\newcommand{\creflastgroupconjunction}{~和~}
\newcommand{\crefrangeconjunction}{～}

\crefname{appendix}{附录}{附录}
\crefname{definition}{定义}{定义}
\crefname{enumi}{项}{项}
\crefname{equation}{式}{式}
\crefname{figure}{图}{图}
\crefname{lemma}{引理}{引理}
\crefname{note}{编者补充笔记}{编者补充笔记}
\crefname{section}{章节}{章节}
\crefname{subsection}{小节}{小节}
\crefname{table}{表}{表}
\crefname{theorem}{定理}{定理}
\crefname{example}{例}{例}

\ExplSyntaxOff

\RequirePackage{tikz}
\RequirePackage{tikz-3dplot}

\usetikzlibrary{patterns}
\usetikzlibrary{positioning} % for relative positions
\usetikzlibrary{matrix}
\usetikzlibrary{3d,calc}

\counterwithin{figure}{section}
\counterwithin{table}{section}
% \newcommand{\env}[2]{\begin{#1}#2\end{#1}}

\newcommand*{\dif}{\mathop{}\!\mathrm{d}}
\newcommand\abs[1]{
  \ensuremath{\left\lvert #1 \right\rvert}
}

\ExplSyntaxOn

\int_new:N \l__mathrep_symbols_vec_input_count_int

\AtBeginDocument
{
  \RenewDocumentCommand { \vec } { m }
  { \__mathrep_symbols_vec:n {#1} }
}
\cs_new:Npn \__mathrep_symbols_vec:n #1
{
  % 先检测 #1 有多少个字符
  \__mathrep_symbols_vec_detect_number_of_input_str:n {#1}
  % 只有 1 个的：加粗，多于两个的加箭头
  \int_compare:nNnTF { \l__mathrep_symbols_vec_input_count_int } = {1}
  { \bm {#1} }
  { \overrightarrow {#1} }
}
\cs_new:Npn \__mathrep_symbols_vec_detect_number_of_input_str:n #1
{
  \int_set:Nn \l__mathrep_symbols_vec_input_count_int
  { \str_count:n { #1 } }
}
