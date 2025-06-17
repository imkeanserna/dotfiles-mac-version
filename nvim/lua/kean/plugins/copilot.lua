return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  opts = {
    suggestion = {
      enabled = not vim.g.ai_cmp,
      auto_trigger = true,
      hide_during_completion = vim.g.ai_cmp,
      keymap = {
        accept = "<C-l>",
        next = "<M-]>",
        prev = "<M-[>",
        dismiss = "<C-]>",
      },
    },
    panel = {
      enabled = false,
    },
    filetypes = {
      markdown = true,
      help = true,
      yaml = false,
      gitcommit = false,
    },
    copilot_node_command = "node", -- make sure Node.js v20+ is installed
  },
}
