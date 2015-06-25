" ------------------------------------------------
"  Xaptao Airline Theme
"
" ------------------------------------------------

let g:airline#themes#xaptao#palette = {}

let s:N1   = [ '#333333' , '#cccccc' , 10  , 25, 'bold' ]
let s:N2   = [ '#ffffff' , '#444444' , 255 , 238 ]
let s:N3   = [ '#9cffd3' , '#202020' , 85  , 234 ]
let g:airline#themes#xaptao#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

" Modified
let g:airline#themes#xaptao#palette.normal_modified = {
      \ 'airline_c': [ '#ffffff' , '#5f005f' , 255     , 53      , ''     ] ,
      \ }


let s:I1 = [ '#00005f' , '#00dfff' , 17  , 45  ]
let s:I2 = [ '#ffffff' , '#005fff' , 255 , 27  ]
let s:I3 = [ '#ffffff' , '#000080' , 15  , 17  ]
let g:airline#themes#xaptao#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#xaptao#palette.insert_modified = {
      \ 'airline_c': [ '#ffffff' , '#5f005f' , 255     , 53      , ''     ] ,
      \ }
let g:airline#themes#xaptao#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#d78700' , s:I1[2] , 172     , ''     ] ,
      \ }


let g:airline#themes#xaptao#palette.replace = copy(g:airline#themes#xaptao#palette.insert)
let g:airline#themes#xaptao#palette.replace.airline_a = [ s:I2[0]   , '#af0000' , s:I2[2] , 124     , ''     ]
let g:airline#themes#xaptao#palette.replace_modified = g:airline#themes#xaptao#palette.insert_modified


let s:V1 = [ '#000000' , '#ffaf00' , 232 , 214 ]
let s:V2 = [ '#000000' , '#ff5f00' , 232 , 202 ]
let s:V3 = [ '#ffffff' , '#5f0000' , 15  , 52  ]
let g:airline#themes#xaptao#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#xaptao#palette.visual_modified = {
      \ 'airline_c': [ '#ffffff' , '#5f005f' , 255     , 53      , ''     ] ,
      \ }


let s:IA1 = [ '#4e4e4e' , '#1c1c1c' , 239 , 234 , '' ]
let s:IA2 = [ '#4e4e4e' , '#262626' , 239 , 235 , '' ]
let s:IA3 = [ '#4e4e4e' , '#303030' , 239 , 236 , '' ]
let g:airline#themes#xaptao#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#xaptao#palette.inactive_modified = {
      \ 'airline_c': [ '#875faf' , '' , 97 , '' , '' ] ,
      \ }


let g:airline#themes#xaptao#palette.accents = {
      \ 'red': [ '#ff0000' , '' , 160 , ''  ]
      \ }


if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#xaptao#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#d7d7ff' , '#5f00af' , 189 , 55  , ''     ],
      \ [ '#ffffff' , '#875fd7' , 231 , 98  , ''     ],
      \ [ '#5f00af' , '#ffffff' , 55  , 231 , 'bold' ])
