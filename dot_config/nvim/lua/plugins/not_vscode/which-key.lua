return {
  { -- Useful plugin to show you pending keybinds.
    "folke/which-key.nvim",
    event = "VimEnter", -- Sets the loading event to 'VimEnter'
    config = function() -- This is the function that runs, AFTER loading
      local wk = require("which-key")
      wk.setup()

      -- Document existing key chains
      wk.add({
        {
          "<leader>c",
          group = "[C]ode",
        },
        {
          "<leader>d",
          group = "[D]ocument | [D]ebug",
        },
        {
          "<leader>r",
          group = "[R]ename | [R]est Client",
        },
        {
          "<leader>s",
          group = "[S]earch",
        },
        {
          "<leader>w",
          group = "[W]orkspace",
        },
        {
          "<leader>v",
          group = "Python [V]itrul Environment",
        },
        {
          "<leader>h",
          group = "Git [H]unk",
        },
        {
          "<leader>g",
          group = "[G]enrate Using LLM",
        },
      })
    end,
  },
}
