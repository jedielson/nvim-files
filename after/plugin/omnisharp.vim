lua << EOF
 local nvim_lsp = require('lspconfig')

 local on_attach = function(client, bufferNumber)
    require('completion').on_attach(client)
 end

 local omnisharp_root = ""
 if vim.fn.has('unix') == 1 then
     print('Hello from linux\n')
     omnisharp_root = "/home/jedi/.cache/omnisharp-vim/omnisharp-roslyn/run"
 else
      print('Hello from Windows\n')
      omnisharp_root = "C:\\ProgramData\\chocolatey\\bin\\OmniSharp.exe"
  end

 local pid = vim.fn.getpid()
 local omnisharp_bin = nvim_lsp.omnisharp.setup({ cmd = { omnisharp_root, "--languageserver" , "--hostPID", tostring(pid) } })

EOF
