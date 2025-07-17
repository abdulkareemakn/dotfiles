return {
    "nvimtools/none-ls.nvim",
    enabled = true,
    event = "VeryLazy",
    dependencies = {
        "nvimtools/none-ls-extras.nvim",
        "davidmh/cspell.nvim",
        "nvim-lua/plenary.nvim",
    },
    config = function()
        local null_ls = require("null-ls")
        local cspell = require("cspell")
        local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
        null_ls.setup({
            sources = {
                --				require("none-ls.diagnostics.cspell"),
                --				require("none-ls.code_actions.cspell"),
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettierd,
                null_ls.builtins.formatting.clang_format,
                --				null_ls.builtins.completion.spell,
                --				require("none-ls.diagnostics.eslint"), -- requires none-ls-extras.nvim
            },
            on_attach = function(client, bufnr)
                if client.supports_method("textDocument/formatting") then
                    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
                    vim.api.nvim_create_autocmd("BufWritePre", {
                        group = augroup,
                        buffer = bufnr,
                        callback = function()
                            -- For Neovim 0.8 and later versions, use this:
                            vim.lsp.buf.format({ async = false })
                        end,
                    })
                end
            end,
        })

        vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "Format Code" })
    end,
}
