\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{customized}[2025-05-16
	LaTeX class for paper
]

% -------- Option Declarations --------

\newcommand\@ptsize{}

\newif\if@restonecol

\newif\if@titlepage
\@titlepagefalse

\newif\if@openright
\@openrightfalse

\newif\if@double@blind@

\if@compatibility\else
	\DeclareOption{a4paper}{
		\setlength\paperheight {297mm}%
		\setlength\paperwidth  {210mm}%
	}
	\DeclareOption{a5paper}{
		\setlength\paperheight {210mm}%
		\setlength\paperwidth  {148mm}%
	}
	\DeclareOption{b5paper}{
		\setlength\paperheight {250mm}%
		\setlength\paperwidth  {176mm}%
	}

	\DeclareOption{landscape}{  % switch width and height for portrait paper
		\setlength\@tempdima   {\paperheight}%
		\setlength\paperheight {\paperwidth}%
		\setlength\paperwidth  {\@tempdima}%
	}
\fi

\if@compatibility
	\renewcommand\@ptsize{0}
\else
	\DeclareOption{10pt}{\renewcommand\@ptsize{0}}
\fi
\DeclareOption{11pt}{\renewcommand\@ptsize{1}}
\DeclareOption{12pt}{\renewcommand\@ptsize{2}}

\if@compatibility\else
	\DeclareOption{oneside}{
		\@twosidefalse
		\@mparswitchfalse
	}
\fi
\DeclareOption{twoside}{
	\@twosidetrue
	\@mparswitchtrue
}

\DeclareOption{titlepage}{\@titlepagetrue}
\if@compatibility\else
	\DeclareOption{notitlepage}{\@titlepagefalse}
\fi

\if@compatability
	\@openrighttrue
\else
	\DeclareOption{openright}{\@openrighttrue}
	\DeclareOption{openany}{\@openrightfalse}
\fi

\if@compatibility\else
	\DeclareOption{onecolumn}{\@twocolumnfalse}
\fi
\DeclareOption{twocolumn}{\@twocolumntrue}

\DeclareOption{leqno}{\input{leqno.clo}}  % make equation numbering to the left side
\DeclareOption{fleqn}{\input{fleqn.clo}}  % make equation flush to the left

\DeclareOption{doubleblind}{\@double@blind@true}


\ExecuteOptions{a4paper, twoside, twocolumn}
\ProcessOptions

%% For \above(below)displayskip and \above(below)displayshortskip, 
%% the rules are different between gather env and equation env.
%% In gather and align env, base skip is always used.
%% In equation env, if the nearest line above the equation env
%% ends before the first line of the equation env, this nearest line
%% is considered a `short' line, and short skips are used before and after
%% the equation env. Base skips are used otherwise.
%> See examples at https://www.zhihu.com/question/537764652/answer/2534890384

\LoadClassWithOptions{article}

\RequirePackage{preamble}