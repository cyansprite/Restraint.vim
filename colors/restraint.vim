" Vim:          Color file
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

func! s:hy(name, f, b, t)
    exec 'hi '.a:name.' ctermfg='.a:f.' ctermbg='.a:b.' cterm='.a:t
endfunc

" Nons:   -{{{1
    call s:hy ('Normal'       , 'none'  , 'none' , 'none' )
    call s:hy ('UnderLine'    , 'none'  , 'none' , 'none' )
    call s:hy ('CursorColumn' , 'none'  , 'none' , 'none' )
    call s:hy ('Cursor'       , 'none'  , 'none' , 'none' )
    call s:hy ('StatuslineNc' , '6'     , 'none' , 'none' )
    call s:hy ('QuickFixLine' , 'none'  , 'none' , 'inverse' )

    call s:hy ('EndOfBuffer'  , '0'     , '0'    , 'none' )
    call s:hy ('DiffChange'   , 'none ' , '0'    , 'none' )
    call s:hy ('CursorLine'   , 'none'  , 'none' , 'none' )

"1       9{{{1
    call s:hy ( 'Comment'     , 8      , 'none' , 'none'          )
    call s:hy ( 'Whitespace'  , 9  , 0      , 'none' )
    call s:hy ( 'Error'       , 9  , 'none' , 'none' )
    call s:hy ( 'Number'      , 1  , 'none' , 'none' )
    call s:hy ( 'Float'       , 9  , 'none' , 'none' )
    call s:hy ( 'DiffDelete'  , 15 , 1      , 'none' )
    call s:hy ( 'ErrorMsg'    , 15 , 1      , 'none' )
    call s:hy ( 'DiffRemoved' , 15 , 1      , 'none' )

" 2      10{{{1
    call s:hy ( 'StorageClass' , 10      , 'none' , 'none'    )
    call s:hy ( 'Keyword'      , 2     , 'none' , 'none'    )
    call s:hy ( 'Repeat'     , 7     , 'none' , 'none' )
    call s:hy ( 'String'     , 10      , 'none' , 'none' )

    call s:hy ( 'Folded'       , 2      , 'none' , 'none'    )
    call s:hy ( 'FoldColumn'   , 2      , 'none' , 'none'    )
    call s:hy ( 'Visual'       , 'none' , 'none' , 'inverse' )
    call s:hy ( 'VertSplit'    , 14      , 'none' , 'bold'    )
    call s:hy ( 'DiffAdd'      , 0      , 2      , 'none'    )

" 3      11{{{1
    call s:hy ( 'Boolean'     , 3  , 'none' , 'none' )
    call s:hy ( 'Constant'    , 11  , 'none' , 'bold' )
    call s:hy ( 'MatchParen' , 11     , 'none' , 'bold,underline' )

    call s:hy ( 'Directory'  , 11     , 'none' , 'none'           )
    call s:hy ( 'Todo'       , 11     , 'none' , 'bold'           )

    call s:hy ( 'WarningMsg' , 3      , 'none' , 'inverse,bold'   )
    call s:hy ( 'Search'     , 'none' , 'none' , 'inverse,bold'   )
    call s:hy ( 'SearchC'    , 15     , 5, 'bold' )
    call s:hy ( 'IncSearch'  , 0      , 3      , 'underline'      )

" 4      12{{{1
    call s:hy ( 'NonText'      , 12 , 'none' , 'none'         )
    call s:hy ( 'Special'      , 12 , 'none' , 'none'         )
    call s:hy ( 'Label'        , 4  , 'none' , 'none'        )
    call s:hy ( 'PreCondit'    , 4  , 'none' , 'none'         )
    call s:hy ( 'TypeDef'      , 4  , 'none' , 'none'         )
    call s:hy ( 'DiffText'     , 'none' , 8      , 'none' )

" 5      13{{{1
    call s:hy ( 'Pmenu'      , 'none' , 'none', 'bold' )
    call s:hy ( 'PmenuSbar'  , 'none' , 8     , 'none' )
    call s:hy ( 'PmenuSel'   , 'none' , 'none', 'bold,inverse' )
    call s:hy ( 'PMenuThumb' , 'none' , 7     , 'none' )
    call s:hy ( 'Conditonal' , 15      , 'none' , 'bold' )

    call s:hy ( 'Function'   , 13      , 'none' , 'none'    )
    call s:hy ( 'Character'  , 13     , 'none' , 'none' )
    call s:hy ( 'SpecialChar', 13     , 'none' , 'none' )
    call s:hy ( 'Title'      , 13     , 'none' , 'none' )

    call s:hy ( 'StatusLine' , 'none'      , 'none' , 'bold' )
    call s:hy ( 'StatusLineAdd' , '2'      , 'none' , 'none' )
    call s:hy ( 'LineNr'       , 'none'  , 'none' , 'bold' )
    call s:hy ( 'CursorLineNr' , 'none'  , 'none' , 'bold,inverse' )

    call s:hy ( 'SignColumn' , 5      , 'none' , 'none' )
    call s:hy ( 'WildMenu'   , 'none' , 'none' , 'bold,inverse' )

" 6      14{{{1
    call s:hy ( 'Member'       , 6  , 'none' , 'none' )
    call s:hy ( 'Statement'    , 6  , 'none' , 'bold' )

    call s:hy ( 'Identifier'   , 14 , 'none' , 'none' )
    call s:hy ( 'Class'        , 6 , 'none' , 'none' )

    call s:hy ( 'SpecialKey'   , 14 , 'none' , 'none' )
    call s:hy ( 'ModeMsg'      , 'none' , 'none' , 'bold' )


" 7      15{{{1
    call s:hy ( 'BraceChars'   , 7  , 'none' , 'none' )
    call s:hy ( 'BracketChars' , 7  , 'none' , 'none' )
    call s:hy ( 'ParenChars'   , 7  , 'none' , 'none' )
    call s:hy ( 'Operator'     , 7  , 'none' , 'none' )
    call s:hy ( 'Ignore'       , 7  , 'none' , 'none' )
    call s:hy ( 'PreProc'      , 7  , 'none' , 'none' )
    call s:hy ( 'Delimeter'    , 7  , 'none' , 'none' )

    call s:hy ( 'QShit'        , 15 , 'none' , 'none' )

    call s:hy ( 'Type'         , 15 , 'none' , 'bold' )

" 0       8{{{1
    call s:hy ('ColorColumn', 'none', 8, 'none'    )

    call s:hy ( 'Question' , 0 ,  7, 'none' )
    call s:hy ( 'MoreMsg'  , 0 ,  5, 'none' )

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
call s:hy      ( 'LogicalBuffer'       , 0    , 15, 'none' )

let s:colors = [ 1, 2, 3, 4, 5, 6, 9, 10, 11, 12, 13, 14 ]
call reverse(s:colors)
for x in range(0,100)
    exec 'hi Logical'.x.' cterm=bold ctermfg=' . s:colors[x % len(s:colors)]
endfor
hi LogicalBuffer ctermfg=15 ctermbg=0 cterm=bold

hi GrepperCurrent cterm=bold ctermbg=8 ctermfg=none
hi GrepperMatch   cterm=none ctermbg=0 ctermfg=none
