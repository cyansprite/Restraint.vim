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

" EasyAlign*/,\|)/

" Nons:   -{{{1
    call s:hy ( 'Normal'       , 'none'  , 'none' , 'none'    )
    call s:hy ( 'NormalNC'     , 'none'  , 'none' , 'none'    )
    call s:hy ( 'UnderLine'    , 'none'  , 'none' , 'none'    )
    call s:hy ( 'CursorColumn' , 'none'  , 'none' , 'none'    )
    call s:hy ( 'Cursor'       , 'none'  , 'none' , 'none'    )
    call s:hy ( 'StatuslineNc' , 'none'  , 'none' , 'none'    )
    call s:hy ( 'QuickFixLine' , 'none'  , 'none' , 'inverse' )

    call s:hy ( 'DiffChange'   , 'none ' , 'none' , 'none'    )
    call s:hy ( 'CursorLine'   , 'none'  , 'none' , 'none'    )
    call s:hy ( 'ColorColumn'  , 'none'  , 'none' , 'none'    )

"1       9{{{1
    call s:hy ( 'Whitespace'  , 1 , 'none' , 'none'    )
    call s:hy ( 'Error'       , 1 , 'none' , 'none'    )
    call s:hy ( 'DiffDelete'  , 1 , 7      , 'inverse' )
    call s:hy ( 'SpellBad'    , 1 , 7      , 'inverse' )
    call s:hy ( 'ErrorMsg'    , 1 , 7      , 'inverse' )
    call s:hy ( 'DiffRemoved' , 1 , 'none' , 'none'    )
    call s:hy ( 'Function'    , 9 , 'none' , 'none'    )

" 2      10{{{1
    call s:hy ( 'StorageClass' , 2      , 'none' , 'none'    )
    call s:hy ( 'Keyword'      , 2      , 'none' , 'none'    )
    call s:hy ( 'String'       , 2      , 'none' , 'none'    )

    call s:hy ( 'Folded'       , 'none' , 'none' , 'none'    )
    call s:hy ( 'FoldColumn'   , 2      , 'none' , 'none'    )
    call s:hy ( 'Visual'       , 'none' , 232    , 'none'    )
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
    call s:hy ( 'BraceChars'   , 1      , 'none' , 'none'              )
    call s:hy ( 'BracketChars' , 1      , 'none' , 'none'              )
    call s:hy ( 'ParenChars'   , 1      , 'none' , 'none'              )
    call s:hy ( 'Ignore'       , 3      , 'none' , 'none'              )
    call s:hy ( 'Delimeter'    , 3      , 'none' , 'none'              )
    call s:hy ( 'Statement'    , 3      , 'none' , 'none'              )

" 4      12{{{1
    call s:hy ( 'NonText'   , 4  , 'none' , 'none' )
    call s:hy ( 'PreCondit' , 4  , 'none' , 'none' )
    call s:hy ( 'Type'      , 4  , 'none' , 'none' )
    call s:hy ( 'Constant'  , 12 , 'none' , 'none' )
    call s:hy ( 'Member'    , 4  , 'none' , 'none' )
    call s:hy ( 'DiffText'  , 4  , 7      , 'none' )

" 5      13{{{1
    call s:hy ( 'TypeDef'     , 5      , 'none' , 'none'         )
    call s:hy ( 'Label'       , 5      , 'none' , 'none'         )
    call s:hy ( 'PmenuSbar'   , 7      , 'none' , 'inverse'      )
    call s:hy ( 'PmenuSel'    , 5      , 7      , 'inverse,bold' )
    call s:hy ( 'PMenuThumb'  , 5      , 'none' , 'inverse'      )
    call s:hy ( 'Boolean'     , 5      , 'none' , 'none'         )

    call s:hy ( 'Character'   , 5      , 'none' , 'none'         )
    call s:hy ( 'SpecialChar' , 5      , 'none' , 'none'         )
    call s:hy ( 'Title'       , 5      , 'none' , 'none'         )
    call s:hy ( 'diffSubname' , 5      , 'none' , 'none'         )
    call s:hy ( 'PreProc'     , 5      , 'none' , 'none'         )
    call s:hy ( 'MoreMsg'     , 5      , 0      , 'inverse'      )

    call s:hy ( 'SignColumn'  , 5      , 'none' , 'none'         )
    call s:hy ( 'WildMenu'    , 'none' , 'none' , 'bold,inverse' )

" 6      14{{{1
    call s:hy ( 'Operator'  , 6 , 'none' , 'none'   )

    call s:hy ( 'Identifier' , 6  , 'none' , 'none' )
    call s:hy ( 'Class'      , 6  , 'none' , 'none' )

    call s:hy ( 'SpecialKey' , 6  , 'none' , 'none' )

" 7      15{{{1
    call s:hy ( 'Repeat'     , 13 , 'none' , 'none'    )
    call s:hy ( 'Question'   , 7  , 0      , 'inverse' )
    call s:hy ( 'Conditonal' , 7  , 'none' , 'none'    )


" 0       8{{{1
    call s:hy ( 'Comment' , 8      , 'none' , 'none' )
    call s:hy ( 'Pmenu'   , 'none' , 0      , 'none' )


" Dynamic x{{{1
    let g:accentColor = 8

    call s:hy ( 'EndOfBuffer'   , g:accentColor , 'none'        , 'bold'         )
    call s:hy ( 'VertSplit'     , g:accentColor , g:accentColor , 'bold'         )
    call s:hy ( 'StatusLine'    , g:accentColor , 'none'        , 'none'         )
    call s:hy ( 'LineNr'        , g:accentColor , 'none'        , 'none'         )
    call s:hy ( 'CursorLineNr'  , g:accentColor , 'none'        , 'bold,inverse' )
    call s:hy ( 'ModeMsg'       , g:accentColor , 'none'        , 'inverse,bold' )
    call s:hy ( 'MatchParen'    , 'none'        , 8             , 'none'         )
    call s:hy ( 'LogicalBuffer' , 7             , g:accentColor , 'bold'         )

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

hi InnerScope ctermbg=236 ctermfg=none cterm=none
hi OuterScope ctermbg=239 ctermfg=none cterm=none
hi LinkScope  ctermbg=242 ctermfg=none cterm=none

hi link csType          Member

" Test:   ? {{{1
hi Test0 ctermfg=0
hi Test1 ctermfg=1
hi Test2 ctermfg=2
hi Test3 ctermfg=3
hi Test4 ctermfg=4
hi Test5 ctermfg=5
hi Test6 ctermfg=6
hi Test7 ctermfg=7
hi Test8 ctermfg=8
hi Test9 ctermfg=9
hi Test10 ctermfg=10
hi Test11 ctermfg=11
hi Test12 ctermfg=12
hi Test13 ctermfg=13
hi Test14 ctermfg=14
hi Test15 ctermfg=15
