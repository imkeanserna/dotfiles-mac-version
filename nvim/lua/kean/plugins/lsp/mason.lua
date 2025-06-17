return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    local mason_tool_installer = require("mason-tool-installer")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        -- Web development
          "ts_ls",       -- for JavaScript/TypeScript
          "html",           -- for HTML
          "cssls",          -- for CSS
          "tailwindcss",    -- for Tailwind CSS
          "emmet_ls",       -- for Emmet support
          "jsonls",         -- for JSON config files
          "graphql",        -- for GraphQL

        -- Frameworks
          "prismals",       -- for Prisma
          "eslint",         -- for linting JS/TS

        -- Backend
          "lua_ls",         -- for Lua (including Neovim config)
          "pyright",        -- for Python
          "gopls",          -- for Go
          "rust_analyzer",  -- for Rust
          "bashls",         -- for Bash scripts
          "dockerls",       -- for Dockerfiles

        -- Infra & Config
          "yamlls",         -- for YAML
          "marksman",       -- for Markdown
          "terraformls",    -- for Terraform
        },
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "prettier", -- prettier formatter
        "stylua", -- lua formatter
        "isort", -- python formatter
        "black", -- python formatter
        "pylint",
        "eslint_d",
      },
    })
  end,
}
