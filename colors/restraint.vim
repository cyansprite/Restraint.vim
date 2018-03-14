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
            \ 0x000000,
            \ 0x173434,
            \ 0x294e4f,
            \ 0x455c5d,
            \ 0x52696a,
            \ 0x427c7e,
            \ 0x73f3f6,
            \ 0xc0feff,
            \
            \ 0x1a1724,
            \ 0x302836,
            \ 0x545167,
            \ 0x5c5773,
            \ 0x6e65a9,
            \ 0x8b77fd,
            \ 0xc4b8fe,
            \ 0xeecbff,
\]

let s:dimpop = 0xaaaa00
let s:pop = 0xffff00
let s:fg = 0xaaaaaa
let s:bg = s:colors[0]

let s:red = 0x8e5252
let s:green = 0x528e52
let s:blue = 0x525f8e
let s:brred = 0xffc0c0
let s:brgreen = 0xc0ffc0
let s:brblue = 0xc0cfff


func! ColoInvert(hex)
    let h = 0xFFFFFF - a:hex
    let zeros = 6 - len(printf('%x', h))
    let s = printf('%x', h)
    if zeros > 0
        let s = repeat('0',zeros)
    endif
    return printf('#%s%x', repeat('0',zeros), h)
endfunc

" Inversion
if &bg=='light'
    for i in range(0, len(s:colors) - 1)
        let s:colors[i] = ColoInvert(s:colors[i])
    endfor

    let s:dimpop = ColoInvert(s:dimpop)
    let s:pop = ColoInvert(s:pop)
    let s:fg = ColoInvert(s:fg)
    let s:bg = ColoInvert(s:bg)
else
    for i in range(0, len(s:colors) - 1)
        exec printf('let s:colors[%d] = "#%x"',i,(s:colors[i]))
    endfor
    exec printf('let s:dimpop = "#%x"',(s:dimpop))
    exec printf('let s:pop = "#%x"',(s:pop))

    exec printf('let s:red = "#%x"',(s:red))
    exec printf('let s:brred = "#%x"',(s:brred))

    exec printf('let s:green = "#%x"',(s:green))
    exec printf('let s:brgreen = "#%x"',(s:brgreen))

    exec printf('let s:blue = "#%x"',(s:blue))
    exec printf('let s:brblue = "#%x"',(s:brblue))

    exec printf('let s:fg = "#%x"',(s:fg))
    exec printf('let s:bg = "#%x"',(s:bg))
endif

" Nons:   -{{{1
    call s:guiOnly ('Normal'       , s:fg     ,s:bg   ,'none'    )
    call s:guiOnly ('UnderLine'    ,'none'    ,'none' ,'none'    )
    call s:guiOnly ('CursorColumn' ,'none'    ,'none' ,'none'    )
    call s:guiOnly ('Cursor'       ,'none'    ,'none' ,'none'    )
    call s:guiOnly ('ColorColumn'  ,'none'    ,'none' ,'none'    )
    call s:guiOnly ('StatuslineNc' ,'none'    ,'none' ,'none'    )
    call s:guiOnly ('QuickFixLine' ,'none'    ,'1'    ,'none'    )

    call s:hy ('EndOfBuffer' , '0'     , '0'    , 'none' )
    call s:hy ('DiffChange'  , 'none ' , '0' , 'none' )
    call s:hy ('CursorLine'  , 'none'  , 'none' , 'none' )

"1       9{{{1
    call s:hy ( 'Whitespace'  , 9  , 1      , 'none' )
    call s:hy ( 'Error'       , 9  , 'none' , 'none' )
    call s:hy ( 'Constant'    , 1  , 'none' , 'none' )
    call s:hy ( 'Boolean'     , 9  , 'none' , 'none' )
    call s:hy ( 'Number'      , 1  , 'none' , 'none' )
    call s:hy ( 'Float'       , 9  , 'none' , 'none' )
    call s:hy ( 'DiffDelete'  , 15 , 1      , 'none' )
    call s:hy ( 'ErrorMsg'    , 15 , 1      , 'none' )
    call s:hy ( 'DiffRemoved' , 15 , 1      , 'none' )

" 2      10{{{1
    call s:hy ( 'Function'     , 2  , 'none' , 'none' )
    call s:hy ( 'StorageClass' , 2  , 'none' , 'none' )
    call s:hy ( 'Keyword'      , 10 , 'none' , 'none' )

    call s:hy ( 'Folded'     , 2      , 'none' , 'none' )
    call s:hy ( 'FoldColumn' , 2      , 'none' , 'none' )
    call s:hy ( 'Visual'    , 'none'  , 0     , 'none' )
    call s:hy ( 'VertSplit' , 13, 'none', 'bold' )
    call s:hy ( 'DiffAdd'   , 0 , 2      , 'none' )

" 3      11{{{1
    call s:hy ( 'MatchParen' , 11     , 'none' , 'bold,underline' )

    call s:hy ( 'Directory'  , 11     , 'none' , 'none'           )
    call s:hy ( 'Todo'       , 11     , 'none' , 'inverse,bold'   )

    call s:hy ( 'WarningMsg' , 3      , 'none' , 'inverse,bold'   )
    call s:hy ( 'Search'     , 'none' , 'none' , 'inverse,bold'   )
    call s:hy ( 'SearchC'    , 3      , 15     , 'inverse,bold'   )
    call s:hy ( 'IncSearch'  , 0      , 3      , 'underline'      )
    call s:hy ( 'Comment'    , 8      , 'none' , 'none'         )

" 4      12{{{1
    call s:hy ( 'NonText'      , 12 , 'none' , 'none'         )
    call s:hy ( 'Special'      , 12 , 'none' , 'none'         )
    call s:hy ( 'Label'        , 4  , 'none' , 'none'        )
    call s:hy ( 'PreCondit'    , 4  , 'none' , 'none'         )
    call s:hy ( 'TypeDef'      , 4  , 'none' , 'none'         )
    call s:hy ( 'DiffText'     , 'none' , 8      , 'none' )


" 5      13{{{1
    call s:hy ( 'Pmenu'      , 0      , 7     , 'none' )
    call s:hy ( 'PmenuSbar'  , 'none' , 8      , 'none' )
    call s:hy ( 'PmenuSel'   , 7      , 13     , 'bold' )
    call s:hy ( 'PMenuThumb' , 'none' , 7     , 'none' )

    call s:hy ( 'String'     , 5      , 'none' , 'none' )
    call s:hy ( 'Conditonal' , 5      , 'none' , 'none' )
    call s:hy ( 'Repeat'     , 13     , 'none' , 'none' )
    call s:hy ( 'Character'  , 13     , 'none' , 'none' )
    call s:hy ( 'SpecialChar', 13     , 'none' , 'none' )
    call s:hy ( 'Title'      , 13     , 'none' , 'none' )

    call s:hy ( 'StatusLine' , 5      , 'none' , 'none' )
    call s:hy ( 'LineNr'       , 8  , 'none' , 'none'         )
    call s:hy ( 'CursorLineNr' , 8  , 'none' , 'bold,inverse' )

    call s:hy ( 'SignColumn' , 5      , 'none' , 'none' )
    call s:hy ( 'WildMenu'   , 5      , 'none' , 'bold,inverse' )

" 6      14{{{1
    call s:hy ( 'Member'       , 6  , 'none' , 'none' )
    call s:hy ( 'Statement'    , 6  , 'none' , 'none' )

    call s:hy ( 'Identifier'   , 14 , 'none' , 'none' )
    call s:hy ( 'Class'        , 14 , 'none' , 'none' )

    call s:hy ( 'SpecialKey'   , 14 , 'none' , 'none' )
    call s:hy ( 'ModeMsg'      , 14 , 'none' , 'none' )


" 7      15{{{1
    call s:hy ( 'BraceChars'  , 'none' , 'none' , 'bold' )
    call s:hy ( 'BracketChars', 'none' , 'none' , 'bold' )
    call s:hy ( 'ParenChars'  , 'none' , 'none' , 'bold' )
    call s:hy ( 'Operator'    , 'none' , 'none' , 'bold' )
    call s:hy ( 'Delimeter'   , 8  , 'none' , 'none' )

    call s:hy ( 'Type'        , 15 , 'none' , 'none' )

" 0       8{{{1
    call s:hy ( 'Question' , 0 , 7  , 'none' )

    call s:hy ( 'Ignore'     , 8  , 'none' , 'none' )
    call s:hy ( 'PreProc'    , 8  , 'none' , 'none' )

    call s:hy ( 'MoreMsg'  , 8 , 15 , 'none' )

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
