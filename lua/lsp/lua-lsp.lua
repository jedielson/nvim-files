USER = vim.fn.expand('$USER')

local sumneko_root_path = ""
local sumneko_binary = ""

if vim.fn.has("unix") == 1 then
    sumneko_root_path = "/home/".. USER .. "/.local/lib/lua-language-server"
    sumneko_binary = "/home/".. USER .. "/.local/lib/lua-language-server/bin/Linux/lua-language-server"
elseif vim.fn.has('win32') == 1 then
    sumneko_root_path = "~/AppData/Local/lib/lua-language-server"
    sumneko_binary = "~/AppData/Local/lib/lua-language-server/bin/Linux/lua-language-server"
else
    print("Unsupported system for sumneko")
end

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

require'lspconfig'.sumneko_lua.setup {
  cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = runtime_path,
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}