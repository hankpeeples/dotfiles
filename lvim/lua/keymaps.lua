local vim = vim;

-- map custom keybinds
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("i", "kj", "<Esc>")
map("v", "kj", "<Esc>")

lvim.keys.normal_mode["<leader>y"] = ":source %<CR>"
lvim.keys.normal_mode["tt"] = ":ToggleTerm<CR>"
lvim.keys.normal_mode["<leader>utt"] = ":UndoTreeToggle<CR>"
lvim.keys.normal_mode["<leader>ps"] = ":PackerSync<CR>"
lvim.keys.normal_mode["<leader>qa"] = ":confirm qall<CR>"
-- Go mappings
lvim.keys.normal_mode["<leader>gl"] = ":GoLint<CR>"
lvim.keys.normal_mode["<leader>gd"] = ":GoDefType<CR>"
lvim.keys.normal_mode["<leader>ge"] = ":GoIfErr<CR>"

-- Rust Mappings
lvim.keys.normal_mode["<leader>cr"] = ":lua require('crates').reload()<CR>"
lvim.keys.normal_mode["<leader>ca"] = ":lua require('crates').update_all_crates()<CR>"
lvim.keys.normal_mode["<leader>cd"] = ":lua require('crates').open_documentation()<CR>"

lvim.keys.normal_mode["<leader>rr"] = ":RustRun<CR>"
lvim.keys.normal_mode["<leader>re"] = ":RustExpand<CR>"

-- add your own keymapping
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
-- unmap a default keymapping
-- vim.keymap.del("n", "<leader>c")
-- override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--     -- for input mode
--     i = {
--         ["<C-j>"] = actions.move_selection_next,
--         ["<C-k>"] = actions.move_selection_previous,
--         ["<C-n>"] = actions.cycle_history_next,
--         ["<C-p>"] = actions.cycle_history_prev,
--     },
--     -- for normal mode
--     n = {
--         ["<C-j>"] = actions.move_selection_next,
--         ["<C-k>"] = actions.move_selection_previous,
--     },
-- }
