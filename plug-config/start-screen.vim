let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'files',     'header': ['   Files']            },
      \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
      \ ]

let g:startify_bookmarks = [
            \ { 'c': '~/AppData/Local/nvim/init.vim' },
            \ 'D:/SourceCodes/estudos'
            \ ]

let g:startify_session_persistence = 1
let g:startify_enable_special = 0

let g:startify_custom_header = [                      
       \'             (         ',
       \'   (     (   )\ )  (   ',
       \'   )\   ))\ (()/(  )\  ',
       \'  ((_) /((_) ((_))((_) ',
       \' _ | |(_))   _| |  (_) ',
       \'| || |/ -_)/ _` |  | | ',
       \' \__/ \___|\__,_|  |_| ']
                       
