" Vim:          Color file / Generate Color file if debug on.
" Maintainer:   Jojo Brandon Coffman <https://github.com/cyansprite>
" Title:        Restraint - WIP
" Description:  Theme based on term colors and espurr.
" Requirements: Term Colors for terminal or GUI color support.
" Note:         *Xresources Not Updated*
"               Don't use more than 16 term colors
"               Use light colros ontop of dark colros for normal, inverse for
"               selected.

" Setup   +{{{1
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "restraint"

" If you want it to spit out what's happening/generate a color file.
let s:debug = 0

" Function to make life easier.
func! s:hy(name,cf,cb,gf,gb,t)
    if s:debug
        echom 'hi '.a:name.' ctermfg='.a:cf.' ctermbg='.a:cb.' cterm='.a:t.
                      \    ' guifg='  .a:gf.' guibg='  .a:gb.' gui='   a:t
    endif
    exec 'hi '.a:name.' ctermfg='.a:cf.' ctermbg='.a:cb.' cterm='.a:t.
                 \    ' guifg='  .a:gf.' guibg='  .a:gb.' gui='   a:t
endfunc

" GuiDef: o FIXME{{{1
    let s:fg        = '#000000'
    let s:bg        = '#ffffff'
    let s:comment   = '#5f5f00'
    let s:visual    = '#d7d7ff'

    let s:underline = '#505000'
    let s:italic    = '#aa4444'
    let s:bold      = '#9595ac'

    let s:color0    = '#112511'
    let s:color1    = '#840000'
    let s:color2    = '#008400'
    let s:color3    = '#846e00'
    let s:color4    = '#000084'
    let s:color5    = '#5500aa'
    let s:color6    = '#008484'
    let s:color7    = '#65657c'
    let s:color8    = '#566956'
    let s:color9    = '#b70000'
    let s:color10   = '#428400'
    let s:color11   = '#b76a00'
    let s:color12   = '#005bb7'
    let s:color13   = '#840042'
    let s:color14   = '#008463'
    let s:color15   = '#9595ac'

" If you don't like grey, change these.
let s:xGrey = {
    \231: '#ffffff',
    \232: '#080808',
    \233: '#121212',
    \234: '#1c1c1c',
    \235: '#262626',
    \236: '#303030',
    \237: '#3a3a3a',
    \238: '#444444',
    \239: '#4e4e4e',
    \240: '#585858',
    \241: '#606060',
    \242: '#666666',
    \243: '#767676',
    \244: '#808080',
    \245: '#8a8a8a',
    \246: '#949494',
    \247: '#9e9e9e',
    \248: '#a8a8a8',
    \249: '#b2b2b2',
    \250: '#bcbcbc',
    \251: '#c6c6c6',
    \252: '#d0d0d0',
    \253: '#dadada',
    \254: '#e4e4e4',
    \255: '#eeeeee'
\}

" Nons:   -{{{1
    call s:hy ( 'Normal'       , 'none' , 'none' , s:fg     , s:bg         , 'none'           )
    call s:hy ( 'UnderLine'    , 'none' , 'none' , s:fg     , s:bg         , 'underline'      )
    call s:hy ( 'FoldColumn'   , 8      , 0      , s:bold   , s:bg         , 'none'           )
    call s:hy ( 'QuickFixLine' , 'none' , 'none' , 'none'   , 'none'       , 'inverse'        )
    call s:hy ( 'CursorLine'   , 'none' , 'none' , 'none'   , 'none'       , 'none'           )
    call s:hy ( 'CursorColumn' , 'none' , 'none' , 'none'   , 'none'       , 'none'           )
    call s:hy ( 'EndOfBuffer'  , 0      , 0      , s:bg     , s:bg         , 'none'           )
    call s:hy ( 'Cursor'       , 'none' , 'none' , 'none'   , 'none'       , 'inverse'        )
    call s:hy ( 'ColorColumn'  , 'none' , 'none' , 'none'   , s:xGrey[253] , 'none'           )
    call s:hy ( 'SignColumn'   , 8      , 0      , s:color8 , 'none'       , 'none'           )
    call s:hy ( 'StatuslineNc' , 'none' , 'none' , 'none', 'none', 'none'                     )

" Red:    1{{{1
    call s:hy ( 'Constant'    , 1 , 'none' , s:color5     , 'bg'      , 'none'         )
    call s:hy ( 'Boolean'     , 1 , 'none' , s:color1     , 'bg'      , 'none'         )
    call s:hy ( 'Number'      , 1 , 'none' , s:color5     , 'bg'      , 'none'         )

    call s:hy ( 'Keyword'     , 9 , 'none' , s:color9     , 'bg'      , 'none'         )

    call s:hy ( 'Error'       , 9 , 1      , s:color9     , 'none'    , 'none' )
    call s:hy ( 'ErrorMsg'    , 9 , 1      , s:color9     , 'none'    , 'none'         )
    call s:hy ( 'Whitespace'  , 7 , 8      , s:color9     , 'none'    , 'none'         )
    call s:hy ( 'DiffDelete'  , 9 , 1      , s:xGrey[231] , s:color10 , 'none' )
    call s:hy ( 'DiffRemoved' , 9 , 1      , s:color9     , 'none'    , 'none'         )

    call s:hy ( 'ModeMsg'     , 9 , 1      , s:bold       , 'none'    , 'none'         )

" Green:  2{{{1
    call s:hy ( 'Structure'    , 10 , 'none' , s:color2     , 'bg'      , 'none'         )
    call s:hy ( 'StorageClass' , 2  , 'none' , s:color11    , 'bg'      , 'none'         )

    call s:hy ( 'DiffAdd'      , 10 , 2      , s:xGrey[231] , s:color10 , 'none' )
    call s:hy ( 'diffAdded'    , 10 , 2      , s:xGrey[231] , s:color10 , 'none'         )
    call s:hy ( 'Operator'     , 10 , 'none' , s:color14    , 'bg'      , 'none'         )
    call s:hy ( 'Visual'       , 10 , 2      , s:xGrey[255] , s:color7  , 'none'         )


" Yellow: 3{{{1
    call s:hy ( 'PreCondit'  , 3  , 'none' , s:color3  , 'bg'         , 'none'         )
    call s:hy ( 'TypeDef'    , 3  , 'none' , s:color3  , 'bg'         , 'none'         )
    call s:hy ( 'Label'      , 3  , 'none' , s:color12 , 'bg'         , 'none'         )

    call s:hy ( 'Directory'  , 11 , 'none' , s:color11 , 'bg'         , 'none'         )
    call s:hy ( 'Statement'  , 11 , 'none' , s:color5  , 'bg'         , 'none'         )
    call s:hy ( 'Todo'       , 11 , 'none' , s:color11 , 'bg'         , 'bold'         )

    call s:hy ( 'WarningMsg' , 11 , 3      , s:color11 , s:xGrey[231] , 'none'         )
    call s:hy ( 'Search'     , 11 , 3      , 'none'    , s:xGrey[253] , 'none'         )
    call s:hy ( 'SearchC'    , 3  , 11     , 'none'    , s:xGrey[253] , 'none'         )
    call s:hy ( 'IncSearch'  , 3  , 11     , s:bold    , s:xGrey[236] , 'underline'    )


" Blue:   4{{{1
    call s:hy ( 'NonText'     , 4  , 'none' , s:color4  , 'bg'         , 'none'         )
    call s:hy ( 'SpecialChar' , 4  , 'none' , s:color4  , 'bg'         , 'none'         )
    call s:hy ( 'Comment'     , 4  , 'none' , s:color4  , 'bg'         , 'italic'       )
    call s:hy ( 'Identifier'  , 12 , 'none' , s:color12 , 'bg'         , 'none'         )
    call s:hy ( 'MoreMsg'     , 12 , 4      , s:color3  , s:xGrey[231] , 'none'         )
    call s:hy ( 'StatusLine'  , 12 , 4      , s:bold    , 'none'       , 'none'         )

" Purple: 5{{{1
    call s:hy ( 'Delimeter'    , 5  , 'none' , s:color5  , 'bg'   , 'none' )
    call s:hy ( 'Special'      , 5  , 'none' , s:color5  , 'bg'   , 'none' )
    call s:hy ( 'String'       , 5  , 'none' , s:color1  , 'bg'   , 'none' )

    call s:hy ( 'Class'        , 13 , 'none' , s:color13 , 'bg'   , 'none' )
    call s:hy ( 'Float'        , 13 , 'none' , s:color13 , 'bg'   , 'none' )
    call s:hy ( 'Title'        , 13 , 'none' , s:color13 , 'bg'   , 'none' )

    call s:hy ( 'Question'     , 13 , 5      , s:color13 , 'bg'   , 'none' )
    call s:hy ( 'LineNr'       , 13 , 5      , s:color8  , 'none' , 'none' )
    call s:hy ( 'CursorLineNr' , 5  , 13     , s:bold    , 'none' , 'none' )

" Cyan:   6{{{1
    call s:hy ( 'Function'   , 6      , 'none' , s:color6  , 'bg'         , 'none' )
    call s:hy ( 'Character'  , 6      , 'none' , s:color6  , 'bg'         , 'none' )
    call s:hy ( 'SpecialKey' , 14     , 'none' , s:color4  , 'bg'         , 'none' )
    call s:hy ( 'Member'     , 14     , 'none' , s:color14 , 'bg'         , 'none' )
    call s:hy ( 'Repeat'     , 14     , 'none' , s:color13 , 'bg'         , 'none' )

    call s:hy ( 'Pmenu'      , '14'   , '6'    , s:color7  , s:color15    , 'none' )
    call s:hy ( 'PmenuSbar'  , 'none' , 6      , 'none'    , s:xGrey[249] , 'none' )
    call s:hy ( 'PMenuThumb' , 'none' , 14     , s:bold    , s:xGrey[255] , 'none' )
    call s:hy ( 'PmenuSel'   , '15'   , '14'   , s:bold    , s:xGrey[255] , 'none' )


" Grey:   7{{{1
    call s:hy ( 'Type'       , 15 , 'none' , s:color15 , 'bg' , 'none'        )

    call s:hy ( 'Ignore'     , 7  , 'none' , s:color7  , 'bg'   , 'italic'    )
    call s:hy ( 'Conditonal' , 7  , 'none' , s:color7  , 'bg'   , 'none'      )
    call s:hy ( 'PreProc'    , 7  , 'none' , s:color7  , 'bg'   , 'none'      )
    call s:hy ( 'VertSplit'  , 10 , 2      , s:color0  , 'bg'   , 'none'      )

    call s:hy ( 'MatchParen' , 'none' , 8, 'none'    , 'none' , 'none'        )

" Black:  0{{{1
    call s:hy ( 'Folded'       , 8       , 0       , s:bold       , s:bg         , 'none'                   )

" Accent: *{{{1
    call s:hy ( 'DiffChange' , 'none ' , 'none'  , s:xGrey[245] , 'none'       , 'none' )
    call s:hy ( 'WildMenu'   , 'none'  , 'none ' , s:bold       , s:xGrey[255] , 'none' )
    call s:hy ( 'DiffText'   , 12      , 4       , s:xGrey[231] , s:color10    , 'none' )

" Relink  >{{{1
    hi link vimCommentTitle Title
    hi link vimIsCommand    Constant
    hi link vimHighlight    Member
    hi link vimParenSep     Operator
    hi link csClass         Structure

" }}}
" Plugin: & {{{1
    call s:hy('logicalbuffer'         , 15 , 'none' , s:bold    , s:bg         , 'bold,inverse' )
    call s:hy('logicalmodified'       , 2  , 'none' , s:color2  , s:xGrey[236] , 'bold'         )
    call s:hy('logicalreadonly'       , 1  , 'none' , s:color1  , s:xGrey[236] , 'bold'         )
    call s:hy('logical0'              , 6  , 'none' , s:color14 , 'none'       , 'bold'         )
    call s:hy('logical1'              , 5  , 'none' , s:color13 , 'none'       , 'bold'         )
    call s:hy('logical2'              , 4  , 'none' , s:color12 , 'none'       , 'bold'         )
    call s:hy('logical3'              , 3  , 'none' , s:color11 , 'none'       , 'bold'         )
    call s:hy('logical4'              , 2  , 'none' , s:color10 , 'none'       , 'bold'         )
    call s:hy('logical5'              , 1  , 'none' , s:color9  , 'none'       , 'bold'         )
    call s:hy('logical6'              , 1  , 'none' , s:color1  , 'none'       , 'none'         )
    call s:hy('logical7'              , 2  , 'none' , s:color2  , 'none'       , 'none'         )
    call s:hy('logical8'              , 3  , 'none' , s:color3  , 'none'       , 'none'         )
    call s:hy('logical9'              , 4  , 'none' , s:color4  , 'none'       , 'none'         )
    call s:hy('logical10'             , 5  , 'none' , s:color5  , 'none'       , 'none'         )
    call s:hy('logical11'             , 6  , 'none' , s:color6  , 'none'       , 'none'         )
    for i in range(0,15)
        exec printf("let g:terminal_colors%d=%d", i, i)
    endfor

    call s:hy('GitGutterAdd'          , 10  , 2      , s:color2  , 'none'       , 'none'         )
    call s:hy('GitGutterChange'       , 12  , 4      , s:color4  , 'none'       , 'none'         )
    call s:hy('GitGutterDelete'       , 9   , 1      , s:color1  , 'none'       , 'none'         )
    call s:hy('GitGutterChangeDelete' , 11  , 3      , s:color3  , 'none'       , 'none'         )

hi GrepperCurrent ctermfg=10 cterm=inverse,bold
hi GrepperMatch   ctermfg=11 cterm=inverse,bold

" try | call matchdelete(1065) | catch *
" endtry

" call matchadd('Error', "\\s\\+$", 100, 1065)
