" ------------------------------------------------
"  Xaptao Airline Theme
"
" ------------------------------------------------

let g:airline#themes#xaptao#palette = {}

let s:N1   = [ '#333333' , '#cccccc' , 251 , 25  ]
let s:N2   = [ '#333333' , '#cccccc' , 186 , 0   ]
let s:N3   = [ '#333333' , '#cccccc' , 247 , 233 ]
let g:airline#themes#xaptao#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

" Modified
let g:airline#themes#xaptao#palette.normal_modified = {
      \ 'airline_c': [ '#ffffff' , '#cccccc' , 215     , 235      , ''     ] ,
      \ }


let s:I1 = [ '#333333' , '#cccccc' , 255  , 22  ]
let s:I2 = [ '#333333' , '#cccccc' , 255  , 0   ]
let s:I3 = [ '#333333' , '#cccccc' , 248  , 235 ]
let g:airline#themes#xaptao#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#xaptao#palette.insert_modified = {
      \ 'airline_c': [ '#333333' , '#cccccc' , 255     , 237      , ''     ] ,
      \ }
let g:airline#themes#xaptao#palette.insert_paste = {
      \ 'airline_a': [ s:I1[0]   , '#cccccc' , s:I1[2] , 172     , ''     ] ,
      \ }


let g:airline#themes#xaptao#palette.replace = copy(g:airline#themes#xaptao#palette.insert)
let g:airline#themes#xaptao#palette.replace.airline_a = [ s:I2[0]   , '#af0000' , s:I2[2] , 124     , ''     ]
let g:airline#themes#xaptao#palette.replace_modified = g:airline#themes#xaptao#palette.insert_modified


let s:V1 = [ '#333333' , '#cccccc' , 232 , 214 ]
let s:V2 = [ '#333333' , '#cccccc' , 255 , 0   ]
let s:V3 = [ '#333333' , '#cccccc' , 248  , 235  ]
let g:airline#themes#xaptao#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#xaptao#palette.visual_modified = {
      \ 'airline_c': [ '#333333' , '#cccccc' , 255     , 237      , ''     ] ,
      \ }


let s:IA1 = [ '#333333' , '#cccccc' , 239 , 234 , '' ]
let s:IA2 = [ '#333333' , '#cccccc' , 239 , 235 , '' ]
let s:IA3 = [ '#333333' , '#cccccc' , 239 , 236 , '' ]
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
