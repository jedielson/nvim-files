lua << EOF
 local nvim_lsp = require('lspconfig')

 local on_attach = function(client, bufferNumber)
    require('completion').on_attach(client)
 end

 local omnisharp_bin = "C:\\ProgramData\\chocolatey\\bin\\OmniSharp.exe"
 local pid = vim.fn.getpid()
 local omnisharp_bin =  nvim_lsp.omnisharp.setup({ cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) } })

EOF
