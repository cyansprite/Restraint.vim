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

let s:colorList = {
            \ "fg"   : '#0a0800',
            \ "bg"   : '#f2f2de',
            \ 0      : '#1d1a14',
            \ 8      : '#808075',
            \ 1      : '#8c4646',
            \ 9      : '#ff4c96',
            \ 2      : '#1ba93e',
            \ 10     : '#6bce3e',
            \ 3      : '#acaa55',
            \ 11     : '#df6243',
            \ 4      : '#4b64bb',
            \ 12     : '#43a7de',
            \ 5      : '#af59b1',
            \ 13     : '#ef4cff',
            \ 6      : '#59b09f',
            \ 14     : '#40d6d3',
            \ 7      : '#a6a685',
            \ 15     : '#ffffea',
            \ 'none' : 'none'
            \ }

let s:colorList_work = {
            \ "fg"   : 'none',
            \ "bg"   : 'none',
            \ 0      : '#2a2a2a',
            \ 8      : '#5a5a5a',
            \ 1      : '#824d4d',
            \ 9      : '#cc295f',
            \ 2      : '#62824d',
            \ 10     : '#47991f',
            \ 3      : '#a7a22d',
            \ 11     : '#99701f',
            \ 4      : '#6e8ec5',
            \ 12     : '#9090c9',
            \ 5      : '#824d82',
            \ 13     : '#991f99',
            \ 6      : '#4d8282',
            \ 14     : '#1f9999',
            \ 7      : '#82786f',
            \ 15     : '#fffff3',
            \ 'none' : 'none'
            \ }

let s:colorList_new = {
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
            \ '011'  : '#3A1111',
            \ '022'  : '#113A11',
            \ '033'  : '#3A3A11',
            \ '044'  : '#11113A',
            \ 0      : '#121212',
            \ 8      : '#5F5959',
            \ 1      : '#E16232',
            \ '19'   : '#FF2244',
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
            \ '150'  : '#fdfdf3',
            \ '151'  : '#ffffe5',
            \ 'none' : 'none',
            \ 'Operator' : '#38FFAF',
            \ 'ParenChars' : '#6BF19F',
            \ 'MatchParen' : '#FF00FF',
            \ 'CC' : '#ffe0e0'
            \ }

let s:colorList = s:colorList_new

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

let g:accentColor = 'none'
let g:accentColorLight = 'none'
let g:colors_name = "restraint"

let s:colorList['Search']      = '#aaaa00'
let s:colorList['SearchC']     = '#bbbb00'
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
    call s:hy ( 'Search'       , 0            , 'Search'     , 'none' )
    call s:hy ( 'SearchC'      , 0            , 'SearchC'    , 'none' )
    call s:hy ( 'MatchParen'   , 'MatchParen' , '0'         , 'none'  )
    call s:hy ( 'BraceChars'   , 'ParenChars' , 'none'       , 'bold' )
    call s:hy ( 'BracketChars' , 'ParenChars' , 'none'       , 'bold' )
    call s:hy ( 'ParenChars'   , 'ParenChars' , 'none'       , 'bold' )
    call s:hy ( 'Operator'     , 'Operator'   , 'none'       , 'bold' )

    let s:colors = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
    if get(s:, 'timer', 0) != 0
       call timer_stop(s:timer)
    endif

    try
        func! AccentHandler(timer)
            let g:accentColor = luaeval('math.random (1, 15)')
            let g:accentColorLight = luaeval('math.random (1, 15)')
            colo restraint
        endfunc
    catch /.*/
    endtry
    " let s:timer = timer_start(5000, 'AccentHandler', {'repeat': -1})

    " TODO clean this up
    if &bg == "dark"
        " I'm not sure why I used User4 for the tabline fill... but I did
        call s:hy ("User4", 'none', 'none', 'bold')
        call s:hy ( 'Folded'       , g:accentColor , 'none', 'none'         )
        call s:hy ( 'Whitespace'   , 1             , 'none', 'none'      )
        call s:hy ( 'Visual'       , 'none'        , 'none', 'reverse'         )
        call s:hy ( 'CursorLineNr' , g:accentColor , 'none' , 'bold'         )
        call s:hy ( 'EndOfBuffer'   , g:accentColorLight , 'none'        , 'bold'         )
        call s:hy ( 'CursorLine'   , 'none'        , 'none' , 'none'         )
        call s:hy ( 'Pmenu'        , "fg" , 'none' , 'none'         )
        call s:hy ( 'PmenuSel'     , "fg"   , 'none' , 'inverse,bold' )
        call s:hy ( 'Comment'      , '83'          , 'none', 'none'       )

        call s:hy ( 'InnerScope'   , 'none'        , 'none' , 'none'         )
        call s:hy ( 'OuterScope'   , 'none'        , 'none' , 'none'         )
        call s:hy ( 'LinkScope'    , 'none'        , 'none' , 'none'         )

        " call s:hy ( 'LspReferenceText'  , 'none' , '01' , 'bold' )
        " call s:hy ( 'LspReferenceRead'  , 'none' , '01' , 'bold' )
        " call s:hy ( 'LspReferenceWrite' , 'none' , '01' , 'bold' )

        call s:hy ( 'NormalMode'   , g:accentColor , 'none' , 'bold'         )
        call s:hy ( 'InsertMode'   , 14            , 'none' , 'bold'         )
        call s:hy ( 'VisualMode'   , 10            , 'none' , 'bold'         )
        call s:hy ( 'SelectMode'   , 15            , 'none' , 'bold'         )
        call s:hy ( 'CommandMode'  , 9             , 'none' , 'bold'         )
        call s:hy ( 'TerminalMode' , 12            , 'none' , 'bold'         )
        call s:hy ( 'OtherMode'    , 8             , 'none' , 'bold'         )
        call s:hy ( 'ReplaceMode'  , 1             , 'none' , 'bold'         )

        call s:hy ( 'NormalMode1'   , g:accentColor , 'none' , 'bold'         )
        call s:hy ( 'InsertMode1'   , 11            , 'none' , 'bold'         )
        call s:hy ( 'VisualMode1'   , 10            , 'none' , 'bold'         )
        call s:hy ( 'SelectMode1'   , 15            , 'none' , 'bold'         )
        call s:hy ( 'CommandMode1'  , 9             , 'none' , 'bold'         )
        call s:hy ( 'TerminalMode1' , 12            , 'none' , 'bold'         )
        call s:hy ( 'OtherMode1'    , 8             , 'none' , 'bold'         )
        call s:hy ( 'ReplaceMode1'  , 1             , 'none' , 'bold'         )

        call s:hy ( 'NormalMode2'   , g:accentColor , 'none' , 'bold'         )
        call s:hy ( 'InsertMode2'   , 11            , 'none' , 'bold'         )
        call s:hy ( 'VisualMode2'   , 10            , 'none' , 'bold'         )
        call s:hy ( 'SelectMode2'   , 15            , 'none' , 'bold'         )
        call s:hy ( 'CommandMode2'  , 9             , 'none' , 'bold'         )
        call s:hy ( 'TerminalMode2' , 12            , 'none' , 'bold'         )
        call s:hy ( 'OtherMode2'    , 8             , 'none' , 'bold'         )
        call s:hy ( 'ReplaceMode2'  , 1             , 'none' , 'bold'         )

        for x in range(0, len(s:colors) - 1)
            call s:hy ("Logical".string(x), s:colors[x], 'none', 'bold')
        endfor

        call s:hy ( 'GitGutterDelete'       ,  '01' ,   '011' , 'bold' )
        call s:hy ( 'GitGutterAdd'          ,  '02' ,   '022' , 'bold' )
        call s:hy ( 'GitGutterChangeDelete' ,  '03' ,   '033' , 'bold' )
        call s:hy ( 'GitGutterChange'       ,  '04' ,   '044' , 'bold' )
        call s:hy ( 'GitGutterDeleteLineNr'       ,  1 ,   '01' , 'bold' )
        call s:hy ( 'GitGutterAddLineNr'          ,  2 ,   '02' , 'bold' )
        call s:hy ( 'GitGutterChangeDeleteLineNr' ,  3 ,   '03' , 'bold' )
        call s:hy ( 'GitGutterChangeLineNr'       ,  4 ,   '04' , 'bold' )
    else
        " I'm not sure why I used User4 for the tabline fill... but I did
        call s:hy ("User4", 'none', 'none', 'bold')
        call s:hy ( 'Folded'       , g:accentColor , 'none', 'none'         )
        call s:hy ( 'EndOfBuffer'   , g:accentColorLight , 'none'        , 'bold'         )
        call s:hy ( 'Whitespace'   , 1             , 'none', 'none'      )
        call s:hy ( 'Visual'       , 'none'        , 'none', 'reverse'         )
        call s:hy ( 'CursorLineNr' , g:accentColor , '150' , 'bold'         )
        call s:hy ( 'CursorLine'   , 'none'        , '150' , 'none'         )
        call s:hy ( 'Pmenu'        , g:accentColor , 15 , 'none'         )
        call s:hy ( 'PmenuSel'     , g:accentColor , 15 , 'inverse,bold' )
        call s:hy ( 'Comment'      , '8'          , '150', 'none'       )

        call s:hy ( 'InnerScope'   , 'none'        , 'none' , 'none'         )
        call s:hy ( 'OuterScope'   , 'none'        , 'none' , 'none'         )
        call s:hy ( 'LinkScope'    , 'none'        , 'none' , 'none'         )

        call s:hy ( 'LspReferenceText'  , 'none' , '151' , 'bold' )
        call s:hy ( 'LspReferenceRead'  , 'none' , '151' , 'bold' )
        call s:hy ( 'LspReferenceWrite' , 'none' , '151' , 'bold' )

        call s:hy ( 'NormalMode'   , '71'          , 'none' , 'bold'         )
        call s:hy ( 'InsertMode'   , 11            , 'none' , 'bold'         )
        call s:hy ( 'VisualMode'   , 10            , 'none' , 'bold'         )
        call s:hy ( 'SelectMode'   , 15            , 'none' , 'bold'         )
        call s:hy ( 'CommandMode'  , 9             , 'none' , 'bold'         )
        call s:hy ( 'TerminalMode' , 12            , 'none' , 'bold'         )
        call s:hy ( 'OtherMode'    , 8             , 'none' , 'bold'         )
        call s:hy ( 'ReplaceMode'  , 1             , 'none' , 'bold'         )

        call s:hy ( 'NormalMode1'   , '71'          , 'none' , 'bold'         )
        call s:hy ( 'InsertMode1'   , 11            , 'none' , 'bold'         )
        call s:hy ( 'VisualMode1'   , 10            , 'none' , 'bold'         )
        call s:hy ( 'SelectMode1'   , 15            , 'none' , 'bold'         )
        call s:hy ( 'CommandMode1'  , 9             , 'none' , 'bold'         )
        call s:hy ( 'TerminalMode1' , 12            , 'none' , 'bold'         )
        call s:hy ( 'OtherMode1'    , 8             , 'none' , 'bold'         )
        call s:hy ( 'ReplaceMode1'  , 1             , 'none' , 'bold'         )

        call s:hy ( 'NormalMode2'   , '71'          , 'none' , 'bold'         )
        call s:hy ( 'InsertMode2'   , 11            , 'none' , 'bold'         )
        call s:hy ( 'VisualMode2'   , 10            , 'none' , 'bold'         )
        call s:hy ( 'SelectMode2'   , 15            , 'none' , 'bold'         )
        call s:hy ( 'CommandMode2'  , 9             , 'none' , 'bold'         )
        call s:hy ( 'TerminalMode2' , 12            , 'none' , 'bold'         )
        call s:hy ( 'OtherMode2'    , 8             , 'none' , 'bold'         )
        call s:hy ( 'ReplaceMode2'  , 1             , 'none' , 'bold'         )

        for x in range(0, len(s:colors) - 1)
            call s:hy ("Logical".string(x), s:colors[x], 'none', 'bold')
        endfor

        call s:hy ( 'GitGutterDelete'             , 9  , '150' , 'bold' )
        call s:hy ( 'GitGutterAdd'                , 10 , '150' , 'bold' )
        call s:hy ( 'GitGutterChangeDelete'       , 11 , '150' , 'bold' )
        call s:hy ( 'GitGutterChange'             , 12 , '150' , 'bold' )
        call s:hy ( 'GitGutterDeleteLineNr'       , 9  , '150' , 'bold' )
        call s:hy ( 'GitGutterAddLineNr'          , 10 , '150' , 'bold' )
        call s:hy ( 'GitGutterChangeDeleteLineNr' , 11 , '150' , 'bold' )
        call s:hy ( 'GitGutterChangeLineNr'       , 12 , '150' , 'bold' )
    endif

" Nons:   -{{{1
    call s:hy ( 'Normal'       , 'fg'   , 'none'   , 'none'    )
    call s:hy ( 'NormalNC'     , 'fg0'  , 'bg0'  , 'none'    )
    call s:hy ( 'UnderLine'    , 'none' , 'none' , 'none'    )
    call s:hy ( 'CursorColumn' , 'none' , 'none' , 'none'    )
    call s:hy ( 'Cursor'       , 'none' , 'none' , 'inverse' )
    call s:hy ( 'QuickFixLine' , 'none' , 'none' , 'inverse' )
    call s:hy ( 'DiffChange'   , 'none' , '0' , 'none'    )
    call s:hy ( 'ColorColumn'  , 'none' , 'CC'   , 'none'    )
    call s:hy ( 'Bold'         , 'none' , 'none' , 'bold'    )

"1       9{{{1
    call s:hy ( 'Error'       , 1 , 'none' , 'none' )
    call s:hy ( 'DiffDelete'  , 1 , '01'      , 'none' )
    call s:hy ( 'SpellBad'    , 15 , 1      , 'none' )
    call s:hy ( 'ErrorMsg'    , 15, 1      , 'bold' )
    call s:hy ( 'DiffRemoved' , 1 , '01' , 'none' )
    call s:hy ( 'Function'    , '91' , 'none' , 'none' )
    call s:hy ( 'UserFunction', '9', 'none' , 'none'         )
    call s:hy ( 'Member'      , 1 , 'none' , 'none' )
    call s:hy ( 'Number'      , '19'   , 'none' , 'none')
    call s:hy ( 'Float'       , 1   , 'none' , 'none')

" 2      10{{{1
    call s:hy ( 'StorageClass' , 10     , 'none' , 'none'    )
    call s:hy ( 'String'       , 2      , 'none' , 'none'    )
    call s:hy ( 'DiffAdd'      , 2      , '02'      , 'none' )
    call s:hy ( 'diffAdded'    , 2      , '02'      , 'none' )
    call s:hy ( 'QShit'        , 2      , 'none' , 'none'    )


" 3      11{{{1
    call s:hy ( 'Parameter'    , '111'  , 'none' , 'none'         )
    call s:hy ( 'Directory'    , 3      , 'none' , 'none'              )
    call s:hy ( 'Title'        , 3             , 'fg0' , 'bold'         )
    call s:hy ( 'Macro'        , 3             , 'none' , 'bold'         )
    call s:hy ( 'Todo'         , '0' , 11     , 'bold'              )
    call s:hy ( 'WarningMsg'   , 15     , 11     , 'bold'              )
    call s:hy ( 'Special'      , 11      , 'none' , 'none'              )
    call s:hy ( 'IncSearch'    , 0      , 3      , 'underline'         )
    call s:hy ( 'Ignore'       , 3      , 'none' , 'none'              )
    call s:hy ( 'Delimeter'    , 3      , 'none' , 'none'              )

    call s:hy ( 'Identifier' , 3      , 'none' , 'none'         )
" 4      12{{{1
    call s:hy ( 'NonText'   , 4  , 'none' , 'none' )
    call s:hy ( 'PreCondit' , 4  , 'none' , 'none' )
    call s:hy ( 'Constant'  , 12 , 'none' , 'none' )
    call s:hy ( 'Modifier'  , 12 , 'none' , 'bold' )
    call s:hy ( 'DiffText'  , 4  , '0'    , 'none' )

" 5      13{{{1
    call s:hy ( 'TypeDef'     , '52'   , 'none' , 'none'         )
    call s:hy ( 'Boolean'     , '54'   , 'none' , 'none'         )
    call s:hy ( 'Property'    , '71'   , 'none' , 'none'         )
    call s:hy ( 'Conditonal'  , '51'      , 'none' , 'none' )
    call s:hy ( 'Character'   , 5      , 'none' , 'none'         )
    call s:hy ( 'SpecialChar' , 5      , 'none' , 'none'         )
    call s:hy ( 'diffSubname' , 5      , '05' , 'none'         )
    call s:hy ( 'PreProc'     , 5      , 'none' , 'none'         )
    call s:hy ( 'MoreMsg'     , 15     , 5      , 'bold'        )
    call s:hy ( 'Repeat'      , 13     , 'none' , 'none'         )
    call s:hy ( 'SignColumn'  , 5      , 'none' , 'none'         )
    call s:hy ( 'WildMenu'    , 'none' , 'none' , 'bold,inverse' )

" 6      14{{{1
    call s:hy ( 'Class'        , 14  , 'none' , 'none' )
    call s:hy ( 'Label'       , '14'     , 'none' , 'none'         )
    call s:hy ( 'Type'       , '61'  , 'none' , 'none' )
    call s:hy ( 'SpecialKey' , 6  , 'none' , 'none' )
    call s:hy ( 'Keyword'   , '62', 'none' , 'none' )
    call s:hy ( 'Statement' , 14 , 'none' , 'none')

" 7      15{{{1
    call s:hy ( 'Question'     , 7  , 0      , 'inverse' )

" 0       8{{{1
    call s:hy ( 'StatuslineNc'  , g:accentColor               , 'fg0'        , 'none'         )
    call s:hy ( 'VertSplit'     , g:accentColor               , 'none'          , 'bold'         )
    call s:hy ( 'LineNr'        , g:accentColor               , 'none'          , 'none'         )


" Dynamic:x{{{1
    call s:hy ( 'FoldColumn'    , g:accentColorLight , 'none'        , 'none'         )
    call s:hy ( 'StatusLine'    , g:accentColor      , 'none'        , 'none'         )
    call s:hy ( 'ModeMsg'       , g:accentColor      , 'none'        , 'inverse,bold' )
    call s:hy ( 'PmenuSbar'     , g:accentColor      , 'none'        , 'inverse'      )
    call s:hy ( 'PMenuThumb'    , g:accentColor      , 'none'        , 'inverse'      )
    call s:hy ( 'LogicalBuffer' , 0 , "71", 'bold'         )

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
    hi link jsonQuote         ParenChars
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

    hi link tapTestResultsOKRegion GitGutterAdd
    hi link tapTestResultsNotOKRegion GitGutterDiff

    hi link tapTest Title

" }}}
" Plugin: & {{{1

call s:hy('GrepperCurrent', 0, 'GrepSearchC', 'none')
call s:hy('GrepperMatch'  , 0, 'GrepSearch' , 'none')
