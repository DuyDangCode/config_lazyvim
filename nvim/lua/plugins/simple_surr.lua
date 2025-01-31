return {
  "kunkka19xx/simple-surr",
  config = function()
    require("simple-surr").setup({
      keymaps = {
        surround_selection = "<leader>cw", -- Keymap for surrounding selection
        surround_word = "<leader>cww", -- Keymap for surrounding word
        remove_or_change_surround_word = "<leader>cwr", -- Keymap for removing/changing surrounding word
        toggle_or_change_surround_selection = "<leader>cws", -- Keymap for removing/changing surrounding selected text
      },
    })
  end,
}
