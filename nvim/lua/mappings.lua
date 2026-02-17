require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("t", "<esc>", [[<C-\><C-n>]], { noremap = true, silent = true })

-- debugging
map("n", "<leader>da", function() require("dap").continue() end, { desc = "Continue Dap"})
map("n", "<leader>de", function() require("dap").run_to_cursor() end, { desc = "Run to Cursor Dap"})
map("n", "<leader>dd", function() require("dap").step_over() end, { desc = "Step Over Dap"})
map("n", "<leader>df", function() require("dap").continue() end, { desc = "Step Into Dap"})
map("n", "<leader>dg", function() require("dap").step_out() end, { desc = "Step Out Dap"})
map("n", "<leader>dr", function() require("dap").restart() end, { desc = "Restart Dap"})
map("n", "<leader>ds", function() require("dap").pause() end, { desc = "Pause Dap"})
map("n", "<leader>du", function() require("dapui").toggle() end, { desc = "Toggle Dap UI"})
map("n", "<leader>dv", function() require("dap").toggle_breakpoint() end, { desc = "Toggle Breakpoint Dap"})
map("n", "<leader>dt", function() require("dap").terminate() end, { desc = "Terminate Dap"})

-- LSP
map("n", "<leader>k", function() vim.lsp.buf.signature_help() end, { desc = "LSP Signature Help" });
map("n", "<leader>ca", function() vim.lsp.buf.code_action() end, { desc = "LSP Code Actions" });

-- cmake
map("n", "<F5>", ":CMakeRun<CR>", { silent = true })
map("n", "<F6>", ":CMakeBuild<CR>", { silent = true })
map("n", "<F7>", ":CMakeGenerate<CR>", { silent = true })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
