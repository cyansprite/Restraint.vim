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
let s:blend=20
let &winblend=27
let s:blend=27

" Setup   +{{{1
hi clear
if exists("syntax_on")
    syntax reset
endif

let s:colorList = {
            \ "fg"   : '#181816',
            \ "bg"   : '#f2f2de',
            \ 0      : '#121211',
            \ 8      : '#808075',
            \ 1      : '#8c4646',
            \ 9      : '#ff4c96',
            \ 2      : '#1ba93e',
            \ 10     : '#6bce3e',
            \ 3      : '#acaa55',
            \ 11     : '#df8243',
            \ 4      : '#4b64bb',
            \ 12     : '#43a7de',
            \ 5      : '#af59b1',
            \ 13     : '#ef4cff',
            \ 6      : '#59b09f',
            \ 14     : '#40d6d3',
            \ 7      : '#c6c6b5',
            \ 15     : '#ffffea',
            \ 253    : '#eeeedd',
            \ 'none' : 'none'
            \ }

let s:colorList_work = {
            \ "fg"   : '#16130f',
            \ "bg"   : '#eeeee3',
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
            \ 253    : '#eeeedd',
            \ 'none' : 'none'
            \ }

if hostname() == "cinder"
    let s:colorList = s:colorList_work
    let g:accentColor = 9
elseif hostname() == "mojajojo"
    let s:colorList = s:colorList_work
    let g:accentColor = 13
endif

let g:colors_name = "restraint"

func! s:hy(name, f, b, t, ...)
    try
        " echom 'hi '.a:name.' ctermfg='.a:f.' ctermbg='.a:b.' cterm='.a:t. ' guifg='.s:colorList[a:f].' guibg='.s:colorList[a:b].' gui='.a:t . ' blend=' s:blend
        exec 'hi '.a:name.' ctermfg='.a:f.' ctermbg='.a:b.' cterm='.a:t. ' guifg='.s:colorList[a:f].' guibg='.s:colorList[a:b].' gui='.a:t . ' blend=' s:blend
    cat /.*/
        echohl ErrorMsg | echom v:exception . 'in :' . v:throwpoint . ' for ' . a:name | echohl None
    endtry
endfunc

" EasyAlign*/,\|)/

" Nons:   -{{{1
    call s:hy ( 'Normal'       , 'none'  , 'none' , 'none'    )
    call s:hy ( 'NormalNC'     , 'none'  , 'none' , 'none'    )
    call s:hy ( 'UnderLine'    , 'none'  , 'none' , 'none'    )
    call s:hy ( 'CursorColumn' , 'none'  , 'none' , 'none'    )
    call s:hy ( 'Cursor'       , 'none'  , 'none' , 'none'    )
    call s:hy ( 'StatuslineNc' , 'none'  , 'none' , 'none'    )
    call s:hy ( 'QuickFixLine' , 'none'  , 'none' , 'inverse' )

    call s:hy ( 'DiffChange'   , 'none' , 'none' , 'none'    )
    call s:hy ( 'ColorColumn'  , 'none'  , 'none' , 'none'    )

"1       9{{{1
    call s:hy ( 'Whitespace'  , 1 , 'none' , 'none'    )
    call s:hy ( 'Error'       , 1 , 'none' , 'none'    )
    call s:hy ( 'DiffDelete'  , 7 , 1      , 'none'    )
    call s:hy ( 'SpellBad'    , 7 , 1      , 'none'    )
    call s:hy ( 'ErrorMsg'    , 0 , 1      , 'none'    )
    call s:hy ( 'DiffRemoved' , 1 , 'none' , 'none'    )
    call s:hy ( 'Function'    , 9 , 'none' , 'none'    )

" 2      10{{{1
    call s:hy ( 'StorageClass' , 2      , 'none' , 'none'    )
    call s:hy ( 'Keyword'      , 2      , 'none' , 'none'    )
    call s:hy ( 'String'       , 2      , 'none' , 'none'    )
    call s:hy ( 'Folded'       , 'none' , 'none' , 'none'    )

    if &bg == "dark"
        call s:hy ( 'Visual' , 15 , 0 , 'none' )
    else
        call s:hy ( 'Visual' , 0 , 15 , 'none' )
    endif

    call s:hy ( 'DiffAdd'      , 2      , 0      , 'inverse' )
    call s:hy ( 'diffAdded'    , 2      , 0      , 'inverse' )
    call s:hy ( 'Number'       , 2      , 'none' , 'bold'    )
    call s:hy ( 'QShit'        , 2      , 'none' , 'none'    )

    call s:hy ( 'Float'        , 2      , 'none' , 'bold'    )
" 3      11{{{1
    call s:hy ( 'Directory'    , 3      , 'none' , 'none'              )
    call s:hy ( 'Todo'         , 11     , 'none' , 'inverse,bold'      )

    call s:hy ( 'WarningMsg'   , 3      , 'none' , 'inverse,bold'      )
    call s:hy ( 'Special'      , 3      , 'none' , 'none'              )
    call s:hy ( 'Search'       , 'none' , 'none' , 'inverse'           )
    call s:hy ( 'SearchC'      , 'none' , 'none' , 'underline,inverse' )
    call s:hy ( 'IncSearch'    , 0      , 3      , 'none'              )
    call s:hy ( 'BraceChars'   , 8      , 'none' , 'bold'              )
    call s:hy ( 'BracketChars' , 8      , 'none' , 'bold'              )
    call s:hy ( 'ParenChars'   , 8      , 'none' , 'bold'              )
    call s:hy ( 'Ignore'       , 3      , 'none' , 'none'              )
    call s:hy ( 'Delimeter'    , 3      , 'none' , 'none'              )
    call s:hy ( 'Statement'    , 3      , 'none' , 'none'              )

" 4      12{{{1
    call s:hy ( 'NonText'   , 4  , 'none' , 'none' )
    call s:hy ( 'PreCondit' , 4  , 'none' , 'none' )
    call s:hy ( 'Type'      , 4  , 'none' , 'none' )
    call s:hy ( 'Constant'  , 12 , 'none' , 'none' )
    call s:hy ( 'Member'    , 4  , 'none' , 'none' )
    call s:hy ( 'DiffText'  , 0  , 4      , 'none' )

" 5      13{{{1
    call s:hy ( 'TypeDef'     , 5      , 'none' , 'none'         )
    call s:hy ( 'Label'       , 5      , 'none' , 'none'         )
    call s:hy ( 'Boolean'     , 5      , 'none' , 'none'         )

    call s:hy ( 'Character'   , 5      , 'none' , 'none'         )
    call s:hy ( 'Identifier'  , 5      , 'none' , 'none'         )
    call s:hy ( 'SpecialChar' , 5      , 'none' , 'none'         )
    call s:hy ( 'Title'       , 5      , 'none' , 'none'         )
    call s:hy ( 'diffSubname' , 5      , 'none' , 'none'         )
    call s:hy ( 'PreProc'     , 5      , 'none' , 'none'         )
    call s:hy ( 'MoreMsg'     , 5      , 0      , 'inverse'      )
    call s:hy ( 'Repeat'      , 13     , 'none' , 'none'         )

    call s:hy ( 'SignColumn'  , 5      , 'none' , 'none'         )
    call s:hy ( 'WildMenu'    , 'none' , 'none' , 'bold,inverse' )

" 6      14{{{1
    call s:hy ( 'Operator'   , 6 , 'none' , 'bold' )
    call s:hy ( 'Class'      , 6 , 'none' , 'none' )
    call s:hy ( 'SpecialKey' , 6 , 'none' , 'none' )

" 7      15{{{1
    call s:hy ( 'Question'   , 7 , 0      , 'inverse' )
    call s:hy ( 'Conditonal' , 8 , 'none' , 'none'    )

" 0       8{{{1
    call s:hy ( 'MatchParen' , 'none' , 7 , 'none' )


" Dynamic x{{{1
    let g:accentColor = get(g:, "accentColor", 3)
    call s:hy ( 'FoldColumn'    , g:accentColor , 'none'        , 'none'         )
    call s:hy ( 'EndOfBuffer'   , g:accentColor , 'none'        , 'bold'         )
    call s:hy ( 'VertSplit'     , g:accentColor , g:accentColor , 'bold'         )
    call s:hy ( 'StatusLine'    , g:accentColor , 'none'        , 'none'         )
    call s:hy ( 'LineNr'        , g:accentColor , 'none'        , 'none'         )
    if &bg=="light"
        call s:hy ( 'CursorLineNr'  , g:accentColor , 15             , 'bold'         )
        call s:hy ( 'CursorLine'   , 'none'  , 15      , 'none'    )
    else
        call s:hy ( 'CursorLineNr'  , g:accentColor , 0             , 'bold'         )
        call s:hy ( 'CursorLine'   , 'none'  , 0      , 'none'    )
    endif
    call s:hy ( 'ModeMsg'       , g:accentColor , 'none'        , 'inverse,bold' )
    call s:hy ( 'PmenuSbar'     , g:accentColor , 'none'        , 'inverse'      )
    call s:hy ( 'PMenuThumb'    , g:accentColor , 'none'        , 'inverse'      )
    call s:hy ( 'LogicalBuffer' , 15             , g:accentColor , 'bold'        )

    if &bg=="light"
        call s:hy ( 'Pmenu'    , g:accentColor , 253 , 'none'         )
        call s:hy ( 'PmenuSel' , g:accentColor , 253 , 'inverse,bold' )
        call s:hy ( 'Comment'  , 8             , 253 , 'none'         )
    else
        call s:hy ( 'Pmenu'    , g:accentColor , 0 , 'none'         )
        call s:hy ( 'PmenuSel' , g:accentColor , 0 , 'inverse,bold' )
        call s:hy ( 'Comment'  , 8             , 0 , 'none'         )
    endif

" Relink  >{{{1
    hi link vimCommentTitle Title
    hi link vimIsCommand    Constant
    hi link vimHighlight    Member
    hi link vimParenSep     Operator
    hi link csClass         Structure
    hi link cConditional    Conditonal
    hi link cRepeat         Repeat
" }}}

" Plugin: & {{{1
call s:hy ( 'GitGutterDelete '      , 1 , 'none' , 'none' )
call s:hy ( 'GitGutterAdd    '      , 2 , 'none' , 'none' )
call s:hy ( 'GitGutterChange '      , 4 , 'none' , 'none' )
call s:hy ( 'GitGutterChangeDelete' , 3 , 'none' , 'none' )

let g:gitgutter_sign_added              = '+'
let g:gitgutter_sign_modified           = '~'
let g:gitgutter_sign_removed            = '_'
let g:gitgutter_sign_removed_first_line = '‾'
let g:gitgutter_sign_modified_removed   = '~_'

let s:colors = [ 1, 2, 3, 4, 5, 6, 5, 4, 3, 2, 1 ]
call reverse(s:colors)
for x in range(0,100)
    exec 'hi Logical'.x.' cterm=bold ctermfg=' . s:colors[x % len(s:colors)]
endfor
for x in range(0,100)
    exec 'hi LogicalTab'.x.' cterm=bold,inverse ctermbg=7 ctermfg=' . s:colors[x % len(s:colors)]
endfor

hi GrepperCurrent ctermfg=0 ctermbg=2 cterm=none
hi GrepperMatch   ctermfg=0 ctermbg=3 cterm=none

" TODO
if &bg == "dark"
    hi InnerScope ctermbg=236 guibg=#000000
    hi OuterScope ctermbg=239 guibg=#000000
    hi LinkScope  ctermbg=242 guibg=#000000
else
    hi InnerScope ctermbg=255 guibg=#ffffff
    hi OuterScope ctermbg=252 guibg=#ffffff
    hi LinkScope  ctermbg=250 guibg=#ffffff
endif

hi link csType          Member
