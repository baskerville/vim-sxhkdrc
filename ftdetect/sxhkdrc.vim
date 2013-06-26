if &compatible || v:version < 603
    finish
endif

autocmd BufNewFile,BufRead sxhkdrc,*.sxhkdrc set ft=sxhkdrc
