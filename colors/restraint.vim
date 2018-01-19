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
   \ '#000000',
   \
   \ '#a26c6c',
   \ '#826c6c',
   \ '#a2826c',
   \ '#6c82a2',
   \ '#826ca2',
   \ '#6c8282',
   \
   \ '#c9c9c9',
   \ '#6c6c6c',
   \
   \ '#c9abab',
   \ '#abc9ab',
   \ '#c9c9ab',
   \ '#ababc9',
   \ '#c9abc9',
   \ '#abc9c9',
   \
   \ '#ffffff',
\]

" Nons:   -{{{1
    call s:guiOnly ('Normal'       ,'8'       ,'none' ,'none'    )
    call s:guiOnly ('UnderLine'    ,'none'    ,'none' ,'none'    )
    call s:guiOnly ('CursorLine'   ,'none'    ,'none' ,'none'    )
    call s:guiOnly ('CursorColumn' ,'none'    ,'none' ,'none'    )
    call s:guiOnly ('Cursor'       ,'none'    ,'none' ,'none'    )
    call s:guiOnly ('ColorColumn'  ,'none'    ,'none' ,'none'    )
    call s:guiOnly ('StatuslineNc' ,'none'    ,'none' ,'none'    )
    call s:guiOnly ('DiffChange'   ,'none '   ,'none' ,'none'    )

    call s:guiOnly ('QuickFixLine' ,'none'    ,'none' ,'inverse' )
    call s:hy      ('EndOfBuffer'  ,'0'       ,'0'    ,'none'    )

" Red:    1{{{1
    call s:hy ('Constant'    ,1 ,'none' ,'none' )
    call s:hy ('Boolean'     ,1 ,'none' ,'none' )
    call s:hy ('Number'      ,1 ,'none' ,'none' )

    call s:hy ('Keyword'     ,9 ,'none' ,'none' )
    call s:hy ('Float'       ,9 ,'none' ,'none' )

    call s:hy ('Error'       ,9 ,1      ,'none' )
    call s:hy ('ErrorMsg'    ,9 ,1      ,'none' )
    call s:hy ('Whitespace'  ,1 ,9      ,'none' )
    call s:hy ('DiffDelete'  ,9 ,1      ,'none' )
    call s:hy ('DiffRemoved' ,9 ,1      ,'none' )


" Green:  2{{{1
    call s:hy ('StorageClass' ,2  ,'none' ,'none' )

    call s:hy ('Statement'    ,10 ,'none' ,'none' )

    call s:hy ('DiffAdd'      ,10 ,2      ,'none' )
    call s:hy ('diffAdded'    ,10 ,2      ,'none' )
    call s:hy ('VertSplit'    ,10 ,2      ,'none' )
    call s:hy ('Operator'     ,10 ,'none' ,'none' )
    call s:hy ('Visual'       ,10 ,2      ,'none' )


" Yellow: 3{{{1
    call s:hy ('PreCondit'  ,3  ,'none' ,'none' )
    call s:hy ('TypeDef'    ,3  ,'none' ,'none' )
    call s:hy ('Label'      ,3  ,'none' ,'none' )

    call s:hy ('Directory'  ,11 ,'none' ,'none' )
    call s:hy ('Statement'  ,11 ,'none' ,'none' )
    call s:hy ('Todo'       ,11 ,4      ,'none' )

    call s:hy ('WarningMsg' ,11 ,3      ,'none' )
    call s:hy ('Search'     ,11 ,3      ,'none' )
    call s:hy ('SearchC'    ,0  ,11     ,'none' )
    call s:hy ('IncSearch'  ,3  ,11     ,'none' )


" Blue:   4{{{1
    call s:hy ('NonText'     ,4  ,'none' ,'none' )
    call s:hy ('SpecialChar' ,4  ,'none' ,'none' )
    call s:hy ('Comment'     ,4  ,'none' ,'none' )
    call s:hy ('Identifier'  ,12 ,'none' ,'none' )
    call s:hy ('MoreMsg'     ,12 ,4      ,'none' )
    call s:hy ('StatusLine'  ,4  ,'none' ,'none' )
    call s:hy ('WildMenu'    ,12 ,4      ,'none' )
    call s:hy ('DiffText'   ,12 ,4 ,'none' )

" Purple: 5{{{1
    call s:hy ('Delimeter'    ,5  ,'none' ,'none' )
    call s:hy ('Special'      ,5  ,'none' ,'none' )
    call s:hy ('String'       ,5  ,'none' ,'none' )

    call s:hy ('Class'        ,13 ,'none' ,'none' )
    call s:hy ('Float'        ,13 ,'none' ,'none' )
    call s:hy ('Title'        ,13 ,'none' ,'none' )
    call s:hy ('ModeMsg'      ,13 ,'none' ,'none' )

    call s:hy ('Question'     ,15  ,7     ,'none' )
    call s:hy ('LineNr'       ,1  ,'none' ,'none' )
    call s:hy ('CursorLineNr' ,15 ,1      ,'none' )

" Cyan:   6{{{1
    call s:hy ('Function'   ,14     ,'none' ,'none' )
    call s:hy ('Character'  ,14     ,'none' ,'none' )
    call s:hy ('SpecialKey' ,14     ,'none' ,'none' )
    call s:hy ('Member'     ,14     ,'none' ,'none' )
    call s:hy ('Repeat'     ,14     ,'none' ,'none' )

    call s:hy ('Pmenu'      ,14     ,6      ,'none' )
    call s:hy ('PmenuSbar'  ,'none' ,6      ,'none' )
    call s:hy ('PMenuThumb' ,'none' ,14     ,'none' )
    call s:hy ('PmenuSel'   ,6      ,14     ,'none' )

" Grey:   7{{{1
    call s:hy ('Type'       ,15     ,'none' ,'none' )

    call s:hy ('Ignore'     ,7      ,'none' ,'none' )
    call s:hy ('Conditonal' ,7      ,'none' ,'none' )
    call s:hy ('PreProc'    ,7      ,'none' ,'none' )

    call s:hy ('MatchParen' ,'none' ,8      ,'none' )

" Black:  0{{{1
    call s:hy ('FoldColumn' ,0  ,8 ,'none' )
    call s:hy ('Folded'     ,0  ,8 ,'none' )
    call s:hy ('SignColumn' ,8  ,0 ,'none' )

" Relink  >{{{1
    hi link vimCommentTitle Title
    hi link vimIsCommand    Constant
    hi link vimHighlight    Member
    hi link vimParenSep     Operator
    hi link csClass         Structure

" }}}
" Plugin: & {{{1
    call s:hy ('logicalbuffer'   ,0 ,15     ,'none' )
    call s:hy ('logicalmodified' ,2 ,'none' ,'none' )
    call s:hy ('logicalreadonly' ,1 ,'none' ,'none' )
    call s:hy ('logical0'        ,6 ,'none' ,'none' )
    call s:hy ('logical1'        ,5 ,'none' ,'none' )
    call s:hy ('logical2'        ,4 ,'none' ,'none' )
    call s:hy ('logical3'        ,3 ,'none' ,'none' )
    call s:hy ('logical4'        ,2 ,'none' ,'none' )
    call s:hy ('logical5'        ,1 ,'none' ,'none' )
    call s:hy ('logical6'        ,1 ,'none' ,'none' )
    call s:hy ('logical7'        ,2 ,'none' ,'none' )
    call s:hy ('logical8'        ,3 ,'none' ,'none' )
    call s:hy ('logical9'        ,4 ,'none' ,'none' )
    call s:hy ('logical10'       ,5 ,'none' ,'none' )
    call s:hy ('logical11'       ,6 ,'none' ,'none' )
    for i in range(0,15)
        exec printf("let g:terminal_colors%d=%d", i, i)
    endfor

    call s:hy ('GitGutterAdd'          ,10 ,2 ,'none' )
    call s:hy ('GitGutterChange'       ,12 ,4 ,'none' )
    call s:hy ('GitGutterDelete'       ,9  ,1 ,'none' )
    call s:hy ('GitGutterChangeDelete' ,11 ,3 ,'none' )

hi GrepperCurrent ctermfg=12 ctermbg=4 cterm=none
hi GrepperMatch   ctermfg=11 ctermbg=3 cterm=none
