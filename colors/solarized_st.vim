" Name:       solarized_st vim colorscheme
" Author:     Ethan Schoonover <es@ethanschoonover.com>
" Maintainer: Michał Winiarski <knr@hardline.pl>
" URL:        https://github.com/t3hknr/solarized
" License:    OSI approved MIT license (see end of this file)
"

hi clear
if exists("syntax_on")
  syntax reset
endif
let colors_name = "solarized_st"

let s:g_base03      = "#002b36"
let s:g_base02      = "#073642"
let s:g_base01      = "#586e75"
let s:g_base00      = "#657b83"
let s:g_base0       = "#839496"
let s:g_base1       = "#93a1a1"
let s:g_base2       = "#eee8d5"
let s:g_base3       = "#fdf6e3"
let s:g_yellow      = "#b58900"
let s:g_orange      = "#cb4b16"
let s:g_red         = "#dc322f"
let s:g_magenta     = "#d33682"
let s:g_violet      = "#6c71c4"
let s:g_blue        = "#268bd2"
let s:g_cyan        = "#2aa198"
let s:g_green       = "#859900"

let s:base03      = "234"
let s:base02      = "235"
let s:base01      = "240"
let s:base00      = "241"
let s:base0       = "244"
let s:base1       = "245"
let s:base2       = "254"
let s:base3       = "230"
let s:yellow      = "136"
let s:orange      = "166"
let s:red         = "160"
let s:magenta     = "125"
let s:violet      = "61"
let s:blue        = "33"
let s:cyan        = "37"
let s:green       = "64"

let s:none            = "NONE"
let s:g_none          = "NONE"
let s:t_none          = "NONE"
let s:n               = "NONE"
let s:c               = ",undercurl"
let s:r               = ",reverse"
let s:s               = ",standout"
let s:ou              = ""
let s:ob              = ""

let s:back        = s:base03
let s:g_back        = s:g_base03

if &background == "light"
    let [ s:base03, s:base3 ] = [ s:base3, s:base03 ]
    let [ s:base02, s:base2 ] = [ s:base2, s:base02 ]
    let [ s:base01, s:base1 ] = [ s:base1, s:base01 ]
    let [ s:base00, s:base0 ] = [ s:base0, s:base00 ]
    let s:back        = s:base03
    let [ s:g_base03, s:g_base3 ] = [ s:g_base3, s:g_base03 ]
    let [ s:g_base02, s:g_base2 ] = [ s:g_base2, s:g_base02 ]
    let [ s:g_base01, s:g_base1 ] = [ s:g_base1, s:g_base01 ]
    let [ s:g_base00, s:g_base0 ] = [ s:g_base0, s:g_base00 ]
    let s:g_back      = s:g_base03
endif

let s:b           = ",bold"
let s:u           = ",underline"
let s:i           = ",italic"

exe "let s:bg_none      = ' ctermbg=".s:none   ." guibg=".s:g_none   ."'"
exe "let s:bg_back      = ' ctermbg=".s:back   ." guibg=".s:g_back   ."'"
exe "let s:bg_base03    = ' ctermbg=".s:base03 ." guibg=".s:g_base03 ."'"
exe "let s:bg_base02    = ' ctermbg=".s:base02 ." guibg=".s:g_base02 ."'"
exe "let s:bg_base01    = ' ctermbg=".s:base01 ." guibg=".s:g_base01 ."'"
exe "let s:bg_base00    = ' ctermbg=".s:base00 ." guibg=".s:g_base00 ."'"
exe "let s:bg_base0     = ' ctermbg=".s:base0  ." guibg=".s:g_base0  ."'"
exe "let s:bg_base1     = ' ctermbg=".s:base1  ." guibg=".s:g_base1  ."'"
exe "let s:bg_base2     = ' ctermbg=".s:base2  ." guibg=".s:g_base2  ."'"
exe "let s:bg_base3     = ' ctermbg=".s:base3  ." guibg=".s:g_base3  ."'"
exe "let s:bg_green     = ' ctermbg=".s:green  ." guibg=".s:g_green  ."'"
exe "let s:bg_yellow    = ' ctermbg=".s:yellow ." guibg=".s:g_yellow ."'"
exe "let s:bg_orange    = ' ctermbg=".s:orange ." guibg=".s:g_orange ."'"
exe "let s:bg_red       = ' ctermbg=".s:red    ." guibg=".s:g_red    ."'"
exe "let s:bg_magenta   = ' ctermbg=".s:magenta." guibg=".s:g_magenta."'"
exe "let s:bg_violet    = ' ctermbg=".s:violet ." guibg=".s:g_violet ."'"
exe "let s:bg_blue      = ' ctermbg=".s:blue   ." guibg=".s:g_blue   ."'"
exe "let s:bg_cyan      = ' ctermbg=".s:cyan   ." guibg=".s:g_cyan   ."'"

exe "let s:fg_none      = ' ctermfg=".s:none   ." guifg=".s:g_none   ."'"
exe "let s:fg_back      = ' ctermfg=".s:back   ." guifg=".s:g_back   ."'"
exe "let s:fg_base03    = ' ctermfg=".s:base03 ." guifg=".s:g_base03 ."'"
exe "let s:fg_base02    = ' ctermfg=".s:base02 ." guifg=".s:g_base02 ."'"
exe "let s:fg_base01    = ' ctermfg=".s:base01 ." guifg=".s:g_base01 ."'"
exe "let s:fg_base00    = ' ctermfg=".s:base00 ." guifg=".s:g_base00 ."'"
exe "let s:fg_base0     = ' ctermfg=".s:base0  ." guifg=".s:g_base0  ."'"
exe "let s:fg_base1     = ' ctermfg=".s:base1  ." guifg=".s:g_base1  ."'"
exe "let s:fg_base2     = ' ctermfg=".s:base2  ." guifg=".s:g_base2  ."'"
exe "let s:fg_base3     = ' ctermfg=".s:base3  ." guifg=".s:g_base3  ."'"
exe "let s:fg_green     = ' ctermfg=".s:green  ." guifg=".s:g_green  ."'"
exe "let s:fg_yellow    = ' ctermfg=".s:yellow ." guifg=".s:g_yellow ."'"
exe "let s:fg_orange    = ' ctermfg=".s:orange ." guifg=".s:g_orange ."'"
exe "let s:fg_red       = ' ctermfg=".s:red    ." guifg=".s:g_red    ."'"
exe "let s:fg_magenta   = ' ctermfg=".s:magenta." guifg=".s:g_magenta."'"
exe "let s:fg_violet    = ' ctermfg=".s:violet ." guifg=".s:g_violet ."'"
exe "let s:fg_blue      = ' ctermfg=".s:blue   ." guifg=".s:g_blue   ."'"
exe "let s:fg_cyan      = ' ctermfg=".s:cyan   ." guifg=".s:g_cyan   ."'"

exe "let s:fmt_none     = ' gui=NONE".          " cterm=NONE".    "'"
exe "let s:fmt_bold     = ' gui=NONE".s:b.      " cterm=NONE".s:b."'"
exe "let s:fmt_bldi     = ' gui=NONE".s:b.      " cterm=NONE".s:b."'"
exe "let s:fmt_undr     = ' gui=NONE".s:u.      " cterm=NONE".s:u."'"
exe "let s:fmt_undb     = ' gui=NONE".s:u.s:b.  " cterm=NONE".s:u.s:b."'"
exe "let s:fmt_undi     = ' gui=NONE".s:u.      " cterm=NONE".s:u."'"
exe "let s:fmt_uopt     = ' gui=NONE".s:ou.     " cterm=NONE".s:ou."'"
exe "let s:fmt_curl     = ' gui=NONE".s:c.      " cterm=NONE".s:c."'"
exe "let s:fmt_ital     = ' gui=NONE".s:i.      " cterm=NONE".s:i."'"
exe "let s:fmt_stnd     = ' gui=NONE".s:s.      " cterm=NONE".s:s."'"
exe "let s:fmt_rev      = ' gui=NONE".s:r.      " cterm=NONE".s:r."'"
exe "let s:fmt_revb     = ' gui=NONE".s:r.s:b.  " cterm=NONE".s:r.s:b."'"
exe "let s:fmt_revu     = ' gui=NONE".s:r.s:u.  " cterm=NONE".s:r.s:u."'"

exe "let s:sp_none      = ' guisp=".s:g_none   ."'"
exe "let s:sp_back      = ' guisp=".s:g_back   ."'"
exe "let s:sp_base03    = ' guisp=".s:g_base03 ."'"
exe "let s:sp_base02    = ' guisp=".s:g_base02 ."'"
exe "let s:sp_base01    = ' guisp=".s:g_base01 ."'"
exe "let s:sp_base00    = ' guisp=".s:g_base00 ."'"
exe "let s:sp_base0     = ' guisp=".s:g_base0  ."'"
exe "let s:sp_base1     = ' guisp=".s:g_base1  ."'"
exe "let s:sp_base2     = ' guisp=".s:g_base2  ."'"
exe "let s:sp_base3     = ' guisp=".s:g_base3  ."'"
exe "let s:sp_green     = ' guisp=".s:g_green  ."'"
exe "let s:sp_yellow    = ' guisp=".s:g_yellow ."'"
exe "let s:sp_orange    = ' guisp=".s:g_orange ."'"
exe "let s:sp_red       = ' guisp=".s:g_red    ."'"
exe "let s:sp_magenta   = ' guisp=".s:g_magenta."'"
exe "let s:sp_violet    = ' guisp=".s:g_violet ."'"
exe "let s:sp_blue      = ' guisp=".s:g_blue   ."'"
exe "let s:sp_cyan      = ' guisp=".s:g_cyan   ."'"

" Basic highlighting
" ---------------------------------------------------------------------
" note that link syntax to avoid duplicate configuration doesn't work with the
" exe compiled formats

exe "hi! Normal"         .s:fmt_none   .s:fg_base0  .s:bg_back
exe "hi! Comment"        .s:fmt_ital   .s:fg_base01 .s:bg_none
exe "hi! Constant"       .s:fmt_none   .s:fg_cyan   .s:bg_none
exe "hi! Identifier"     .s:fmt_none   .s:fg_blue   .s:bg_none
exe "hi! Statement"      .s:fmt_none   .s:fg_green  .s:bg_none
exe "hi! PreProc"        .s:fmt_none   .s:fg_orange .s:bg_none
exe "hi! Type"           .s:fmt_none   .s:fg_yellow .s:bg_none
exe "hi! Special"        .s:fmt_none   .s:fg_red    .s:bg_none
exe "hi! Underlined"     .s:fmt_none   .s:fg_violet .s:bg_none
exe "hi! Ignore"         .s:fmt_none   .s:fg_none   .s:bg_none
exe "hi! Error"          .s:fmt_bold   .s:fg_red    .s:bg_none
exe "hi! Todo"           .s:fmt_bold   .s:fg_magenta.s:bg_none

" Extended highlighting
" ---------------------------------------------------------------------
exe "hi! SpecialKey"	.s:fmt_bold   .s:fg_base00 .s:bg_base02
exe "hi! NonText"	.s:fmt_bold   .s:fg_base00 .s:bg_none
exe "hi! StatusLine"     .s:fmt_none   .s:fg_base1  .s:bg_base02 .s:fmt_rev
exe "hi! StatusLineNC"   .s:fmt_none   .s:fg_base00 .s:bg_base02 .s:fmt_rev
exe "hi! Visual"         .s:fmt_none   .s:fg_base01 .s:bg_base03 .s:fmt_rev
exe "hi! Directory"      .s:fmt_none   .s:fg_blue   .s:bg_none
exe "hi! ErrorMsg"       .s:fmt_rev    .s:fg_red    .s:bg_none
exe "hi! IncSearch"      .s:fmt_stnd   .s:fg_orange .s:bg_none
exe "hi! Search"         .s:fmt_rev    .s:fg_yellow .s:bg_none
exe "hi! MoreMsg"        .s:fmt_none   .s:fg_blue   .s:bg_none
exe "hi! ModeMsg"        .s:fmt_none   .s:fg_blue   .s:bg_none
exe "hi! LineNr"         .s:fmt_none   .s:fg_base01 .s:bg_base02
exe "hi! CursorLineNr"   .s:fmt_none   .s:fg_base00 .s:bg_none
exe "hi! Question"       .s:fmt_bold   .s:fg_cyan   .s:bg_none
exe "hi! VertSplit"	.s:fmt_none   .s:fg_base00 .s:bg_base00
exe "hi! Title"          .s:fmt_bold   .s:fg_orange .s:bg_none
exe "hi! VisualNOS"      .s:fmt_stnd   .s:fg_none   .s:bg_base02 .s:fmt_rev
exe "hi! WarningMsg"     .s:fmt_bold   .s:fg_red    .s:bg_none
exe "hi! WildMenu"       .s:fmt_none   .s:fg_base2  .s:bg_base02 .s:fmt_rev
exe "hi! Folded"         .s:fmt_undb   .s:fg_base0  .s:bg_base02  .s:sp_base03
exe "hi! FoldColumn"     .s:fmt_none   .s:fg_base0  .s:bg_base02
exe "hi! DiffAdd"        .s:fmt_bold   .s:fg_green  .s:bg_base02 .s:sp_green
exe "hi! DiffChange"     .s:fmt_bold   .s:fg_yellow .s:bg_base02 .s:sp_yellow
exe "hi! DiffDelete"     .s:fmt_bold   .s:fg_red    .s:bg_base02
exe "hi! DiffText"       .s:fmt_bold   .s:fg_blue   .s:bg_base02 .s:sp_blue
exe "hi! SignColumn"     .s:fmt_none   .s:fg_base0  .s:bg_none
exe "hi! Conceal"        .s:fmt_none   .s:fg_blue   .s:bg_none
exe "hi! SpellBad"       .s:fmt_curl   .s:fg_none   .s:bg_none    .s:sp_red
exe "hi! SpellCap"       .s:fmt_curl   .s:fg_none   .s:bg_none    .s:sp_violet
exe "hi! SpellRare"      .s:fmt_curl   .s:fg_none   .s:bg_none    .s:sp_cyan
exe "hi! SpellLocal"     .s:fmt_curl   .s:fg_none   .s:bg_none    .s:sp_yellow
exe "hi! Pmenu"          .s:fmt_none   .s:fg_base0  .s:bg_base02  .s:fmt_rev
exe "hi! PmenuSel"       .s:fmt_none   .s:fg_base01 .s:bg_base2   .s:fmt_rev
exe "hi! PmenuSbar"      .s:fmt_none   .s:fg_base2  .s:bg_base0   .s:fmt_rev
exe "hi! PmenuThumb"     .s:fmt_none   .s:fg_base0  .s:bg_base03  .s:fmt_rev
exe "hi! TabLine"        .s:fmt_undr   .s:fg_base0  .s:bg_base02  .s:sp_base0
exe "hi! TabLineFill"    .s:fmt_undr   .s:fg_base0  .s:bg_base02  .s:sp_base0
exe "hi! TabLineSel"     .s:fmt_undr   .s:fg_base01 .s:bg_base2   .s:sp_base0  .s:fmt_revu
exe "hi! CursorColumn"   .s:fmt_none   .s:fg_none   .s:bg_base02
exe "hi! CursorLine"     .s:fmt_uopt   .s:fg_none   .s:bg_base02  .s:sp_base1
exe "hi! ColorColumn"    .s:fmt_none   .s:fg_none   .s:bg_base02
exe "hi! Cursor"         .s:fmt_none   .s:fg_base03 .s:bg_base0
hi! link lCursor Cursor
exe "hi! MatchParen"     .s:fmt_bold   .s:fg_red    .s:bg_base01

" vim syntax highlighting
" ---------------------------------------------------------------------
"exe "hi! vimLineComment" . s:fg_base01 .s:bg_none   .s:fmt_ital
"hi! link vimComment Comment
"hi! link vimLineComment Comment
hi! link vimVar Identifier
hi! link vimFunc Function
hi! link vimUserFunc Function
hi! link helpSpecial Special
hi! link vimSet Normal
hi! link vimSetEqual Normal
exe "hi! vimCommentString"  .s:fmt_none    .s:fg_violet .s:bg_none
exe "hi! vimCommand"        .s:fmt_none    .s:fg_yellow .s:bg_none
exe "hi! vimCmdSep"         .s:fmt_bold    .s:fg_blue   .s:bg_none
exe "hi! helpExample"       .s:fmt_none    .s:fg_base1  .s:bg_none
exe "hi! helpOption"        .s:fmt_none    .s:fg_cyan   .s:bg_none
exe "hi! helpNote"          .s:fmt_none    .s:fg_magenta.s:bg_none
exe "hi! helpVim"           .s:fmt_none    .s:fg_magenta.s:bg_none
exe "hi! helpHyperTextJump" .s:fmt_undr    .s:fg_blue   .s:bg_none
exe "hi! helpHyperTextEntry".s:fmt_none    .s:fg_green  .s:bg_none
exe "hi! vimIsCommand"      .s:fmt_none    .s:fg_base00 .s:bg_none
exe "hi! vimSynMtchOpt"     .s:fmt_none    .s:fg_yellow .s:bg_none
exe "hi! vimSynType"        .s:fmt_none    .s:fg_cyan   .s:bg_none
exe "hi! vimHiLink"         .s:fmt_none    .s:fg_blue   .s:bg_none
exe "hi! vimHiGroup"        .s:fmt_none    .s:fg_blue   .s:bg_none
exe "hi! vimGroup"          .s:fmt_undb    .s:fg_blue   .s:bg_none

" diff highlighting
" ---------------------------------------------------------------------
hi! link diffAdded Statement
hi! link diffLine Identifier

" git & gitcommit highlighting
" ---------------------------------------------------------------------

" git
"exe "hi! gitDateHeader"
"exe "hi! gitIdentityHeader"
"exe "hi! gitIdentityKeyword"
"exe "hi! gitNotesHeader"
"exe "hi! gitReflogHeader"
"exe "hi! gitKeyword"
"exe "hi! gitIdentity"
"exe "hi! gitEmailDelimiter"
"exe "hi! gitEmail"
"exe "hi! gitDate"
"exe "hi! gitMode"
"exe "hi! gitHashAbbrev"
"exe "hi! gitHash"
"exe "hi! gitReflogMiddle"
"exe "hi! gitReference"
"exe "hi! gitStage"
"exe "hi! gitType"
"exe "hi! gitDiffAdded"
"exe "hi! gitDiffRemoved"

"gitcommit
"exe "hi! gitcommitSummary"      
exe "hi! gitcommitComment"      .s:fmt_ital     .s:fg_base01    .s:bg_none
hi! link gitcommitUntracked gitcommitComment
hi! link gitcommitDiscarded gitcommitComment
hi! link gitcommitSelected  gitcommitComment
exe "hi! gitcommitUnmerged"     .s:fmt_bold     .s:fg_green     .s:bg_none
exe "hi! gitcommitOnBranch"     .s:fmt_bold     .s:fg_base01    .s:bg_none
exe "hi! gitcommitBranch"       .s:fmt_bold     .s:fg_magenta   .s:bg_none
hi! link gitcommitNoBranch gitcommitBranch
exe "hi! gitcommitDiscardedType".s:fmt_none     .s:fg_red       .s:bg_none
exe "hi! gitcommitSelectedType" .s:fmt_none     .s:fg_green     .s:bg_none
"exe "hi! gitcommitUnmergedType"
"exe "hi! gitcommitType"
"exe "hi! gitcommitNoChanges"
"exe "hi! gitcommitHeader"
exe "hi! gitcommitHeader"       .s:fmt_none     .s:fg_base01    .s:bg_none
exe "hi! gitcommitUntrackedFile".s:fmt_bold     .s:fg_cyan      .s:bg_none
exe "hi! gitcommitDiscardedFile".s:fmt_bold     .s:fg_red       .s:bg_none
exe "hi! gitcommitSelectedFile" .s:fmt_bold     .s:fg_green     .s:bg_none
exe "hi! gitcommitUnmergedFile" .s:fmt_bold     .s:fg_yellow    .s:bg_none
exe "hi! gitcommitFile"         .s:fmt_bold     .s:fg_base0     .s:bg_none
hi! link gitcommitDiscardedArrow gitcommitDiscardedFile
hi! link gitcommitSelectedArrow  gitcommitSelectedFile
hi! link gitcommitUnmergedArrow  gitcommitUnmergedFile
"exe "hi! gitcommitArrow"
"exe "hi! gitcommitOverflow"
"exe "hi! gitcommitBlank"

" html highlighting
" ---------------------------------------------------------------------
exe "hi! htmlTag"           .s:fmt_none .s:fg_base01 .s:bg_none
exe "hi! htmlEndTag"        .s:fmt_none .s:fg_base01 .s:bg_none
exe "hi! htmlTagN"          .s:fmt_bold .s:fg_base1  .s:bg_none
exe "hi! htmlTagName"       .s:fmt_bold .s:fg_blue   .s:bg_none
exe "hi! htmlSpecialTagName".s:fmt_ital .s:fg_blue   .s:bg_none
exe "hi! htmlArg"           .s:fmt_none .s:fg_base00 .s:bg_none
exe "hi! javaScript"        .s:fmt_none .s:fg_yellow .s:bg_none

" perl highlighting
" ---------------------------------------------------------------------
exe "hi! perlHereDoc"    . s:fg_base1  .s:bg_back   .s:fmt_none
exe "hi! perlVarPlain"   . s:fg_yellow .s:bg_back   .s:fmt_none
exe "hi! perlStatementFileDesc". s:fg_cyan.s:bg_back.s:fmt_none

" tex highlighting
" ---------------------------------------------------------------------
exe "hi! texStatement"   . s:fg_cyan   .s:bg_back   .s:fmt_none
exe "hi! texMathZoneX"   . s:fg_yellow .s:bg_back   .s:fmt_none
exe "hi! texMathMatcher" . s:fg_yellow .s:bg_back   .s:fmt_none
exe "hi! texMathMatcher" . s:fg_yellow .s:bg_back   .s:fmt_none
exe "hi! texRefLabel"    . s:fg_yellow .s:bg_back   .s:fmt_none

" ruby highlighting
" ---------------------------------------------------------------------
exe "hi! rubyDefine"     . s:fg_base1  .s:bg_back   .s:fmt_bold
"rubyInclude
"rubySharpBang
"rubyAccess
"rubyPredefinedVariable
"rubyBoolean
"rubyClassVariable
"rubyBeginEnd
"rubyRepeatModifier
"hi! link rubyArrayDelimiter    Special  " [ , , ]
"rubyCurlyBlock  { , , }

"hi! link rubyClass             Keyword
"hi! link rubyModule            Keyword
"hi! link rubyKeyword           Keyword
"hi! link rubyOperator          Operator
"hi! link rubyIdentifier        Identifier
"hi! link rubyInstanceVariable  Identifier
"hi! link rubyGlobalVariable    Identifier
"hi! link rubyClassVariable     Identifier
"hi! link rubyConstant          Type

" haskell syntax highlighting
" ---------------------------------------------------------------------
" For use with syntax/haskell.vim : Haskell Syntax File
" http://www.vim.org/scripts/script.php?script_id=3034
" See also Steffen Siering's github repository:
" http://github.com/urso/dotrc/blob/master/vim/syntax/haskell.vim
" ---------------------------------------------------------------------

" Treat True and False specially, see the plugin referenced above
let hs_highlight_boolean=1
" highlight delims, see the plugin referenced above
let hs_highlight_delimiters=1

exe "hi! cPreCondit". s:fg_orange.s:bg_none   .s:fmt_none

exe "hi! VarId"    . s:fg_blue   .s:bg_none   .s:fmt_none
exe "hi! ConId"    . s:fg_yellow .s:bg_none   .s:fmt_none
exe "hi! hsImport" . s:fg_magenta.s:bg_none   .s:fmt_none
exe "hi! hsString" . s:fg_base00 .s:bg_none   .s:fmt_none

exe "hi! hsStructure"        . s:fg_cyan   .s:bg_none   .s:fmt_none
exe "hi! hs_hlFunctionName"  . s:fg_blue   .s:bg_none
exe "hi! hsStatement"        . s:fg_cyan   .s:bg_none   .s:fmt_none
exe "hi! hsImportLabel"      . s:fg_cyan   .s:bg_none   .s:fmt_none
exe "hi! hs_OpFunctionName"  . s:fg_yellow .s:bg_none   .s:fmt_none
exe "hi! hs_DeclareFunction" . s:fg_orange .s:bg_none   .s:fmt_none
exe "hi! hsVarSym"           . s:fg_cyan   .s:bg_none   .s:fmt_none
exe "hi! hsType"             . s:fg_yellow .s:bg_none   .s:fmt_none
exe "hi! hsTypedef"          . s:fg_cyan   .s:bg_none   .s:fmt_none
exe "hi! hsModuleName"       . s:fg_green  .s:bg_none   .s:fmt_undr
exe "hi! hsModuleStartLabel" . s:fg_magenta.s:bg_none   .s:fmt_none
hi! link hsImportParams      Delimiter
hi! link hsDelimTypeExport   Delimiter
hi! link hsModuleStartLabel  hsStructure
hi! link hsModuleWhereLabel  hsModuleStartLabel

" following is for the haskell-conceal plugin
" the first two items don't have an impact, but better safe
exe "hi! hsNiceOperator"     . s:fg_cyan   .s:bg_none   .s:fmt_none
exe "hi! hsniceoperator"     . s:fg_cyan   .s:bg_none   .s:fmt_none

" pandoc markdown syntax highlighting
" ---------------------------------------------------------------------

"PandocHiLink pandocNormalBlock
exe "hi! pandocTitleBlock"               .s:fg_blue   .s:bg_none   .s:fmt_none
exe "hi! pandocTitleBlockTitle"          .s:fg_blue   .s:bg_none   .s:fmt_bold
exe "hi! pandocTitleComment"             .s:fg_blue   .s:bg_none   .s:fmt_bold
exe "hi! pandocComment"                  .s:fg_base01 .s:bg_none   .s:fmt_ital
exe "hi! pandocVerbatimBlock"            .s:fg_yellow .s:bg_none   .s:fmt_none
hi! link pandocVerbatimBlockDeep         pandocVerbatimBlock
hi! link pandocCodeBlock                 pandocVerbatimBlock
hi! link pandocCodeBlockDelim            pandocVerbatimBlock
exe "hi! pandocBlockQuote"               .s:fg_blue   .s:bg_none   .s:fmt_none
exe "hi! pandocBlockQuoteLeader1"        .s:fg_blue   .s:bg_none   .s:fmt_none
exe "hi! pandocBlockQuoteLeader2"        .s:fg_cyan   .s:bg_none   .s:fmt_none
exe "hi! pandocBlockQuoteLeader3"        .s:fg_yellow .s:bg_none   .s:fmt_none
exe "hi! pandocBlockQuoteLeader4"        .s:fg_red    .s:bg_none   .s:fmt_none
exe "hi! pandocBlockQuoteLeader5"        .s:fg_base0  .s:bg_none   .s:fmt_none
exe "hi! pandocBlockQuoteLeader6"        .s:fg_base01 .s:bg_none   .s:fmt_none
exe "hi! pandocListMarker"               .s:fg_magenta.s:bg_none   .s:fmt_none
exe "hi! pandocListReference"            .s:fg_magenta.s:bg_none   .s:fmt_undr

" Definitions
" ---------------------------------------------------------------------
let s:fg_pdef = s:fg_violet
exe "hi! pandocDefinitionBlock"              .s:fg_pdef  .s:bg_none  .s:fmt_none
exe "hi! pandocDefinitionTerm"               .s:fg_pdef  .s:bg_none  .s:fmt_stnd
exe "hi! pandocDefinitionIndctr"             .s:fg_pdef  .s:bg_none  .s:fmt_bold
exe "hi! pandocEmphasisDefinition"           .s:fg_pdef  .s:bg_none  .s:fmt_ital
exe "hi! pandocEmphasisNestedDefinition"     .s:fg_pdef  .s:bg_none  .s:fmt_bldi
exe "hi! pandocStrongEmphasisDefinition"     .s:fg_pdef  .s:bg_none  .s:fmt_bold
exe "hi! pandocStrongEmphasisNestedDefinition"   .s:fg_pdef.s:bg_none.s:fmt_bldi
exe "hi! pandocStrongEmphasisEmphasisDefinition" .s:fg_pdef.s:bg_none.s:fmt_bldi
exe "hi! pandocStrikeoutDefinition"          .s:fg_pdef  .s:bg_none  .s:fmt_rev
exe "hi! pandocVerbatimInlineDefinition"     .s:fg_pdef  .s:bg_none  .s:fmt_none
exe "hi! pandocSuperscriptDefinition"        .s:fg_pdef  .s:bg_none  .s:fmt_none
exe "hi! pandocSubscriptDefinition"          .s:fg_pdef  .s:bg_none  .s:fmt_none

" Tables
" ---------------------------------------------------------------------
let s:fg_ptable = s:fg_blue
exe "hi! pandocTable"                        .s:fg_ptable.s:bg_none  .s:fmt_none
exe "hi! pandocTableStructure"               .s:fg_ptable.s:bg_none  .s:fmt_none
hi! link pandocTableStructureTop             pandocTableStructre
hi! link pandocTableStructureEnd             pandocTableStructre
exe "hi! pandocTableZebraLight"              .s:fg_ptable.s:bg_base03.s:fmt_none
exe "hi! pandocTableZebraDark"               .s:fg_ptable.s:bg_base02.s:fmt_none
exe "hi! pandocEmphasisTable"                .s:fg_ptable.s:bg_none  .s:fmt_ital
exe "hi! pandocEmphasisNestedTable"          .s:fg_ptable.s:bg_none  .s:fmt_bldi
exe "hi! pandocStrongEmphasisTable"          .s:fg_ptable.s:bg_none  .s:fmt_bold
exe "hi! pandocStrongEmphasisNestedTable"    .s:fg_ptable.s:bg_none  .s:fmt_bldi
exe "hi! pandocStrongEmphasisEmphasisTable"  .s:fg_ptable.s:bg_none  .s:fmt_bldi
exe "hi! pandocStrikeoutTable"               .s:fg_ptable.s:bg_none  .s:fmt_rev
exe "hi! pandocVerbatimInlineTable"          .s:fg_ptable.s:bg_none  .s:fmt_none
exe "hi! pandocSuperscriptTable"             .s:fg_ptable.s:bg_none  .s:fmt_none
exe "hi! pandocSubscriptTable"               .s:fg_ptable.s:bg_none  .s:fmt_none

" Headings
" ---------------------------------------------------------------------
let s:fg_phead = s:fg_orange
exe "hi! pandocHeading"                      .s:fg_phead .s:bg_none.s:fmt_bold
exe "hi! pandocHeadingMarker"                .s:fg_yellow.s:bg_none.s:fmt_bold
exe "hi! pandocEmphasisHeading"              .s:fg_phead .s:bg_none.s:fmt_bldi
exe "hi! pandocEmphasisNestedHeading"        .s:fg_phead .s:bg_none.s:fmt_bldi
exe "hi! pandocStrongEmphasisHeading"        .s:fg_phead .s:bg_none.s:fmt_bold
exe "hi! pandocStrongEmphasisNestedHeading"  .s:fg_phead .s:bg_none.s:fmt_bldi
exe "hi! pandocStrongEmphasisEmphasisHeading".s:fg_phead .s:bg_none.s:fmt_bldi
exe "hi! pandocStrikeoutHeading"             .s:fg_phead .s:bg_none.s:fmt_rev
exe "hi! pandocVerbatimInlineHeading"        .s:fg_phead .s:bg_none.s:fmt_bold
exe "hi! pandocSuperscriptHeading"           .s:fg_phead .s:bg_none.s:fmt_bold
exe "hi! pandocSubscriptHeading"             .s:fg_phead .s:bg_none.s:fmt_bold

" Links
" ---------------------------------------------------------------------
exe "hi! pandocLinkDelim"                .s:fg_base01 .s:bg_none   .s:fmt_none
exe "hi! pandocLinkLabel"                .s:fg_blue   .s:bg_none   .s:fmt_undr
exe "hi! pandocLinkText"                 .s:fg_blue   .s:bg_none   .s:fmt_undb
exe "hi! pandocLinkURL"                  .s:fg_base00 .s:bg_none   .s:fmt_undr
exe "hi! pandocLinkTitle"                .s:fg_base00 .s:bg_none   .s:fmt_undi
exe "hi! pandocLinkTitleDelim"           .s:fg_base01 .s:bg_none   .s:fmt_undi   .s:sp_base00
exe "hi! pandocLinkDefinition"           .s:fg_cyan   .s:bg_none   .s:fmt_undr   .s:sp_base00
exe "hi! pandocLinkDefinitionID"         .s:fg_blue   .s:bg_none   .s:fmt_bold
exe "hi! pandocImageCaption"             .s:fg_violet .s:bg_none   .s:fmt_undb
exe "hi! pandocFootnoteLink"             .s:fg_green  .s:bg_none   .s:fmt_undr
exe "hi! pandocFootnoteDefLink"          .s:fg_green  .s:bg_none   .s:fmt_bold
exe "hi! pandocFootnoteInline"           .s:fg_green  .s:bg_none   .s:fmt_undb
exe "hi! pandocFootnote"                 .s:fg_green  .s:bg_none   .s:fmt_none
exe "hi! pandocCitationDelim"            .s:fg_magenta.s:bg_none   .s:fmt_none
exe "hi! pandocCitation"                 .s:fg_magenta.s:bg_none   .s:fmt_none
exe "hi! pandocCitationID"               .s:fg_magenta.s:bg_none   .s:fmt_undr
exe "hi! pandocCitationRef"              .s:fg_magenta.s:bg_none   .s:fmt_none

" Main Styles
" ---------------------------------------------------------------------
exe "hi! pandocStyleDelim"               .s:fg_base01 .s:bg_none  .s:fmt_none
exe "hi! pandocEmphasis"                 .s:fg_base0  .s:bg_none  .s:fmt_ital
exe "hi! pandocEmphasisNested"           .s:fg_base0  .s:bg_none  .s:fmt_bldi
exe "hi! pandocStrongEmphasis"           .s:fg_base0  .s:bg_none  .s:fmt_bold
exe "hi! pandocStrongEmphasisNested"     .s:fg_base0  .s:bg_none  .s:fmt_bldi
exe "hi! pandocStrongEmphasisEmphasis"   .s:fg_base0  .s:bg_none  .s:fmt_bldi
exe "hi! pandocStrikeout"                .s:fg_base01 .s:bg_none  .s:fmt_rev
exe "hi! pandocVerbatimInline"           .s:fg_yellow .s:bg_none  .s:fmt_none
exe "hi! pandocSuperscript"              .s:fg_violet .s:bg_none  .s:fmt_none
exe "hi! pandocSubscript"                .s:fg_violet .s:bg_none  .s:fmt_none

exe "hi! pandocRule"                     .s:fg_blue   .s:bg_none  .s:fmt_bold
exe "hi! pandocRuleLine"                 .s:fg_blue   .s:bg_none  .s:fmt_bold
exe "hi! pandocEscapePair"               .s:fg_red    .s:bg_none  .s:fmt_bold
exe "hi! pandocCitationRef"              .s:fg_magenta.s:bg_none   .s:fmt_none
exe "hi! pandocNonBreakingSpace"         . s:fg_red   .s:bg_none  .s:fmt_rev
hi! link pandocEscapedCharacter          pandocEscapePair
hi! link pandocLineBreak                 pandocEscapePair

exe "hi! pandocMetadataDelim"            .s:fg_base01 .s:bg_none   .s:fmt_none
exe "hi! pandocMetadata"                 .s:fg_blue   .s:bg_none   .s:fmt_none
exe "hi! pandocMetadataKey"              .s:fg_blue   .s:bg_none   .s:fmt_none
exe "hi! pandocMetadata"                 .s:fg_blue   .s:bg_none   .s:fmt_bold
hi! link pandocMetadataTitle             pandocMetadata

" License
" ---------------------------------------------------------------------
"
" Copyright (c) 2011 Ethan Schoonover
"
" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included in
" all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
" THE SOFTWARE.
