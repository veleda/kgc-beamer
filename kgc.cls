\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{kgc}[2021/03/02]

% Minimal beamer template created for Knowledge Graph Conference 2021
% By Veronika Heimsbakk, veronika.heim@gmail.com
% github.com/veleda
%
% THIS IS NOT AN OFFICIAL TEMPLATE!
% Reuse and reshare as you like. 

\RequirePackage{graphicx}
\RequirePackage{tikz}
\RequirePackage{color}
\RequirePackage[utf8]{inputenc}
\RequirePackage{tcolorbox}
\RequirePackage{fontawesome}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions \relax
\LoadClass[10pt]{beamer}

\RequirePackage[familydefault,regular]{Chivo}
\RequirePackage[T1]{fontenc}

\definecolor{kgcorgange}{RGB}{244, 128, 32}
\definecolor{kgcyellow}{RGB}{255, 201, 61}
\definecolor{kgcteal}{RGB}{34, 167, 166}
\definecolor{kgcblue}{RGB}{28, 71, 150}
\definecolor{kgcbluedk}{RGB}{29, 43, 80}
\definecolor{kgcpink}{RGB}{208, 22, 127}

\setbeamertemplate{itemize item}{\color{black} \faAngleRight}
\setbeamertemplate{itemize subitem}{\color{black} \faAngleDoubleRight}
\setbeamertemplate{navigation symbols}{}

\setbeamertemplate{frametitle}
{
	\begin{center}
		\begin{tikzpicture}
			\draw[kgcteal, very thick](0,0)--(0.8,0);
		\end{tikzpicture}

		\textcolor{black}{\normalsize{\insertframetitle}}

	\end{center}
}

\tcbset{
		colframe=kgcteal, 
		sharp corners, 
		colback=kgcteal!3!white,
		width=10cm, 
		boxrule=0mm, 
		leftrule=1mm,
        fontupper=\ttfamily,
		left=0.8pt, 
		bottom=1pt, 
		top=1pt
}

\newcommand{\tp}[1]{
	\begin{tikzpicture}[remember picture,overlay]
		\shade[right color=kgcblue,left color=kgcteal]
		  ([shift={(0,0)}]current page.north west)
			 rectangle
		  ([shift={(0,0)}]current page.south east);
	\end{tikzpicture}%

	\Large{\textcolor{white}{\inserttitle}}

	\vspace{-10pt}

	\begin{tikzpicture}
		\draw[white, thick](0,0)--(12,0);
	\end{tikzpicture}

	\scriptsize{\textcolor{white}{#1}}

	\vspace{50pt}

	\normalsize{\textcolor{white}{By \insertshortauthor}}
}

\newenvironment{code}{
    \begin{tcolorbox}
            }{
    \end{tcolorbox}
}

\newcommand{\presentationframe}[2]{
\begin{minipage}{0.30\textwidth}
	\begin{tikzpicture} 
		\begin{scope}
			\clip [rounded corners=1.5cm] (3,0) rectangle coordinate (centerpoint) (6,3); 
			\node [inner sep=0pt] at (centerpoint) {\includegraphics[width=3cm]{#1}}; 
		\end{scope}
	\end{tikzpicture}
\end{minipage}
\hspace{5pt}
\begin{minipage}{0.60\textwidth}
	\begin{tikzpicture}
		\draw[kgcteal, very thick](0,0)--(0.7,0);
	\end{tikzpicture}

	\vspace{5pt}

	\small{\inserttitle}

	\vspace{20pt}

	\scriptsize{\insertshortauthor}

	\vspace{5pt}

	\tiny{#2}
\end{minipage}
}

\newcommand{\subtitleframe}[1]{
	\begin{tikzpicture}[remember picture,overlay]
		\shade[right color=kgcblue,left color=kgcteal]
		  ([shift={(0,0)}]current page.north west)
			 rectangle
		  ([shift={(0,0)}]current page.south east);
	\end{tikzpicture}%

	\begin{center}
		\begin{tikzpicture}
			\draw[white, very thick](0,0)--(0.7,0);
		\end{tikzpicture}

		\vspace{5pt}

		\Large{\textcolor{white}{#1}}
	\end{center}
	
}


\newcommand{\theend}[1]{
	{
		\setbeamertemplate{footline}{\parbox{\linewidth}{\vspace*{-60pt} 
			\hspace{5pt} \scriptsize{\textcolor{kgcbluedk}{\faTwitter{} \hspace{5pt} @KGConference}
			\hspace{5pt} \textcolor{kgcteal}{@#1}} 
			
			\vspace{5pt}
			
			\textcolor{kgcbluedk}{\hspace{5pt} \scriptsize{\faLinkedin{} \hspace{5pt} linkedin.com/company/the-knowldge-graph-conference/}}

			\vspace{5pt}
			
			\textcolor{kgcbluedk}{\hspace{5pt} \scriptsize{\faYoutubePlay{} \hspace{5pt} youtube.com/playlist?list=PLAiy7NYe9U2Gjg-600CTV1HGypiF95d\_D}}
		}}
		\begin{frame}	
    
		\begin{tikzpicture}[remember picture,overlay]
			\shade[right color=kgcblue,left color=kgcteal]
			([shift={(0,0)}]current page.north west)
				rectangle
			([shift={(0,2)}]current page.south east);
		\end{tikzpicture}%

		\begin{center}

			\vspace{-50pt}

			\begin{tikzpicture}
				\draw[white, very thick](0,0)--(0.7,0);
			\end{tikzpicture}

			\vspace{5pt}

			\large{\textcolor{white}{\#KGC2021}}

			\vspace{5pt}

			\normalsize{\textcolor{white}{Join the Conversation}}
		
		\end{center}

	\end{frame} 
	}
}