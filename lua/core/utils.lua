local M = {}

M.load_mapping = function (mapping_name)
	require("core.mappings")[mapping_name]()
end

return M
