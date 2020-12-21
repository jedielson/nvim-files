"set $HOME = "~/AppData/Local"
"
let path = "~/AppData/Local"

if has('unix')
  let path = "~/.config"
endif


let paths = [
      \'/nvim/plugins/plugins.vim',
      \'/nvim/general/settings.vim',
      \'/nvim/themes/onedark.vim', 
      \'/nvim/plugins/coc.vim',
      \'/nvim/keys/mappings.vim',
      \'/nvim/themes/airline.vim',
      \'/nvim/plug-config/start-screen.vim',
      \'/nvim/plug-config/signify.vim',
      \'/nvim/plug-config/which-key.vim',
      \'/nvim/plug-config/floaterm.vim',
      \]

for s in paths	
  execute 'source'.fnameescape(path.s)
endfor

