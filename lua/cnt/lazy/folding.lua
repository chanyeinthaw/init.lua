function _G.fold_text()
  local lines = vim.v.foldend - vim.v.foldstart - 1
  return vim.fn.getline(vim.v.foldstart) .. " .. " .. lines .. " lines .. " .. vim.fn.getline(vim.v.foldend):gsub("^%s*", "")
end

return {
	-- {
	-- 	"kevinhwang91/nvim-ufo",
	-- 	dependencies = {
	-- 		"kevinhwang91/promise-async",
	-- 	}
	-- },
}
-- vim: ts=2 sts=2 sw=2 et
