autocmd BufNewFile,BufRead *.hcl set filetype=hcl

" Nomad
autocmd BufNewFile,BufRead *.nomad set filetype=nomad

autocmd FileType nomad set syntax=hcl

" Terraform
autocmd BufNewFile,BufRead *.tf     set filetype=terraform
autocmd BufNewFile,BufRead *.tfvars set filetype=terraform

autocmd FileType terraform set syntax=hcl
