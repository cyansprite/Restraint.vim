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
    call s:hy ( 'Whitespace'  , 1 , 'none' , 'none'    )
    call s:hy ( 'Error'       , 1 , 'none' , 'none'    )
    call s:hy ( 'DiffDelete'  , 1 , 7      , 'reverse' )
    call s:hy ( 'SpellBad'    , 1 , 7      , 'reverse' )
    call s:hy ( 'ErrorMsg'    , 1 , 7      , 'reverse' )
    call s:hy ( 'DiffRemoved' , 1 , 'none' , 'none'    )
    call s:hy ( 'String'      , 2 , 'none' , 'none'    )

" 2      10{{{1
    call s:hy ( 'StorageClass' , 2      , 'none' , 'none'         )
    call s:hy ( 'Keyword'      , 2      , 'none' , 'none'         )

    call s:hy ( 'Folded'       , 'none' , 'none' , 'none'         )
    call s:hy ( 'FoldColumn'   , 2      , 'none' , 'none'         )
    call s:hy ( 'Visual'       , 7      , 3      , 'bold'         )
    call s:hy ( 'DiffAdd'      , 2      , 0      , 'reverse'      )
    call s:hy ( 'diffAdded'    , 2      , 0      , 'reverse'      )
    call s:hy ( 'Number'       , 2      , 'none' , 'bold'         )
    call s:hy ( 'QShit'        , 2      , 'none' , 'none'         )

" 3      11{{{1
    call s:hy ( 'Float'        , 3      , 'none' , 'bold'              )

    call s:hy ( 'Directory'    , 3      , 'none' , 'none'              )
    call s:hy ( 'Todo'         , 3      , 'none' , 'none'              )

    call s:hy ( 'WarningMsg'   , 3      , 'none' , 'inverse,bold'      )
    call s:hy ( 'Special'      , 3      , 'none' , 'none'              )
    call s:hy ( 'Search'       , 'none' , 'none' , 'inverse'           )
    call s:hy ( 'SearchC'      , 'none' , 'none' , 'underline,reverse' )
    call s:hy ( 'IncSearch'    , 0      , 3      , 'none'              )
    call s:hy ( 'BraceChars'   , 3      , 'none' , 'none'              )
    call s:hy ( 'BracketChars' , 3      , 'none' , 'none'              )
    call s:hy ( 'ParenChars'   , 3      , 'none' , 'none'              )
    call s:hy ( 'Ignore'       , 3      , 'none' , 'none'              )
    call s:hy ( 'Delimeter'    , 3      , 'none' , 'none'              )

" 4      12{{{1
    call s:hy ( 'NonText'   , 4 , 'none' , 'none'    )
    call s:hy ( 'Label'     , 4 , 'none' , 'none'    )
    call s:hy ( 'PreCondit' , 4 , 'none' , 'none'    )
    call s:hy ( 'TypeDef'   , 4 , 'none' , 'none'    )
    call s:hy ( 'Operator'  , 4 , 'none' , 'none'    )
    call s:hy ( 'Type'      , 4 , 'none' , 'none'    )
    call s:hy ( 'Constant'  , 4 , 'none' , 'none'    )
    call s:hy ( 'Statement' , 4 , 'none' , 'none'    )

    call s:hy ( 'DiffText'  , 4 , 7      , 'reverse' )

" 5      13{{{1
    call s:hy ( 'Pmenu'       , 8      , 'none' , 'reverse'      )
    call s:hy ( 'PmenuSbar'   , 7      , 'none' , 'reverse'      )
    call s:hy ( 'PmenuSel'    , 5      , 7      , 'reverse,bold' )
    call s:hy ( 'PMenuThumb'  , 5      , 'none' , 'reverse'      )
    call s:hy ( 'Boolean'     , 5      , 'none' , 'none'         )

    call s:hy ( 'Character'   , 5      , 'none' , 'none'         )
    call s:hy ( 'SpecialChar' , 5      , 'none' , 'none'         )
    call s:hy ( 'Title'       , 5      , 'none' , 'none'         )
    call s:hy ( 'diffSubname' , 5      , 'none' , 'none'         )
    call s:hy ( 'PreProc'     , 5      , 'none' , 'none'         )
    call s:hy ( 'MoreMsg'     , 5      , 0      , 'reverse'      )

    call s:hy ( 'SignColumn'  , 5      , 'none' , 'none'         )
    call s:hy ( 'WildMenu'    , 'none' , 'none' , 'bold,inverse' )

" 6      14{{{1
    call s:hy ( 'Member'     , 6  , 'none' , 'none' )

    call s:hy ( 'Identifier' , 6  , 'none' , 'none' )
    call s:hy ( 'Class'      , 6  , 'none' , 'none' )
    call s:hy ( 'Function'   , 6  , 'none' , 'none' )

    call s:hy ( 'SpecialKey' , 6  , 'none' , 'none' )

" 7      15{{{1
    call s:hy ( 'Repeat'     , 7 , 'none' , 'none'    )
    call s:hy ( 'Question'   , 7 , 0      , 'reverse' )
    call s:hy ( 'Conditonal' , 7 , 'none' , 'none'    )


" 0       8{{{1
    call s:hy ( 'Comment'     , 0  , 'none' , 'bold' )


" Dynamic x{{{1
    let g:accentColor = 13

    call s:hy ( 'VertSplit'     , g:accentColor , 'none' , 'none'         )
    call s:hy ( 'StatusLine'    , g:accentColor , 'none' , 'none'         )
    call s:hy ( 'LineNr'        , g:accentColor , 'none' , 'none'         )
    call s:hy ( 'CursorLineNr'  , g:accentColor , 'none' , 'bold,inverse' )
    call s:hy ( 'ModeMsg'       , g:accentColor , 'none' , 'inverse,bold' )
    call s:hy ( 'MatchParen'    , g:accentColor , 'none' , 'none'         )
    call s:hy ( 'LogicalBuffer' , 7             , g:accentColor, 'bold')

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
call s:hy ( 'GitGutterDelete '      , 1 , 1 , 'none' )
call s:hy ( 'GitGutterAdd    '      , 2 , 2 , 'none' )
call s:hy ( 'GitGutterChange '      , 4 , 4 , 'none' )
call s:hy ( 'GitGutterChangeDelete' , 3 , 3 , 'none' )

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
