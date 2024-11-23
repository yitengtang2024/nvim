local builtin = require('telescope.builtin')
-- Basic Telescope setup
require('telescope').setup({
    defaults = {
        prompt_prefix = "> ",
        selection_caret = "> ",
        path_display = {"smart"},
    },
    pickers = {
        find_files = {
            theme = "dropdown",
        }
    },
    extensions = {}
})


-- 进入telescope页面会是插入模式，回到正常模式就可以用j和k来移动了

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})  -- 环境里要安装ripgrep
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
