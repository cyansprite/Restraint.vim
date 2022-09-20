" Vim:          Color file
" Maintainer:   Jojo Brandon Coffman <https://github.com/cyansprite>
" Title:        Restraint - WIP
" Description:  Theme based on term colors and espurr.
" Requirements: Term Colors for terminal or GUI color support.
" Note:         *Xresources Not Updated*
"               Don't use more than 16 term colors
"               Use light colors ontop of dark colors for normal, inverse for
"               selected.

set termguicolors
let &pumblend=0
let &winblend=0

" Setup:  +{{{1
hi clear
if exists("syntax_on")
    syntax reset
endif

" term bg color: #000000
let s:colorlist_dark = {
            \ "TermBG": '#000000',
            \ "fg"   : 'none',
            \ "fg0"  : 'none',
            \ "bg"   : 'none',
            \ "bg0"  : 'none',
            \ '00'   : '#2A2A2A',
            \ '01'   : '#2A1111',
            \ '02'   : '#112A11',
            \ '03'   : '#2A2A11',
            \ '04'   : '#11112A',
            \ '05'   : '#2A112A',
            \ '011'  : '#8A1111',
            \ '022'  : '#118A11',
            \ '033'  : '#8A8A11',
            \ '044'  : '#44448A',
            \ '088'  : '#333333',
            \ 0      : '#121212',
            \ 8      : '#5F5959',
            \ 1      : '#E16232',
            \ '19'   : '#FF7F00',
            \ '91'   : '#cc2070',
            \ 9      : '#F9015A',
            \ 2      : '#00CC00',
            \ '101'  : '#6CC400',
            \ 10     : '#00BF36',
            \ '30'   : '#8f4000',
            \ '32'   : '#b7b24d',
            \ 3      : '#C67228',
            \ 11     : '#B89D0C',
            \ '111'  : '#D89D3C',
            \ 4      : '#5B90B7',
            \ 12     : '#5D4FFA',
            \ '121'  : '#7950C3',
            \ '51'   : '#F22EF2',
            \ '52'   : '#C000C0',
            \ '54'   : '#9000D0',
            \ 5      : '#2F5A94',
            \ 13     : '#E44DFF',
            \ '61'   : '#05C88A',
            \ '62'   : '#00FFFF',
            \ 6      : '#04F5C0',
            \ 14     : '#0ABF5F',
            \ '71'   : '#BBA14F',
            \ '72'   : '#9A9A75',
            \ 7      : '#9A9687',
            \ 15     : '#E6E4D6',
            \ 83     : '#83733E',
            \ 831    : '#1F1A10',
            \ '150'  : '#fdfdf3',
            \ '151'  : '#ffffe5',
            \ 'none' : 'none',
            \ 'Operator' : '#38FFAF',
            \ 'ParenChars' : '#6BF19F',
            \ 'QuoteChars' : '#7777BB',
            \ 'MatchParen' : '#FF00FF',
            \ 'Visual' : '#2F2F4F',
            \ 'CC' : '#ffe0e0',
            \ 'Search' : '#555500',
            \ }

" term bg color: #D9D7D5
let s:colorlist_light = {
            \ "TermBG": '#D9D7D5',
            \ "fg"   : 'none',
            \ "fg0"  : 'none',
            \ "bg"   : 'none',
            \ "bg0"  : 'none',
            \ '00'   : '#DDDDDD',
            \ '01'   : '#FAEAEA',
            \ '02'   : '#EAFAEA',
            \ '03'   : '#FAFAEA',
            \ '04'   : '#EAEAFA',
            \ '05'   : '#DDA0DD',
            \ '011'  : '#AF6060',
            \ '022'  : '#608F60',
            \ '033'  : '#AFAF60',
            \ '044'  : '#6060AF',
            \ '088'  : '#CCCCCC',
            \ 0      : '#493E3E',
            \ 8      : '#5F5959',
            \ 1      : '#C12E2E',
            \ '19'   : '#DF6204',
            \ '91'   : '#cc2070',
            \ 9      : '#CD0D52',
            \ 2      : '#1A8B1A',
            \ '101'  : '#6CC400',
            \ 10     : '#1D883C',
            \ '30'   : '#8f4000',
            \ '32'   : '#b7b24d',
            \ 3      : '#917D12',
            \ 11     : '#917D12',
            \ '111'  : '#B87D1C',
            \ 4      : '#4F9BB6',
            \ 12     : '#2F5A94',
            \ '121'  : '#7950C3',
            \ '51'   : '#F22EF2',
            \ '52'   : '#C000C0',
            \ '54'   : '#9000D0',
            \ 5      : '#754C8E',
            \ 13     : '#D608DA',
            \ '61'   : '#00A055',
            \ '62'   : '#009A9A',
            \ 6      : '#199E7F',
            \ 14     : '#2D9960',
            \ '71'   : '#9B811F',
            \ '72'   : '#BAAA55',
            \ 7      : '#989089',
            \ 15     : '#FFFFF7',
            \ 83     : '#9A8AAA',
            \ 831    : '#EFECEA',
            \ '150'  : '#fdfdf3',
            \ '151'  : '#ffffe5',
            \ 'none' : 'none',
            \ 'Operator' : '#5C4174',
            \ 'ParenChars' : '#3B916F',
            \ 'QuoteChars' : '#7777BB',
            \ 'MatchParen' : '#FF00FF',
            \ 'Visual' : '#EAEAEA',
            \ 'CC' : '#DFDCDA',
            \ 'Search' : '#d5df00',
            \ }

if &bg == "dark"
    let s:colorList = s:colorlist_dark
else
    let s:colorList = s:colorlist_light
endif

if &bg == "dark"
    let temp = s:colorList['fg']
    let temp0 = s:colorList['fg0']
    let s:colorList['fg'] = s:colorList['bg']
    let s:colorList['fg0'] = s:colorList['bg0']
    let s:colorList['bg'] = temp
    let s:colorList['bg0'] = temp0
    let s:colorList[ 'CC' ] =  '#610030'
else
endif

let g:accentColor = '71'
let g:accentColorLight = '72'
let g:colors_name = "restraint"

let s:colorList['GrepSearch']  = '#886800'
let s:colorList['GrepSearchC'] = '#bb9900'

func! s:cterm(c)
    if a:c =~# '^\d\+$'
        if a:c < 16 && a:c > -1
            return a:c
        endif
    endif

    return 'none'
endfunc

func! s:hy(name, f, b, t, ...)
    try
        exec 'hi '.a:name.' ctermfg='.s:cterm(a:f).' ctermbg='.s:cterm(a:b).' cterm='.a:t. ' guifg='.s:colorList[a:f].' guibg='.s:colorList[a:b].' gui='.a:t
    cat /.*/
        echohl ErrorMsg | echom v:exception . 'in :' . v:throwpoint . ' for ' . a:name | echohl None
    endtry
endfunc

" EasyAlign*/,\|)/

" Special:|{{{1
    call s:hy ( 'Search'       , 'none'       , 'Search'  , 'bold'           )
    " call s:hy ( 'SearchC'      , 'none'       , 'SearchC' , 'bold,underline' )
    call s:hy ( 'MatchParen'   , 'MatchParen' , 'none'    , 'underline'      )
    call s:hy ( 'BraceChars'   , 'ParenChars' , 'none'    , 'bold'           )
    call s:hy ( 'BracketChars' , 'ParenChars' , 'none'    , 'bold'           )
    call s:hy ( 'ParenChars'   , 'ParenChars' , 'none'    , 'bold'           )
    call s:hy ( 'QuoteChars'   , 'QuoteChars' , 'none'    , 'bold'           )
    call s:hy ( 'Operator'     , 'Operator'   , 'none'    , 'bold'           )

    " I'm not sure why I used User4 for the tabline fill... but I did
    call s:hy ( 'User4'        , 'none'             , 'none'   , 'bold' )
    call s:hy ( 'Folded'       , g:accentColor      , 'none'   , 'none' )
    call s:hy ( 'Whitespace'   , 1                  , 'none'   , 'none' )
    call s:hy ( 'Visual'       , 'none'             , 'Visual' , 'none' )
    call s:hy ( 'CursorLineNr' , 'none'             , '831'    , 'bold' )
    call s:hy ( 'EndOfBuffer'  , g:accentColorLight , 'none'   , 'bold' )
    call s:hy ( 'CursorLine'   , 'none'             , 'none'   , 'none' )
    call s:hy ( 'Pmenu'        , "71"               , 'TermBG' , 'none' )
    call s:hy ( 'PmenuSel'     , "none"             , '831'    , 'bold' )
    call s:hy ( 'Comment'      , '83'               , 'none'   , 'none' )

    call s:hy ( 'InnerScope'    , 'none'             , 'none' , 'none'         )
    call s:hy ( 'OuterScope'    , 'none'             , 'none' , 'none'         )
    call s:hy ( 'LinkScope'     , 'none'             , 'none' , 'none'         )

    call s:hy ( 'NormalMode'    , g:accentColor      , 'none' , 'bold'         )
    call s:hy ( 'InsertMode'    , 14                 , 'none' , 'bold'         )
    call s:hy ( 'VisualMode'    , 10                 , 'none' , 'bold'         )
    call s:hy ( 'SelectMode'    , 15                 , 'none' , 'bold'         )
    call s:hy ( 'CommandMode'   , 9                  , 'none' , 'bold'         )
    call s:hy ( 'TerminalMode'  , 12                 , 'none' , 'bold'         )
    call s:hy ( 'OtherMode'     , 8                  , 'none' , 'bold'         )
    call s:hy ( 'ReplaceMode'   , 1                  , 'none' , 'bold'         )

    call s:hy ( 'NormalMode1'   , g:accentColor      , 'none' , 'bold'         )
    call s:hy ( 'InsertMode1'   , 11                 , 'none' , 'bold'         )
    call s:hy ( 'VisualMode1'   , 10                 , 'none' , 'bold'         )
    call s:hy ( 'SelectMode1'   , 15                 , 'none' , 'bold'         )
    call s:hy ( 'CommandMode1'  , 9                  , 'none' , 'bold'         )
    call s:hy ( 'TerminalMode1' , 12                 , 'none' , 'bold'         )
    call s:hy ( 'OtherMode1'    , 8                  , 'none' , 'bold'         )
    call s:hy ( 'ReplaceMode1'  , 1                  , 'none' , 'bold'         )

    call s:hy ( 'NormalMode2'   , g:accentColor      , 'none' , 'bold'         )
    call s:hy ( 'InsertMode2'   , 11                 , 'none' , 'bold'         )
    call s:hy ( 'VisualMode2'   , 10                 , 'none' , 'bold'         )
    call s:hy ( 'SelectMode2'   , 15                 , 'none' , 'bold'         )
    call s:hy ( 'CommandMode2'  , 9                  , 'none' , 'bold'         )
    call s:hy ( 'TerminalMode2' , 12                 , 'none' , 'bold'         )
    call s:hy ( 'OtherMode2'    , 8                  , 'none' , 'bold'         )
    call s:hy ( 'ReplaceMode2'  , 1                  , 'none' , 'bold'         )

    call s:hy ( 'GitGutterDelete'             , '01'  , '011' , 'bold' )
    call s:hy ( 'GitGutterAdd'                , '02'  , '022' , 'bold' )
    call s:hy ( 'GitGutterChangeDelete'       , '03'  , '033' , 'bold' )
    call s:hy ( 'GitGutterChange'             , '04'  , '044' , 'bold' )
    call s:hy ( 'GitGutterDeleteLineNr'       , '011' , '01'  , 'bold' )
    call s:hy ( 'GitGutterAddLineNr'          , '022' , '02'  , 'bold' )
    call s:hy ( 'GitGutterChangeDeleteLineNr' , '033' , '03'  , 'bold' )
    call s:hy ( 'GitGutterChangeLineNr'       , '044' , '04'  , 'bold' )

" Nons:   -{{{1
    call s:hy ( 'Normal'       , 'fg'   , 'none' , 'none'    )
    call s:hy ( 'NormalNC'     , 'fg0'  , 'bg0'  , 'none'    )
    call s:hy ( 'UnderLine'    , 'none' , 'none' , 'none'    )
    call s:hy ( 'CursorColumn' , 'none' , 'none' , 'none'    )
    call s:hy ( 'Cursor'       , 'none' , 'none' , 'inverse' )
    call s:hy ( 'QuickFixLine' , 'none' , 'none' , 'inverse' )
    call s:hy ( 'DiffChange'   , 'none' , '088'  , 'none'    )
    call s:hy ( 'ColorColumn'  , 'none' , 'CC'   , 'none'    )
    call s:hy ( 'Bold'         , 'none' , 'none' , 'bold'    )

"1       9{{{1
    call s:hy ( 'Error'        , 1      , 'none' , 'none' )
    call s:hy ( 'DiffDelete'   , 'none' , '01'   , 'none' )
    call s:hy ( 'SpellBad'     , 15     , 1      , 'none' )
    call s:hy ( 'ErrorMsg'     , 15     , 1      , 'bold' )
    call s:hy ( 'DiffRemoved'  , 'none' , '01'   , 'none' )
    call s:hy ( 'Function'     , '91'   , 'none' , 'none' )
    call s:hy ( 'UserFunction' , '9'    , 'none' , 'none' )
    call s:hy ( 'Member'       , 1      , 'none' , 'none' )
    call s:hy ( 'Number'       , '19'   , 'none' , 'none' )
    call s:hy ( 'CocInfoSign'  , 15     , 19     , 'none' )
    call s:hy ( 'Float'        , 1      , 'none' , 'none' )

" 2      10{{{1
    call s:hy ( 'StorageClass' , 10     , 'none' , 'none' )
    call s:hy ( 'String'       , 2      , 'none' , 'none' )
    call s:hy ( 'DiffAdd'      , 'none' , '02'   , 'none' )
    call s:hy ( 'diffAdded'    , 'none' , '02'   , 'none' )
    call s:hy ( 'QShit'        , 2      , 'none' , 'none' )


" 3      11{{{1
    call s:hy ( 'Parameter'  , '111' , 'none' , 'none'      )
    call s:hy ( 'Directory'  , 3     , 'none' , 'none'      )
    call s:hy ( 'Title'      , 3     , 'fg0'  , 'bold'      )
    call s:hy ( 'Macro'      , 3     , 'none' , 'bold'      )
    call s:hy ( 'Todo'       , '0'   , 11     , 'bold'      )
    call s:hy ( 'WarningMsg' , 15    , 11     , 'bold'      )
    call s:hy ( 'Special'    , 11    , 'none' , 'none'      )
    call s:hy ( 'IncSearch'  , 0     , 3      , 'underline' )
    call s:hy ( 'Ignore'     , 3     , 'none' , 'none'      )
    call s:hy ( 'Delimeter'  , 3     , 'none' , 'none'      )
    call s:hy ( 'Identifier' , 3     , 'none' , 'none'      )
" 4      12{{{1
    call s:hy ( 'NonText'   , 4      , 'none' , 'none' )
    call s:hy ( 'PreCondit' , 4      , 'none' , 'none' )
    call s:hy ( 'Constant'  , 12     , 'none' , 'none' )
    call s:hy ( 'Modifier'  , 12     , 'none' , 'bold' )
    call s:hy ( 'DiffText'  , 'none' , '04'   , 'none' )

" 5      13{{{1
    call s:hy ( 'TypeDef'     , '52'   , 'none' , 'none'         )
    call s:hy ( 'Boolean'     , '54'   , 'none' , 'none'         )
    call s:hy ( 'Conditonal'  , '51'   , 'none' , 'none'         )
    call s:hy ( 'Character'   , 5      , 'none' , 'none'         )
    call s:hy ( 'SpecialChar' , 5      , 'none' , 'none'         )
    call s:hy ( 'diffSubname' , 5      , '05'   , 'none'         )
    call s:hy ( 'PreProc'     , 5      , 'none' , 'none'         )
    call s:hy ( 'MoreMsg'     , 15     , 5      , 'bold'         )
    call s:hy ( 'Repeat'      , 13     , 'none' , 'none'         )
    call s:hy ( 'SignColumn'  , 5      , 'none' , 'none'         )
    call s:hy ( 'WildMenu'    , 'none' , 'none' , 'bold,inverse' )

" 6      14{{{1
    call s:hy ( 'Class'      , 14   , 'none' , 'none' )
    call s:hy ( 'Label'      , '14' , 'none' , 'none' )
    call s:hy ( 'Type'       , '61' , 'none' , 'none' )
    call s:hy ( 'SpecialKey' , 6    , 'none' , 'none' )
    call s:hy ( 'Keyword'    , '62' , 'none' , 'none' )
    call s:hy ( 'Statement'  , 14   , 'none' , 'none' )

" 7      15{{{1
    call s:hy ( 'Question'      , 7      , 0      , 'inverse'      )
    call s:hy ( 'Property'      , '71'   , 'none' , 'none'         )
    call s:hy ( 'LogicalBuffer' , 'none' , "15"   , 'inverse,bold' )
    call s:hy ( 'Logical7'      , '71'   , "TermBG"   , 'bold'         )

    for x in range(9, 15)
        call s:hy ("Logical".string(x-9), x, 'TermBG', 'bold')
    endfor
    for x in range(1, 7)
        call s:hy ("Logical".string(x+7), x, 'TermBG', 'bold')
    endfor

    call s:hy ( 'CocCodeLens'  , 7 , 'none' , 'none' )
    call s:hy ( 'LspCodeLens'  , 7 , 'none' , 'none' )

" 0       8{{{1
    call s:hy ( 'StatuslineNc' , g:accentColor , 'fg0'  , 'none' )
    call s:hy ( 'VertSplit'    , g:accentColor , 'none' , 'bold' )
    call s:hy ( 'LineNr'       , g:accentColor , 'TermBG' , 'none' )


" Dynamic:x{{{1
    call s:hy ( 'FoldColumn' , g:accentColorLight , 'none' , 'none'         )
    call s:hy ( 'StatusLine' , g:accentColor      , 'none' , 'none'         )
    call s:hy ( 'ModeMsg'    , g:accentColor      , 'none' , 'inverse,bold' )
    call s:hy ( 'PmenuSbar'  , g:accentColor      , 'none' , 'inverse'      )
    call s:hy ( 'PMenuThumb' , g:accentColor      , 'none' , 'inverse'      )


" Relink: >{{{1
    hi link luaTable BraceChars
    hi link luaParen ParenChars
    hi link Exception Error

    hi link vimCommentTitle       Title
    hi link vimCommentTitleLeader Title
    hi link vimIsCommand          Constant
    hi link vimHighlight          Member
    hi link vimHighClear          Identifier
    hi link vimUserFunc           UserFunction
    hi link vimFunction           UserFunction
    hi link vimContinue           ParenChars
    hi link vimParenSep           ParenChars
    hi link vimExecute            Operator

    hi link helpExample     Title

    hi link gitCommitSummary Title

    hi link cocSemClass     Class
    hi link cocSemModifier  Modifier
    hi link cocSemProperty  Property
    hi link cocSemParameter Parameter

    hi link csClass         Structure
    hi link csType          Member

    hi link cConditional    Conditonal
    hi link cRepeat         Repeat
    hi link cCustomMemVar   Member
    hi link cCustomClass    Class
    hi link cRepeat         Repeat

    hi link cppSTLnamespace Label

    hi link pythonDecoratorName Constant
    hi link pythonBuiltin       Label

    hi link javaConditional   Conditional
    hi link javaExternal   Macro
    hi link javaExternal   Macro

    hi link javaScriptConditional Conditional

    hi link jsonKeyword       Function
    hi link jsonQuote         QuoteChars
    hi link jsonKeywordMatch  Operator

    hi link builtInLibrary    Macro

    hi link typescriptMember Member
    hi link typescriptBraces BraceChars
    hi link typescriptVariable Keyword

    hi link TSAttribute        Macro
    hi link TSConstBuiltIn     Macro
    hi link TSConstructor      StorageClass
    hi link TSEmphasis         bold
    hi link TSFuncBuiltIn      Function
    hi link TSFunction         UserFunction
    hi link TSKeywordFunction  Function
    hi link TSKeywordReturn    Statement
    hi link TSKeyword          Keyword
    hi link TSParameter        Parameter
    hi link TSProperty         Identifier
    hi link TSPunctBracket     BracketChars
    hi link TSPunctSpecial     Special
    hi link TSVariableBuiltIn  TypeDef

    hi link OperatorChars     Operator

    hi link LspDiagnosticsDefaultError ErrorMsg
    hi link LspDiagnosticsDefaultWarning WarningMsg
    hi link LspDiagnosticsDefaultInformation MoreMsg
    hi link LspDiagnosticsDefaultHint Question
    hi link FgCocInfoFloatBgNormal None

    hi link tapTestResultsOKRegion GitGutterAdd
    hi link tapTestResultsNotOKRegion GitGutterDiff

    hi link tapTest Title

" }}}
" Plugin: & {{{1

call s:hy('GrepperCurrent', 0, 'GrepSearchC', 'none')
call s:hy('GrepperMatch'  , 0, 'GrepSearch' , 'none')
