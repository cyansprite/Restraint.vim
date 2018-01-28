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
    exec 'hi '.a:name.' ctermfg='.a:f.' ctermbg='.a:b.' cterm='.a:t.
        \ ' guifg='.s:colors[a:f].' guibg='.s:colors[a:b].' gui='.a:t
endfunc

func! s:guiOnly(name, f, b, t)
    exec 'hi '.a:name.' guifg='.a:f.' guibg='.a:b.' gui='.a:t.
        \' ctermfg=none ctermbg=none cterm=none'
endfunc

" GuiDef: o {{{1
let s:colors = [
   \ "#1c2626",
   \ "#274444",
   \ "#395e5f",
   \ "#556c6d",
   \ "#62797a",
   \ "#528c8e",
   \ "#83f3f6",
   \ "#c0feff",
   \
   \ "#2a2734",
   \ "#403846",
   \ "#646177",
   \ "#6c6783",
   \ "#7e75a9",
   \ "#9b87fd",
   \ "#c4b8fe",
   \ "#eecbff",
\]

let s:dimpop = "#8c856e"
let s:pop = '#ffcc99'

" Nons:   -{{{1
    call s:guiOnly ('Normal'       ,'none'    ,'none' ,'none'    )
    call s:guiOnly ('UnderLine'    ,'none'    ,'none' ,'none'    )
    call s:guiOnly ('CursorLine'   ,'none'    ,'none' ,'none'    )
    call s:guiOnly ('CursorColumn' ,'none'    ,'none' ,'none'    )
    call s:guiOnly ('Cursor'       ,'none'    ,'none' ,'none'    )
    call s:guiOnly ('ColorColumn'  ,'none'    ,'none' ,'none'    )
    call s:guiOnly ('StatuslineNc' ,'none'    ,'none' ,'none'    )
    call s:guiOnly ('DiffChange'   ,'none '   ,'none' ,'none'    )

    call s:guiOnly ('QuickFixLine' ,'none'    ,'1'    ,'none'    )
    call s:hy      ('EndOfBuffer'  ,'0'       ,'0'    ,'none'    )

"1       9{{{1
    call s:hy ( 'Comment'      , 9  , 0 , 'none' )
    call s:hy ( 'Todo'         , 11 , 9 , 'none' )
    call s:hy ( 'LineNr'       , 1  , 0 , 'none' )

    call s:hy ( 'Whitespace'   , 6  , 1 , 'none' )
    call s:hy ( 'DiffAdd'      , 6  , 1 , 'none' )
    call s:hy ( 'diffAdded'    , 6  , 1 , 'none' )

    call s:hy ( 'CursorLineNr' , 14 , 9 , 'none' )
    call s:hy ( 'Error'        , 14 , 9 , 'none' )
    call s:hy ( 'ErrorMsg'     , 14 , 9 , 'none' )
    call s:hy ( 'DiffDelete'   , 14 , 9 , 'none' )
    call s:hy ( 'DiffRemoved'  , 14 , 9 , 'none' )


" 2      10{{{1
    call s:hy      ( 'PreCondit'  , 2        , 'none' , 'none' )
    call s:hy      ( 'TypeDef'    , 2        , 'none' , 'none' )

    call s:hy      ( 'Constant'   , 10       , 'none' , 'none' )
    call s:hy      ( 'Boolean'    , 10       , 'none' , 'none' )
    call s:hy      ( 'Keyword'    , 10       , 'none' , 'none' )

    call s:hy      ( 'VertSplit'  , 6        , 'none' , 'none' )
    call s:guiOnly ( 'Operator'   , s:dimpop , 'none' , 'none' )
    call s:guiOnly ( 'BraceChars' , s:dimpop , 'none' , 'none' )
    call s:guiOnly ( 'ParenChars' , s:dimpop , 'none' , 'none' )
    call s:hy      ( 'Visual'     , 7        , 4      , 'none' )

" 3      11{{{1
    call s:hy      ( 'Number'     , 11          , 'none'      , 'none'      )
    call s:hy      ( 'Directory'  , 11          , 'none'      , 'none'      )

    call s:guiOnly ( 'WarningMsg' , 'none'      , s:colors[8] , 'none'      )
    call s:guiOnly ( 'Search'     , s:pop       , s:dimpop    , 'none'      )
    call s:guiOnly ( 'SearchC'    , s:colors[6] , s:colors[2] , 'none'      )
    call s:guiOnly ( 'IncSearch'  , 'none'      , s:colors[1] , 'underline' )

" 4      12{{{1
    call s:hy ( 'NonText'     , 4      , 'none' , 'none' )
    call s:hy ( 'SpecialChar' , 4      , 'none' , 'none' )
    call s:hy ( 'Special'     , 4      , 'none' , 'none' )
    call s:hy ( 'Label'       , 4      , 'none' , 'none' )

    call s:hy ( 'StatusLine'  , 4      , 1      , 'none' )
    call s:hy ( 'Folded'      , 4      , 1      , 'none' )
    call s:hy ( 'FoldColumn'  , 4      , 1      , 'none' )
    call s:hy ( 'SignColumn'  , 6      , 0      , 'none' )


    call s:hy ( 'Identifier'  , 12     , 'none' , 'none' )
    call s:hy ( 'Pmenu'       , 12     , 9      , 'none' )
    call s:hy ( 'PmenuSbar'   , 'none' , 12     , 'none' )

    call s:guiOnly ( 'DiffText'    , s:pop    , s:dimpop     , 'none' )

" 5      13{{{1
    call s:hy ( 'Delimeter'    , 5  , 'none' , 'none' )
    call s:hy ( 'String'       , 5  , 'none' , 'none' )
    call s:hy ( 'Member'       , 5  , 'none' , 'none' )

    call s:hy ( 'StorageClass' , 13 , 'none' , 'none' )
    call s:hy ( 'Statement'    , 13 , 'none' , 'none' )

    call s:hy ( 'Class'        , 13 , 'none' , 'none' )
    call s:hy ( 'Float'        , 13 , 'none' , 'none' )


" 6      14{{{1
    call s:hy ( 'Character'  , 6      , 'none' , 'none' )
    call s:hy ( 'Function'   , 6      , 'none' , 'none' )


    call s:hy ( 'SpecialKey' , 14     , 'none' , 'none' )
    call s:hy ( 'Repeat'     , 14     , 'none' , 'none' )
    call s:hy ( 'Title'      , 14     , 'none' , 'none' )
    call s:hy ( 'ModeMsg'    , 14     , 'none' , 'none' )

    call s:hy ( 'PmenuSel'   , 14     , 10     , 'none' )
    call s:hy ( 'PMenuThumb' , 'none' , 14     , 'none' )
    call s:hy ( 'WildMenu'   , 6      , 2      , 'none' )

" 7      15{{{1
    call s:hy      ( 'Type'       , 15    , 'none' , 'none' )

    call s:hy      ( 'Ignore'     , 7     , 'none' , 'none' )
    call s:hy      ( 'Conditonal' , 7     , 'none' , 'none' )
    call s:hy      ( 'PreProc'    , 7     , 'none' , 'none' )

    call s:guiOnly ( 'MatchParen' , s:pop , 'none' , 'none' )

" 0       8{{{1
    call s:hy ( 'Question' , 0 , 7  , 'none' )
    call s:hy ( 'MoreMsg'  , 8 , 15 , 'none' )

" Relink  >{{{1
    hi link vimCommentTitle Title
    hi link vimIsCommand    Constant
    hi link vimHighlight    Member
    hi link vimParenSep     Operator
    hi link csClass         Structure
    hi link GitGutterDelete DiffDelete
    hi link GitGutterAdd    DiffAdd
    hi link GitGutterChange DiffText
    call s:guiOnly ( 'GitGutterChangeDelete' , s:pop , s:colors[10] , 'none' )

" }}}
" Plugin: & {{{1

hi GrepperCurrent cterm=none
hi GrepperMatch   cterm=none
