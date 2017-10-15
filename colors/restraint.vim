" Vim:          Color file / Generate Color file if debug on.
" Maintainer:   Jojo Brandon Coffman <https://github.com/cyansprite>
" Title:        Restraint
" Description:  Theme based on term colors and espurr.
" Requirements: Term Colors for terminal or GUI color support.
" Note:         Xresources included for my dark(play) and light(work) theme.
" Setup   +{{{1
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "restraint"

" If you want it to spit out what's happening/generate a color file.
let s:debug     = 0

" Function to make life easier.
func! s:hy(name,cf,cb,gf,gb,t)
    if s:debug
        echom 'hi '.a:name.' ctermfg='.a:cf.' ctermbg='.a:cb.' cterm='.a:t.
                    \    ' guifg='  .a:gf.' guibg='  .a:gb.' gui='   a:t
    endif
    exec 'hi '.a:name.' ctermfg='.a:cf.' ctermbg='.a:cb.' cterm='.a:t.
                 \    ' guifg='  .a:gf.' guibg='  .a:gb.' gui='   a:t
endfunc

" GuiDef: o{{{1
if &bg              == 'light'
    " Foreground and Background.
    let s:fg        = '#2f2f2f'
    let s:bg        = '#dfdfdf'
    let s:bgnc      = '#dadada'
    let s:comment   = '#5f5f00'

    " Rxvt spoiled me.
    let s:underline = '#505000'
    let s:italic    = '#aa4444'
    let s:bold      = '#5f557c'

    " Term colors go here.
    let s:color0    = '#000000'
    let s:color1    = '#840000'
    let s:color2    = '#008400'
    let s:color3    = '#846e00'
    let s:color4    = '#000084'
    let s:color5    = '#420084'
    let s:color6    = '#008484'
    let s:color7    = '#9595ac'
    let s:color8    = '#848484'
    let s:color9    = '#b70000'
    let s:color10   = '#428400'
    let s:color11   = '#b76a00'
    let s:color12   = '#005bb7'
    let s:color13   = '#b700b7'
    let s:color14   = '#008463'
    let s:color15   = '#e5e5e5'
else
    " Foreground and Background.
    let s:fg        = '#9595ac'
    let s:bg        = '#1a1a1a'
    let s:bgnc      = '#2a2a2a'

    " Rxvt spoiled me.
    let s:bold      = '#cfc5fc'
    let s:italic    = '#f0c0c0'
    let s:underline = '#f0ffca'
    let s:comment   = '#875f00'

    " Term colors go here.
    let s:color0    = '#000000'
    let s:color8    = '#6f6f6f'

    let s:color1    = '#db9090'
    let s:color9    = '#c24343'

    let s:color2    = '#b6db90'
    let s:color10   = '#82c243'

    let s:color3    = '#dbcf90'
    let s:color11   = '#db9970'

    let s:color4    = '#9090db'
    let s:color12   = '#90b6db'

    let s:color5    = '#b690db'
    let s:color13   = '#db90b6'

    let s:color6    = '#90dbdb'
    let s:color14   = '#6acfcf'

    let s:color7    = '#9595ac'
    let s:color15   = '#dbdbdb'
endif

" If you don't like grey, change these.
let s:xGrey = {
    \'232': '#080808',
    \'233': '#121212',
    \'234': '#1c1c1c',
    \'235': '#262626',
    \'236': '#303030',
    \'237': '#3a3a3a',
    \'238': '#444444',
    \'239': '#4e4e4e',
    \'240': '#585858',
    \'241': '#606060',
    \'242': '#666666',
    \'243': '#767676',
    \'244': '#808080',
    \'245': '#8a8a8a',
    \'246': '#949494',
    \'247': '#9e9e9e',
    \'248': '#a8a8a8',
    \'249': '#b2b2b2',
    \'250': '#bcbcbc',
    \'251': '#c6c6c6',
    \'252': '#d0d0d0',
    \'253': '#dadada',
    \'254': '#e4e4e4',
    \'255': '#eeeeee'
\}

" Nons:   -{{{1
    call s:hy('Normal'       , 'none' , 'none' , s:fg      , s:bg   , 'none'         )
    call s:hy('Folded'       , 'none' , 'none' , s:bold    , s:bg   , 'bold'         )
    call s:hy('FoldColumn'   , 'none' , 'none' , s:bold    , s:bg   , 'bold'         )
    call s:hy('ModeMsg'      , 'none' , 'none' , s:bold    , s:bg   , 'bold'         )
    call s:hy('Cursor'       , 'none' , 'none' , s:color15 , s:bg   , 'bold'         )
    call s:hy('Search'       , 'none' , 'none' , 'none'    , 'none' , 'inverse' )
    call s:hy('QuickFixLine' , 'none' , 'none' , 'none'    , 'none' , 'bold,inverse' )
    call s:hy('EndOfBuffer'  , 'none' , 'none' , 'none'    , 'none' , 'none'         )

" Red:    1{{{1
    call s:hy('String'     , '1'  , 'none' , s:color1  , 'bg'     , 'none')
    call s:hy('Boolean'    , '1'  , 'none' , s:color1  , 'bg'     , 'none')

    call s:hy('Keyword'    , '9'  , 'none' , s:color9  , 'bg'     , 'none')

    call s:hy('Error'      , '1'  , '9'    , s:color1  , s:color9 , 'none')
    call s:hy('ErrorMsg'   , '15' , '9'    , s:color15 , s:color9 , 'bold')
    call s:hy('Whitespace' , '15' , '9'    , s:color15 , s:color9 , 'bold')
    call s:hy('DiffDelete' , '15' , '9'    , s:color15 , s:color9 , 'bold')

" Green:  2{{{1
    call s:hy('Structure'    , '2'  , 'none' , s:color2  , 'bg'      , 'none'         )
    call s:hy('StorageClass' , '2'  , 'none' , s:color11 , 'bg'      , 'none'         )

    call s:hy('Type'         , '10' , 'none' , s:color10 , 'bg'      , 'none'         )

    call s:hy('MoreMsg'      , '10' , '15'   , s:color10 , s:color15 , 'bold,inverse' )
    call s:hy('DiffAdd'      , '15' , '10'   , s:color15 , s:color10 , 'none'         )

" Yellow: 3{{{1
    call s:hy('PreCondit'    , '3'  , 'none' , s:color3  , 'bg'      , 'none'         )
    call s:hy('TypeDef'      , '3'  , 'none' , s:color3  , 'bg'      , 'none'         )

    call s:hy('Directory'    , '11' , 'none' , s:color11 , 'bg'      , 'none'         )
    call s:hy('Todo'         , '11' , 'none' , s:color11 , 'bg'      , 'bold'         )

    call s:hy('WarningMsg'   , '3'  , '15'   , s:color3  , s:color15 , 'bold,inverse' )

" Blue:   4{{{1
    call s:hy('NonText'     , '4'  , 'none' , s:color4  , 'bg'      , 'none')
    call s:hy('Special'     , '4'  , 'none' , s:color4  , 'bg'      , 'none')
    call s:hy('SpecialChar' , '4'  , 'none' , s:color4  , 'bg'      , 'none')
    call s:hy('SpecialKey'  , '4'  , 'none' , s:color4  , 'bg'      , 'none')
    call s:hy('Label'       , '12' , 'none' , s:color12 , 'bg'      , 'none')
    call s:hy('Identifier'  , '12' , 'none' , s:color12 , 'bg'      , 'none')
    call s:hy('MoreMsg'     , '4'  , '15'   , s:color3  , s:color15 , 'bold,inverse' )

" Purple: 5{{{1
    call s:hy('Delimeter'  , '5'  , 'none' , s:color5  , 'bg' , 'none'         )
    call s:hy('Constant'   , '5'  , 'none' , s:color5  , 'bg' , 'none'         )
    call s:hy('Number'     , '5'  , 'none' , s:color5  , 'bg' , 'none'         )
    call s:hy('Statement'  , '5'  , 'none' , s:color5  , 'bg' , 'none'         )
    call s:hy('Conditonal' , '5'  , 'none' , s:color5  , 'bg' , 'none'         )

    call s:hy('Repeat'     , '13' , 'none' , s:color13 , 'bg' , 'none'         )
    call s:hy('Float'      , '13' , 'none' , s:color13 , 'bg' , 'none'         )
    call s:hy('Title'      , '13' , 'none' , s:color13 , 'bg' , 'bold'         )

    call s:hy('Question'   , '13' , 'none' , s:color13 , 'bg' , 'bold,inverse' )

" Cyan:   6{{{1
    call s:hy('Member'     , '6'    , 'none' , s:color6  , 'bg'      , 'none')
    call s:hy('Function'   , '6'    , 'none' , s:color6  , 'bg'      , 'none')
    call s:hy('Character'  , '6'    , 'none' , s:color6  , 'bg'      , 'none')

    call s:hy('Operator'   , '14'   , 'none' , s:color14 , 'bg'      , 'none')

    call s:hy('PMenuThumb' , 'none' , '6'    , 'none'    , s:color6  , 'none')

" Grey:   7{{{1
    call s:hy('Ignore'   , '7' , 'none' , s:color7 , 'bg' , 'italic' )
    call s:hy('PreProc'  , '7' , 'none' , s:color7 , 'bg' , 'none'   )

" Black:  0{{{1
" TODO discover why gui hates italics.
    call s:hy('VertSplit'    , '0' , 'none' , s:color0 , 'bg'     , 'none')
    call s:hy('Class'        , '8' , 'none' , s:color8 , 'bg'     , 'none')
    call s:hy('StatuslineNc' , '8' , '7'    , s:color8 , s:color7 , 'none')

" Accent: *{{{1
if &bg=='light'
    call s:hy('Comment'      , '58'   , 'none'  , s:comment       , 'bg'           , 'none'           )
    call s:hy('StatusLine'   , 'none'  , '255 ' , 'fg'           , s:xGrey['255'] , 'none'           )
    call s:hy('LineNr'       , '8   '  , '253 ' , s:color8       , s:xGrey['253'] , 'none'           )
    call s:hy('SignColumn'   , '8   '  , '253 ' , s:color8       , s:xGrey['253'] , 'none'           )
    call s:hy('Pmenu'        , '8   '  , '253 ' , s:color8       , s:xGrey['253'] , 'none'           )
    call s:hy('CursorLine'   , 'none'  , '254 ' , 'none'         , s:xGrey['251'] , 'none'           )
    call s:hy('CursorLineNr' , 'none'  , '251 ' , s:bold         , s:xGrey['251'] , 'bold'           )
    call s:hy('PmenuSbar'    , 'none'  , '249 ' , 'none'         , s:xGrey['249'] , 'none'           )
    call s:hy('ColorColumn'  , 'none'  , '249 ' , 'none'         , s:xGrey['249'] , 'none'           )
    call s:hy('DiffChange'   , 'none ' , '253'  , s:xGrey['245'] , 'none'         , 'bold'           )
    call s:hy('Visual'       , 'none'  , '123 ' , 'none'         , s:xGrey['247'] , 'bold'           )
    call s:hy('PmenuSel'     , 'none'  , '247 ' , s:bold         , s:xGrey['247'] , 'bold'           )
    call s:hy('IncSearch'    , 'none'  , '247 ' , s:bold         , s:xGrey['247'] , 'bold,underline' )
    call s:hy('WildMenu'     , 'none'  , '245 ' , s:bold         , s:xGrey['245'] , 'bold'           )
    call s:hy('MatchParen'   , 'none'  , '250 ' , s:bold         , s:xGrey['245'] , 'bold'           )

    call s:hy('User6'        , 'none'  , '255'  , 'none'         , s:xGrey['255'] , 'none'           )
    call s:hy('User3'        , 'none'  , '251'  , 'none'         , s:xGrey['251'] , 'bold'           )
    call s:hy('User1'        , '2   '  , '251'  , s:color2       , s:xGrey['251'] , 'bold'           )
    call s:hy('User2'        , '1   '  , '251'  , s:color1       , s:xGrey['251'] , 'bold'           )
    call s:hy('User5'        , '7   '  , '251'  , s:color7       , s:xGrey['251'] , 'bold'           )
    call s:hy('User4'        , 'none'  , '249'  , 'none'         , s:xGrey['249'] , 'none'           )

    call s:hy('NormalNC'     , 'none'  , '251'  , 'none'         , s:bgnc         , 'none'           )
    call s:hy('holdSearch'   , 'none'  , '250'  , 'none'         , s:xGrey['250'] , 'none'           )
    call s:hy('holdSearchC'  , 'none'  , '252'  , 'none'         , s:xGrey['239'] , 'bold'           )
    call s:hy('Conceal'      , 'none'  , '255'  , 'none'         , s:xGrey['233'] , 'bold'           )
    call s:hy('DiffText'     , '15'    , '12'   , s:color15      , s:color12      , 'none'           )
else
    call s:hy('Comment'      , '94'    , 'none' , s:comment      , 'bg'           , 'none'           )
    call s:hy('StatusLine'   , 'none'  , '233 ' , 'fg'           , s:xGrey['233'] , 'none'           )
    call s:hy('LineNr'       , '8   '  , '234 ' , s:color8       , s:xGrey['234'] , 'none'           )
    call s:hy('SignColumn'   , '8   '  , '234 ' , s:color8       , s:xGrey['234'] , 'none'           )
    call s:hy('Pmenu'        , '8   '  , '234 ' , s:color8       , s:xGrey['234'] , 'none'           )
    call s:hy('CursorLine'   , 'none'  , '235 ' , 'none'         , s:xGrey['235'] , 'none'           )
    call s:hy('CursorLineNr' , 'none'  , '235 ' , s:bold         , s:xGrey['235'] , 'bold'           )
    call s:hy('PmenuSbar'    , 'none'  , '236 ' , 'none'         , s:xGrey['236'] , 'none'           )
    call s:hy('ColorColumn'  , 'none'  , '236 ' , 'none'         , s:xGrey['236'] , 'none'           )
    call s:hy('DiffChange'   , 'none ' , '236'  , s:xGrey['236'] , 'none'         , 'bold'           )
    call s:hy('Visual'       , 'none'  , '237 ' , 'none'         , s:xGrey['237'] , 'bold'           )
    call s:hy('PmenuSel'     , 'none'  , '237 ' , s:bold         , s:xGrey['237'] , 'bold'           )
    call s:hy('IncSearch'    , 'none'  , '237 ' , s:bold         , s:xGrey['237'] , 'bold,underline' )
    call s:hy('WildMenu'     , 'none'  , '238 ' , s:bold         , s:xGrey['238'] , 'bold'           )
    call s:hy('MatchParen'   , 'none'  , '238 ' , s:bold         , s:xGrey['238'] , 'bold'           )

    call s:hy('User6'        , 'none'  , '234'  , 'none'         , s:xGrey['234'] , 'none'           )
    call s:hy('User3'        , 'none'  , '235'  , 'none'         , s:xGrey['235'] , 'bold'           )
    call s:hy('User1'        , '2   '  , '235'  , s:color2       , s:xGrey['235'] , 'bold'           )
    call s:hy('User2'        , '1   '  , '235'  , s:color1       , s:xGrey['235'] , 'bold'           )
    call s:hy('User5'        , '7   '  , '235'  , s:color7       , s:xGrey['235'] , 'bold'           )
    call s:hy('User4'        , 'none'  , '236'  , 'none'         , s:xGrey['236'] , 'none'           )

    call s:hy('NormalNC'     , 'none'  , '235'  , 'none'         , s:bgnc         , 'none'           )
    call s:hy('holdSearch'   , 'none'  , '237'  , 'none'         , s:xGrey['237'] , 'none'           )
    call s:hy('holdSearchC'  , 'none'  , '234'  , 'none'         , s:xGrey['233'] , 'bold,inverse'   )
    call s:hy('Conceal'      , 'none'  , '235'  , 'none'         , s:xGrey['235'] , 'bold'           )
    call s:hy('DiffText'     , '15'    , '14'   , s:color15      , s:color14      , 'none'           )
endif


" Relink  >{{{1
    hi link vimCommentTitle Title
    hi link vimIsCommand    Constant
    hi link vimHighlight    Member
    hi link diffAdded       DiffAdd
    hi link diffRemoved     DiffDelete
" }}}
" Plugin: & {{{1
    call s:hy('logicalbuffer'   , 'none' , 'none' , s:bold    , s:bg           , 'bold,inverse' )
    call s:hy('logicalmodified' , 'none' , 'none' , s:color2  , s:xGrey['236'] , 'bold'         )
    call s:hy('logicalreadonly' , 'none' , 'none' , s:color1  , s:xGrey['236'] , 'bold'         )
    call s:hy('logical0'        , '6'    , 'none' , s:color14 , s:xGrey['236'] , 'bold'         )
    call s:hy('logical1'        , '5'    , 'none' , s:color13 , s:xGrey['236'] , 'bold'         )
    call s:hy('logical2'        , '4'    , 'none' , s:color12 , s:xGrey['236'] , 'bold'         )
    call s:hy('logical3'        , '3'    , 'none' , s:color11 , s:xGrey['236'] , 'bold'         )
    call s:hy('logical4'        , '2'    , 'none' , s:color10 , s:xGrey['236'] , 'bold'         )
    call s:hy('logical5'        , '1'    , 'none' , s:color9  , s:xGrey['236'] , 'bold'         )
    call s:hy('logical6'        , '1'    , 'none' , s:color1  , s:xGrey['236'] , 'none'         )
    call s:hy('logical7'        , '2'    , 'none' , s:color2  , s:xGrey['236'] , 'none'         )
    call s:hy('logical8'        , '3'    , 'none' , s:color3  , s:xGrey['236'] , 'none'         )
    call s:hy('logical9'        , '4'    , 'none' , s:color4  , s:xGrey['236'] , 'none'         )
    call s:hy('logical10'       , '5'    , 'none' , s:color5  , s:xGrey['236'] , 'none'         )
    call s:hy('logical11'       , '6'    , 'none' , s:color6  , s:xGrey['236'] , 'none'         )
