vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client and client.name == "typescript-tools" then
      local root_dir = client.config.root_dir or vim.loop.cwd()
      local deno_json = root_dir .. "/deno.json"
      if vim.loop.fs_stat(deno_json) then
        vim.notify("Detaching LSP client: " .. client.name .. " due to presence of deno.json", vim.log.levels.INFO)
        client.stop()
      end
    end
  end,
})
