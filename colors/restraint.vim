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
    call s:hy ( 'Normal'       , 'none'  , 'none' , 'none'    )
    call s:hy ( 'NormalNC'     , 'none'  , 'none' , 'none'    )
    call s:hy ( 'UnderLine'    , 'none'  , 'none' , 'none'    )
    call s:hy ( 'CursorColumn' , 'none'  , 'none' , 'none'    )
    call s:hy ( 'Cursor'       , 'none'  , 'none' , 'none'    )
    call s:hy ( 'StatuslineNc' , 'none'  , 'none' , 'none'    )
    call s:hy ( 'QuickFixLine' , 'none'  , 'none' , 'inverse' )

    call s:hy ( 'EndOfBuffer'  , 'none'  , 'none' , 'none'    )
    call s:hy ( 'DiffChange'   , 'none ' , 'none' , 'none'    )
    call s:hy ( 'CursorLine'   , 'none'  , 'none' , 'none'    )
    call s:hy ( 'ColorColumn'  , 'none'  , 'none' , 'none'    )

"1       9{{{1
    call s:hy ( 'Whitespace'  , 9  , 'none' , 'none' )
    call s:hy ( 'Error'       , 9  , 'none' , 'none' )
    call s:hy ( 'DiffDelete'  , 15 , 1      , 'none' )
    call s:hy ( 'SpellBad'  , 15 , 1      , 'undercurl' )
    call s:hy ( 'ErrorMsg'    , 15 , 1      , 'none' )
    call s:hy ( 'DiffRemoved' , 1  , 'none' , 'none' )
    call s:hy ( 'String'     , 9      , 'none' , 'none' )

" 2      10{{{1
    call s:hy ( 'StorageClass' , 2      , 'none' , 'none'    )
    call s:hy ( 'Keyword'      , 2     , 'none' , 'none'    )

    call s:hy ( 'Folded'       , 'none'      , 'none' , 'none'    )
    call s:hy ( 'FoldColumn'   , 2      , 'none' , 'none'    )
    call s:hy ( 'Visual'       , 15 , 12 , 'bold' )
    call s:hy ( 'DiffAdd'      , 15      , 2      , 'none'    )
    call s:hy ( 'diffAdded'      , 2      , 'none'      , 'none'    )
    call s:hy ( 'Number'      , 10  , 'none' , 'bold' )
    call s:hy ( 'Float'       , 11  , 'none' , 'bold' )

" 3      11{{{1
    call s:hy ( 'Boolean'     , 3  , 'none' , 'none' )
    call s:hy ( 'Constant'    , 4  , 'none' , 'none' )

    call s:hy ( 'Directory'  , 11     , 'none' , 'none'           )
    call s:hy ( 'Todo'       , 11     , 'none' , 'none'           )

    call s:hy ( 'WarningMsg' , 3      , 'none' , 'inverse,bold'   )
    call s:hy ( 'Special'      , 3 , 'none' , 'none'         )
    call s:hy ( 'Statement'   , 3  , 'none' , 'none' )
    call s:hy ( 'Search'     , 'none' , 'none' , 'inverse'   )
    call s:hy ( 'SearchC'    , 'none' , 0, 'bold' )
    call s:hy ( 'IncSearch'  , 0      , 3      , 'underline'      )
    call s:hy ( 'BraceChars'   , 11  , 'none' , 'none' )
    call s:hy ( 'BracketChars' , 11  , 'none' , 'none' )
    call s:hy ( 'ParenChars'   , 11  , 'none' , 'none' )
    call s:hy ( 'Ignore'       , 11  , 'none' , 'none' )
    call s:hy ( 'Delimeter'    , 11  , 'none' , 'none' )

" 4      12{{{1
    call s:hy ( 'NonText'   , 4  , 'none' , 'none' )
    call s:hy ( 'Label'     , 4  , 'none' , 'none' )
    call s:hy ( 'PreCondit' , 4  , 'none' , 'none' )
    call s:hy ( 'TypeDef'   , 4  , 'none' , 'none' )
    call s:hy ( 'Operator'  , 4  , 'none' , 'none' )
    call s:hy ( 'Type'         , 4 , 'none' , 'none' )
    call s:hy ( 'DiffText'  , 15 , 4      , 'none' )

" 5      13{{{1
    call s:hy ( 'Pmenu'      , 7 , 0, 'none' )
    call s:hy ( 'PmenuSbar'  , 'none' , 8     , 'none' )
    call s:hy ( 'PmenuSel'   , 4 , 15, 'bold,inverse' )
    call s:hy ( 'PMenuThumb' , 'none' , 12     , 'none' )
    call s:hy ( 'Conditonal' , 15      , 'none' , 'none' )

    call s:hy ( 'Character'  , 5     , 'none' , 'none' )
    call s:hy ( 'SpecialChar', 5     , 'none' , 'none' )
    call s:hy ( 'Title'      , 5     , 'none' , 'none' )
    call s:hy ( 'diffSubname', 5     , 'none', 'none' )
    call s:hy ( 'PreProc'      , 5  , 'none' , 'none' )
    call s:hy ( 'MoreMsg'  , 0 ,  5, 'none' )







    call s:hy ( 'SignColumn' , 5      , 'none' , 'none' )
    call s:hy ( 'WildMenu'   , 'none' , 'none' , 'bold,inverse' )

" 6      14{{{1
    call s:hy ( 'Member'       , 6  , 'none' , 'none' )

    call s:hy ( 'Identifier'   , 6 , 'none' , 'none' )
    call s:hy ( 'Class'        , 6 , 'none' , 'none' )
    call s:hy ( 'Function'   , 6      , 'none' , 'none'    )

    call s:hy ( 'SpecialKey'   , 6 , 'none' , 'none' )
    call s:hy ( 'QShit'        , 14 , 'none' , 'none' )



" 7      15{{{1
    call s:hy ( 'Repeat'     , 7     , 'none' , 'none' )
    call s:hy ( 'Question' , 0 ,  7, 'none' )


" 0       8{{{1
    call s:hy ( 'Comment'     , 8  , 'none' , 'none' )


" Dynamic x{{{1
    let g:accentColor = 8

    call s:hy ( 'VertSplit'     , g:accentColor , 'none'        , 'none'         )
    call s:hy ( 'StatusLine'    , g:accentColor , 'none'        , 'none'         )
    call s:hy ( 'LineNr'        , g:accentColor , 'none'        , 'none'         )
    call s:hy ( 'CursorLineNr'  , g:accentColor , 'none'        , 'bold,inverse' )
    call s:hy ( 'ModeMsg'       , g:accentColor , 'none'        , 'inverse,bold' )
    call s:hy ( 'LogicalBuffer' , g:accentColor , 'none'        , 'bold,inverse' )
    call s:hy ( 'MatchParen'    , 15            , g:accentColor , 'bold'         )

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

let s:colors = [ 1, 2, 3, 4, 5, 6, 9, 10, 11, 12, 13, 14 ]
call reverse(s:colors)
for x in range(0,100)
    exec 'hi Logical'.x.' cterm=bold ctermfg=' . s:colors[x % len(s:colors)]
endfor
for x in range(0,100)
    exec 'hi LogicalTab'.x.' cterm=bold,inverse ctermfg=' . s:colors[x % len(s:colors)]
endfor

hi GrepperCurrent cterm=bold ctermbg=8 ctermfg=none
hi GrepperMatch   cterm=none ctermbg=0 ctermfg=none
