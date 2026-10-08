%% ============================================================
%% China Communications integrated LaTeX class
%% Reorganized clean edition based on the accepted v67 settings
%% ------------------------------------------------------------
%% Purpose:
%%   - keep BibTeX + natbib workflow;
%%   - keep the built-in BST generation;
%%   - preserve the current heading, float, equation, bibliography,
%%     and two-column layout behavior exactly;
%%   - make the template structure clearer for maintenance.
%%
%% Functional note:
%%   This file was reorganized cosmetically and structurally.
%%   Executable TeX settings are intentionally preserved.
%% ============================================================

% Integrated BibTeX style for China Communications references
% This writes the required .bst file automatically, so authors only need ccjnl.cls.
% The generated filename is immutable for this release.  Any future BST rule
% change must use a new versioned filename so an older project-local BST cannot
% shadow the style embedded in a newer class.
%% ------------------------------------------------------------
%% 0. Auto-generated BibTeX style
%% ------------------------------------------------------------
\begin{filecontents*}{ccjnl_integrated_legacy_structure_bibcase_v37.bst}
%%
%% IEEEtran.bst
%% CCJNL formal derivative, 2026-08-16.
%% IEEE Reference Style Guide for Authors (V 3.28.2025) is the base.
%% CCJNL override: journal, conference, proceedings, publisher,
%% institution, and university names must be supplied and printed in full.
%% BibTeX Bibliography Style file for IEEE Journals and Conferences (unsorted)
%% Version 1.14 (2015/08/26)
%% 
%% Copyright (c) 2003-2015 Michael Shell
%% 
%% Original starting code base and algorithms obtained from the output of
%% Patrick W. Daly's makebst package as well as from prior versions of
%% IEEE BibTeX styles:
%% 
%% 1. Howard Trickey and Oren Patashnik's ieeetr.bst  (1985/1988)
%% 2. Silvano Balemi and Richard H. Roy's IEEEbib.bst (1993)
%% 
%% Support sites:
%% http://www.michaelshell.org/tex/ieeetran/
%% http://www.ctan.org/pkg/ieeetran
%% and/or
%% http://www.ieee.org/
%% 
%% For use with BibTeX version 0.99a or later
%%
%% This is a numerical citation style.
%% 
%%*************************************************************************
%% Legal Notice:
%% This code is offered as-is without any warranty either expressed or
%% implied; without even the implied warranty of MERCHANTABILITY or
%% FITNESS FOR A PARTICULAR PURPOSE! 
%% User assumes all risk.
%% In no event shall the IEEE or any contributor to this code be liable for
%% any damages or losses, including, but not limited to, incidental,
%% consequential, or any other damages, resulting from the use or misuse
%% of any information contained here.
%%
%% All comments are the opinions of their respective authors and are not
%% necessarily endorsed by the IEEE.
%%
%% This work is distributed under the LaTeX Project Public License (LPPL)
%% ( http://www.latex-project.org/ ) version 1.3, and may be freely used,
%% distributed and modified. A copy of the LPPL, version 1.3, is included
%% in the base LaTeX documentation of all distributions of LaTeX released
%% 2003/12/01 or later.
%% Retain all contribution notices and credits.
%% ** Modified files should be clearly indicated as such, including  **
%% ** renaming them and changing author support contact information. **
%%*************************************************************************


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% DEFAULTS FOR THE CONTROLS OF THE BST STYLE %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% These are the defaults for the user adjustable controls. The values used
% here can be overridden by the user via IEEEtranBSTCTL entry type.

% NOTE: The recommended LaTeX command to invoke a control entry type is:
% 
%\makeatletter
%\def\bstctlcite{\@ifnextchar[{\@bstctlcite}{\@bstctlcite[@auxout]}}
%\def\@bstctlcite[#1]#2{\@bsphack
%  \@for\@citeb:=#2\do{%
%    \edef\@citeb{\expandafter\@firstofone\@citeb}%
%    \if@filesw\immediate\write\csname #1\endcsname{\string\citation{\@citeb}}\fi}%
%  \@esphack}
%\makeatother
%
% It is called at the start of the document, before the first \cite, like:
% \bstctlcite{IEEEexample:BSTcontrol}
%
% IEEEtran.cls V1.6 and later does provide this command.



% #0 turns off the display of the number for articles.
% #1 enables
FUNCTION {default.is.use.number.for.article} { #1 }


% #0 turns off the display of the paper and type fields in @inproceedings.
% #1 enables
FUNCTION {default.is.use.paper} { #1 }


% #0 turns off the display of urls
% #1 enables
FUNCTION {default.is.use.url} { #1 }


% #0 turns off the forced use of "et al."
% #1 enables
FUNCTION {default.is.forced.et.al} { #1 }


% The maximum number of names that can be present beyond which an "et al."
% usage is forced. Be sure that num.names.shown.with.forced.et.al (below)
% is not greater than this value!
% Note: There are many instances of references in IEEE journals which have
% a very large number of authors as well as instances in which "et al." is
% used profusely.
FUNCTION {default.max.num.names.before.forced.et.al} { #2 }


% The number of names that will be shown with a forced "et al.".
% Must be less than or equal to max.num.names.before.forced.et.al
FUNCTION {default.num.names.shown.with.forced.et.al} { #2 }


% #0 turns off the alternate interword spacing for entries with URLs.
% #1 enables
FUNCTION {default.is.use.alt.interword.spacing} { #1 }


% If alternate interword spacing for entries with URLs is enabled, this is
% the interword spacing stretch factor that will be used. For example, the
% default "4" here means that the interword spacing in entries with URLs can
% stretch to four times normal. Does not have to be an integer. Note that
% the value specified here can be overridden by the user in their LaTeX
% code via a command such as: 
% "\providecommand\BIBentryALTinterwordstretchfactor{1.5}" in addition to
% that via the IEEEtranBSTCTL entry type.
FUNCTION {default.ALTinterwordstretchfactor} { "4" }


% Always print the full author list for every reference. Repeated author
% lists must not be replaced by a dash sequence in China Communications.
FUNCTION {default.is.dash.repeated.names} { #0 }


% The default name format control string.
FUNCTION {default.name.format.string}{ "{f.~}{vv~}{ll}{, jj}" }


% The default LaTeX font command for the names.
FUNCTION {default.name.latex.cmd}{ "" }


% The default URL prefix.
FUNCTION {default.name.url.prefix}{ "[Online]. Available:" }


% Other controls that cannot be accessed via IEEEtranBSTCTL entry type.

% #0 turns off the terminal startup banner/completed message so as to
% operate more quietly.
% #1 enables
FUNCTION {is.print.banners.to.terminal} { #1 }




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% FILE VERSION AND BANNER %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

FUNCTION{bst.file.version} { "1.14" }
FUNCTION{bst.file.date} { "2015/08/26" }
FUNCTION{bst.file.website} { "http://www.michaelshell.org/tex/ieeetran/bibtex/" }

FUNCTION {banner.message}
{ is.print.banners.to.terminal
     { "-- IEEEtran.bst version" " " * bst.file.version *
       " (" * bst.file.date * ") " * "by Michael Shell." *
       top$
       "-- " bst.file.website *
       top$
       "-- See the " quote$ * "IEEEtran_bst_HOWTO.pdf" * quote$ * " manual for usage information." *
       top$
     }
     { skip$ }
   if$
}

FUNCTION {completed.message}
{ is.print.banners.to.terminal
     { ""
       top$
       "Done."
       top$
     }
     { skip$ }
   if$
}




%%%%%%%%%%%%%%%%%%%%%%
%% STRING CONSTANTS %%
%%%%%%%%%%%%%%%%%%%%%%

FUNCTION {bbl.and}{ "and" }
FUNCTION {bbl.etal}{ "et~al." }
FUNCTION {bbl.editors}{ "eds." }
FUNCTION {bbl.editor}{ "ed." }
FUNCTION {bbl.edition}{ "ed." }
FUNCTION {bbl.volume}{ "vol." }
FUNCTION {bbl.of}{ "of" }
FUNCTION {bbl.number}{ "no." }
FUNCTION {bbl.in}{ "in" }
FUNCTION {bbl.pages}{ "pp." }
FUNCTION {bbl.page}{ "p." }
FUNCTION {bbl.chapter}{ "ch." }
FUNCTION {bbl.paper}{ "paper" }
FUNCTION {bbl.part}{ "pt." }
FUNCTION {bbl.patent}{ "Patent" }
FUNCTION {bbl.patentUS}{ "U.S." }
FUNCTION {bbl.revision}{ "Rev." }
FUNCTION {bbl.series}{ "ser." }
FUNCTION {bbl.standard}{ "Std." }
FUNCTION {bbl.techrep}{ "Tech. Rep." }
FUNCTION {bbl.mthesis}{ "Master's thesis" }
FUNCTION {bbl.phdthesis}{ "Ph.D. dissertation" }
FUNCTION {bbl.st}{ "st" }
FUNCTION {bbl.nd}{ "nd" }
FUNCTION {bbl.rd}{ "rd" }
FUNCTION {bbl.th}{ "th" }


% This is the LaTeX spacer that is used when a larger than normal space
% is called for (such as just before the address:publisher).
FUNCTION {large.space} { "\hskip 1em plus 0.5em minus 0.4em\relax " }

% The LaTeX code for dashes that are used to represent repeated names.
% Note: Some older IEEE journals used something like
% "\rule{0.275in}{0.5pt}\," which is fairly thick and runs right along
% the baseline. However, the IEEE now uses a thinner, above baseline,
% six dash long sequence.
FUNCTION {repeated.name.dashes} { "------" }



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% PREDEFINED STRING MACROS %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

MACRO {jan} {"Jan."}
MACRO {feb} {"Feb."}
MACRO {mar} {"Mar."}
MACRO {apr} {"Apr."}
MACRO {may} {"May"}
MACRO {jun} {"Jun."}
MACRO {jul} {"Jul."}
MACRO {aug} {"Aug."}
MACRO {sep} {"Sep."}
MACRO {oct} {"Oct."}
MACRO {nov} {"Nov."}
MACRO {dec} {"Dec."}



%%%%%%%%%%%%%%%%%%
%% ENTRY FIELDS %%
%%%%%%%%%%%%%%%%%%

ENTRY
  { address
    assignee
    author
    booktitle
    chapter
    day
    doi
    urldate
    accessed
    eid
    articleno
    status
    department
    dayfiled
    edition
    editor
    howpublished
    institution
    intype
    journal
    key
    language
    month
    monthfiled
    nationality
    note
    number
    organization
    pages
    paper
    publisher
    school
    series
    revision
    title
    type
    url
    volume
    year
    yearfiled
    CTLuse_article_number
    CTLuse_paper
    CTLuse_url
    CTLuse_forced_etal
    CTLmax_names_forced_etal
    CTLnames_show_etal
    CTLuse_alt_spacing
    CTLalt_stretch_factor
    CTLdash_repeated_names
    CTLname_format_string
    CTLname_latex_cmd
    CTLname_url_prefix
  }
  {}
  { label }




%%%%%%%%%%%%%%%%%%%%%%%
%% INTEGER VARIABLES %%
%%%%%%%%%%%%%%%%%%%%%%%

INTEGERS { prev.status.punct this.status.punct punct.std
           punct.no punct.comma punct.period 
           prev.status.space this.status.space space.std
           space.no space.normal space.large
           prev.status.quote this.status.quote quote.std
           quote.no quote.close
           prev.status.nline this.status.nline nline.std
           nline.no nline.newblock 
           status.cap cap.std
           cap.no cap.yes}

INTEGERS { longest.label.width multiresult nameptr namesleft number.label numnames }

INTEGERS { is.use.number.for.article
           is.use.paper
           is.use.url
           is.forced.et.al
           max.num.names.before.forced.et.al
           num.names.shown.with.forced.et.al
           is.use.alt.interword.spacing
           is.dash.repeated.names}


%%%%%%%%%%%%%%%%%%%%%%
%% STRING VARIABLES %%
%%%%%%%%%%%%%%%%%%%%%%

STRINGS { bibinfo
          longest.label
          oldname
          s
          t
          u
          ALTinterwordstretchfactor
          name.format.string
          name.latex.cmd
          name.url.prefix}




%%%%%%%%%%%%%%%%%%%%%%%%%
%% LOW LEVEL FUNCTIONS %%
%%%%%%%%%%%%%%%%%%%%%%%%%

FUNCTION {initialize.controls}
{ default.is.use.number.for.article 'is.use.number.for.article :=
  default.is.use.paper 'is.use.paper :=
  default.is.use.url 'is.use.url :=
  default.is.forced.et.al 'is.forced.et.al :=
  default.max.num.names.before.forced.et.al 'max.num.names.before.forced.et.al :=
  default.num.names.shown.with.forced.et.al 'num.names.shown.with.forced.et.al :=
  default.is.use.alt.interword.spacing 'is.use.alt.interword.spacing :=
  default.is.dash.repeated.names 'is.dash.repeated.names :=
  default.ALTinterwordstretchfactor 'ALTinterwordstretchfactor :=
  default.name.format.string 'name.format.string :=
  default.name.latex.cmd 'name.latex.cmd :=
  default.name.url.prefix 'name.url.prefix :=
}


% This IEEEtran.bst features a very powerful and flexible mechanism for
% controlling the capitalization, punctuation, spacing, quotation, and
% newlines of the formatted entry fields. (Note: IEEEtran.bst does not need
% or use the newline/newblock feature, but it has been implemented for
% possible future use.) The output states of IEEEtran.bst consist of
% multiple independent attributes and, as such, can be thought of as being
% vectors, rather than the simple scalar values ("before.all", 
% "mid.sentence", etc.) used in most other .bst files.
% 
% The more flexible and complex design used here was motivated in part by
% the IEEE's rather unusual bibliography style. For example, the IEEE ends the
% previous field item with a period and large space prior to the publisher
% address; the @electronic entry types use periods as inter-item punctuation
% rather than the commas used by the other entry types; and URLs are never
% followed by periods even though they are the last item in the entry.
% Although it is possible to accommodate these features with the conventional
% output state system, the seemingly endless exceptions make for convoluted,
% unreliable and difficult to maintain code.
%
% IEEEtran.bst's output state system can be easily understood via a simple
% illustration of two most recently formatted entry fields (on the stack):
%
%               CURRENT_ITEM
%               "PREVIOUS_ITEM
%
% which, in this example, is to eventually appear in the bibliography as:
% 
%               "PREVIOUS_ITEM," CURRENT_ITEM
%
% It is the job of the output routine to take the previous item off of the
% stack (while leaving the current item at the top of the stack), apply its
% trailing punctuation (including closing quote marks) and spacing, and then
% to write the result to BibTeX's output buffer:
% 
%               "PREVIOUS_ITEM," 
% 
% Punctuation (and spacing) between items is often determined by both of the
% items rather than just the first one. The presence of quotation marks
% further complicates the situation because, in standard English, trailing
% punctuation marks are supposed to be contained within the quotes.
% 
% IEEEtran.bst maintains two output state (aka "status") vectors which
% correspond to the previous and current (aka "this") items. Each vector
% consists of several independent attributes which track punctuation,
% spacing, quotation, and newlines. Capitalization status is handled by a
% separate scalar because the format routines, not the output routine,
% handle capitalization and, therefore, there is no need to maintain the
% capitalization attribute for both the "previous" and "this" items.
% 
% When a format routine adds a new item, it copies the current output status
% vector to the previous output status vector and (usually) resets the
% current (this) output status vector to a "standard status" vector. Using a
% "standard status" vector in this way allows us to redefine what we mean by
% "standard status" at the start of each entry handler and reuse the same
% format routines under the various inter-item separation schemes. For
% example, the standard status vector for the @book entry type may use
% commas for item separators, while the @electronic type may use periods,
% yet both entry handlers exploit many of the exact same format routines.
% 
% Because format routines have write access to the output status vector of
% the previous item, they can override the punctuation choices of the
% previous format routine! Therefore, it becomes trivial to implement rules
% such as "Always use a period and a large space before the publisher." By
% pushing the generation of the closing quote mark to the output routine, we
% avoid all the problems caused by having to close a quote before having all
% the information required to determine what the punctuation should be.
%
% The IEEEtran.bst output state system can easily be expanded if needed.
% For instance, it is easy to add a "space.tie" attribute value if the
% bibliography rules mandate that two items have to be joined with an
% unbreakable space. 

FUNCTION {initialize.status.constants}
{ #0 'punct.no :=
  #1 'punct.comma :=
  #2 'punct.period :=
  #0 'space.no := 
  #1 'space.normal :=
  #2 'space.large :=
  #0 'quote.no :=
  #1 'quote.close :=
  #0 'cap.no :=
  #1 'cap.yes :=
  #0 'nline.no :=
  #1 'nline.newblock :=
}

FUNCTION {std.status.using.comma}
{ punct.comma 'punct.std :=
  space.normal 'space.std :=
  quote.no 'quote.std :=
  nline.no 'nline.std :=
  cap.no 'cap.std :=
}

FUNCTION {std.status.using.period}
{ punct.period 'punct.std :=
  space.normal 'space.std :=
  quote.no 'quote.std :=
  nline.no 'nline.std :=
  cap.yes 'cap.std :=
}

FUNCTION {initialize.prev.this.status}
{ punct.no 'prev.status.punct :=
  space.no 'prev.status.space :=
  quote.no 'prev.status.quote :=
  nline.no 'prev.status.nline :=
  punct.no 'this.status.punct :=
  space.no 'this.status.space :=
  quote.no 'this.status.quote :=
  nline.no 'this.status.nline :=
  cap.yes 'status.cap :=
}

FUNCTION {this.status.std}
{ punct.std 'this.status.punct :=
  space.std 'this.status.space :=
  quote.std 'this.status.quote :=
  nline.std 'this.status.nline :=
}

FUNCTION {cap.status.std}{ cap.std 'status.cap := }

FUNCTION {this.to.prev.status}
{ this.status.punct 'prev.status.punct :=
  this.status.space 'prev.status.space :=
  this.status.quote 'prev.status.quote :=
  this.status.nline 'prev.status.nline :=
}


FUNCTION {not}
{   { #0 }
    { #1 }
  if$
}

FUNCTION {and}
{   { skip$ }
    { pop$ #0 }
  if$
}

FUNCTION {or}
{   { pop$ #1 }
    { skip$ }
  if$
}


% convert the strings "yes" or "no" to #1 or #0 respectively
FUNCTION {yes.no.to.int}
{ "l" change.case$ duplicate$
    "yes" =
    { pop$  #1 }
    { duplicate$ "no" =
        { pop$ #0 }
        { "unknown boolean " quote$ * swap$ * quote$ *
          " in " * cite$ * warning$
          #0
        }
      if$
    }
  if$
}


% pushes true if the single char string on the stack is in the
% range of "0" to "9"
FUNCTION {is.num}
{ chr.to.int$
  duplicate$ "0" chr.to.int$ < not
  swap$ "9" chr.to.int$ > not and
}

% multiplies the integer on the stack by a factor of 10
FUNCTION {bump.int.mag}
{ #0 'multiresult :=
    { duplicate$ #0 > }
    { #1 -
      multiresult #10 +
      'multiresult :=
    }
  while$
pop$
multiresult
}

% converts a single character string on the stack to an integer
FUNCTION {char.to.integer}
{ duplicate$ 
  is.num
    { chr.to.int$ "0" chr.to.int$ - }
    {"noninteger character " quote$ * swap$ * quote$ *
          " in integer field of " * cite$ * warning$
    #0
    }
  if$
}

% converts a string on the stack to an integer
FUNCTION {string.to.integer}
{ duplicate$ text.length$ 'namesleft :=
  #1 'nameptr :=
  #0 'numnames :=
    { nameptr namesleft > not }
    { duplicate$ nameptr #1 substring$
      char.to.integer numnames bump.int.mag +
      'numnames :=
      nameptr #1 +
      'nameptr :=
    }
  while$
pop$
numnames
}




% The output routines write out the *next* to the top (previous) item on the
% stack, adding punctuation and such as needed. Since IEEEtran.bst maintains
% the output status for the top two items on the stack, these output
% routines have to consider the previous output status (which corresponds to
% the item that is being output). Full independent control of punctuation,
% closing quote marks, spacing, and newblock is provided.
% 
% "output.nonnull" does not check for the presence of a previous empty
% item.
% 
% "output" does check for the presence of a previous empty item and will
% remove an empty item rather than outputing it.
% 
% "output.warn" is like "output", but will issue a warning if it detects
% an empty item.

FUNCTION {output.nonnull}
{ swap$
  prev.status.punct punct.comma =
     { "," * }
     { skip$ }
   if$
  prev.status.punct punct.period =
     { add.period$ }
     { skip$ }
   if$ 
  prev.status.quote quote.close =
     { "''" * }
     { skip$ }
   if$
  prev.status.space space.normal =
     { " " * }
     { skip$ }
   if$
  prev.status.space space.large =
     { large.space * }
     { skip$ }
   if$
  write$
  prev.status.nline nline.newblock =
     { newline$ "\newblock " write$ }
     { skip$ }
   if$
}

FUNCTION {output}
{ duplicate$ empty$
    'pop$
    'output.nonnull
  if$
}

FUNCTION {output.warn}
{ 't :=
  duplicate$ empty$
    { pop$ "empty " t * " in " * cite$ * warning$ }
    'output.nonnull
  if$
}

% "fin.entry" is the output routine that handles the last item of the entry
% (which will be on the top of the stack when "fin.entry" is called).

FUNCTION {fin.entry}
{ this.status.punct punct.no =
     { skip$ }
     { add.period$ }
   if$
   this.status.quote quote.close =
     { "''" * }
     { skip$ }
   if$
write$
newline$
}


FUNCTION {is.last.char.not.punct}
{ duplicate$
   "}" * add.period$
   #-1 #1 substring$ "." =
}

FUNCTION {is.multiple.pages}
{ 't :=
  #0 'multiresult :=
    { multiresult not
      t empty$ not
      and
    }
    { t #1 #1 substring$
      duplicate$ "-" =
      swap$ duplicate$ "," =
      swap$ "+" =
      or or
        { #1 'multiresult := }
        { t #2 global.max$ substring$ 't := }
      if$
    }
  while$
  multiresult
}

FUNCTION {capitalize}{ "u" change.case$ "t" change.case$ }

FUNCTION {emphasize}
{ duplicate$ empty$
    { pop$ "" }
    { "\emph{" swap$ * "}" * }
  if$
}

FUNCTION {do.name.latex.cmd}
{ name.latex.cmd
  empty$
    { skip$ }
    { name.latex.cmd "{" * swap$ * "}" * }
  if$
}

% IEEEtran.bst uses its own \BIBforeignlanguage command which directly
% invokes the TeX hyphenation patterns without the need of the Babel
% package. Babel does a lot more than switch hyphenation patterns and
% its loading can cause unintended effects in many class files (such as
% IEEEtran.cls).
FUNCTION {select.language}
{ duplicate$ empty$ 'pop$
    { language empty$ 'skip$
        { "\BIBforeignlanguage{" language * "}{" * swap$ * "}" * }
      if$
    }
  if$
}

FUNCTION {tie.or.space.prefix}
{ duplicate$ text.length$ #3 <
    { "~" }
    { " " }
  if$
  swap$
}

FUNCTION {get.bbl.editor}
{ editor num.names$ #1 > 'bbl.editors 'bbl.editor if$ }

FUNCTION {space.word}{ " " swap$ * " " * }


% Field Conditioners, Converters, Checkers and External Interfaces

FUNCTION {empty.field.to.null.string}
{ duplicate$ empty$
    { pop$ "" }
    { skip$ }
  if$
}

FUNCTION {either.or.check}
{ empty$
    { pop$ }
    { "can't use both " swap$ * " fields in " * cite$ * warning$ }
  if$
}

FUNCTION {empty.entry.warn}
{ author empty$ title empty$ howpublished empty$
  year empty$ note empty$ url empty$
  and and and and and
    { "all relevant fields are empty in " cite$ * warning$ }
    'skip$
  if$
}


% The bibinfo system provides a way for the electronic parsing/acquisition
% of a bibliography's contents as is done by ReVTeX. For example, a field
% could be entered into the bibliography as:
% \bibinfo{volume}{2}
% Only the "2" would show up in the document, but the LaTeX \bibinfo command
% could do additional things with the information. IEEEtran.bst does provide
% a \bibinfo command via "\providecommand{\bibinfo}[2]{#2}". However, it is
% currently not used as the bogus bibinfo functions defined here output the
% entry values directly without the \bibinfo wrapper. The bibinfo functions
% themselves (and the calls to them) are retained for possible future use.
% 
% bibinfo.check avoids acting on missing fields while bibinfo.warn will
% issue a warning message if a missing field is detected. Prior to calling
% the bibinfo functions, the user should push the field value and then its
% name string, in that order.

FUNCTION {bibinfo.check}
{ swap$ duplicate$ missing$
    { pop$ pop$ "" }
    { duplicate$ empty$
        { swap$ pop$ }
        { swap$ pop$ }
      if$
    }
  if$
}

FUNCTION {bibinfo.warn}
{ swap$ duplicate$ missing$
    { swap$ "missing " swap$ * " in " * cite$ * warning$ pop$ "" }
    { duplicate$ empty$
        { swap$ "empty " swap$ * " in " * cite$ * warning$ }
        { swap$ pop$ }
      if$
    }
  if$
}


% The IEEE separates large numbers with more than 4 digits into groups of
% three. The IEEE uses a small space to separate these number groups. 
% Typical applications include patent and page numbers.

% number of consecutive digits required to trigger the group separation.
FUNCTION {large.number.trigger}{ #5 }

% For numbers longer than the trigger, this is the blocksize of the groups.
% The blocksize must be less than the trigger threshold, and 2 * blocksize
% must be greater than the trigger threshold (can't do more than one
% separation on the initial trigger).
FUNCTION {large.number.blocksize}{ #3 }

% What is actually inserted between the number groups.
FUNCTION {large.number.separator}{ "\," }

% So as to save on integer variables by reusing existing ones, numnames
% holds the current number of consecutive digits read and nameptr holds
% the number that will trigger an inserted space.
FUNCTION {large.number.separate}
{ 't :=
  ""
  #0 'numnames :=
  large.number.trigger 'nameptr :=
  { t empty$ not }
  { t #-1 #1 substring$ is.num
      { numnames #1 + 'numnames := }
      { #0 'numnames := 
        large.number.trigger 'nameptr :=
      }
    if$
    t #-1 #1 substring$ swap$ *
    t #-2 global.max$ substring$ 't :=
    numnames nameptr =
      { duplicate$ #1 nameptr large.number.blocksize - substring$ swap$
        nameptr large.number.blocksize - #1 + global.max$ substring$
        large.number.separator swap$ * *
        nameptr large.number.blocksize - 'numnames :=
        large.number.blocksize #1 + 'nameptr :=
      }
      { skip$ }
    if$
  }
  while$
}

% Converts all single dashes "-" to double dashes "--".
FUNCTION {n.dashify}
{ large.number.separate
  't :=
  ""
    { t empty$ not }
    { t #1 #1 substring$ "-" =
        { t #1 #2 substring$ "--" = not
            { "--" *
              t #2 global.max$ substring$ 't :=
            }
            {   { t #1 #1 substring$ "-" = }
                { "-" *
                  t #2 global.max$ substring$ 't :=
                }
              while$
            }
          if$
        }
        { t #1 #1 substring$ *
          t #2 global.max$ substring$ 't :=
        }
      if$
    }
  while$
}


% This function detects entries with names that are identical to that of
% the previous entry and replaces the repeated names with dashes (if the
% "is.dash.repeated.names" user control is nonzero).
FUNCTION {name.or.dash}
{ 's :=
   oldname empty$
     { s 'oldname := s }
     { s oldname =
         { is.dash.repeated.names
              { repeated.name.dashes }
              { s 'oldname := s }
            if$
         }
         { s 'oldname := s }
       if$
     }
   if$
}

% Converts the number string on the top of the stack to
% "numerical ordinal form" (e.g., "7" to "7th"). There is
% no artificial limit to the upper bound of the numbers as the
% two least significant digits determine the ordinal form.
FUNCTION {num.to.ordinal}
{ duplicate$ #-2 #1 substring$ "1" =
      { bbl.th * }
      { duplicate$ #-1 #1 substring$ "1" =
          { bbl.st * }
          { duplicate$ #-1 #1 substring$ "2" =
              { bbl.nd * }
              { duplicate$ #-1 #1 substring$ "3" =
                  { bbl.rd * }
                  { bbl.th * }
                if$
              }
            if$
          }
        if$
      }
    if$
}

% If the string on the top of the stack begins with a number,
% (e.g., 11th) then replace the string with the leading number
% it contains. Otherwise retain the string as-is. s holds the
% extracted number, t holds the part of the string that remains
% to be scanned.
FUNCTION {extract.num}
{ duplicate$ 't :=
  "" 's :=
  { t empty$ not }
  { t #1 #1 substring$
    t #2 global.max$ substring$ 't :=
    duplicate$ is.num
      { s swap$ * 's := }
      { pop$ "" 't := }
    if$
  }
  while$
  s empty$
    'skip$
    { pop$ s }
  if$
}

% Converts the word number string on the top of the stack to
% Arabic string form. Will be successful up to "tenth".
FUNCTION {word.to.num}
{ duplicate$ "l" change.case$ 's :=
  s "first" =
    { pop$ "1" }
    { skip$ }
  if$
  s "second" =
    { pop$ "2" }
    { skip$ }
  if$
  s "third" =
    { pop$ "3" }
    { skip$ }
  if$
  s "fourth" =
    { pop$ "4" }
    { skip$ }
  if$
  s "fifth" =
    { pop$ "5" }
    { skip$ }
  if$
  s "sixth" =
    { pop$ "6" }
    { skip$ }
  if$
  s "seventh" =
    { pop$ "7" }
    { skip$ }
  if$
  s "eighth" =
    { pop$ "8" }
    { skip$ }
  if$
  s "ninth" =
    { pop$ "9" }
    { skip$ }
  if$
  s "tenth" =
    { pop$ "10" }
    { skip$ }
  if$
}


% Converts the string on the top of the stack to numerical
% ordinal (e.g., "11th") form.
FUNCTION {convert.edition}
{ duplicate$ empty$ 'skip$
    { duplicate$ #1 #1 substring$ is.num
        { extract.num
          num.to.ordinal
        }
        { word.to.num
          duplicate$ #1 #1 substring$ is.num
            { num.to.ordinal }
            { "edition ordinal word " quote$ * edition * quote$ *
              " may be too high (or improper) for conversion" * " in " * cite$ * warning$
            }
          if$
        }
      if$
    }
  if$
}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% LATEX BIBLIOGRAPHY CODE %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

FUNCTION {start.entry}
{ newline$
  "\bibitem{" write$
  cite$ write$
  "}" write$
  newline$
  ""
  initialize.prev.this.status
}

% Here we write out all the LaTeX code that we will need. The most involved
% code sequences are those that control the alternate interword spacing and
% foreign language hyphenation patterns. The heavy use of \providecommand
% gives users a way to override the defaults. Special thanks to Javier Bezos,
% Johannes Braams, Robin Fairbairns, Heiko Oberdiek, Donald Arseneau and all
% the other gurus on comp.text.tex for their help and advice on the topic of
% \selectlanguage, Babel and BibTeX.
FUNCTION {begin.bib}
{ "% Generated by IEEEtran.bst, version: " bst.file.version * " (" * bst.file.date * ")" *
  write$ newline$
  preamble$ empty$ 'skip$
    { preamble$ write$ newline$ }
  if$
  "\begin{thebibliography}{"  longest.label  * "}" *
  write$ newline$
  "\providecommand{\url}[1]{#1}"
  write$ newline$
  "\csname url@samestyle\endcsname"
  write$ newline$
  "\providecommand{\newblock}{\relax}"
  write$ newline$
  "\providecommand{\bibinfo}[2]{#2}"
  write$ newline$
  "\providecommand{\BIBentrySTDinterwordspacing}{\spaceskip=0pt\relax}"
  write$ newline$
  "\providecommand{\BIBentryALTinterwordstretchfactor}{"
  ALTinterwordstretchfactor * "}" *
  write$ newline$
  "\providecommand{\BIBentryALTinterwordspacing}{\spaceskip=\fontdimen2\font plus "
  write$ newline$
  "\BIBentryALTinterwordstretchfactor\fontdimen3\font minus \fontdimen4\font\relax}"
  write$ newline$
  "\providecommand{\BIBforeignlanguage}[2]{{%"
  write$ newline$
  "\expandafter\ifx\csname l@#1\endcsname\relax"
  write$ newline$
  "\typeout{** WARNING: IEEEtran.bst: No hyphenation pattern has been}%"
  write$ newline$
  "\typeout{** loaded for the language `#1'. Using the pattern for}%"
  write$ newline$
  "\typeout{** the default language instead.}%"
  write$ newline$
  "\else"
  write$ newline$
  "\language=\csname l@#1\endcsname"
  write$ newline$
  "\fi"
  write$ newline$
  "#2}}"
  write$ newline$
  "\providecommand{\BIBdecl}{\relax}"
  write$ newline$
  "\BIBdecl"
  write$ newline$
}

FUNCTION {end.bib}
{ newline$ "\end{thebibliography}" write$ newline$ }

FUNCTION {if.url.alt.interword.spacing}
{ is.use.alt.interword.spacing
    { is.use.url
        { url empty$ 'skip$ {"\BIBentryALTinterwordspacing" write$ newline$} if$ }
        { skip$ }
      if$
    }
    { skip$ }
  if$
}

FUNCTION {if.url.std.interword.spacing}
{ is.use.alt.interword.spacing
    { is.use.url
        { url empty$ 'skip$ {"\BIBentrySTDinterwordspacing" write$ newline$} if$ }
        { skip$ }
      if$
    }
    { skip$ }
  if$
}




%%%%%%%%%%%%%%%%%%%%%%%%
%% LONGEST LABEL PASS %%
%%%%%%%%%%%%%%%%%%%%%%%%

FUNCTION {initialize.longest.label}
{ "" 'longest.label :=
  #1 'number.label :=
  #0 'longest.label.width :=
}

FUNCTION {longest.label.pass}
{ type$ "ieeetranbstctl" =
    { skip$ }
    { number.label int.to.str$ 'label :=
      number.label #1 + 'number.label :=
      label width$ longest.label.width >
        { label 'longest.label :=
          label width$ 'longest.label.width :=
        }
        { skip$ }
      if$
    }
  if$
}




%%%%%%%%%%%%%%%%%%%%%
%% FORMAT HANDLERS %%
%%%%%%%%%%%%%%%%%%%%%

%% Lower Level Formats (used by higher level formats)

FUNCTION {format.address.org.or.pub.date}
{ 't :=
  ""
  year empty$
    { "empty year in " cite$ * warning$ }
    { skip$ }
  if$
  address empty$ t empty$ and
  year empty$ and
    { skip$ }
    { this.to.prev.status
      this.status.std
      cap.status.std
      address "address" bibinfo.check *
      t empty$
        { skip$ }
        { punct.period 'prev.status.punct :=
          space.large 'prev.status.space :=
          address empty$
            { skip$ }
            { ": " * }
          if$
          t *
        }
      if$
      year empty$
        { skip$ }
        { t empty$ address empty$ and
            { skip$ }
            { ", " * }
          if$
          year "year" bibinfo.check *
        }
      if$
    }
  if$
}


% CCJNL legacy bibliography-name rule.
% Use only the first initial of the first given name:
%   Hany S. Hussein -> H. Hussein
%   Song, Yong-Hua  -> Y. Song
% This affects bibliography names only; Cite as and title-page authors are
% formatted independently by the LaTeX code below.
FUNCTION {format.name.first.initial.only}
{ s nameptr "{ff}" format.name$ 'u :=
  s nameptr "{vv~}{ll}{, jj}" format.name$ 't :=
  t "others" =
    { "others" }
    { u empty$
        { t }
        { u #1 #1 substring$ "." * " " * t * }
      if$
    }
  if$
}

FUNCTION {format.names}
{ 'bibinfo :=
  duplicate$ empty$ 'skip$ {
  this.to.prev.status
  this.status.std
  's :=
  "" 't :=
  #1 'nameptr :=
  s num.names$ 'numnames :=
  numnames 'namesleft :=
    { namesleft #0 > }
    { format.name.first.initial.only
      bibinfo bibinfo.check
      't :=
      nameptr #1 >
        { nameptr num.names.shown.with.forced.et.al #1 + =
          numnames max.num.names.before.forced.et.al >
          is.forced.et.al and and
            { "others" 't :=
              #1 'namesleft :=
            }
            { skip$ }
          if$
          namesleft #1 >
            { ", " * t do.name.latex.cmd * }
            { s nameptr "{ll}" format.name$ duplicate$ "others" =
                { 't := }
                { pop$ }
              if$
              t "others" =
                { " " * bbl.etal emphasize * }
                { numnames #2 >
                    { "," * }
                    { skip$ }
                  if$
                  bbl.and
                  space.word * t do.name.latex.cmd *
                }
              if$
            }
          if$
        }
        { t do.name.latex.cmd }
      if$
      nameptr #1 + 'nameptr :=
      namesleft #1 - 'namesleft :=
    }
  while$
  cap.status.std
  } if$
}




%% Higher Level Formats

%% addresses/locations

FUNCTION {format.address}
{ address duplicate$ empty$ 'skip$
    { this.to.prev.status
      this.status.std
      cap.status.std
    }
  if$
}



%% author/editor names

FUNCTION {format.authors}{ author "author" format.names }

FUNCTION {format.editors}
{ editor "editor" format.names duplicate$ empty$ 'skip$
    { ", " *
      get.bbl.editor
      capitalize
      *
    }
  if$
}



%% date

% China Communications legacy date rule: bibliography entries display the
% publication year only. BibTeX month/day fields are intentionally ignored.
FUNCTION {format.date}
{ year "year" bibinfo.check duplicate$ empty$
    { pop$ "" }
    { this.to.prev.status
      this.status.std
      cap.status.std
    }
  if$
}

FUNCTION {format.date.electronic}
{ year "year" bibinfo.check duplicate$ empty$
    { pop$ "" }
    { "(" swap$ * ")" *
      this.to.prev.status
      punct.no 'this.status.punct :=
      space.normal 'this.status.space :=
      quote.no 'this.status.quote :=
      cap.yes 'status.cap :=
    }
  if$
}



%% edition/title

% Note: The IEEE considers the edition to be closely associated with
% the title of a book. So, in IEEEtran.bst the edition is normally handled 
% within the formatting of the title. The format.edition function is 
% retained here for possible future use.
FUNCTION {format.edition}
{ edition duplicate$ empty$ 'skip$
    { this.to.prev.status
      this.status.std
      convert.edition
      status.cap
        { "t" }
        { "l" }
      if$ change.case$
      "edition" bibinfo.check
      "~" * bbl.edition *
      cap.status.std
    }
  if$
}

% This is used to format the booktitle of a conference proceedings.
% Here we use the "intype" field to provide the user a way to 
% override the word "in" (e.g., with things like "presented at")
% Use of intype stops the emphasis of the booktitle to indicate that
% we no longer mean the written conference proceedings, but the
% conference itself.
FUNCTION {format.in.booktitle}
{ booktitle "booktitle" bibinfo.check duplicate$ empty$ 'skip$
    { this.to.prev.status
      this.status.std
      select.language
      intype missing$
        { emphasize
          bbl.in " " *
        }
        { intype " " * }
      if$
      swap$ *
      cap.status.std
    }
  if$
}

% This is used to format the booktitle of collection.
% Here the "intype" field is not supported, but "edition" is.
FUNCTION {format.in.booktitle.edition}
{ booktitle "booktitle" bibinfo.check duplicate$ empty$ 'skip$
    { this.to.prev.status
      this.status.std
      select.language
      emphasize
      edition empty$ 'skip$
        { ", " *
          edition
          convert.edition
          "l" change.case$
          * "~" * bbl.edition *
        }
      if$
      bbl.in " " * swap$ *
      cap.status.std
    }
  if$
}

% Preserve the article-title capitalization supplied in the BibTeX source.
% Capitalization compliance is checked before compilation rather than inferred
% by the bibliography style, because mixed-case technical terms cannot be
% transformed safely without knowing their meaning.
FUNCTION {ccjnl.article.sentence.case}
{ }

FUNCTION {format.article.title}
{ title duplicate$ empty$ 'skip$
    { this.to.prev.status
      this.status.std
      ccjnl.article.sentence.case
    }
  if$
  "title" bibinfo.check
  duplicate$ empty$ 'skip$
    { quote.close 'this.status.quote :=
      is.last.char.not.punct
        { punct.std 'this.status.punct := }
        { punct.no 'this.status.punct := }
      if$
      select.language
      "``" swap$ *
      cap.status.std
    }
  if$
}

FUNCTION {format.article.title.electronic}
{ title duplicate$ empty$ 'skip$
    { this.to.prev.status
      this.status.std
      cap.status.std
      ccjnl.article.sentence.case
    }
  if$
  "title" bibinfo.check
  duplicate$ empty$ 
    { skip$ } 
    { select.language }
  if$
}

FUNCTION {format.book.title.edition}
{ title "title" bibinfo.check
  duplicate$ empty$
    { "empty title in " cite$ * warning$ }
    { this.to.prev.status
      this.status.std
      select.language
      emphasize
      edition empty$ 'skip$
        { ", " *
          edition
          convert.edition
          status.cap
            { "t" }
            { "l" }
          if$
          change.case$
          * "~" * bbl.edition *
        }
      if$
      cap.status.std
    }
  if$
}

FUNCTION {format.book.title}
{ title "title" bibinfo.check
  duplicate$ empty$ 'skip$
    { this.to.prev.status
      this.status.std
      cap.status.std
      select.language
      emphasize
    }
  if$
}



%% journal

FUNCTION {format.journal}
{ journal duplicate$ empty$ 'skip$
    { this.to.prev.status
      this.status.std
      cap.status.std
      select.language
      emphasize
    }
  if$
}



%% how published

FUNCTION {format.howpublished}
{ howpublished duplicate$ empty$ 'skip$
    { this.to.prev.status
      this.status.std
      cap.status.std
    }
  if$
}



%% institutions/organization/publishers/school

FUNCTION {format.institution}
{ institution duplicate$ empty$ 'skip$
    { this.to.prev.status
      this.status.std
      cap.status.std
    }
  if$
}

FUNCTION {format.organization}
{ organization duplicate$ empty$ 'skip$
    { this.to.prev.status
      this.status.std
      cap.status.std
    }
  if$
}

FUNCTION {format.address.publisher.date}
{ publisher "publisher" bibinfo.warn format.address.org.or.pub.date }

FUNCTION {format.address.publisher.date.nowarn}
{ publisher "publisher" bibinfo.check format.address.org.or.pub.date }

FUNCTION {format.address.organization.date}
{ organization "organization" bibinfo.check format.address.org.or.pub.date }

FUNCTION {format.school}
{ school duplicate$ empty$ 'skip$
    { this.to.prev.status
      this.status.std
      cap.status.std
    }
  if$
}



%% volume/number/series/chapter/pages

FUNCTION {format.volume}
{ volume empty.field.to.null.string
  duplicate$ empty$ 'skip$
    { this.to.prev.status
      this.status.std
      bbl.volume 
      status.cap
        { capitalize }
        { skip$ }
      if$
      swap$ tie.or.space.prefix
      "volume" bibinfo.check
      * *
      cap.status.std
    }
  if$
}

FUNCTION {format.number}
{ number empty.field.to.null.string
  duplicate$ empty$ 'skip$
    { this.to.prev.status
      this.status.std
      status.cap
         { bbl.number capitalize }
         { bbl.number }
       if$
      swap$ tie.or.space.prefix
      "number" bibinfo.check
      * *
      cap.status.std
    }
  if$
}

FUNCTION {format.number.if.use.for.article}
{ is.use.number.for.article 
     { format.number }
     { "" }
   if$
}

% The IEEE does not seem to tie the series so closely with the volume
% and number as is done in other bibliography styles. Instead the
% series is treated somewhat like an extension of the title.
FUNCTION {format.series}
{ series empty$ 
   { "" }
   { this.to.prev.status
     this.status.std
     bbl.series " " *
     series "series" bibinfo.check *
     cap.status.std
   }
 if$
}


FUNCTION {format.chapter}
{ chapter empty$
    { "" }
    { this.to.prev.status
      this.status.std
      type empty$
        { bbl.chapter }
        { type "l" change.case$
          "type" bibinfo.check
        }
      if$
      chapter tie.or.space.prefix
      "chapter" bibinfo.check
      * *
      cap.status.std
    }
  if$
}


% The intended use of format.paper is for paper numbers of inproceedings.
% The paper type can be overridden via the type field.
% We allow the type to be displayed even if the paper number is absent
% for things like "postdeadline paper"
FUNCTION {format.paper}
{ is.use.paper
     { paper empty$
        { type empty$
            { "" }
            { this.to.prev.status
              this.status.std
              type "type" bibinfo.check
              cap.status.std
            }
          if$
        }
        { this.to.prev.status
          this.status.std
          type empty$
            { bbl.paper }
            { type "type" bibinfo.check }
          if$
          " " * paper
          "paper" bibinfo.check
          *
          cap.status.std
        }
      if$
     }
     { "" } 
   if$
}


FUNCTION {format.pages}
{ pages duplicate$ empty$ 'skip$
    { this.to.prev.status
      this.status.std
      duplicate$ is.multiple.pages
        {
          bbl.pages swap$
          n.dashify
        }
        {
          bbl.page swap$
        }
      if$
      tie.or.space.prefix
      "pages" bibinfo.check
      * *
      cap.status.std
    }
  if$
}



%% technical report number

FUNCTION {format.tech.report.number}
{ number "number" bibinfo.check
  this.to.prev.status
  this.status.std
  cap.status.std
  type duplicate$ empty$
    { pop$ 
      bbl.techrep
    }
    { skip$ }
  if$
  "type" bibinfo.check 
  swap$ duplicate$ empty$
    { pop$ }
    { tie.or.space.prefix * * }
  if$
}

% Legacy CCJNL fallback used by manuals, miscellaneous entries, and reports.
% If no report number exists, a journal-like identifier may be used; otherwise
% no generic "Tech. Rep." label is manufactured from an empty number field.
FUNCTION {format.tech.report.number.or.journal}
{ number empty$
    { journal duplicate$ empty$
        { pop$ "" }
        { "journal" bibinfo.check
          this.to.prev.status
          this.status.std
          cap.status.std
        }
      if$
    }
    { format.tech.report.number }
  if$
}



%% note

FUNCTION {format.note}
{ note empty$
    { "" }
    { this.to.prev.status
      this.status.std
      punct.period 'this.status.punct :=
      note #1 #1 substring$
      duplicate$ "{" =
        { skip$ }
        { status.cap
          { "u" }
          { "l" }
        if$
        change.case$
        }
      if$
      note #2 global.max$ substring$ * "note" bibinfo.check
      cap.yes  'status.cap :=
    }
  if$
}



%% patent

FUNCTION {format.patent.date}
{ this.to.prev.status
  this.status.std
  year empty$
    { yearfiled duplicate$ empty$
        { pop$ "no year or yearfiled in " cite$ * warning$ "" }
        { "yearfiled" bibinfo.check }
      if$
    }
    { year "year" bibinfo.check }
  if$
  cap.status.std
}

FUNCTION {format.patent.nationality.type.number}
{ this.to.prev.status
  this.status.std
  nationality duplicate$ empty$
    { "nationality" bibinfo.warn pop$ "" }
    { "nationality" bibinfo.check
      duplicate$ "l" change.case$ "united states" =
        { pop$ bbl.patentUS }
        { skip$ }
      if$
      " " *
    }
  if$
  type empty$
    { bbl.patent "type" bibinfo.check }
    { type "type" bibinfo.check }
  if$  
  *
  number duplicate$ empty$
    { "number" bibinfo.warn pop$ }
    { "number" bibinfo.check
      large.number.separate
      swap$ " " * swap$ *
    }
  if$ 
  cap.status.std
}



%% standard

FUNCTION {format.organization.institution.standard.type.number}
{ this.to.prev.status
  this.status.std
  organization duplicate$ empty$
    { pop$ 
      institution duplicate$ empty$
        { "institution" bibinfo.warn }
        { "institution" bibinfo.warn " " * }
      if$
    }
    { "organization" bibinfo.warn " " * }
  if$
  type empty$
    { bbl.standard "type" bibinfo.check }
    { type "type" bibinfo.check }
  if$  
  *
  number duplicate$ empty$
    { "number" bibinfo.check pop$ }
    { "number" bibinfo.check
      large.number.separate
      swap$ " " * swap$ *
    }
  if$ 
  cap.status.std
}

FUNCTION {format.revision}
{ revision empty$
    { "" }
    { this.to.prev.status
      this.status.std
      bbl.revision
      revision tie.or.space.prefix
      "revision" bibinfo.check
      * *
      cap.status.std
    }
  if$
}


%% thesis

FUNCTION {format.master.thesis.type}
{ this.to.prev.status
  this.status.std
  type empty$
    {
      bbl.mthesis
    }
    { 
      type "type" bibinfo.check
    }
  if$
cap.status.std
}

FUNCTION {format.phd.thesis.type}
{ this.to.prev.status
  this.status.std
  type empty$
    {
      bbl.phdthesis
    }
    { 
      type "type" bibinfo.check
    }
  if$
cap.status.std
}



%% URL

FUNCTION {format.url}
{ is.use.url
    { url empty$
      { "" }
      { this.to.prev.status
        this.status.std
        cap.yes 'status.cap :=
        name.url.prefix " " *
        "\url{" * url * "}" *
        punct.no 'this.status.punct :=
        punct.period 'prev.status.punct :=
        space.normal 'this.status.space :=
        space.normal 'prev.status.space :=
        quote.no 'this.status.quote :=
      }
    if$
    }
    { "" }
  if$
}





% DOI, access date, article number, publication status, and thesis department
% are explicit fields so that the output order follows the IEEE guide without
% overloading note, pages, or number with unrelated data.
FUNCTION {format.doi}
{ doi empty$
    { "" }
    { this.to.prev.status
      this.status.std
      cap.status.std
      "doi: \url{" doi * "}" *
    }
  if$
}

FUNCTION {format.access.date}
{ urldate empty$
    { accessed }
    { urldate }
  if$
  duplicate$ empty$
    { skip$ }
    { this.to.prev.status
      this.status.std
      cap.status.std
      "Accessed: " swap$ *
      punct.period 'this.status.punct :=
    }
  if$
}

FUNCTION {format.article.number}
{ eid empty$
    { articleno }
    { eid }
  if$
  duplicate$ empty$
    { skip$ }
    { this.to.prev.status
      this.status.std
      cap.status.std
      "Art. no. " swap$ *
    }
  if$
}

FUNCTION {format.publication.status}
{ status duplicate$ empty$
    { skip$ }
    { this.to.prev.status
      this.status.std
      cap.status.std
    }
  if$
}

FUNCTION {format.department}
{ department duplicate$ empty$
    { skip$ }
    { this.to.prev.status
      this.status.std
      cap.status.std
    }
  if$
}

%%%%%%%%%%%%%%%%%%%%
%% ENTRY HANDLERS %%
%%%%%%%%%%%%%%%%%%%%


% Note: In many journals, the IEEE (or the authors) tend not to show the number
% for articles, so the display of the number is controlled here by the
% switch "is.use.number.for.article"
FUNCTION {article}
{ journal empty$
    { booktitle empty$
        { std.status.using.comma
          start.entry
          if.url.alt.interword.spacing
          format.authors "author" output.warn
          name.or.dash
          format.article.title "title" output.warn
          format.volume output
          format.number.if.use.for.article output
          format.pages output
          format.date "year" output.warn
          format.article.number output
          format.note output
          format.access.date output
          format.doi output
          format.url output
          fin.entry
          if.url.std.interword.spacing
        }
        { std.status.using.comma
          start.entry
          if.url.alt.interword.spacing
          format.authors "author" output.warn
          name.or.dash
          format.article.title "title" output.warn
          format.in.booktitle "booktitle" output.warn
          format.date "year" output.warn
          format.series output
          format.editors output
          format.volume output
          format.number output
          format.paper output
          format.pages output
          format.note output
          format.access.date output
          format.doi output
          format.url output
          fin.entry
          if.url.std.interword.spacing
        }
      if$
    }
    { std.status.using.comma
      start.entry
      if.url.alt.interword.spacing
      format.authors "author" output.warn
      name.or.dash
      format.article.title "title" output.warn
      format.journal "journal" bibinfo.check "journal" output.warn
      format.publication.status output
      format.date "year" output.warn
      format.volume output
      format.number.if.use.for.article output
      format.pages output
      format.article.number output
      format.note output
      format.access.date output
      format.doi output
      format.url output
      fin.entry
      if.url.std.interword.spacing
    }
  if$
}

FUNCTION {book}
{ std.status.using.comma
  start.entry
  if.url.alt.interword.spacing
  author empty$
    { format.editors "author and editor" output.warn }
    { format.authors output.nonnull }
  if$
  name.or.dash
  format.book.title.edition output
  format.series output
  author empty$
    { skip$ }
    { format.editors output }
  if$
  format.address.publisher.date output
  format.volume output
  format.number output
  format.note output
  format.access.date output
  format.doi output
  format.url output
  fin.entry
  if.url.std.interword.spacing
}

FUNCTION {booklet}
{ std.status.using.comma
  start.entry
  if.url.alt.interword.spacing
  format.authors output
  name.or.dash
  format.article.title "title" output.warn
  format.howpublished "howpublished" bibinfo.check output
  format.organization "organization" bibinfo.check output
  format.address "address" bibinfo.check output
  format.date output
  format.note output
  format.access.date output
  format.doi output
  format.url output
  fin.entry
  if.url.std.interword.spacing
}

FUNCTION {electronic}
{ std.status.using.period
  start.entry
  if.url.alt.interword.spacing
  format.authors output
  name.or.dash
  format.date.electronic output
  format.article.title.electronic output
  format.howpublished "howpublished" bibinfo.check output
  format.organization "organization" bibinfo.check output
  format.address "address" bibinfo.check output
  format.note output
  format.access.date output
  format.doi output
  format.url output
  fin.entry
  empty.entry.warn
  if.url.std.interword.spacing
}

FUNCTION {inbook}
{ std.status.using.comma
  start.entry
  if.url.alt.interword.spacing
  author empty$
    { format.editors "author and editor" output.warn }
    { format.authors output.nonnull }
  if$
  name.or.dash
  format.book.title.edition output
  format.series output
  format.address.publisher.date output
  format.volume output
  format.number output
  format.chapter output
  format.pages output
  format.note output
  format.access.date output
  format.doi output
  format.url output
  fin.entry
  if.url.std.interword.spacing
}

FUNCTION {incollection}
{ std.status.using.comma
  start.entry
  if.url.alt.interword.spacing
  format.authors "author" output.warn
  name.or.dash
  format.article.title "title" output.warn
  format.in.booktitle.edition "booktitle" output.warn
  format.series output
  format.editors output
  format.address.publisher.date.nowarn output
  format.volume output
  format.number output
  format.chapter output
  format.pages output
  format.note output
  format.access.date output
  format.doi output
  format.url output
  fin.entry
  if.url.std.interword.spacing
}

FUNCTION {inproceedings}
{ std.status.using.comma
  start.entry
  if.url.alt.interword.spacing
  format.authors "author" output.warn
  name.or.dash
  format.article.title "title" output.warn
  format.in.booktitle "booktitle" output.warn
  format.series output
  format.editors output
  format.date "year" output.warn
  format.volume output
  format.number output
  format.paper output
  format.pages output
  format.note output
  format.access.date output
  format.doi output
  format.url output
  fin.entry
  if.url.std.interword.spacing
}

FUNCTION {manual}
{ std.status.using.comma
  start.entry
  if.url.alt.interword.spacing
  format.authors output
  name.or.dash
  format.book.title.edition "title" output.warn
  format.tech.report.number.or.journal output
  format.howpublished "howpublished" bibinfo.check output 
  format.organization "organization" bibinfo.check output
  format.address "address" bibinfo.check output
  format.date output
  format.note output
  format.access.date output
  format.doi output
  format.url output
  fin.entry
  if.url.std.interword.spacing
}

FUNCTION {mastersthesis}
{ std.status.using.comma
  start.entry
  if.url.alt.interword.spacing
  format.authors "author" output.warn
  name.or.dash
  format.article.title "title" output.warn
  format.master.thesis.type output.nonnull
  format.department output
  format.school "school" bibinfo.warn output
  format.address "address" bibinfo.check output
  format.date "year" output.warn
  format.note output
  format.access.date output
  format.doi output
  format.url output
  fin.entry
  if.url.std.interword.spacing
}

FUNCTION {misc}
{ std.status.using.comma
  start.entry
  if.url.alt.interword.spacing
  format.authors output
  name.or.dash
  format.article.title output
  format.tech.report.number.or.journal output
  format.howpublished "howpublished" bibinfo.check output 
  format.organization "organization" bibinfo.check output
  format.address "address" bibinfo.check output
  format.pages output
  format.date output
  format.note output
  format.access.date output
  format.doi output
  format.url output
  fin.entry
  empty.entry.warn
  if.url.std.interword.spacing
}

FUNCTION {patent}
{ std.status.using.comma
  start.entry
  if.url.alt.interword.spacing
  format.authors output
  name.or.dash
  format.article.title output
  format.patent.nationality.type.number output
  format.patent.date output
  format.note output
  format.access.date output
  format.doi output
  format.url output
  fin.entry
  empty.entry.warn
  if.url.std.interword.spacing
}

FUNCTION {periodical}
{ std.status.using.comma
  start.entry
  if.url.alt.interword.spacing
  format.editors output
  name.or.dash
  format.book.title "title" output.warn
  format.series output
  format.volume output
  format.number output
  format.organization "organization" bibinfo.check output
  format.date "year" output.warn
  format.note output
  format.access.date output
  format.doi output
  format.url output
  fin.entry
  if.url.std.interword.spacing
}

FUNCTION {phdthesis}
{ std.status.using.comma
  start.entry
  if.url.alt.interword.spacing
  format.authors "author" output.warn
  name.or.dash
  format.article.title "title" output.warn
  format.phd.thesis.type output.nonnull
  format.department output
  format.school "school" bibinfo.warn output
  format.address "address" bibinfo.check output
  format.date "year" output.warn
  format.note output
  format.access.date output
  format.doi output
  format.url output
  fin.entry
  if.url.std.interword.spacing
}

FUNCTION {proceedings}
{ std.status.using.comma
  start.entry
  if.url.alt.interword.spacing
  format.editors output
  name.or.dash
  format.book.title "title" output.warn
  format.series output
  format.volume output
  format.number output
  publisher empty$
    { format.address.organization.date output }
    { format.organization "organization" bibinfo.check output
      format.address.publisher.date output
    }
  if$
  format.note output
  format.access.date output
  format.doi output
  format.url output
  fin.entry
  if.url.std.interword.spacing
}

FUNCTION {standard}
{ std.status.using.comma
  start.entry
  if.url.alt.interword.spacing
  format.authors output
  name.or.dash
  format.book.title "title" output.warn
  format.howpublished "howpublished" bibinfo.check output 
  format.organization.institution.standard.type.number output
  format.revision output
  format.date output
  format.note output
  format.access.date output
  format.doi output
  format.url output
  fin.entry
  if.url.std.interword.spacing
}

FUNCTION {techreport}
{ std.status.using.comma
  start.entry
  if.url.alt.interword.spacing
  format.authors "author" output.warn
  name.or.dash
  format.article.title "title" output.warn
  format.howpublished "howpublished" bibinfo.check output 
  format.institution "institution" bibinfo.warn output
  format.address "address" bibinfo.check output
  format.tech.report.number.or.journal output
  format.date "year" output.warn
  format.note output
  format.access.date output
  format.doi output
  format.url output
  fin.entry
  if.url.std.interword.spacing
}

FUNCTION {unpublished}
{ std.status.using.comma
  start.entry
  if.url.alt.interword.spacing
  format.authors "author" output.warn
  name.or.dash
  format.article.title "title" output.warn
  format.date output
  format.note "note" output.warn
  format.access.date output
  format.doi output
  format.url output
  fin.entry
  if.url.std.interword.spacing
}


% The special entry type which provides the user interface to the
% BST controls
FUNCTION {IEEEtranBSTCTL}
{ is.print.banners.to.terminal
    { "** IEEEtran BST control entry " quote$ * cite$ * quote$ * " detected." *
      top$
    }
    { skip$ }
  if$
  CTLuse_article_number
  empty$
    { skip$ }
    { CTLuse_article_number
      yes.no.to.int
      'is.use.number.for.article :=
    }
  if$
  CTLuse_paper
  empty$
    { skip$ }
    { CTLuse_paper
      yes.no.to.int
      'is.use.paper :=
    }
  if$
  CTLuse_url
  empty$
    { skip$ }
    { CTLuse_url
      yes.no.to.int
      'is.use.url :=
    }
  if$
  CTLuse_forced_etal
  empty$
    { skip$ }
    { CTLuse_forced_etal
      yes.no.to.int
      'is.forced.et.al :=
    }
  if$
  CTLmax_names_forced_etal
  empty$
    { skip$ }
    { CTLmax_names_forced_etal
      string.to.integer
      'max.num.names.before.forced.et.al :=
    }
  if$
  CTLnames_show_etal
  empty$
    { skip$ }
    { CTLnames_show_etal
      string.to.integer
      'num.names.shown.with.forced.et.al :=
    }
  if$
  CTLuse_alt_spacing
  empty$
    { skip$ }
    { CTLuse_alt_spacing
      yes.no.to.int
      'is.use.alt.interword.spacing :=
    }
  if$
  CTLalt_stretch_factor
  empty$
    { skip$ }
    { CTLalt_stretch_factor
      'ALTinterwordstretchfactor :=
      "\renewcommand{\BIBentryALTinterwordstretchfactor}{"
      ALTinterwordstretchfactor * "}" *
      write$ newline$
    }
  if$
  CTLdash_repeated_names
  empty$
    { skip$ }
    { CTLdash_repeated_names
      yes.no.to.int
      'is.dash.repeated.names :=
    }
  if$
  CTLname_format_string
  empty$
    { skip$ }
    { CTLname_format_string
      'name.format.string :=
    }
  if$
  CTLname_latex_cmd
  empty$
    { skip$ }
    { CTLname_latex_cmd
      'name.latex.cmd :=
    }
  if$
  CTLname_url_prefix
  missing$
    { skip$ }
    { CTLname_url_prefix
      'name.url.prefix :=
    }
  if$


  num.names.shown.with.forced.et.al max.num.names.before.forced.et.al >
    { "CTLnames_show_etal cannot be greater than CTLmax_names_forced_etal in " cite$ * warning$ 
      max.num.names.before.forced.et.al 'num.names.shown.with.forced.et.al :=
    }
    { skip$ }
  if$
}


%%%%%%%%%%%%%%%%%%%
%% ENTRY ALIASES %%
%%%%%%%%%%%%%%%%%%%
FUNCTION {conference}{inproceedings}
FUNCTION {online}{electronic}
FUNCTION {internet}{electronic}
FUNCTION {webpage}{electronic}
FUNCTION {www}{electronic}
FUNCTION {default.type}{misc}



%%%%%%%%%%%%%%%%%%
%% MAIN PROGRAM %%
%%%%%%%%%%%%%%%%%%

READ

EXECUTE {initialize.controls}
EXECUTE {initialize.status.constants}
EXECUTE {banner.message}

EXECUTE {initialize.longest.label}
ITERATE {longest.label.pass}

EXECUTE {begin.bib}
ITERATE {call.type$}
EXECUTE {end.bib}

EXECUTE{completed.message}


%% That's all folks, mds.
\end{filecontents*}


%% ------------------------------------------------------------
%% 1. Class identity and base article class
%% ------------------------------------------------------------
% !TeX root = ./main.tex
%% CCJNL.cls 2020/08/22 version V1.0  by MaWei
%% CCJNL.cls 2022/11/22 version V2.0  by MaWei
%% CCJNL.cls 2023/01/16 version V3.0  by Sunben Chiu
%% CCJNL.cls 2023/01/17 version V3.1  by Sunben Chiu
%% CCJNL.cls 2023/03/09 version V3.2  by Sunben Chiu
%% CCJNL.cls 2023/03/16 version V3.3  by Sunben Chiu
%% CCJNL.cls 2023/03/16 version V3.4  by MaWei
%% CCJNL.cls 2026/04/13 version V3.4  by CHINACOM
\ProvidesClass{ccjnl}[2026/08/19 V3.10-CCJNL.20260819.2 legacy reference structure with source-controlled case]
\NeedsTeXFormat{LaTeX2e}
\LoadClass[twoside,twocolumn]{article}



%% ------------------------------------------------------------
%% 2. Package layer
%% ------------------------------------------------------------
\RequirePackage{etoolbox}
\RequirePackage{geometry}
\RequirePackage{graphicx}
\RequirePackage{epstopdf}
\RequirePackage{booktabs}
\RequirePackage{setspace}
\RequirePackage{algorithm,algorithmic}
\RequirePackage{titlesec}
\RequirePackage{needspace}
\RequirePackage{tikz}
\RequirePackage{anyfontsize}
\RequirePackage{wrapfig}
\RequirePackage[labelfont={bf,scriptsize},textfont={scriptsize,it}]{subfig}
\RequirePackage{enumitem}
\RequirePackage{endnotes}
\RequirePackage{totpages}
\RequirePackage{seqsplit}
\RequirePackage{listings}
\RequirePackage{mathtools,amssymb,amsthm,siunitx,makecell,cuted}
\allowdisplaybreaks[4]
% Safely set \stripsep only when it is defined by the installed cuted package.
\makeatletter
\@ifundefined{stripsep}{}{\setlength{\stripsep}{0pt plus 3pt minus 2pt}}
\makeatother
\RequirePackage{caption}
\RequirePackage[multiple,bottom]{footmisc}
% Production policy: do not auto-balance the final two-column page.  Real
% articles contain fixed biography-photo blocks, floats, footnotes, and legacy
% source-level page controls; global balance/flushend/pbalance mechanisms can
% change page breaks without reliably equalizing visible ink.  The preflight
% tool reports final-page imbalance for article-specific visual correction.
\RequirePackage[colorlinks,allcolors=blue,urlcolor=black,bookmarksnumbered,pdfdisplaydoctitle]{hyperref}
\RequirePackage{hyperxmp}
\RequirePackage[nameinlink]{cleveref}


%% ------------------------------------------------------------
%% 3. Reference and micro-typography setup
%% ------------------------------------------------------------
% Reference system: legacy-compatible natbib + BibTeX.
% This keeps the new class layout unchanged while restoring the stable
% citation workflow used by earlier CCJNL projects.
\RequirePackage[numbers,sort&compress]{natbib}
% Improve justification in narrow two-column text without using global \sloppy.
\RequirePackage[final]{microtype}
\setlength{\columnsep}{0.7cm}
\graphicspath{{figures/}}
\emergencystretch=0.8em

%% ------------------------------------------------------------
%% 4. Page geometry
%% ------------------------------------------------------------
\geometry
  {
    a4paper,
    includeheadfoot,
    left = 1.8cm,
    right = 1.8cm,
    marginparsep = 2pt,
    top = 2.5cm,
    bottom = 2.5cm,
    headsep = 10pt,
    footskip = 0.4cm
  }



%% ------------------------------------------------------------
%% 5. Display equation spacing
%% ------------------------------------------------------------
% Display-equation vertical spacing.
% Ordinary and short display equations are controlled separately,
% with slightly reduced stretch to avoid large vertical gaps.
\setlength{\abovedisplayskip}{10pt plus 1.7pt minus 2pt}
\setlength{\belowdisplayskip}{10pt plus 1.8pt minus 2pt}
\setlength{\abovedisplayshortskip}{6pt plus 1.7pt minus 2pt}
\setlength{\belowdisplayshortskip}{6pt plus 1.8pt minus 2pt}

% Re-apply after packages loaded by the document, without touching other settings.
\AtBeginDocument{%
  \setlength{\abovedisplayskip}{10pt plus 1.7pt minus 2pt}%
  \setlength{\belowdisplayskip}{10pt plus 1.8pt minus 2pt}%
  \setlength{\abovedisplayshortskip}{6pt plus 1.7pt minus 2pt}%
  \setlength{\belowdisplayshortskip}{6pt plus 1.8pt minus 2pt}%
}


%% ------------------------------------------------------------
%% 6. Core labels, two-column balancing, and paragraph behavior
%% ------------------------------------------------------------
% Core text labels
\def\abstractname{Abstract}
\def\keywordsname{Keywords}
\def\appendixname{APPENDIX}
\def\inputname{Input}
\def\outputname{Output}
% Two-column bottom alignment policy.
% Keep flushbottom for journal-style bottom alignment.
\flushbottom

\AtBeginDocument{%
  \flushbottom
  \setlength{\parskip}{0pt}%
  \setlength{\parindent}{1em}%
  % Page/column break policy.
  % Keep the first and last lines of a paragraph with the paragraph body.
  % Use a high (but not absolute) preference so fixed-length journal articles
  % do not gain pages merely to eliminate every possible isolated line.
  \clubpenalty=5000
  \widowpenalty=5000
  \displaywidowpenalty=5000
  \brokenpenalty=2000
  \interlinepenalty=0

  % the top or bottom of a column.  This is intentionally limited to the
  % Better justification and hyphenation for two-column English text.
  % Do not use global \sloppy in the body.
  \fussy
  \tolerance=1000
  \pretolerance=100
  \emergencystretch=0.8em
  \hyphenpenalty=50
  \exhyphenpenalty=50
  \lefthyphenmin=2
  \righthyphenmin=3
  % Float spacing: space around figures and tables.
\setlength{\textfloatsep}{14pt plus 2pt minus 5.6pt}%
\setlength{\floatsep}{6pt plus 1pt minus 2.4pt}%
\setlength{\intextsep}{14pt plus 2pt minus 5.6pt}%
\setlength{\dbltextfloatsep}{14pt plus 2pt minus 5.6pt}%
\setlength{\dblfloatsep}{6pt plus 1pt minus 2.4pt}%

% Prevent float-only/top-float areas from stretching figures apart vertically.
\makeatletter
\setlength{\csname @fptop\endcsname}{0pt}
\setlength{\csname @fpsep\endcsname}{8pt plus 1pt minus 2pt}
\setlength{\csname @fpbot\endcsname}{0pt plus 1fil}
\setlength{\csname @dblfptop\endcsname}{0pt}
\setlength{\csname @dblfpsep\endcsname}{8pt plus 1pt minus 2pt}
\setlength{\csname @dblfpbot\endcsname}{0pt plus 1fil}
\makeatother
}


%% ------------------------------------------------------------
%% 7. Hyphenation patterns for communication terminology
%% ------------------------------------------------------------
% Helpful hyphenation patterns for common communication terms.
\hyphenation{
  sat-el-lite-to-ground
  non-ter-res-tri-al
  non-sta-tion-ary
  char-ac-ter-is-tic
  char-ac-ter-is-tics
  com-mu-ni-ca-tion
  com-mu-ni-ca-tions
  sta-tis-ti-cal
  mod-el-ing
  frame-works
  stan-dard-i-za-tion
  at-mos-pher-ic
  ab-sorp-tion
  prop-a-ga-tion
}

% color
\usepackage{xcolor}

\definecolor{mydarkblue}{RGB}{31,78,121}
\definecolor{mysectionblue}{RGB}{20,90,140}
\definecolor{mylightblue}{RGB}{221,235,247}

\colorlet{sectioncolor}{mysectionblue}
\colorlet{subsectioncolor}{black}
\colorlet{journalboxcolor}{mylightblue}
\colorlet{footnotecolor}{black}
\colorlet{titlerulecolor}{mydarkblue}
\colorlet{rectanglecolor}{mydarkblue}



\ExplSyntaxOn

\cs_if_exist:NF \box_ht_plus_dp:N
  {
    \cs_new_protected:Npn \box_ht_plus_dp:N #1
      { \__box_dim_eval:n { \box_ht:N #1 + \box_dp:N #1 } }
  }

\tl_set:Nn \g__bibliographystyle_filename_tl { ccjnl_integrated_legacy_structure_bibcase_v37 }
\tl_set:Nn \g__ccjnl_references_name_tl { REFERENCES }
\tl_set:Nn \g__ccjnl_biographies_name_tl { BIOGRAPHIES }
\tl_const:Nn \c__ccjnl_issn_tl { 1673-5447 }
\tl_const:Nn \c__ccjnl_journal_tl { \itshape China~Communications } 
\tl_const:Nn \c__ccjnl_metadata_template_help_email_tl { china_latex@163.com }
\tl_const:Nn \c__ccjnl_metadata_template_company_tl { Tianjin ~Weiman ~Information ~Technology ~Co., ~Ltd. }
\tl_const:Nn \c__ccjnl_publisher_company_tl { China ~Communications ~Magazine ~Co.,~ Ltd. }
\cs_new:Npn \__ccjnl_month_name:n #1
  {
    \int_case:nnF {#1}
      {
        {1}{January}
        {2}{February}
        {3}{March}
        {4}{April}
        {5}{May}
        {6}{June}
        {7}{July}
        {8}{August}
        {9}{September}
        {10}{October}
        {11}{November}
        {12}{December}
      }
      {January}
  }
% 月刊页脚月份规则：优先使用 issue 作为月份（1--12 对应 January--December）。
% 这样 issue = {4} 时页脚显示 April，不再受系统编译月份影响。
% 如果 issue 未设置或超出 1--12，则回退到 copyright-month。
\cs_new:Npn \__ccjnl_footer_month_name:
  {
    \int_compare:nNnTF { \g__ccjnl_issue_int } > { 0 }
      {
        \int_compare:nNnTF { \g__ccjnl_issue_int } < { 13 }
          { \__ccjnl_month_name:n { \int_use:N \g__ccjnl_issue_int } }
          { \__ccjnl_month_name:n { \int_use:N \g__ccjnl_copyright_month_int } }
      }
      { \__ccjnl_month_name:n { \int_use:N \g__ccjnl_copyright_month_int } }
  }
\seq_const_from_clist:Nn \c__ccjnl_metadata_template_author_seq { Melody, Wei ~Ma, Sunben ~Chiu }
% 作者单位前导数字
\cs_new:Npn \__ccjnl_address_prefix_num:n #1
  {
    \group_begin:
      \scriptsize
      \textsuperscript { \addressnumfont #1 ~ }
    \group_end:
  }
% 通讯作者前缀说明
\tl_const:Nn \c__ccjnl_corr_email_prefix_tl
  {
    \__ccjnl_address_prefix_num:n { * }
    The ~corresponding ~author,~ email:~
  }
% 预定义定理环境名
\clist_const:Nn \c__ccjnl_theorem_style_label_clist
  {
    theorem, definition, lemma, proposition, corollary, example, exercise,
    remark, case
  }
% 子标题大写的跳过单词
\seq_const_from_clist:Nn \c__ccjnl_ignore_prep_seq
  {
    in, to, the, for, on, this, into, onto, at, by, within, about, and, or,
    than, until, of, an, with, from, as, over, via
  }
% 弃用的过时命令
\prop_const_from_keyval:Nn \c__ccjnl_let_undefine_command_prop
  {
    % rm = { textrm, rmfamily },
    % sf = { textsf, sffamily },
    % tt = { texttt, ttfamily },
    % md = { textmd, mdseries },
    % bf = { textbf, bfseries },
    % up = { textup, upshape },
    % it = { textit, itshape },
    % sl = { textsl, slshape },
    % sc = { textsc, scshape },
    footnote = { endnote },
  }
\prop_const_from_keyval:Nn \c__ccjnl_let_undefine_environment_prop
  {
    % eqnarray = { align, aligned, alignat, alignedat, flalign },
    % array = { cases, dcases, matrix, pmatrix, bmatrix, Bmatrix, vmatrix, Vmatrix },
  }
% 报错信息
\msg_new:nnn { ccjnl } { unsupported-engine }
  {
    The ~ccjnl ~class ~requires ~pdfTeX. \\
    "#1" ~is ~not ~supported ~at ~present. ~You ~must ~change \\
    your ~typesetting ~engine ~to ~"pdflatex".
  }
\msg_new:nnn { ccjnl } { less-than-one-corr-author }
  {
    Corresponding ~author ~is ~required.
  }
\msg_new:nnn { ccjnl } { more-than-one-corr-author }
  {
    Only ~one ~corresponding ~author ~is ~supported.
  }
\msg_new:nnn { ccjnl } { unsupported-command }
  {
    The ~command ~"\iow_char:N \\#1" ~is ~not ~supported. ~You ~have ~to ~replace ~it ~with ~#2.
  }
\msg_new:nnn { ccjnl } { unsupported-environment }
  {
    The ~environment ~"#1" ~is ~not ~supported. ~You ~have ~to ~replace ~it ~with ~#2.
  }



% 释放一些过时命令
\prop_map_inline:Nn \c__ccjnl_let_undefine_command_prop
  {
    \cs_set:cpn {#1}
      {
        \seq_set_from_clist:Nn \l__ccjnl_command_name_seq {#2}
        \seq_set_map_x:NNn \l__ccjnl_command_name_with_backslash_seq \l__ccjnl_command_name_seq
          { \c_backslash_str ####1 }
        \msg_error:nnxx { ccjnl } { unsupported-command } {#1}
          { \seq_use:Nnnn \l__ccjnl_command_name_with_backslash_seq { ~or~ } { ,~ } { , ~or~ } }
      }
  }
\prop_map_inline:Nn \c__ccjnl_let_undefine_environment_prop
  {
    \cs_set:cpn {#1}
      {
        \msg_error:nnxx { ccjnl } { unsupported-environment } {#1}
          { \clist_use:nnnn {#2} { ~or~ } { ,~ } { , ~or~ } }
      }
  }



\dim_new:N \g__ccjnl_cite_extra_width_dim

\keys_define:nn { ccjnl }
  {
    title            .tl_set:N = \g__ccjnl_title_tl,
    cite-title       .tl_set:N = \g__ccjnl_cite_title_input_tl,
    cite-extra-width .dim_set:N = \g__ccjnl_cite_extra_width_dim,
    corr-email       .tl_set:N = \g__ccjnl_corr_email_tl,

    classification   .tl_set:N = \g__ccjnl_classification_tl,
    issue           .int_set:N = \g__ccjnl_issue_int,
    volume          .int_set:N = \g__ccjnl_volume_int,
    first-page      .int_set:N = \g__ccjnl_first_page_int,
    doi              .tl_set:N = \g__ccjnl_doi_tl,

    received         .tl_set:N = \g__ccjnl_received_date_tl,
    revised          .tl_set:N = \g__ccjnl_revised_date_tl,
    online           .tl_set:N = \g__ccjnl_online_date_tl,
    editor           .tl_set:N = \g__ccjnl_editor_tl,
    % Preferred production-year key.  It intentionally writes to the legacy
    % storage variable so page headers, PDF metadata, and older project code
    % keep exactly the established layout and behavior.
    publication-year .int_set:N = \g__ccjnl_copyright_year_int,
    copyright-year  .int_set:N = \g__ccjnl_copyright_year_int,
    copyright-month .int_set:N = \g__ccjnl_copyright_month_int,

    title           .initial:n = { },
    cite-title      .initial:n = { },
    cite-extra-width .initial:n = { 0pt },
    corr-email      .initial:n = { },

    classification  .initial:n = { China ~Communications },
    issue           .initial:n = { 0 },
    volume          .initial:n = { 0 },
    first-page      .initial:n = { 1 },
    doi             .initial:n = { 10.23919/JCC.YYYY.MM.NNN },

    received        .initial:n = { },
    revised         .initial:n = { },
    online          .initial:n = { },
    editor          .initial:n = { },

    copyright-year  .initial:n = { \int_use:N \c_sys_year_int },
    copyright-month .initial:n = { \int_use:N \c_sys_month_int },

    first-page         .code:n =
      {
        \int_set:cn { c@page } {#1}
        \int_set:Nn \g__ccjnl_first_page_int {#1}
      },
  }

\NewDocumentCommand \ccjnlset { m } { \keys_set:nn { ccjnl } {#1} }

\prop_clear:N \g__ccjnl_element_footnote_info_prop

% Cite-as author initials. Author input order is Given-name Family-name.
\cs_generate_variant:Nn \tl_head:n { V }
\cs_new_protected:Npn \__ccjnl_given_word_initials_tl_set:Nn #1#2
  {
    \tl_clear:N #1
    \seq_set_split:Nnn \l_tmpa_seq { - } {#2}
    \seq_map_indexed_inline:Nn \l_tmpa_seq
      {
        \int_compare:nNnT {##1} > {1}
          { \tl_put_right:Nn #1 { - } }
        \tl_put_right:Nx #1
          { \exp_args:No \tl_head:n {##2} . }
      }
  }
\cs_new_protected:Npn \__ccjnl_short_name_tl_set:Nn #1#2
  {
    % Match the bibliography name rule in Cite as: use only the first
    % initial of the first supplied given name.
    % Hany S. Hussein -> H. Hussein; Yong-Hua Song -> Y. Song.
    \seq_set_split:Nnn \l__ccjnl_name_word_seq { ~ } {#2}
    \seq_pop_right:NN \l__ccjnl_name_word_seq \l__ccjnl_lastname_tl
    \seq_if_empty:NTF \l__ccjnl_name_word_seq
      { \tl_set_eq:NN #1 \l__ccjnl_lastname_tl }
      {
        \seq_pop_left:NN \l__ccjnl_name_word_seq \l_tmpa_tl
        \tl_set:Nx #1
          {
            \tl_head:V \l_tmpa_tl .
            \c_space_tl
            \exp_not:V \l__ccjnl_lastname_tl
          }
      }
  }

% 添加姓名缩写入队列
\seq_new:N \g__ccjnl_short_author_seq
\cs_new_protected:Npn \__ccjnl_add_short_author:n #1
  {
    \__ccjnl_short_name_tl_set:Nn \l__ccjnl_short_name_tl {#1}
    \seq_put_right:NV \g__ccjnl_short_author_seq \l__ccjnl_short_name_tl
  }


\newcounter { ccjnl@address }
\setcounter { ccjnl@address } { 0 }

% #1 = author (tl)
% #2 = labels (clist)
% #3 = star (bool)
\cs_new_protected:Npn \__ccjnl_author_with_superscript:nn #1#2#3
  {
    #1
    \clist_set:Nx \l__ccjnl_ref_clist
      { \clist_map_function:nN {#2} \__ccjnl_ref:n }
    \bool_if:NT #3 { \clist_put_right:Nn \l__ccjnl_ref_clist { * } }
    \textsuperscript
      {
        \authorreffont
        \clist_use:Nn \l__ccjnl_ref_clist { , }
      }
  }

\cs_new:Npn \__ccjnl_ref:n #1
  { \exp_not:N \ref* { ccjnl@address@#1 } , }

% #1 = address (tl)
% #2 = labels (tl)
\cs_new_protected:Npn \__ccjnl_address_with_superscript:nn #1#2
  {
    \refstepcounter{ccjnl@address}
    \label{ccjnl@address@#2}
    \__ccjnl_address_prefix_num:n { \arabic{ccjnl@address} }
    #1
  }

% \author[<address ref clist>]{<author name>}
% \author*[<address ref clist>]{<corresponding author name>}
\seq_new:N \g__ccjnl_author_seq
\seq_new:N \g__ccjnl_authors_with_ref_seq
\int_new:N \g__ccjnl_corr_author_count_int
% Keep the full title-page name independent from Cite-as initials.
\tl_new:N \l__ccjnl_formatted_author_tl
\cs_new_protected:Npn \__ccjnl_format_author_name:Nnn #1#2#3
  {
    \tl_clear:N #1
    \str_if_eq:eeTF { \tl_trim_spaces:n {#3} } { style=chinese }
      {
        \seq_set_split:Nnn \l_tmpa_seq { ~ } {#2}
        \int_compare:nNnTF { \seq_count:N \l_tmpa_seq } > { 1 }
          {
            \seq_pop_right:NN \l_tmpa_seq \l_tmpb_tl
            \tl_set:Nx #1
              {
                \exp_not:V \l_tmpb_tl
                \c_space_tl
                \seq_use:Nn \l_tmpa_seq { \c_space_tl }
              }
          }
          { \tl_set:Nn #1 {#2} }
      }
      { \tl_set:Nn #1 {#2} }
  }

\DeclareDocumentCommand \author { s O{} m O{} }
  {
    \__ccjnl_format_author_name:Nnn \l__ccjnl_formatted_author_tl {#3} {#4}
    \__ccjnl_add_short_author:n {#3}
    \seq_put_right:NV \g__ccjnl_author_seq \l__ccjnl_formatted_author_tl
    \bool_if:NT #1 { \int_gadd:Nn \g__ccjnl_corr_author_count_int { 1 } }
    \seq_put_right:Nx \g__ccjnl_authors_with_ref_seq
      {
        \exp_not:N \__ccjnl_author_with_superscript:nn
        { \exp_not:V \l__ccjnl_formatted_author_tl } { \exp_not:n {#2} } { \exp_not:n {#1} }
      }
  }

% \address[<address label>]{<address>}
\seq_new:N \g__ccjnl_addresses_with_label_seq
\DeclareDocumentCommand \address { s O{} m O{} }
  {
    \tl_if_blank:nTF {#2}
      { \seq_put_right:Nn \g__ccjnl_addresses_with_label_seq {#3} }
      {
        \seq_put_right:Nn \g__ccjnl_addresses_with_label_seq
          { \__ccjnl_address_with_superscript:nn {#3} {#2} }
      }
  }


\cs_new:Npn \__ccjnl_titlepage_element_tl_set:Nn #1#2
  {
    \tl_set:Nn #1 { \group_begin: #2 \group_end: }
  }
\cs_new:Npn \__ccjnl_info_element_tl_set:Nn #1#2
  {
    \__ccjnl_titlepage_element_tl_set:Nn #1 { \infofont #2 \par }
  }

\dim_new:N \g__ccjnl_box_width_dim
\dim_set_eq:NN \g__ccjnl_box_width_dim \textwidth
\dim_sub:Nn \g__ccjnl_box_width_dim { 6pt }
\cs_new_protected:Npn \__ccjnl_classification_word:n #1
  {
    \tl_set:Nx \l_tmpa_tl { \text_uppercase:n {#1} }
    \tl_if_eq:VnTF \l_tmpa_tl { \& }
      { { \large \l_tmpa_tl } }
      {
        { \fontsize{14}{16}\selectfont \exp_args:NV \tl_head:n \l_tmpa_tl }
        { \large \exp_args:NV \tl_tail:n \l_tmpa_tl }
      }
  }
\cs_new_protected:Npn \__ccjnl_classification_format:n #1
  {
    \tl_set:Nx \l_tmpb_tl {#1}
    \seq_set_split:NnV \l_tmpa_seq { ~ } \l_tmpb_tl
    \seq_set_map:NNn \l_tmpb_seq \l_tmpa_seq
      { \__ccjnl_classification_word:n {##1} }
    \seq_use:Nn \l_tmpb_seq { ~ }
  }
\__ccjnl_titlepage_element_tl_set:Nn \l__ccjnl_element_classification_tl
  {
    \colorbox { journalboxcolor }
      {
        \parbox
          [ t ]
          { \g__ccjnl_box_width_dim }
          {
            \vfill
            \skip_horizontal:n { -3pt }
            \parbox { \g__ccjnl_box_width_dim } { \l__ccjnl_element_classification_inner_tl }
            \vfill
          }
      }
  }
\__ccjnl_titlepage_element_tl_set:Nn \l__ccjnl_element_classification_inner_tl
  {
    \sffamily \scshape \bfseries
    \__ccjnl_classification_format:n { \g__ccjnl_classification_tl }
  }
\__ccjnl_titlepage_element_tl_set:Nn \l__ccjnl_element_title_tl
  {
    \LARGE \sffamily \bfseries
    \g__ccjnl_title_tl
    \par
  }
\__ccjnl_titlepage_element_tl_set:Nn \l__ccjnl_element_author_tl
  {
    \authorfont \bfseries
    \seq_use:Nn \g__ccjnl_authors_with_ref_seq { ,~ }
  }
\__ccjnl_info_element_tl_set:Nn \l__ccjnl_element_address_tl
  {
    \seq_use:Nn \g__ccjnl_addresses_with_label_seq { \\ }
  }
\__ccjnl_info_element_tl_set:Nn \l__ccjnl_element_corr_tl
  {
    \c__ccjnl_corr_email_prefix_tl \g__ccjnl_corr_email_tl
  }
\__ccjnl_titlepage_element_tl_set:Nn \l__ccjnl_element_rectangle_tl
  {
    \tikz \fill [fill = rectanglecolor] (0,0) rectangle (\textwidth, 0.3);
  }
\__ccjnl_titlepage_element_tl_set:Nn \l__ccjnl_element_footnote_info_tl
  { }
\cs_new:Npn \__ccjnl_footnote_info_format:nn #1#2
  { \exp_not:N \textbf { #1 :~ } \exp_not:n {#2} , }


\cs_generate_variant:Nn \seq_set_split:Nnn { NVV, NnV }
\cs_new_protected:Npn \__ccjnl_cite_sentence_case_append_segment:n #1
  {
    \tl_set:Nn \l_tmpc_tl {#1}
    \tl_trim_spaces:N \l_tmpc_tl
    \tl_if_blank:VF \l_tmpc_tl
      {
        \tl_set:Nx \l_tmpd_tl
          {
            \text_uppercase:n
              { \exp_args:NV \tl_head:n \l_tmpc_tl }
          }
        \tl_put_right:NV \l_tmpb_tl \l_tmpd_tl
        \tl_set:Nx \l_tmpd_tl
          { \exp_args:NV \tl_tail:n \l_tmpc_tl }
        \tl_put_right:NV \l_tmpb_tl \l_tmpd_tl
      }
  }
\cs_new_protected:Npn \__ccjnl_cite_sentence_case_set:Nn #1#2
  {
    \tl_set:Nx #1 { \text_lowercase:n {#2} }
    \regex_replace_all:nnN { arxiv } { arXiv } #1
    \seq_set_split:NVV \l_tmpa_seq \c_colon_str #1
    \tl_clear:N \l_tmpb_tl
    \int_zero:N \l_tmpa_int
    \seq_map_inline:Nn \l_tmpa_seq
      {
        \int_incr:N \l_tmpa_int
        \int_compare:nNnT { \l_tmpa_int } > { 1 }
          {
            \tl_put_right:Nx \l_tmpb_tl
              { \c_colon_str \c_space_tl }
          }
        \__ccjnl_cite_sentence_case_append_segment:n {##1}
      }
    \tl_set_eq:NN #1 \l_tmpb_tl
    \seq_set_split:NnV \l_tmpa_seq { ? } #1
    \tl_clear:N \l_tmpb_tl
    \int_zero:N \l_tmpa_int
    \seq_map_inline:Nn \l_tmpa_seq
      {
        \int_incr:N \l_tmpa_int
        \int_compare:nNnT { \l_tmpa_int } > { 1 }
          { \tl_put_right:Nn \l_tmpb_tl { ?~ } }
        \__ccjnl_cite_sentence_case_append_segment:n {##1}
      }
    \tl_set_eq:NN #1 \l_tmpb_tl
  }
\tl_set:Nn \l__ccjnl_cite_journal_tl    { \textit { \c__ccjnl_journal_tl } }
\tl_set:Nn \l__ccjnl_cite_volume_tl     { \int_use:N \g__ccjnl_volume_int }
\tl_set:Nn \l__ccjnl_cite_number_tl     { \int_use:N \g__ccjnl_issue_int }
\tl_set:Nn \l__ccjnl_cite_year_tl       { \int_use:N \g__ccjnl_copyright_year_int }
\tl_set:Nn \l__ccjnl_cite_first_page_tl { \int_use:N \g__ccjnl_first_page_int }
\tl_set:Nn \l__ccjnl_cite_last_page_tl  { \pageref* { TotPages } }
\tl_set:Nn \l__ccjnl_cite_doi_tl        { \exp_args:Ne \seqsplit \g__ccjnl_doi_tl }
\cs_new:Npn \__ccjnl_cite_month_name:n #1
  {
    \int_case:nnF {#1}
      {
        {1}{Jan.}
        {2}{Feb.}
        {3}{Mar.}
        {4}{Apr.}
        {5}{May}
        {6}{Jun.}
        {7}{Jul.}
        {8}{Aug.}
        {9}{Sep.}
        {10}{Oct.}
        {11}{Nov.}
        {12}{Dec.}
      }
      { }
  }
\tl_set:Nn \l__ccjnl_cite_month_tl
  { \__ccjnl_cite_month_name:n { \int_use:N \g__ccjnl_issue_int } }
\tl_set:Nn \l__ccjnl_cite_title_tl
  {
    \tl_if_blank:VTF \g__ccjnl_cite_title_input_tl
      {
        \ClassWarningNoLine {ccjnl}
          {cite-title~is~empty;~Cite~as~uses~title~verbatim.\MessageBreak
           Provide~cite-title~with~the~intended~reference~capitalization}
        \tl_use:N \g__ccjnl_title_tl
      }
      { \tl_use:N \g__ccjnl_cite_title_input_tl }
  }
\tl_set:Nn \l__ccjnl_cite_name_list_tl
  {
    \int_compare:nNnTF { \seq_count:N \g__ccjnl_short_author_seq } > { 2 }
      {
        \seq_item:Nn \g__ccjnl_short_author_seq { 1 } ,~
        \seq_item:Nn \g__ccjnl_short_author_seq { 2 } ~
        \textit { et ~al. }
      }
      {
        \int_compare:nNnTF { \seq_count:N \g__ccjnl_short_author_seq } = { 1 }
          { \seq_item:Nn \g__ccjnl_short_author_seq { 1 } }
          {
            \int_compare:nNnTF { \seq_count:N \g__ccjnl_short_author_seq } = { 2 }
              {
                \seq_item:Nn \g__ccjnl_short_author_seq { 1 } ~and~
                \seq_item:Nn \g__ccjnl_short_author_seq { 2 }
              }
              {
                \seq_map_indexed_inline:Nn \g__ccjnl_short_author_seq
                  {
                    \int_compare:nNnTF {#1} = {1}
                      {#2}
                      {
                        \int_compare:nNnTF
                          {#1} = { \seq_count:N \g__ccjnl_short_author_seq }
                          { ,~and~ #2 }
                          { ,~ #2 }
                      }
                  }
              }
          }
      }
  }
\tl_set:Nn \l__ccjnl_vol_no_pp_tl
  {
    \l__ccjnl_cite_year_tl ,~
    vol.~ \l__ccjnl_cite_volume_tl ,~
    no.~ \l__ccjnl_cite_number_tl ,~
    pp.~ \l__ccjnl_cite_first_page_tl -- \l__ccjnl_cite_last_page_tl ,~
  }
\tl_set:Nn \l__ccjnl_cite_vol_no_pp_tl
  {
    \l__ccjnl_vol_no_pp_tl
  }
\__ccjnl_info_element_tl_set:Nn \l__ccjnl_element_cite_tl
  {
    \tex_parshape:D 1 ~ 0pt ~
      \dim_eval:n { \linewidth + \g__ccjnl_cite_extra_width_dim } \scan_stop:
    \textbf { Cite ~as: } ~
    \l__ccjnl_cite_name_list_tl ,~
    ``
    \l__ccjnl_cite_title_tl
    ,''~
    \l__ccjnl_cite_journal_tl ,~
    \l__ccjnl_cite_vol_no_pp_tl
    doi:~ \g__ccjnl_doi_tl .
  }



% page layout
\dim_new:N \l__headrule_width_dim
\dim_set_eq:NN \l__headrule_width_dim \textwidth
\dim_const:Nn \l__headrule_height_dim { 0.283pt }
\cs_new:Npn \__ccjnl_element_headfootrule:n #1
  {
    \rule
      [ #1 ]
      { \l__headrule_width_dim }
      { \l__headrule_height_dim }
  }
% #1: left text
% #2: right text
\cs_set:Npn \__ccjnl_element_footformat:NN #1#2
  {
    \parbox
      [ t ]
      { \l__headrule_width_dim }
      {
        \l__ccjnl_element_footrule_tl
        \skip_vertical:n { -10pt }
        #1 \hfill #2
      }
  }
% #1: text
\cs_set:Npn \__ccjnl_element_headformat:n #1
  {
    \parbox
      [ b ]
      [ 0pt ]
      { \l__headrule_width_dim }
      {
        #1
        \skip_vertical:n {-7pt}
        \l__ccjnl_element_headrule_tl
      }
  }
\__ccjnl_titlepage_element_tl_set:Nn \l__ccjnl_element_headrule_tl
  {
    \__ccjnl_element_headfootrule:n { 0pt }
  }
\__ccjnl_titlepage_element_tl_set:Nn \l__ccjnl_element_footrule_tl
  {
    \__ccjnl_element_headfootrule:n { 0pt } \\
    \__ccjnl_element_headfootrule:n { 10pt }
  }
\__ccjnl_titlepage_element_tl_set:Nn \l__ccjnl_element_titlerule_tl
  {
    \color { titlerulecolor }
    \rule { 6cm } { 1pt }
  }


\__ccjnl_titlepage_element_tl_set:Nn \l__ccjnl_foot_copyright_tl
  {
    \footnotesize
    \textcopyright\ 
    \itshape China~Communications\/\ \normalfont Magazine
    \ $\cdot$\ Vol.~\int_use:N \g__ccjnl_volume_int
    \ $\cdot$\ No.~\int_use:N \g__ccjnl_issue_int
    \ $\cdot$\ \__ccjnl_footer_month_name:\nobreakspace{}\int_use:N \g__ccjnl_copyright_year_int
  }
\__ccjnl_titlepage_element_tl_set:Nn \l__ccjnl_foot_pagenum_tl
  {
    \sffamily \small
    \thepage
  }
\tl_set:Nn \l__ccjnl_titleheadings_text_tl
  {
    \footnotesize
    \textit{China~Communications}
    \ $\cdot$\ Vol.~\int_use:N \g__ccjnl_volume_int
    \ $\cdot$\ No.~\int_use:N \g__ccjnl_issue_int
  }

% Page-style internals use @-macros, so @ must be a letter while these definitions are read.
\makeatletter
\DeclareDocumentCommand \@oddhead { }
  {
    \__ccjnl_element_headformat:n { }
  }
\cs_set_eq:NN \@evenhead \@oddhead
\DeclareDocumentCommand \@oddfoot { }
  {
    \__ccjnl_element_footformat:NN \l__ccjnl_foot_copyright_tl \l__ccjnl_foot_pagenum_tl
  }
\DeclareDocumentCommand \@evenfoot { }
  {
    \__ccjnl_element_footformat:NN \l__ccjnl_foot_pagenum_tl \l__ccjnl_foot_copyright_tl
  }
\NewDocumentCommand \ps@titleheadings { }
  {
    \DeclareDocumentCommand \@oddhead { }
      {
        \__ccjnl_element_headformat:n { \l__ccjnl_titleheadings_text_tl }
      }
    \cs_gset_eq:NN \@evenhead \@oddhead
  }
\makeatother


\cs_new:Npn \__ccjnl_check:
  {
    \sys_if_engine_pdftex:F
      { \msg_error:nnx { ccjnl } { unsupported-engine } { \c_sys_engine_str } }
    \int_compare:nNnT \g__ccjnl_corr_author_count_int > 1
      { \msg_error:nn { ccjnl } { more-than-one-corr-author } }
    \int_compare:nNnT \g__ccjnl_corr_author_count_int < 1
      { \msg_error:nn { ccjnl } { less-than-one-corr-author } }
  }


\RenewDocumentCommand \maketitle { }
  {
    \__ccjnl_check:
    \thispagestyle { titleheadings }
    \twocolumn
      [
        \raggedright

        \l__ccjnl_element_rectangle_tl
        \skip_vertical:n { -11pt }

        \l__ccjnl_element_classification_tl
        \skip_vertical:n { 1cm }

        \l__ccjnl_element_title_tl
        \skip_vertical:n { 12pt }

        \l__ccjnl_element_titlerule_tl \\
        \l__ccjnl_element_author_tl
        \skip_vertical:n { 12pt }

        \l__ccjnl_element_address_tl
        \l__ccjnl_element_corr_tl
        \skip_vertical:n { \baselineskip }

        \l__ccjnl_element_cite_tl
        \skip_vertical:n { 1cm plus 1mm minus 2mm }
      ]
    \l__ccjnl_element_footnote_info_tl
   
  }

\providecommand{\inst}[1]{\textsuperscript{#1}}
\providecommand{\corinfo}[1]{}
\providecommand{\receiveddate}[1]{}
\providecommand{\reviseddate}[1]{}
\providecommand{\Editor}[1]{}
\providecommand{\AfterLastShipout}[1]{}

\NewExpandableDocumentCommand \uppercap { m } { \text_uppercase:n {#1} }
\NewExpandableDocumentCommand \firstcap { m }
  {
    \seq_set_split:Nnn \l_tmpa_seq { ~ } {#1}
    \seq_set_map:NNn \l_tmpb_seq \l_tmpa_seq
      {
        \seq_if_in:NnTF \c__ccjnl_ignore_prep_seq {##1}
          {##1}
          { \text_uppercase:n ##1 } % 首字母大写。用 \text_titlecase:n 的话会将后面的字母变小写
      }
    \seq_use:Nn \l_tmpb_seq { ~ }
  }


\newtheoremstyle { ccjnlplain } % name
  { 0pt plus 1pt } % Space above
  { 0pt plus 1pt } % Space below
  { \itshape } % body font
  { } % indent amount
  { \bfseries } % theorem head font
  { . } % punctuation after theorem head
  { 5pt plus 1pt minus 1pt } % space after theorem head
  { } % theorem head spec (cna be left empty, meaning `normal')
\theoremstyle { ccjnlplain }
\cs_new_protected_nopar:Npn \__ccjnl_new_theorem:n #1
  {
    \newtheorem {#1} { \text_titlecase:n {#1} }
    \newtheorem* {#1*} { \text_titlecase:n {#1} }
  }
\clist_map_function:NN \c__ccjnl_theorem_style_label_clist \__ccjnl_new_theorem:n

\ProvideDocumentCommand \bibsection { }
  {
    \textcolor
      { sectioncolor }
      { \exp_args:NNV \section * \g__ccjnl_references_name_tl }
  }
\makeatletter
\providecommand{\fname@algorithm}{Algorithm}
\makeatother
\NewDocumentCommand \biographies { }
  {
    \textcolor
      { sectioncolor }
      { \exp_args:NNV \section * \g__ccjnl_biographies_name_tl }
  }


% Biography
\int_new:N \l__ccjnl_biography_photo_line_num_int
\box_new:N \l__ccjnl_biography_T_box
\box_new:N \l__ccjnl_biography_box
\box_new:N \l__ccjnl_biography_photo_box
\dim_new:N \l__ccjnl_biography_T_height_dim
\dim_new:N \l__ccjnl_biography_photo_wd_dim
\dim_new:N \l__ccjnl_biography_photo_ht_dim
\dim_new:N \l__ccjnl_biography_photo_ht_dp_dim
\dim_new:N \l__ccjnl_biography_photo_refpoint_raise_dim
\dim_const:Nn \c__ccjnl_spacing_between_img_text_dim { 0.1in }
\dim_const:Nn \c__ccjnl_biography_height_dim { 1.25in }
\dim_const:Nn \c__ccjnl_biography_width_dim { 1in }
\dim_const:Nn \c__ccjnl_biography_baselineskip_dim { 11.6pt }
\dim_const:Nn \c__ccjnl_biography_parindent_dim { \parindent }
\hbox_set:Nn \l__ccjnl_biography_T_box { T }
\dim_set:Nn \l__ccjnl_biography_T_height_dim
  { \box_ht:N \l__ccjnl_biography_T_box }

\NewDocumentEnvironment { CCJNLbiography } { m m }
  {
    \par\medskip
    \hbox_set:Nn \l__ccjnl_biography_photo_box
      {
        \includegraphics
          [
            width  = \c__ccjnl_biography_width_dim,
            height = \c__ccjnl_biography_height_dim,
            keepaspectratio,
          ] {#1}
      }
    \dim_set:Nn \l__ccjnl_biography_photo_ht_dim
      { \box_ht:N \l__ccjnl_biography_photo_box }
    \dim_set:Nn \l__ccjnl_biography_photo_wd_dim
      { \box_wd:N \l__ccjnl_biography_photo_box }
    \dim_set:Nn \l__ccjnl_biography_photo_ht_dp_dim
      { \box_ht_plus_dp:N \l__ccjnl_biography_photo_box }
    \dim_set_eq:NN \parindent \c__ccjnl_biography_parindent_dim
    % 计算参考点需要移动的距离
    \dim_set:Nn \l__ccjnl_biography_photo_refpoint_raise_dim
      { \l__ccjnl_biography_T_height_dim - \l__ccjnl_biography_photo_ht_dim }
    % 修改参考点至图片左上角
    \hbox_set:Nn \l__ccjnl_biography_box
      {
        \raisebox
          { \l__ccjnl_biography_photo_refpoint_raise_dim }
          { \box_use:N \l__ccjnl_biography_photo_box }
      }
    \box_set_ht:Nn \l__ccjnl_biography_box { 0pt }
    \box_set_dp:Nn \l__ccjnl_biography_box { 0pt }
    \box_set_wd:Nn \l__ccjnl_biography_box { 0pt }
    % 计算图片占用行数
    \int_set:Nn \l__ccjnl_biography_photo_line_num_int
      {
        \fp_to_int:n
          {
            ceil
              ( \l__ccjnl_biography_photo_ht_dp_dim / \c__ccjnl_biography_baselineskip_dim )
          }
      }
    % 设置左缩进量
    \dim_set:Nn \hangindent
      { \l__ccjnl_biography_photo_wd_dim + \c__ccjnl_spacing_between_img_text_dim }
    % 设置缩进行数
    \int_set:Nn \hangafter { - \l__ccjnl_biography_photo_line_num_int }

    \cs_set_eq:NN \__ccjnl_biography_par: \par
    \cs_set:Npx \par { \hfil \break \indent }

    \noindent
    \makebox
      [ 0pt ]
      [ l ]
      {
        \skip_horizontal:n { -\hangindent }
        \box_use:N \l__ccjnl_biography_box
      }

    \biographyfont
    \textbf { \itshape #2 } ~
  }
  {
    \relax
    \cs_set_eq:NN \par \__ccjnl_biography_par:
    \par\medskip
  }



% ------------------------------------------------------------
% Fixed biography-photo frame and automatic biography spacing
% ------------------------------------------------------------
% Photos are never rewritten.  They are proportionally scaled and clipped
% only while TeX builds the PDF.  The first author after the BIOGRAPHIES
% heading has a separate, smaller gap from all later authors.
\dim_new:N \g__ccjnl_biography_fixed_width_dim
\dim_new:N \g__ccjnl_biography_fixed_height_dim
\dim_new:N \g__ccjnl_biography_xshift_dim
\dim_new:N \g__ccjnl_biography_yshift_dim
\dim_new:N \g__ccjnl_biography_sep_dim
\dim_new:N \g__ccjnl_biography_first_sep_dim
\dim_new:N \l__ccjnl_biography_current_sep_dim
\dim_new:N \l__ccjnl_biography_residual_dim
\bool_new:N \g__ccjnl_biography_cover_bool
\bool_new:N \g__ccjnl_biography_first_bool
\box_new:N \l__ccjnl_biography_source_box
\box_new:N \l__ccjnl_biography_scaled_box
\int_new:N \l__ccjnl_biography_body_line_num_int

% Exact 5:7 ratio with essentially the same area as the former nominal
% 25.4 x 31.75 mm photo box.
\dim_gset:Nn \g__ccjnl_biography_fixed_width_dim  { 24mm }
\dim_gset:Nn \g__ccjnl_biography_fixed_height_dim { 33.6mm }
\dim_gzero:N \g__ccjnl_biography_xshift_dim
\dim_gzero:N \g__ccjnl_biography_yshift_dim
\dim_gset:Nn \g__ccjnl_biography_sep_dim       { 12pt }
\dim_gset:Nn \g__ccjnl_biography_first_sep_dim { 2pt }
\bool_gset_true:N \g__ccjnl_biography_cover_bool

\keys_define:nn { ccjnl / biography-photo }
  {
    width  .dim_gset:N = \g__ccjnl_biography_fixed_width_dim,
    height .dim_gset:N = \g__ccjnl_biography_fixed_height_dim,
    xshift .dim_gset:N = \g__ccjnl_biography_xshift_dim,
    yshift .dim_gset:N = \g__ccjnl_biography_yshift_dim,
    bio-sep .dim_gset:N = \g__ccjnl_biography_sep_dim,
    first-bio-sep .dim_gset:N = \g__ccjnl_biography_first_sep_dim,
    fit .choice:,
    fit / cover .code:n =
      { \bool_gset_true:N \g__ccjnl_biography_cover_bool },
    fit / contain .code:n =
      { \bool_gset_false:N \g__ccjnl_biography_cover_bool },
  }

\NewDocumentCommand \ccjnlbiographyphotosetup { m }
  { \keys_set:nn { ccjnl / biography-photo } {#1} }

\cs_new_protected:Npn \__ccjnl_biography_scaled_image:n #1
  {
    \hbox_set:Nn \l__ccjnl_biography_source_box
      { \includegraphics {#1} }
    \bool_if:NTF \g__ccjnl_biography_cover_bool
      {
        \fp_compare:nNnTF
          {
            \dim_to_fp:n { \box_wd:N \l__ccjnl_biography_source_box }
            /
            \dim_to_fp:n
              { \box_ht_plus_dp:N \l__ccjnl_biography_source_box }
          }
          >
          {
            \dim_to_fp:n { \g__ccjnl_biography_fixed_width_dim }
            /
            \dim_to_fp:n { \g__ccjnl_biography_fixed_height_dim }
          }
          {
            \hbox_set:Nn \l__ccjnl_biography_scaled_box
              {
                \includegraphics
                  [ height = \g__ccjnl_biography_fixed_height_dim ] {#1}
              }
          }
          {
            \hbox_set:Nn \l__ccjnl_biography_scaled_box
              {
                \includegraphics
                  [ width = \g__ccjnl_biography_fixed_width_dim ] {#1}
              }
          }
      }
      {
        \hbox_set:Nn \l__ccjnl_biography_scaled_box
          {
            \includegraphics
              [
                width  = \g__ccjnl_biography_fixed_width_dim,
                height = \g__ccjnl_biography_fixed_height_dim,
                keepaspectratio,
              ] {#1}
          }
      }
  }

\cs_new_protected:Npn \__ccjnl_biography_fixed_frame:n #1
  {
    \__ccjnl_biography_scaled_image:n {#1}
    \begin{tikzpicture}
      \path[use~as~bounding~box]
        (0pt,0pt) rectangle
        (\g__ccjnl_biography_fixed_width_dim,
         \g__ccjnl_biography_fixed_height_dim);
      \clip
        (0pt,0pt) rectangle
        (\g__ccjnl_biography_fixed_width_dim,
         \g__ccjnl_biography_fixed_height_dim);
      \node[inner~sep=0pt,anchor=center]
        at
        (
          \dim_eval:n { \g__ccjnl_biography_fixed_width_dim / 2 }
          + \g__ccjnl_biography_xshift_dim,
          \dim_eval:n { \g__ccjnl_biography_fixed_height_dim / 2 }
          + \g__ccjnl_biography_yshift_dim
        )
        { \box_use:N \l__ccjnl_biography_scaled_box };
    \end{tikzpicture}
  }

% The bibliography tail is consumed only when \biographies is the next real
% layout item.  The global state proves that a bibliography has just ended;
% the 1sp kern proves that no intervening content, explicit space, or page
% break has been inserted.  This avoids removing unrelated vertical space
% when \biographies is used in another context.
\bool_new:N \g__ccjnl_bibliography_just_ended_bool
\dim_const:Nn \c__ccjnl_bibliography_tail_marker_dim { 1sp }
\cs_new_protected:Npn \ccjnlMarkBibliographyTail
  {
    \par
    \bool_gset_true:N \g__ccjnl_bibliography_just_ended_bool
    \tex_kern:D \c__ccjnl_bibliography_tail_marker_dim
  }
\cs_new_protected:Npn \__ccjnl_consume_bibliography_tail:
  {
    \bool_if:NT \g__ccjnl_bibliography_just_ended_bool
      {
        \mode_if_vertical:T
          {
            \dim_compare:nNnT
              { \tex_lastkern:D }
              =
              { \c__ccjnl_bibliography_tail_marker_dim }
              { \tex_unkern:D \removelastskip }
          }
      }
    \bool_gset_false:N \g__ccjnl_bibliography_just_ended_bool
  }

\RenewDocumentCommand \biographies { }
  {
    % This assignment must be global because each biography environment is
    % grouped.
    \bool_gset_true:N \g__ccjnl_biography_first_bool
    % The numberless section format already supplies sectioncolor.  Wrapping
    % \section* in \textcolor forces horizontal mode first and creates an
    % unnecessary paragraph before the heading, so call the section command
    % directly.  Consume the bibliography tail only when the bibliography-end
    % state and its untouched physical marker are both present.
    \par
    \__ccjnl_consume_bibliography_tail:
    % Keep the BIOGRAPHIES heading with one complete fixed photo block.  The
    % first biography repeats its own Needspace check as a final safety net.
    \Needspace
      {
        \dim_eval:n
          {
            \g__ccjnl_biography_fixed_height_dim
            + \g__ccjnl_biography_first_sep_dim
            + 3\baselineskip
          }
      }
    \exp_args:NNV \section * \g__ccjnl_biographies_name_tl
  }

\RenewDocumentEnvironment { CCJNLbiography } { m m }
  {
    \par
    \bool_if:NTF \g__ccjnl_biography_first_bool
      {
        \dim_set_eq:NN
          \l__ccjnl_biography_current_sep_dim
          \g__ccjnl_biography_first_sep_dim
      }
      {
        \dim_set_eq:NN
          \l__ccjnl_biography_current_sep_dim
          \g__ccjnl_biography_sep_dim
      }
    \bool_gset_false:N \g__ccjnl_biography_first_bool
    \Needspace
      {
        \dim_eval:n
          {
            \g__ccjnl_biography_fixed_height_dim
            + \l__ccjnl_biography_current_sep_dim
            + \baselineskip
          }
      }
    \vspace { \l__ccjnl_biography_current_sep_dim }
    \hbox_set:Nn \l__ccjnl_biography_photo_box
      { \__ccjnl_biography_fixed_frame:n {#1} }
    \dim_set_eq:NN
      \l__ccjnl_biography_photo_wd_dim
      \g__ccjnl_biography_fixed_width_dim
    \dim_set_eq:NN
      \l__ccjnl_biography_photo_ht_dim
      \g__ccjnl_biography_fixed_height_dim
    \dim_set_eq:NN
      \l__ccjnl_biography_photo_ht_dp_dim
      \g__ccjnl_biography_fixed_height_dim
    \dim_set_eq:NN \parindent \c__ccjnl_biography_parindent_dim
    \dim_set:Nn \l__ccjnl_biography_photo_refpoint_raise_dim
      {
        \l__ccjnl_biography_T_height_dim
        - \g__ccjnl_biography_fixed_height_dim
      }
    \hbox_set:Nn \l__ccjnl_biography_box
      {
        \raisebox
          { \l__ccjnl_biography_photo_refpoint_raise_dim }
          { \box_use:N \l__ccjnl_biography_photo_box }
      }
    \box_set_ht:Nn \l__ccjnl_biography_box { 0pt }
    \box_set_dp:Nn \l__ccjnl_biography_box { 0pt }
    \box_set_wd:Nn \l__ccjnl_biography_box { 0pt }
    \int_set:Nn \l__ccjnl_biography_photo_line_num_int
      {
        \fp_to_int:n
          {
            ceil
              (
                \g__ccjnl_biography_fixed_height_dim
                / \c__ccjnl_biography_baselineskip_dim
              )
          }
      }
    \dim_set:Nn \hangindent
      {
        \g__ccjnl_biography_fixed_width_dim
        + \c__ccjnl_spacing_between_img_text_dim
      }
    \int_set:Nn \hangafter
      { - \l__ccjnl_biography_photo_line_num_int }
    \cs_set_eq:NN \__ccjnl_biography_par: \par
    \cs_set:Npx \par { \hfil \break \indent }
    \noindent
    \makebox [ 0pt ] [ l ]
      {
        \skip_horizontal:n { -\hangindent }
        \box_use:N \l__ccjnl_biography_box
      }
    \biographyfont
    \textbf { \itshape #2 } ~
  }
  {
    \relax
    \cs_set_eq:NN \par \__ccjnl_biography_par:
    \par
    \int_set:Nn \l__ccjnl_biography_body_line_num_int
      { \tex_prevgraf:D }
    \int_compare:nNnT
      { \l__ccjnl_biography_body_line_num_int }
      <
      { \l__ccjnl_biography_photo_line_num_int }
      {
        \dim_set:Nn \l__ccjnl_biography_residual_dim
          {
            \int_eval:n
              {
                \l__ccjnl_biography_photo_line_num_int
                - \l__ccjnl_biography_body_line_num_int
              }
            \c__ccjnl_biography_baselineskip_dim
          }
        \vspace* { \l__ccjnl_biography_residual_dim }
      }
  }

\bibliographystyle { \g__bibliographystyle_filename_tl }

\tl_set:Nn \l__ccjnl_foot_copyright_text_tl
  {
    \textcopyright\ \itshape China~Communications\/\normalfont~Magazine~Co.,~Ltd.\ $\cdot$ 
  }

\AtBeginDocument
  {
    \hypersetup
      {
        pdftitle = { \g__ccjnl_title_tl },
        pdfauthor = { \seq_use:Nn \g__ccjnl_author_seq { ;~ } },
        pdfsubject = { \g__ccjnl_classification_tl },
        pdflicenseurl = { https://doi.org/\g__ccjnl_doi_tl },
        pdfissn = { \c__ccjnl_issn_tl },
        pdfdoi = { \g__ccjnl_doi_tl },
        pdfvolumenum = { \int_use:N \g__ccjnl_volume_int },
        pdfissuenum = { \int_use:N \g__ccjnl_issue_int },
        pdfcreator = 
          {
            LaTeX~ with~ ccjnl~
            \use:c { ver@ccjnl.cls } ~
            and~ hyperref~
            \use:c { ver@hyperref.sty }
          },
        pdfinfo = {
          DOI = { \g__ccjnl_doi_tl },
          volume = { \int_use:N \g__ccjnl_volume_int },
          issue = { \int_use:N \g__ccjnl_issue_int },
          year = { \int_use:N \g__ccjnl_copyright_year_int },
          editor = { \g__ccjnl_editor_tl },
          issn = { \c__ccjnl_issn_tl },
          template ~help = { \c__ccjnl_metadata_template_help_email_tl },
          template ~author =
            { \seq_use:Nn \c__ccjnl_metadata_template_author_seq { ,~ } },
          template ~company = { \c__ccjnl_metadata_template_company_tl },
          template ~creator = 
            {
              LaTeX~ with~ ccjnl~
              \use:c { ver@ccjnl.cls } ~
              and~ hyperref~
              \use:c { ver@hyperref.sty }
            },
        }
      }
  }

\ExplSyntaxOff


% font type
\renewcommand{\rmdefault}{ptm}
\renewcommand{\sfdefault}{phv}
\renewcommand{\ttdefault}{ppl}

% font size
\def\yihao{\fontsize{25pt}{30pt}\selectfont}\let\Huge\yihao
% \def\xiaoyi{\fontsize{24pt}{32pt}\selectfont}
\def\erhao{\fontsize{20pt}{26pt}\selectfont}\let\huge\erhao
\def\xiaoer{\fontsize{17pt}{26pt}\selectfont}\let\LARGE\xiaoer
% \def\sanhao{\fontsize{16pt}{21pt}\selectfont}
\def\xiaosan{\fontsize{14pt}{18pt}\selectfont}\let\Large\xiaosan
% \def\sihao{\fontsize{14pt}{18pt}\selectfont}
\def\xiaosi{\fontsize{12pt}{15pt}\selectfont}\let\large\xiaosi
\def\wuhao{\fontsize{11pt}{14pt}\selectfont}\let\normalsize\wuhao
\def\xiaowu{\fontsize{10pt}{12pt}\selectfont}\let\small\xiaowu
\def\liuhao{\fontsize{9pt}{11pt}\selectfont}\let\footnotesize\liuhao
\def\xiaoliu{\fontsize{8pt}{10pt}\selectfont}\let\scriptsize\xiaoliu
\def\qihao{\fontsize{6pt}{8pt}\selectfont}\let\qihao\tiny
\def\biographyfont{\fontsize{9pt}{11.6pt}\selectfont}
\def\authorfont{\fontsize{10.5pt}{12pt}\selectfont}
\def\infofont{\fontsize{9pt}{12.8pt}\selectfont}
\def\addressnumfont{\fontsize{5.2pt}{7pt}\selectfont}
\def\authorreffont{\fontsize{6.1pt}{8pt}\selectfont}



%keywords
\newcommand{\keywords}[1]{\def\CCJNLkeywords{#1}}
% abstract
\renewenvironment{abstract}{\noindent\textbf{\abstractname:~}}{\par\vspace{3mm}\noindent\textbf{\keywordsname:~}\CCJNLkeywords\par}

% section title
\renewcommand{\thesection}{\Roman{section}}
\renewcommand{\thesubsection}{\arabic{section}.\arabic{subsection}}
\renewcommand{\thesubsubsection}{\thesubsection.\arabic{subsubsection}}

\titleformat
  {\section}
  {\large\bfseries\color{sectioncolor}}
  {\thesection.}
  {0.5em}
  {\uppercap}


% Numberless first-level headings, e.g., \section*{ACKNOWLEDGEMENT},
% use the same font and spacing system as numbered \section headings.
% This only affects unnumbered section titles and does not change body text,
% bibliography entries, captions, floats, or references.
\titleformat
  {name=\section,numberless}
  {\large\bfseries\color{sectioncolor}}
  {}
  {0pt}
  {\uppercap}

\titleformat
  {\subsection}
  {\large\bfseries\color{subsectioncolor}}
  {\thesubsection}
  {0.5em}
  {\firstcap}

\titleformat
  {name=\subsection,numberless}
  {\large\bfseries\color{subsectioncolor}}
  {}
  {0pt}
  {\firstcap}

\titleformat
  {\subsubsection}
  {\color{subsectioncolor}}
  {\thesubsubsection}
  {0.5em}
  {\firstcap}

\titleformat
  {name=\subsubsection,numberless}
  {\color{subsectioncolor}}
  {}
  {0pt}
  {\firstcap}

\titleformat
  {\paragraph}
  [runin]
  {\bfseries\filright\color{subsectioncolor}}
  {}
  {0.5em}
  {\firstcap}



%% ------------------------------------------------------------
%% 8. Heading spacing policy
%% ------------------------------------------------------------
% Fixed heading spacing policy.
% All plus/minus stretch and shrink values are set to 15% of the base spacing.
\titlespacing*{\section}
  {0pt}
  {1.20\baselineskip plus 0.18\baselineskip minus 0.18\baselineskip}
  {0.70\baselineskip plus 0.105\baselineskip minus 0.105\baselineskip}

% Make all \section*{...} headings, e.g., ACKNOWLEDGEMENT and REFERENCES,
% use exactly the same vertical spacing as numbered \section headings.
\titlespacing*{name=\section,numberless}
  {0pt}
  {1.20\baselineskip plus 0.18\baselineskip minus 0.18\baselineskip}
  {0.70\baselineskip plus 0.105\baselineskip minus 0.105\baselineskip}

\titlespacing*{\subsection}
  {0pt}
  {1.05\baselineskip plus 0.1575\baselineskip minus 0.1575\baselineskip}
  {0.55\baselineskip plus 0.0825\baselineskip minus 0.0825\baselineskip}

\titlespacing*{name=\subsection,numberless}
  {0pt}
  {1.05\baselineskip plus 0.1575\baselineskip minus 0.1575\baselineskip}
  {0.55\baselineskip plus 0.0825\baselineskip minus 0.0825\baselineskip}

\titlespacing*{\subsubsection}
  {0pt}
  {1.05\baselineskip plus 0.1575\baselineskip minus 0.1575\baselineskip}
  {0.55\baselineskip plus 0.0825\baselineskip minus 0.0825\baselineskip}

\titlespacing*{name=\subsubsection,numberless}
  {0pt}
  {1.05\baselineskip plus 0.1575\baselineskip minus 0.1575\baselineskip}
  {0.55\baselineskip plus 0.0825\baselineskip minus 0.0825\baselineskip}

% Keep headings with a useful amount of the following text.  Applying these
% hooks to the sectioning commands also covers their starred forms without
% inserting manual page breaks or hard-coded vertical space in article files.
\newcommand{\ccjnlSectionNeedspace}{\Needspace{4\baselineskip}}
\newcommand{\ccjnlSubsectionNeedspace}{\Needspace{3\baselineskip}}
\newcommand{\ccjnlSubsubsectionNeedspace}{\Needspace{2.5\baselineskip}}
\pretocmd{\section}{\ccjnlSectionNeedspace}{}%
  {\ClassWarning{ccjnl}{Unable to add section keep-with-text control}}
\pretocmd{\subsection}{\ccjnlSubsectionNeedspace}{}%
  {\ClassWarning{ccjnl}{Unable to add subsection keep-with-text control}}
\pretocmd{\subsubsection}{\ccjnlSubsubsectionNeedspace}{}%
  {\ClassWarning{ccjnl}{Unable to add subsubsection keep-with-text control}}

% Paragraph is a run-in heading; the final argument is horizontal spacing after the title.
\titlespacing*{\paragraph}
  {0pt}
  {0.80\baselineskip plus 0.12\baselineskip minus 0.12\baselineskip}
  {1em}
% End of heading spacing policy.


% Optional template-level acknowledgement heading.
% Authors may use \acknowledgement instead of \section*{ACKNOWLEDGEMENT}
% to keep this heading consistent with the numberless section format above.
\providecommand{\acknowledgementname}{ACKNOWLEDGEMENT}
\providecommand{\acknowledgement}{\section*{\acknowledgementname}}



%% ------------------------------------------------------------
%% 9. Captions, tables, and algorithms
%% ------------------------------------------------------------
\captionsetup[figure]
  {
    textfont = {it,small},
    labelfont = {bf},
    labelsep = period,
    name = Figure
  }
\captionsetup[table]
  {
    textfont = {it,small},
    labelfont = {bf},
    labelsep = period
  }
\captionsetup[algorithm]
  {
    textfont = {it,footnotesize},
    labelfont = {bf},
    labelsep = period
  }

\AtBeginEnvironment{tabular}{\scriptsize}
\renewcommand{\arraystretch}{1.5}

\newenvironment{breakablealgorithm}
  {% \begin{breakablealgorithm}
   \begin{center}
     \refstepcounter{algorithm}% New algorithm
     \hrule height.8pt depth0pt \kern2pt% \@fs@pre for \@fs@ruled
     \renewcommand{\caption}[2][\relax]{% Make a new \caption
        {\raggedright\small\textbf{\csname fname@algorithm\endcsname~\thealgorithm.} {\footnotesize\textit{##2}}\par}%
       \ifx\relax##1\relax % #1 is \relax
         \addcontentsline{loa}{algorithm}{\protect\numberline{\thealgorithm}##2}%
       \else % #1 is not \relax
         \addcontentsline{loa}{algorithm}{\protect\numberline{\thealgorithm}##1}%
       \fi
       \kern2pt\hrule\kern2pt
     }
  }{% \end{breakablealgorithm}
     \kern2pt\hrule\relax% \@fs@post for \@fs@ruled
   \end{center}
  }



%% ------------------------------------------------------------
%% 10. Text spacing and inline-math tuning
%% ------------------------------------------------------------
% Text and inline-math spacing tuning.
% Avoid enlarged spaces after sentence-ending punctuation, and reduce
% over-stretched justified lines caused by inline formulas.
\frenchspacing
\mathsurround=0pt
\relpenalty=500
\binoppenalty=700
% Editorially selected legal breakpoint for long inline mathematics.
% It never changes the formula unless TeX actually needs a line break here.
\ProvideDocumentCommand \ccjnlmathbreak { } { \allowbreak }

% Re-apply text and inline-math spacing tuning after document packages/settings.
\AtBeginDocument{%
  \frenchspacing
  \mathsurround=0pt
  \relpenalty=500
  \binoppenalty=700
  \tolerance=1000
  \emergencystretch=0.8em
}


%% ------------------------------------------------------------
%% 11. Bibliography layout
%% ------------------------------------------------------------
% Compact and page-break-friendly bibliography for natbib/BibTeX.
% Mirrors the visual compactness of the new template's biblatex bibliography:
% footnote-sized entries, tight item spacing, and relaxed line breaking.
\makeatletter
\AtBeginDocument{%
  \renewcommand{\refname}{REFERENCES}%
  \setlength{\bibsep}{0pt}% natbib item spacing
  \setlength{\bibhang}{0pt}% keep numeric labels aligned compactly
  \let\ccjnl@oldthebibliography\thebibliography
  \let\ccjnl@oldendthebibliography\endthebibliography
  \renewenvironment{thebibliography}[1]{%
    \footnotesize
    \raggedbottom
    \sloppy
    % Use moderate widow/orphan control for bibliography entries.  This
    % discourages a lone first or last line without absolutely forbidding
    % entry splitting in a dense two-column reference list.
    \interlinepenalty=0
    \clubpenalty=5000
    \widowpenalty=5000
    \displaywidowpenalty=5000
    \brokenpenalty=2000

    \ccjnl@oldthebibliography{#1}%
    \setlength{\itemsep}{0pt}%
    \setlength{\parsep}{0pt}%
    \setlength{\parskip}{0pt}%
  }{%
    \ccjnl@oldendthebibliography
    % Mark the outer vertical list only after the environment group closes.
    \aftergroup\ccjnlMarkBibliographyTail
  }%
}
\makeatother


%% ------------------------------------------------------------
%% 12. Appendix, footnote, and remaining journal structures
%% ------------------------------------------------------------
\makeatletter
\renewcommand\appendix{\par
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \setcounter{subsubsection}{0}%
  \setcounter{equation}{0}%
  % Appendix section numbering should be independent of subsection numbering.
  \gdef\thesection{\Alph{section}}%
  % Appendix subsections are numbered A, B, C, ...
  \gdef\thesubsection{\Alph{subsection}}%
  \gdef\thesubsubsection{\thesubsection.\arabic{subsubsection}}%
  % Avoid equation numbers such as (.1) before the first appendix subsection.
  \gdef\ccjnl@appeqprefix{\ifnum\value{subsection}=0 A\else\Alph{subsection}\fi}%
  \gdef\theequation{\ccjnl@appeqprefix.\arabic{equation}}%
  \@addtoreset{equation}{subsection}%
  \section*{\appendixname}%
}
\makeatother

% footnote
\setlength{\footnotemargin}{0.5em}
\setlength{\footnotesep}{0pt}
\def\footnoterule{%

}



\renewcommand\enoteformat{\rightskip=0pt \leftskip=0pt \parindent=0em
\leavevmode\makeenmark\normalsize}


\lstset
  {
    frame = single,
    frameround = tttt,
    breaklines = true,
    basicstyle = \scriptsize
  }
\setlist
  {
    itemsep = 0pt,
    topsep = 0pt
  }



%colorbox
% \RequirePackage{tcolorbox}
% \tcbuselibrary{theorems,skins,breakable}
% Safe proof environment: avoids amsthm/trivlist vertical-mode issues in some TeX setups.
\makeatletter
\providecommand{\proofname}{Proof}
\renewenvironment{proof}[1][\proofname]{%
  \par
  \Needspace{3\baselineskip}%
  \vspace{3pt plus 0.5pt minus 0.5pt}%
  \noindent{\itshape #1.}\enspace\ignorespaces
}{%
  \par
  \vspace{3pt plus 0.5pt minus 0.5pt}%
}
\makeatother
\renewcommand{\qedsymbol}{}
% \tcolorboxenvironment{proof}{enhanced jigsaw,colframe=cyan,interior hidden,breakable,before skip=10pt,after skip=10pt}


\renewcommand{\algorithmicrequire}{ \textbf{\inputname:}} %Use Input in the format of Algorithm
\renewcommand{\algorithmicensure}{ \textbf{\outputname:}} %UseOutput in the format of Algorithm

% Article-like bibliography titles arrive here after BibTeX has safely
% lowercased only unprotected text. Restore sentence-initial capitals without
% entering brace-protected acronyms, proper names, formulae, or standards.
\ExplSyntaxOn
\bool_new:N \l__ccjnl_bibtitle_cap_bool
\int_new:N \l__ccjnl_bibtitle_group_int
\int_new:N \l__ccjnl_bibtitle_dash_int
\tl_new:N \l__ccjnl_bibtitle_work_tl
\tl_new:N \l__ccjnl_bibtitle_output_tl
\cs_new_protected:Npn \ccjnl_bibtitle_sentence_case:n #1
  {
    \group_begin:
    \tl_set:Nn \l__ccjnl_bibtitle_work_tl {#1}
    \tl_replace_all:Nnn \l__ccjnl_bibtitle_work_tl { arXiv } { {arXiv} }
    \tl_replace_all:Nnn \l__ccjnl_bibtitle_work_tl { ArXiv } { {arXiv} }
    \tl_replace_all:Nnn \l__ccjnl_bibtitle_work_tl { ARXIV } { {arXiv} }
    \tl_replace_all:Nnn \l__ccjnl_bibtitle_work_tl { arxiv } { {arXiv} }
    % Cite-as receives the mixed-case front-page title rather than BibTeX's
    % already-normalized text. Preserve evident acronym runs such as IEEE,
    % OFDM, ISAC, and 5G before ordinary title words are lowercased.
    \regex_replace_all:nnN
      { ([A-Z]{2,}|[0-9]+[A-Z][A-Z0-9]*) }
      { \cB\{\1\cE\} }
      \l__ccjnl_bibtitle_work_tl
    \tl_clear:N \l__ccjnl_bibtitle_output_tl
    \bool_set_true:N \l__ccjnl_bibtitle_cap_bool
    \int_zero:N \l__ccjnl_bibtitle_group_int
    \int_zero:N \l__ccjnl_bibtitle_dash_int
    \tl_analysis_map_inline:Nn \l__ccjnl_bibtitle_work_tl
      {
        \str_case:nnF {##3}
          {
            {1}
              {
                \tl_put_right:Nn \l__ccjnl_bibtitle_output_tl {##1}
                \int_incr:N \l__ccjnl_bibtitle_group_int
                \bool_if:NT \l__ccjnl_bibtitle_cap_bool
                  { \bool_set_false:N \l__ccjnl_bibtitle_cap_bool }
                \int_zero:N \l__ccjnl_bibtitle_dash_int
              }
            {2}
              {
                \tl_put_right:Nn \l__ccjnl_bibtitle_output_tl {##1}
                \int_decr:N \l__ccjnl_bibtitle_group_int
                \int_zero:N \l__ccjnl_bibtitle_dash_int
              }
            {A}
              { \tl_put_right:Nn \l__ccjnl_bibtitle_output_tl {##1} }
          }
          {
            \int_compare:nNnTF { \l__ccjnl_bibtitle_group_int } > { 0 }
              { \tl_put_right:Nn \l__ccjnl_bibtitle_output_tl {##1} }
              {
                \int_compare:nNnTF {##2} = {45}
                  {
                    \tl_put_right:Nn \l__ccjnl_bibtitle_output_tl {##1}
                    \int_incr:N \l__ccjnl_bibtitle_dash_int
                    \int_compare:nNnT { \l__ccjnl_bibtitle_dash_int } = {3}
                      {
                        \bool_set_true:N \l__ccjnl_bibtitle_cap_bool
                        \int_zero:N \l__ccjnl_bibtitle_dash_int
                      }
                  }
                  {
                    \int_zero:N \l__ccjnl_bibtitle_dash_int
                    \int_compare:nNnTF {##2} = {58}
                      {
                        \tl_put_right:Nn \l__ccjnl_bibtitle_output_tl {##1}
                        \bool_set_true:N \l__ccjnl_bibtitle_cap_bool
                      }
                      {
                        \int_compare:nNnTF {##2} = {63}
                          {
                            \tl_put_right:Nn \l__ccjnl_bibtitle_output_tl {##1}
                            \bool_set_true:N \l__ccjnl_bibtitle_cap_bool
                          }
                          {
                            \int_compare:nNnTF {##2} = {33}
                              {
                                \tl_put_right:Nn \l__ccjnl_bibtitle_output_tl {##1}
                                \bool_set_true:N \l__ccjnl_bibtitle_cap_bool
                              }
                              {
                                \bool_if:NTF \l__ccjnl_bibtitle_cap_bool
                                  {
                                    \int_compare:nNnTF {##2} > {96}
                                      {
                                        \int_compare:nNnTF {##2} < {123}
                                          {
                                            \tl_put_right:Nx \l__ccjnl_bibtitle_output_tl
                                              { \char_generate:nn { \int_eval:n {##2 - 32} } {11} }
                                            \bool_set_false:N \l__ccjnl_bibtitle_cap_bool
                                          }
                                          {
                                            \tl_put_right:Nn \l__ccjnl_bibtitle_output_tl {##1}
                                            \int_compare:nNnT {##2} > {47}
                                              {
                                                \int_compare:nNnT {##2} < {58}
                                                  { \bool_set_false:N \l__ccjnl_bibtitle_cap_bool }
                                              }
                                          }
                                      }
                                      {
                                        \int_compare:nNnTF {##2} > {64}
                                          {
                                            \int_compare:nNnTF {##2} < {91}
                                              {
                                                \tl_put_right:Nn \l__ccjnl_bibtitle_output_tl {##1}
                                                \bool_set_false:N \l__ccjnl_bibtitle_cap_bool
                                              }
                                              {
                                                \tl_put_right:Nn \l__ccjnl_bibtitle_output_tl {##1}
                                                \int_compare:nNnT {##2} > {47}
                                                  {
                                                    \int_compare:nNnT {##2} < {58}
                                                      { \bool_set_false:N \l__ccjnl_bibtitle_cap_bool }
                                                  }
                                              }
                                          }
                                          {
                                            \tl_put_right:Nn \l__ccjnl_bibtitle_output_tl {##1}
                                            \int_compare:nNnT {##2} > {47}
                                              {
                                                \int_compare:nNnT {##2} < {58}
                                                  { \bool_set_false:N \l__ccjnl_bibtitle_cap_bool }
                                              }
                                          }
                                      }
                                  }
                                  {
                                    \int_compare:nNnTF {##2} > {64}
                                      {
                                        \int_compare:nNnTF {##2} < {91}
                                          {
                                            \tl_put_right:Nx \l__ccjnl_bibtitle_output_tl
                                              { \char_generate:nn { \int_eval:n {##2 + 32} } {11} }
                                          }
                                          { \tl_put_right:Nn \l__ccjnl_bibtitle_output_tl {##1} }
                                      }
                                      { \tl_put_right:Nn \l__ccjnl_bibtitle_output_tl {##1} }
                                  }
                              }
                          }
                      }
                  }
              }
          }
      }
    \tl_use:N \l__ccjnl_bibtitle_output_tl
    \group_end:
  }
% Kept as an identity command for compatibility with old generated .bbl files.
% Newly generated bibliographies no longer insert this wrapper.
\NewDocumentCommand \ccjnlSentenceCaseTitle {m} {#1}
\ExplSyntaxOff

\ExplSyntaxOn
\file_if_exist:nT { ../ccjnl1.sty } { \RequirePackage { ../ccjnl1 } }
\file_if_exist:nT { ../ccjnl2.sty } { \RequirePackage { ../ccjnl2 } }
\ExplSyntaxOff

\endinput
%%
%% End of file `ccjnl.cls'.
