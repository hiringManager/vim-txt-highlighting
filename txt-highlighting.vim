" Read the list of nouns into a Vim list
let g:nouns = readfile('nouns.txt')
let g:verbs = readfile('verbs.txt')
let g:names = readfile('names.txt')

" Define a syntax highlighting group for the them
syntax keyword Nouns containedin=ALL contained ctermfg=blue
syntax keyword Verbs containedin=ALL contained ctermfg=red
syntax keyword Names containedin=ALL contained ctermfg=green

" Loop through each word

for noun in g:nouns
  execute 'syntax keyword Nouns ' . noun
endfor

for verb in g:verbs
  execute 'syntax keyword Verbs ' . verb
endfor

for name in g:names
  execute 'syntax keyword Names ' . name
endfor

" Define the color for the Nouns highlight group

hi Nouns ctermfg=blue
hi Verbs ctermfg=red
hi Names ctermfg=green

