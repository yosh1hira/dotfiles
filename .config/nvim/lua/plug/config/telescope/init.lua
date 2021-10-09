local status, telescope = pcall(require, "telescope")

if not status then
  return
end

telescope.setup {
  defaults = {
    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
    },
    color_devicons = true,
  }
}

local option = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<F1>", "<CMD>Telescope find_files theme=dropdown<CR>", option)
vim.api.nvim_set_keymap("n", "<F2>", "<CMD>Telescope file_browser theme=dropdown<CR>", option)
