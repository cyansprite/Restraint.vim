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
let &pumblend=1
let &winblend=27
let s:blend=20

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
            \ "fg"   : '#0a0804',
            \ "fg0"  : '#020100',
            \ "bg"   : '#bfbcb0',
            \ "bg0"  : '#8f8c80',
            \ '00'   : '#100f0a',
            \ '01'   : '#20201a',
            \ '02'   : '#2a2820',
            \ '03'   : '#4a3a20',
            \ 0      : '#000000',
            \ 8      : '#5a5a5a',
            \ 1      : '#d73f3f',
            \ 9      : '#cc295f',
            \ 2      : '#137F34',
            \ 10     : '#53BA34',
            \ '30'   : '#8f4000',
            \ '31'   : '#a7a24d',
            \ 3      : '#a7a22d',
            \ 11     : '#B85A05',
            \ 4      : '#0480a0',
            \ 12     : '#0480f0',
            \ '51'   : '#922E92',
            \ 5      : '#522E92',
            \ 13     : '#bf00bf',
            \ '61'   : '#05985A',
            \ 6      : '#2d9292',
            \ 14     : '#00a0a0',
            \ '71'   : '#8A8A65',
            \ '72'   : '#9A9A75',
            \ 7      : '#8d8d8d',
            \ 15     : '#ffffff',
            \ 'none' : 'none',
            \ 'Operator' : '#CF8A00',
            \ 'ParenChars' : '#ffffcf',
            \ 'MatchParen' : '#cc00cc'
            \ }

if hostname() == "cinder"
    let s:colorList = s:colorList_new
    let g:accentColorLight = 1
elseif hostname() == "mojajojo"
    let s:colorList = s:colorList_work
    let g:accentColorLight = 5
    let g:accentColor = 13
endif

if &bg == "dark"
    let temp = s:colorList['fg']
    let temp0 = s:colorList['fg0']
    let s:colorList['fg'] = s:colorList['bg']
    let s:colorList['fg0'] = s:colorList['bg0']
    let s:colorList['bg'] = temp
    let s:colorList['bg0'] = temp0
else
endif

" unlet g:accentColor
"let g:accentColor = get(g:, "accentColor", luaeval('math.random (9, 14)'))
" let g:accentColor = luaeval('math.random (9, 14)')
"let g:accentColorLight = g:accentColor - 8
" let g:accentColorLight = luaeval('math.random (1, 6)')
" let g:accentColorLight = get(g:, "accentColorLight", 3)
let g:accentColor = '72'
let g:accentColorLight = '71'
let g:colors_name = "restraint"

let s:colorList['Search']      = '#888800'
let s:colorList['SearchC']     = '#ffff00'
let s:colorList['GrepSearch']  = '#886800'
let s:colorList['GrepSearchC'] = '#ffdf00'

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
        exec 'hi '.a:name.' ctermfg='.s:cterm(a:f).' ctermbg='.s:cterm(a:b).' cterm='.a:t. ' guifg='.s:colorList[a:f].' guibg='.s:colorList[a:b].' gui='.a:t . ' blend=' s:blend
    cat /.*/
        echohl ErrorMsg | echom v:exception . 'in :' . v:throwpoint . ' for ' . a:name | echohl None
    endtry
endfunc

" EasyAlign*/,\|)/

" Special:|{{{1
    call s:hy ( 'Search'       , 0            , 'Search'     , 'none' )
    call s:hy ( 'SearchC'      , 0            , 'SearchC'    , 'none' )
    call s:hy ( 'MatchParen'   , 15           , 'MatchParen' , 'none' )
    call s:hy ( 'BraceChars'   , 'ParenChars' , 'none'       , 'none' )
    call s:hy ( 'BracketChars' , 'ParenChars' , 'none'       , 'none' )
    call s:hy ( 'ParenChars'   , 'ParenChars' , 'none'       , 'none' )
    call s:hy ( 'Operator'     , 'Operator'   , 'none'       , 'bold' )

    let s:colors = [ 1, 2, 3, 4, 5, 6, 5, 4, 3, 2, 1 ]

    if &bg == "dark"
        " I'm not sure why I used User4 for the tabline fill... but I did
        call s:hy ("User4", 'none', '00', 'bold')
        call s:hy ( 'Folded'       , g:accentColor , '01', 'none'         )
        call s:hy ( 'Whitespace'   , 1             , 0 , 'inverse'      )
        call s:hy ( 'Visual'       , 'none'        , '01', 'none'         )
        call s:hy ( 'CursorLineNr' , g:accentColor , '01' , 'bold'         )
        call s:hy ( 'CursorLine'   , 'none'        , '00' , 'none'         )
        call s:hy ( 'Pmenu'        , g:accentColor , 0 , 'none'         )
        call s:hy ( 'PmenuSel'     , g:accentColor , 0 , 'inverse,bold' )
        call s:hy ( 'Comment'      , '03'          , 'none', 'none'       )
        call s:hy ( 'Title'        , 5             , 0 , 'none'         )

        call s:hy ( 'InnerScope'   , 'none'        , '02' , 'none'         )
        call s:hy ( 'OuterScope'   , 'none'        , '00' , 'none'         )
        call s:hy ( 'LinkScope'    , 'none'        , '71' , 'none'         )

        call s:hy ( 'LspReferenceText'  , 'none' , 0 , 'bold' )
        call s:hy ( 'LspReferenceRead'  , 'none' , 0 , 'bold' )
        call s:hy ( 'LspReferenceWrite' , 'none' , 0 , 'bold' )

        call s:hy ( 'NormalMode'   , '71'          , '00' , 'bold'         )
        call s:hy ( 'InsertMode'   , 11            , '00' , 'bold'         )
        call s:hy ( 'VisualMode'   , 10            , '00' , 'bold'         )
        call s:hy ( 'SelectMode'   , 15            , '00' , 'bold'         )
        call s:hy ( 'CommandMode'  , 9             , '00' , 'bold'         )
        call s:hy ( 'TerminalMode' , 12            , '00' , 'bold'         )
        call s:hy ( 'OtherMode'    , 8             , '00' , 'bold'         )
        call s:hy ( 'ReplaceMode'  , 1             , '00' , 'bold'         )

        call s:hy ( 'NormalMode1'   , '71'             , '01' , 'bold'         )
        call s:hy ( 'InsertMode1'   , 11            , '01' , 'bold'         )
        call s:hy ( 'VisualMode1'   , 10            , '01' , 'bold'         )
        call s:hy ( 'SelectMode1'   , 15             , '01' , 'bold'         )
        call s:hy ( 'CommandMode1'  , 9             , '01' , 'bold'         )
        call s:hy ( 'TerminalMode1' , 12            , '01' , 'bold'         )
        call s:hy ( 'OtherMode1'    , 8             , '01' , 'bold'         )
        call s:hy ( 'ReplaceMode1'  , 1             , '01' , 'bold'         )

        call s:hy ( 'NormalMode2'   , '71'          , '02' , 'bold'         )
        call s:hy ( 'InsertMode2'   , 11            , '02' , 'bold'         )
        call s:hy ( 'VisualMode2'   , 10            , '02' , 'bold'         )
        call s:hy ( 'SelectMode2'   , 15             , '02' , 'bold'         )
        call s:hy ( 'CommandMode2'  , 9             , '02' , 'bold'         )
        call s:hy ( 'TerminalMode2' , 12            , '02' , 'bold'         )
        call s:hy ( 'OtherMode2'    , 8             , '02' , 'bold'         )
        call s:hy ( 'ReplaceMode2'  , 1             , '02' , 'bold'         )

        for x in range(0, 9)
            call s:hy ("Logical".string(x), s:colors[x], 0, 'bold')
        endfor

        for x in range(0, 9)
            call s:hy ("Logical".string(x), s:colors[x], 0, 'bold')
        endfor

        call s:hy ( 'GitGutterDelete '      , 9 , '00' , 'none' )
        call s:hy ( 'GitGutterAdd    '      , 10, '00' , 'none' )
        call s:hy ( 'GitGutterChangeDelete' , 11, '00' , 'none' )
        call s:hy ( 'GitGutterChange '      , 12, '00' , 'none' )

    else
        " I'm not sure why I used User4 for the tabline fill... but I did
        call s:hy ("User4", 'none', 15, 'bold')

        call s:hy ( 'Folded'       , g:accentColor , '151' , 'none'         )
        call s:hy ( 'Visual'       , 15            , 0  , 'none'         )
        call s:hy ( 'Whitespace'   , 1             , 15 , 'inverse'      )
        call s:hy ( 'CursorLineNr' , g:accentColor , 15 , 'bold'         )
        call s:hy ( 'CursorLine'   , 'none'        , 15 , 'none'         )
        call s:hy ( 'Pmenu'        , g:accentColor , 15 , 'none'         )
        call s:hy ( 'PmenuSel'     , g:accentColor , 15 , 'inverse,bold' )
        call s:hy ( 'Comment'      , 8             , 15 , 'none'         )
        call s:hy ( 'Title'        , 5             , 15 , 'none'         )

        call s:hy ( 'InnerScope'   , 'none'        , 15 , 'none'         )
        call s:hy ( 'OuterScope'   , 'none'        , 15 , 'none'         )
        call s:hy ( 'LinkScope'    , 'none'        , 15 , 'none'         )

        call s:hy ( 'LspReferenceText'  , 'none' , 15 , 'bold' )
        call s:hy ( 'LspReferenceRead'  , 'none' , 15 , 'bold' )
        call s:hy ( 'LspReferenceWrite' , 'none' , 15 , 'bold' )

        call s:hy ( 'NormalMode'   , g:accentColor , 15 , 'bold'         )
        call s:hy ( 'InsertMode'   , 14            , 15 , 'bold'         )
        call s:hy ( 'VisualMode'   , 10            , 15 , 'bold'         )
        call s:hy ( 'SelectMode'   , 7             , 15 , 'bold'         )
        call s:hy ( 'CommandMode'  , 13            , 15 , 'bold'         )
        call s:hy ( 'TerminalMode' , 12            , 15 , 'bold'         )
        call s:hy ( 'OtherMode'    , 8             , 15 , 'bold'         )
        call s:hy ( 'ReplaceMode'  , 1             , 15 , 'bold'         )

        for x in range(0, 9)
            call s:hy ("Logical".string(x), s:colors[x], 15, 'bold')
        endfor

        for x in range(0, 9)
            call s:hy ("Logical".string(x), s:colors[x], 15, 'bold')
        endfor
    endif

" Nons:   -{{{1
    call s:hy ( 'Normal'       , 'fg'   , 'bg'   , 'none'    )
    call s:hy ( 'NormalNC'     , 'fg0'  , 'bg0' , 'none'    )
    call s:hy ( 'UnderLine'    , 'none' , 'none' , 'none'    )
    call s:hy ( 'CursorColumn' , 'none' , 'none' , 'none'    )
    call s:hy ( 'Cursor'       , 'none' , 'none' , 'inverse' )
    call s:hy ( 'QuickFixLine' , 'none' , 'none' , 'inverse' )
    call s:hy ( 'DiffChange'   , 'none' , 'none' , 'none'    )
    call s:hy ( 'ColorColumn'  , 'none' , '00'   , 'none'    )

"1       9{{{1
    call s:hy ( 'Error'       , 1 , 'none' , 'none' )
    call s:hy ( 'DiffDelete'  , 7 , 1      , 'none' )
    call s:hy ( 'SpellBad'    , 7 , 1      , 'none' )
    call s:hy ( 'ErrorMsg'    , 15, 1      , 'bold' )
    call s:hy ( 'DiffRemoved' , 1 , 'none' , 'none' )
    call s:hy ( 'Function'    , 9 , 'none' , 'none' )
    call s:hy ( 'Member'      , 1 , 'none' , 'none' )
    call s:hy ( 'Number'      , 1   , 'none' , 'none')
    call s:hy ( 'Float'       , 1   , 'none' , 'none')

" 2      10{{{1
    call s:hy ( 'StorageClass' , 10     , 'none' , 'none'    )
    call s:hy ( 'String'       , 2      , 'none' , 'none'    )
    call s:hy ( 'DiffAdd'      , 2      , 0      , 'inverse' )
    call s:hy ( 'diffAdded'    , 2      , 0      , 'inverse' )
    call s:hy ( 'QShit'        , 2      , 'none' , 'none'    )


" 3      11{{{1
    call s:hy ( 'Directory'    , 3      , 'none' , 'none'              )
    call s:hy ( 'Todo'         , 'none' , 11     , 'bold'              )
    call s:hy ( 'WarningMsg'   , 15     , 11     , 'bold'              )
    call s:hy ( 'Special'      , 11      , 'none' , 'none'              )
    call s:hy ( 'IncSearch'    , 0      , 3      , 'underline'         )
    call s:hy ( 'Conditonal'  , 3      , 'none' , 'none' )
    call s:hy ( 'Ignore'       , 3      , 'none' , 'none'              )
    call s:hy ( 'Delimeter'    , 3      , 'none' , 'none'              )
    call s:hy ( 'Statement' , '31'  , 'none' , 'none' )

" 4      12{{{1
    call s:hy ( 'NonText'   , 4  , 'none' , 'none' )
    call s:hy ( 'PreCondit' , 4  , 'none' , 'none' )
    call s:hy ( 'Constant'  , 12 , 'none' , 'none' )
    call s:hy ( 'DiffText'  , 15  , 4     , 'none' )
    call s:hy ( 'Keyword'   , 12 , 'none' , 'none' )

" 5      13{{{1
    call s:hy ( 'TypeDef'     , 5      , 'none' , 'none'         )
    call s:hy ( 'Label'       , 13     , 'none' , 'none'         )
    call s:hy ( 'Boolean'     , 5      , 'none' , 'none'         )
    call s:hy ( 'Character'   , 5      , 'none' , 'none'         )
    call s:hy ( 'SpecialChar' , 5      , 'none' , 'none'         )
    call s:hy ( 'diffSubname' , 5      , 'none' , 'none'         )
    call s:hy ( 'PreProc'     , 5      , 'none' , 'none'         )
    call s:hy ( 'MoreMsg'     , 15      , 5      , 'bold'        )
    call s:hy ( 'Repeat'      , 13     , 'none' , 'none'         )
    call s:hy ( 'UserFunction', 13     , 'none' , 'none'         )
    call s:hy ( 'SignColumn'  , 5      , 'none' , 'none'         )
    call s:hy ( 'WildMenu'    , 'none' , 'none' , 'bold,inverse' )

" 6      14{{{1
    call s:hy ( 'Type'       , '61'  , 'none' , 'none' )
    call s:hy ( 'SpecialKey' , 6  , 'none' , 'none' )
    call s:hy ( 'Identifier'  , 14      , 'none' , 'none'         )

" 7      15{{{1
    call s:hy ( 'Question'     , 7  , 0      , 'inverse' )
    call s:hy ( 'Class'        , 7  , 'none' , 'none' )

" 0       8{{{1
    call s:hy ( 'StatuslineNc'  , '02'               , '00'        , 'none'         )
    call s:hy ( 'VertSplit'     , '02'               , '00'          , 'bold'         )
    call s:hy ( 'LineNr'        , '02'               , '00'          , 'none'         )


" Dynamic:x{{{1
    call s:hy ( 'FoldColumn'    , g:accentColorLight , 'none'        , 'none'         )
    call s:hy ( 'EndOfBuffer'   , g:accentColor      , 'none'        , 'bold'         )
    call s:hy ( 'StatusLine'    , g:accentColor      , 'none'        , 'none'         )
    call s:hy ( 'ModeMsg'       , g:accentColor      , 'none'        , 'inverse,bold' )
    call s:hy ( 'PmenuSbar'     , g:accentColor      , 'none'        , 'inverse'      )
    call s:hy ( 'PMenuThumb'    , g:accentColor      , 'none'        , 'inverse'      )
    call s:hy ( 'LogicalBuffer' , g:accentColor      , '01'          , 'bold'         )

" Relink: >{{{1
    hi link vimCommentTitle Title
    hi link vimCommentTitleLeader Title
    hi link vimIsCommand    Constant
    hi link vimHighlight    Member
    hi link vimHighClear    Identifier
    hi link vimUserFunc     UserFunction
    hi link vimFunction     UserFunction
    hi link vimContinue     ParenChars
    hi link vimParenSep     ParenChars
    hi link vimExecute      Operator
    hi link helpExample     Title
    hi link csClass         Structure
    hi link csType          Member
    hi link cConditional    Conditonal
    hi link cRepeat         Repeat
    hi link StartifyPath    StorageClass
    hi link cppSTLnamespace Label
    hi link cCustomMemVar   Member
    hi link cCustomClass    Class
    hi link cRepeat         Repeat
    hi link pythonDecoratorName Constant
    hi link pythonBuiltin       Label

    hi link LspDiagnosticsDefaultError ErrorMsg
    hi link LspDiagnosticsDefaultWarning WarningMsg
    hi link LspDiagnosticsDefaultInformation MoreMsg
    hi link LspDiagnosticsDefaultHint Question

" }}}
" Plugin: & {{{1

call s:hy('GrepperCurrent', 0, 'GrepSearchC', 'none')
call s:hy('GrepperMatch'  , 0, 'GrepSearch' , 'none')
