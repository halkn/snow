let s:gry0 = [ "#eff2f7", 255 ]
let s:gry1 = [ "#dce2eb", 254 ]
let s:gry3 = [ "#434e5f", 239 ]
let s:red_ = [ "#c84343", 167 ]
let s:mgnt = [ "#b051a5", 133 ]
let s:gren = [ "#408835", 28 ]
let s:blue = [ "#007ed4", 32 ]

let s:p = { "normal" : {} , "inactive": {} , "insert"  : {} ,
          \ "replace": {} , "visual"  : {} , "tabline" : {} }

let s:p.normal.left     = [[ s:gry0, s:gry3 ], [ s:gry3, s:gry1 ]]
let s:p.normal.middle   = [[ s:gry3, s:gry1 ]]
let s:p.normal.right    = [[ s:gry0, s:gry3 ], [ s:gry0, s:gry3 ]]

let s:p.inactive.left   = copy(s:p.normal.middle)
let s:p.inactive.middle = copy(s:p.normal.middle)
let s:p.inactive.right  = copy(s:p.normal.middle)

let s:p.insert.left     = [[ s:gry0, s:gren ]]
let s:p.insert.right    = [[ s:gry0, s:gren ], [ s:gry0, s:gren ]]

let s:p.visual.left     = [[ s:gry0, s:blue ]]
let s:p.visual.right    = [[ s:gry0, s:blue ], [ s:gry0, s:blue ]]

let s:p.replace.left    = [[ s:gry0, s:red_ ]]
let s:p.replace.right   = [[ s:gry0, s:red_ ], [ s:gry0, s:red_ ]]

let s:p.tabline.left    = copy(s:p.normal.middle)
let s:p.tabline.tabsel  = [[ s:gry0, s:gren ]]
let s:p.tabline.right   = copy(s:p.normal.middle)

let s:p.normal.error    = [[ s:red_, s:gry0 ]]
let s:p.normal.warning  = [[ s:mgnt, s:gry0 ]]

let g:lightline#colorscheme#snow_light#palette =
  \ lightline#colorscheme#flatten(s:p)

