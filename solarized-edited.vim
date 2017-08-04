" Name:         Solarized colorscheme for Vim 8
" Maintainer:   Lifepillar <lifepillar@lifepillar.me>
" License:      OSI approved MIT license (see end of this file)

if (has("termguicolors"))
    set termguicolors
endif

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let colors_name = "solarized8_dark"

" SOLARIZED HEX     EDITED  16/8 TERMCOL  XTERM/HEX   L*A*B      RGB         HSB
" --------- ------- ------- ---- -------  ----------- ---------- ----------- -----------
" base03    #002b36 #191919  8/4 brblack  234 #1c1c1c 15 -12 -12   0  43  54 193 100  21
" base02    #073642 #404040  0/4 black    235 #262626 20 -12 -12   7  54  66 192  90  26
" base01    #586e75 #5a6e75 10/7 brgreen  240 #585858 45 -07 -07  88 110 117 194  25  46
" base00    #657b83 #fada21 11/7 bryellow 241 #626262 50 -07 -07 101 123 131 195  23  51
" base0     #839496 #d3d3d3 12/6 brblue   244 #808080 60 -06 -03 131 148 150 186  13  59
" base1     #93a1a1 #0098cf 14/4 brcyan   245 #8a8a8a 65 -05 -02 147 161 161 180   9  63
" base2     #eee8d5 #ffffff  7/7 white    254 #e4e4e4 92 -00  10 238 232 213  44  11  93
" base3     #fdf6e3 #f9f9f9 15/7 brwhite  230 #ffffd7 97  00  10 253 246 227  44  10  99
" yellow    #b58900 #faad21  3/3 yellow   136 #af8700 60  10  65 181 137   0  45 100  71
" orange    #cb4b16 #fa7921  9/3 brred    166 #d75f00 50  50  55 203  75  22  18  89  80
" red       #dc322f #e55934  1/1 red      160 #d70000 50  65  45 220  50  47   1  79  86
" magenta   #d33682 #c871c8  5/5 magenta  125 #af005f 50  65 -05 211  54 130 331  74  83
" violet    #6c71c4 #c594c5 13/5 brmagenta 61 #5f5faf 50  15 -45 108 113 196 237  45  77
" blue      #268bd2 #00a5ff  4/4 blue      33 #0087ff 55 -10 -45  38 139 210 205  82  82
" cyan      #2aa198 #2ea4a4  6/6 cyan      37 #00afaf 60 -35 -05  42 161 152 175  74  63
" green     #859900 #23c897  2/2 green     64 #5f8700 60 -20  65 133 153   0  68 100  60


hi! Normal cterm=NONE gui=NONE ctermfg=12 guifg=#d3d3d3 ctermbg=1 guibg=#191919
hi! CursorLineNr ctermbg=0 guibg=#191919
hi! LineNr ctermbg=0 guibg=#191919
hi! Folded ctermbg=0 guibg=#191919
hi! FoldColumn ctermbg=0 guibg=#191919

hi! Comment cterm=NONE gui=NONE,italic ctermfg=10 guifg=#5a6e75 ctermbg=NONE guibg=NONE
hi! Constant cterm=NONE gui=NONE ctermfg=6 guifg=#2ea4a4 ctermbg=NONE guibg=NONE
hi! Identifier cterm=NONE gui=NONE ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE
hi! Statement cterm=NONE gui=NONE ctermfg=2 guifg=#23c897 ctermbg=NONE guibg=NONE
hi! PreProc cterm=NONE gui=NONE ctermfg=9 guifg=#fa7921 ctermbg=NONE guibg=NONE
hi! Type cterm=NONE gui=NONE ctermfg=3 guifg=#faad21 ctermbg=NONE guibg=NONE
hi! Special cterm=NONE gui=NONE ctermfg=9 guifg=#fa7921 ctermbg=NONE guibg=NONE
hi! Underlined cterm=NONE gui=NONE ctermfg=13 guifg=#c594c5 ctermbg=NONE guibg=NONE
hi! Ignore cterm=NONE gui=NONE ctermfg=NONE guifg=NONE ctermbg=NONE guibg=NONE
hi! Error cterm=NONE,bold gui=NONE,bold ctermfg=1 guifg=#e55934 ctermbg=NONE guibg=NONE
hi! Todo cterm=NONE,bold gui=NONE,bold ctermfg=5 guifg=#c871c8 ctermbg=NONE guibg=NONE
hi! link QuickFixLine Search
hi! MatchParen cterm=NONE,bold gui=NONE,bold ctermfg=15 guifg=#f9f9f9 ctermbg=0 guibg=#404040
if get(g:, 'solarized_old_cursor_style', 0)
  hi! Cursor cterm=NONE gui=NONE ctermfg=8 guifg=#191919 ctermbg=12 guibg=#d3d3d3
else
  hi! Cursor cterm=NONE gui=NONE ctermfg=15 guifg=#f9f9f9 ctermbg=4 guibg=#00a5ff
endif
hi! SpecialKey cterm=NONE,bold gui=NONE,bold ctermfg=11 guifg=#fada21 ctermbg=0 guibg=#404040
hi! NonText cterm=NONE,bold gui=NONE,bold ctermfg=11 guifg=#fada21 ctermbg=NONE guibg=NONE
hi! CursorLineNr cterm=NONE,bold gui=NONE,bold ctermfg=12 guifg=#d3d3d3
hi! Title cterm=NONE,bold gui=NONE,bold ctermfg=3 guifg=#faad21 ctermbg=NONE guibg=NONE
hi! NormalMode ctermfg=12 guifg=#d3d3d3 ctermbg=15 guibg=#f9f9f9 cterm=NONE,reverse gui=NONE,reverse
hi! InsertMode ctermfg=6 guifg=#2ea4a4 ctermbg=15 guibg=#f9f9f9 cterm=NONE,reverse gui=NONE,reverse
hi! ReplaceMode ctermfg=9 guifg=#fa7921 ctermbg=15 guibg=#f9f9f9 cterm=NONE,reverse gui=NONE,reverse
hi! VisualMode ctermfg=5 guifg=#c871c8 ctermbg=15 guibg=#f9f9f9 cterm=NONE,reverse gui=NONE,reverse
hi! CommandMode ctermfg=5 guifg=#c871c8 ctermbg=15 guibg=#f9f9f9 cterm=NONE,reverse gui=NONE,reverse
hi! StatusLine ctermfg=12 guifg=#242424 ctermbg=0 guibg=#404040 cterm=NONE,reverse gui=NONE,reverse
hi! StatusLineNC ctermfg=10 guifg=#1D1D1D ctermbg=0 guibg=#404040 cterm=NONE,reverse gui=NONE,reverse
hi! TabLine ctermfg=10 guifg=#5a6e75 ctermbg=0 guibg=#404040 cterm=NONE,reverse gui=NONE,reverse
hi! TabLineFill ctermfg=10 guifg=#5a6e75 ctermbg=0 guibg=#404040 cterm=NONE,reverse gui=NONE,reverse
hi! TabLineSel ctermfg=12 guifg=#d3d3d3 ctermbg=0 guibg=#404040 cterm=NONE,reverse gui=NONE,reverse
hi! Visual ctermfg=10 guifg=#5a6e75 ctermbg=8 guibg=#191919 cterm=NONE,reverse gui=NONE,reverse
hi! Directory cterm=NONE gui=NONE ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE
hi! ErrorMsg cterm=NONE,reverse gui=NONE,reverse ctermfg=1 guifg=#e55934 ctermbg=15 guibg=#f9f9f9
hi! IncSearch cterm=NONE,standout gui=NONE,standout ctermfg=9 guifg=#fa7921 ctermbg=NONE guibg=NONE
hi! Search cterm=NONE,reverse gui=NONE,reverse ctermfg=3 guifg=#faad21 ctermbg=NONE guibg=NONE
hi! MoreMsg cterm=NONE gui=NONE ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE
hi! ModeMsg cterm=NONE gui=NONE ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE
hi! LineNr cterm=NONE gui=NONE ctermfg=10 guifg=#5a6e75
hi! Question cterm=NONE,bold gui=NONE,bold ctermfg=6 guifg=#2ea4a4 ctermbg=NONE guibg=NONE
hi! VertSplit cterm=NONE gui=NONE ctermfg=10 guifg=#5a6e75 ctermbg=10 guibg=#5a6e75
hi! VisualNOS ctermfg=NONE guifg=NONE ctermbg=0 guibg=#404040 cterm=NONE,reverse gui=NONE,reverse
hi! WarningMsg cterm=NONE,bold gui=NONE,bold ctermfg=9 guifg=#fa7921 ctermbg=NONE guibg=NONE
hi! WildMenu ctermfg=7 guifg=#ffffff ctermbg=0 guibg=#404040 cterm=NONE,reverse gui=NONE,reverse
hi! Folded cterm=NONE,bold gui=NONE,bold ctermfg=12 guifg=#d3d3d3 guisp=#191919
hi! FoldColumn cterm=NONE gui=NONE ctermfg=12 guifg=#d3d3d3
hi! DiffAdd cterm=NONE gui=NONE ctermfg=2 guifg=#23c897 ctermbg=0 guibg=#404040 guisp=#23c897
hi! DiffChange cterm=NONE gui=NONE ctermfg=3 guifg=#faad21 ctermbg=0 guibg=#404040 guisp=#faad21
hi! DiffDelete cterm=NONE gui=NONE ctermfg=1 guifg=#e55934 ctermbg=0 guibg=#404040
hi! DiffText cterm=NONE gui=NONE ctermfg=4 guifg=#00a5ff ctermbg=0 guibg=#404040 guisp=#00a5ff
hi! SignColumn cterm=NONE gui=NONE ctermfg=12 guifg=#d3d3d3 ctermbg=NONE guibg=NONE
hi! Conceal cterm=NONE gui=NONE ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE
hi! SpellBad cterm=NONE,undercurl gui=NONE,undercurl ctermfg=NONE guifg=NONE ctermbg=NONE guibg=NONE guisp=#c871c8
hi! SpellCap cterm=NONE,undercurl gui=NONE,undercurl ctermfg=NONE guifg=NONE ctermbg=NONE guibg=NONE guisp=#c594c5
hi! SpellRare cterm=NONE,undercurl gui=NONE,undercurl ctermfg=NONE guifg=NONE ctermbg=NONE guibg=NONE guisp=#2ea4a4
hi! SpellLocal cterm=NONE,undercurl gui=NONE,undercurl ctermfg=NONE guifg=NONE ctermbg=NONE guibg=NONE guisp=#faad21
hi! Pmenu ctermfg=12 guifg=#d3d3d3 ctermbg=0 guibg=#404040 cterm=NONE,reverse gui=NONE,reverse
hi! PmenuSel ctermfg=10 guifg=#5a6e75 ctermbg=7 guibg=#ffffff cterm=NONE,reverse gui=NONE,reverse
hi! PmenuSbar ctermfg=7 guifg=#ffffff ctermbg=12 guibg=#d3d3d3 cterm=NONE,reverse gui=NONE,reverse
hi! PmenuThumb ctermfg=12 guifg=#d3d3d3 ctermbg=8 guibg=#191919 cterm=NONE,reverse gui=NONE,reverse
hi! CursorColumn cterm=NONE gui=NONE ctermfg=NONE guifg=NONE ctermbg=0 guibg=#404040
hi! CursorLine cterm=NONE gui=NONE ctermfg=NONE guifg=NONE ctermbg=0 guibg=#404040 guisp=#0098cf
hi! ColorColumn cterm=NONE gui=NONE ctermfg=NONE guifg=NONE ctermbg=0 guibg=#404040
hi! link lCursor Cursor
hi! link vimVar Identifier
hi! link vimFunc Function
hi! link vimUserFunc Function
hi! link helpSpecial Special
hi! link vimSet Normal
hi! link vimSetEqual Normal
hi! vimCommentString cterm=NONE gui=NONE ctermfg=13 guifg=#c594c5 ctermbg=NONE guibg=NONE
hi! vimCommand cterm=NONE gui=NONE ctermfg=3 guifg=#faad21 ctermbg=NONE guibg=NONE
hi! vimCmdSep cterm=NONE,bold gui=NONE,bold ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE
hi! helpExample cterm=NONE gui=NONE ctermfg=14 guifg=#0098cf ctermbg=NONE guibg=NONE
hi! helpOption cterm=NONE gui=NONE ctermfg=6 guifg=#2ea4a4 ctermbg=NONE guibg=NONE
hi! helpNote cterm=NONE gui=NONE ctermfg=5 guifg=#c871c8 ctermbg=NONE guibg=NONE
hi! helpVim cterm=NONE gui=NONE ctermfg=5 guifg=#c871c8 ctermbg=NONE guibg=NONE
hi! helpHyperTextJump cterm=NONE gui=NONE ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE
hi! helpHyperTextEntry cterm=NONE gui=NONE ctermfg=2 guifg=#23c897 ctermbg=NONE guibg=NONE
hi! vimIsCommand cterm=NONE gui=NONE ctermfg=11 guifg=#fada21 ctermbg=NONE guibg=NONE
hi! vimSynMtchOpt cterm=NONE gui=NONE ctermfg=3 guifg=#faad21 ctermbg=NONE guibg=NONE
hi! vimSynType cterm=NONE gui=NONE ctermfg=6 guifg=#2ea4a4 ctermbg=NONE guibg=NONE
hi! vimHiLink cterm=NONE gui=NONE ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE
hi! vimHiGroup cterm=NONE gui=NONE ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE
hi! vimGroup cterm=NONE,bold gui=NONE,bold ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE
hi! link diffAdded Statement
hi! link diffLine Identifier
hi! gitcommitComment cterm=NONE gui=NONE,italic ctermfg=10 guifg=#5a6e75 ctermbg=NONE guibg=NONE
hi! link gitcommitUntracked gitcommitComment
hi! link gitcommitDiscarded gitcommitComment
hi! link gitcommitSelected gitcommitComment
hi! gitcommitUnmerged cterm=NONE,bold gui=NONE,bold ctermfg=2 guifg=#23c897 ctermbg=NONE guibg=NONE
hi! gitcommitOnBranch cterm=NONE,bold gui=NONE,bold ctermfg=10 guifg=#5a6e75 ctermbg=NONE guibg=NONE
hi! gitcommitBranch cterm=NONE,bold gui=NONE,bold ctermfg=5 guifg=#c871c8 ctermbg=NONE guibg=NONE
hi! link gitcommitNoBranch gitcommitBranch
hi! gitcommitDiscardedType cterm=NONE gui=NONE ctermfg=1 guifg=#e55934 ctermbg=NONE guibg=NONE
hi! gitcommitSelectedType cterm=NONE gui=NONE ctermfg=2 guifg=#23c897 ctermbg=NONE guibg=NONE
hi! gitcommitHeader cterm=NONE gui=NONE ctermfg=10 guifg=#5a6e75 ctermbg=NONE guibg=NONE
hi! gitcommitUntrackedFile cterm=NONE,bold gui=NONE,bold ctermfg=6 guifg=#2ea4a4 ctermbg=NONE guibg=NONE
hi! gitcommitDiscardedFile cterm=NONE,bold gui=NONE,bold ctermfg=1 guifg=#e55934 ctermbg=NONE guibg=NONE
hi! gitcommitSelectedFile cterm=NONE,bold gui=NONE,bold ctermfg=2 guifg=#23c897 ctermbg=NONE guibg=NONE
hi! gitcommitUnmergedFile cterm=NONE,bold gui=NONE,bold ctermfg=3 guifg=#faad21 ctermbg=NONE guibg=NONE
hi! gitcommitFile cterm=NONE,bold gui=NONE,bold ctermfg=12 guifg=#d3d3d3 ctermbg=NONE guibg=NONE
hi! link gitcommitDiscardedArrow gitcommitDiscardedFile
hi! link gitcommitSelectedArrow gitcommitSelectedFile
hi! link gitcommitUnmergedArrow gitcommitUnmergedFile
hi! htmlTag cterm=NONE gui=NONE ctermfg=10 guifg=#5a6e75 ctermbg=NONE guibg=NONE
hi! htmlEndTag cterm=NONE gui=NONE ctermfg=10 guifg=#5a6e75 ctermbg=NONE guibg=NONE
hi! htmlTagN cterm=NONE,bold gui=NONE,bold ctermfg=14 guifg=#0098cf ctermbg=NONE guibg=NONE
hi! htmlTagName cterm=NONE,bold gui=NONE,bold ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE
hi! htmlSpecialTagName cterm=NONE gui=NONE,italic ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE
hi! htmlArg cterm=NONE gui=NONE ctermfg=11 guifg=#fada21 ctermbg=NONE guibg=NONE
hi! javaScript cterm=NONE gui=NONE ctermfg=3 guifg=#faad21 ctermbg=NONE guibg=NONE
hi! perlHereDoc ctermfg=14 guifg=#0098cf ctermbg=8 guibg=#191919 cterm=NONE gui=NONE
hi! perlVarPlain ctermfg=3 guifg=#faad21 ctermbg=8 guibg=#191919 cterm=NONE gui=NONE
hi! perlStatementFileDesc ctermfg=6 guifg=#2ea4a4 ctermbg=8 guibg=#191919 cterm=NONE gui=NONE
hi! texStatement ctermfg=6 guifg=#2ea4a4 ctermbg=8 guibg=#191919 cterm=NONE gui=NONE
hi! texMathZoneX ctermfg=3 guifg=#faad21 ctermbg=8 guibg=#191919 cterm=NONE gui=NONE
hi! texMathMatcher ctermfg=3 guifg=#faad21 ctermbg=8 guibg=#191919 cterm=NONE gui=NONE
hi! texMathMatcher ctermfg=3 guifg=#faad21 ctermbg=8 guibg=#191919 cterm=NONE gui=NONE
hi! texRefLabel ctermfg=3 guifg=#faad21 ctermbg=8 guibg=#191919 cterm=NONE gui=NONE
hi! rubyDefine ctermfg=14 guifg=#0098cf ctermbg=8 guibg=#191919 cterm=NONE,bold gui=NONE,bold
hi! cPreCondit ctermfg=9 guifg=#fa7921 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! VarId ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! ConId ctermfg=3 guifg=#faad21 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! hsImport ctermfg=5 guifg=#c871c8 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! hsString ctermfg=11 guifg=#fada21 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! hsStructure ctermfg=6 guifg=#2ea4a4 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! hs_hlFunctionName ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE
hi! hsStatement ctermfg=6 guifg=#2ea4a4 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! hsImportLabel ctermfg=6 guifg=#2ea4a4 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! hs_OpFunctionName ctermfg=3 guifg=#faad21 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! hs_DeclareFunction ctermfg=9 guifg=#fa7921 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! hsVarSym ctermfg=6 guifg=#2ea4a4 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! hsType ctermfg=3 guifg=#faad21 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! hsTypedef ctermfg=6 guifg=#2ea4a4 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! hsModuleName ctermfg=2 guifg=#23c897 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! link hsImportParams Delimiter
hi! link hsDelimTypeExport Delimiter
hi! link hsModuleStartLabel hsStructure
hi! link hsModuleWhereLabel hsModuleStartLabel
hi! hsNiceOperator ctermfg=6 guifg=#2ea4a4 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! hsniceoperator ctermfg=6 guifg=#2ea4a4 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocTitleBlock ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocTitleBlockTitle ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocTitleComment ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocComment ctermfg=10 guifg=#5a6e75 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE,italic
hi! pandocVerbatimBlock ctermfg=3 guifg=#faad21 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! link pandocVerbatimBlockDeep pandocVerbatimBlock
hi! link pandocCodeBlock pandocVerbatimBlock
hi! link pandocCodeBlockDelim pandocVerbatimBlock
hi! pandocBlockQuote ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocBlockQuoteLeader1 ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocBlockQuoteLeader2 ctermfg=6 guifg=#2ea4a4 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocBlockQuoteLeader3 ctermfg=3 guifg=#faad21 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocBlockQuoteLeader4 ctermfg=1 guifg=#e55934 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocBlockQuoteLeader5 ctermfg=12 guifg=#d3d3d3 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocBlockQuoteLeader6 ctermfg=10 guifg=#5a6e75 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocListMarker ctermfg=5 guifg=#c871c8 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocListReference ctermfg=5 guifg=#c871c8 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocDefinitionBlock ctermfg=13 guifg=#c594c5 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocDefinitionTerm ctermfg=13 guifg=#c594c5 ctermbg=NONE guibg=NONE cterm=NONE,standout gui=NONE,standout
hi! pandocDefinitionIndctr ctermfg=13 guifg=#c594c5 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocEmphasisDefinition ctermfg=13 guifg=#c594c5 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE,italic
hi! pandocEmphasisNestedDefinition ctermfg=13 guifg=#c594c5 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocStrongEmphasisDefinition ctermfg=13 guifg=#c594c5 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocStrongEmphasisNestedDefinition ctermfg=13 guifg=#c594c5 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocStrongEmphasisEmphasisDefinition ctermfg=13 guifg=#c594c5 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocStrikeoutDefinition ctermfg=13 guifg=#c594c5 ctermbg=NONE guibg=NONE cterm=NONE,reverse gui=NONE,reverse
hi! pandocVerbatimInlineDefinition ctermfg=13 guifg=#c594c5 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocSuperscriptDefinition ctermfg=13 guifg=#c594c5 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocSubscriptDefinition ctermfg=13 guifg=#c594c5 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocTable ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocTableStructure ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! link pandocTableStructureTop pandocTableStructre
hi! link pandocTableStructureEnd pandocTableStructre
hi! pandocTableZebraLight ctermfg=4 guifg=#00a5ff ctermbg=8 guibg=#191919 cterm=NONE gui=NONE
hi! pandocTableZebraDark ctermfg=4 guifg=#00a5ff ctermbg=0 guibg=#404040 cterm=NONE gui=NONE
hi! pandocEmphasisTable ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE cterm=NONE gui=NONE,italic
hi! pandocEmphasisNestedTable ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocStrongEmphasisTable ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocStrongEmphasisNestedTable ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocStrongEmphasisEmphasisTable ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocStrikeoutTable ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE cterm=NONE,reverse gui=NONE,reverse
hi! pandocVerbatimInlineTable ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocSuperscriptTable ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocSubscriptTable ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocHeading ctermfg=9 guifg=#fa7921 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocHeadingMarker ctermfg=3 guifg=#faad21 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocEmphasisHeading ctermfg=9 guifg=#fa7921 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocEmphasisNestedHeading ctermfg=9 guifg=#fa7921 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocStrongEmphasisHeading ctermfg=9 guifg=#fa7921 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocStrongEmphasisNestedHeading ctermfg=9 guifg=#fa7921 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocStrongEmphasisEmphasisHeading ctermfg=9 guifg=#fa7921 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocStrikeoutHeading ctermfg=9 guifg=#fa7921 ctermbg=NONE guibg=NONE cterm=NONE,reverse gui=NONE,reverse
hi! pandocVerbatimInlineHeading ctermfg=9 guifg=#fa7921 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocSuperscriptHeading ctermfg=9 guifg=#fa7921 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocSubscriptHeading ctermfg=9 guifg=#fa7921 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocLinkDelim ctermfg=10 guifg=#5a6e75 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocLinkLabel ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocLinkText ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocLinkURL ctermfg=11 guifg=#fada21 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocLinkTitle ctermfg=11 guifg=#fada21 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocLinkTitleDelim ctermfg=10 guifg=#5a6e75 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE guisp=#fada21
hi! pandocLinkDefinition ctermfg=6 guifg=#2ea4a4 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE guisp=#fada21
hi! pandocLinkDefinitionID ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocImageCaption ctermfg=13 guifg=#c594c5 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocFootnoteLink ctermfg=2 guifg=#23c897 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocFootnoteDefLink ctermfg=2 guifg=#23c897 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocFootnoteInline ctermfg=2 guifg=#23c897 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocFootnote ctermfg=2 guifg=#23c897 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocCitationDelim ctermfg=5 guifg=#c871c8 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocCitation ctermfg=5 guifg=#c871c8 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocCitationID ctermfg=5 guifg=#c871c8 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocCitationRef ctermfg=5 guifg=#c871c8 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocStyleDelim ctermfg=10 guifg=#5a6e75 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocEmphasis ctermfg=12 guifg=#d3d3d3 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE,italic
hi! pandocEmphasisNested ctermfg=12 guifg=#d3d3d3 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocStrongEmphasis ctermfg=12 guifg=#d3d3d3 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocStrongEmphasisNested ctermfg=12 guifg=#d3d3d3 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocStrongEmphasisEmphasis ctermfg=12 guifg=#d3d3d3 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocStrikeout ctermfg=10 guifg=#5a6e75 ctermbg=NONE guibg=NONE cterm=NONE,reverse gui=NONE,reverse
hi! pandocVerbatimInline ctermfg=3 guifg=#faad21 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocSuperscript ctermfg=13 guifg=#c594c5 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocSubscript ctermfg=13 guifg=#c594c5 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocRule ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocRuleLine ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocEscapePair ctermfg=1 guifg=#e55934 ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! pandocCitationRef ctermfg=5 guifg=#c871c8 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocNonBreakingSpace ctermfg=1 guifg=#e55934 ctermbg=NONE guibg=NONE cterm=NONE,reverse gui=NONE,reverse
hi! link pandocEscapedCharacter pandocEscapePair
hi! link pandocLineBreak pandocEscapePair
hi! pandocMetadataDelim ctermfg=10 guifg=#5a6e75 ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocMetadata ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocMetadataKey ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE cterm=NONE gui=NONE
hi! pandocMetadata ctermfg=4 guifg=#00a5ff ctermbg=NONE guibg=NONE cterm=NONE,bold gui=NONE,bold
hi! link pandocMetadataTitle pandocMetadata
if get(g:, "solarized_term_italics", 0) != 0
  hi Comment cterm=italic
  hi gitcommitComment cterm=italic
  hi htmlSpecialTagName cterm=italic
  hi pandocComment cterm=italic
  hi pandocEmphasisDefinition cterm=italic
  hi pandocEmphasisTable cterm=italic
  hi pandocEmphasis cterm=italic
endif
" License "{{{
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
"
" vim:foldmethod=marker:foldlevel=0
"}}}
