require("cnt.globals")
require("cnt.settings")

local utils = require("cnt.utils")
utils.glob_require("cnt/remaps")
utils.glob_require("cnt/autocmds")

require("cnt.lazy_init")
-- vim: ts=2 sts=2 sw=2 et
