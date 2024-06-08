return {
  {
    "rmagatti/auto-session",
    config = function()
      require("auto-session").setup({
        log_level = "error",
        auto_session_suppress_dirs = { "~/", "~/Downloads", "/" },
        -- cwd_change_handling = {
        -- 	post_cwd_changed_hook = function()
        -- 		-- require("lualine").refresh()
        -- 	end,
        -- },
      })
    end,
  },
  {
    "rmagatti/session-lens",
    requires = { "rmagatti/auto-session", "nvim-telescope/telescope.nvim" },
    config = function()
      require("session-lens").setup({
        -- theme = "ivy",
        -- previewer = true,
        prompt_title = "Sessions",
      })

      vim.keymap.set("n", "<leader>ss", function()
        vim.cmd("SearchSession")
        -- _G.send_escape()
      end, {
        desc = "[S]earch [s]essions",
      })
    end,
  },
}
