return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        lazy = false,
        build = function()
            require("nvim-treesitter").install({
                "go", "vimdoc", "cpp", "c", "python", "bash"
            })
        end,
        config = function()
            require("nvim-treesitter").setup()

            -- Enable highlighting, indentation via Neovim's built-in APIs
            vim.api.nvim_create_autocmd("FileType", {
                callback = function()
                    local ok = pcall(vim.treesitter.start)
                    if not ok then return end
                end,
            })

            -- vim.wo.foldmethod = "expr"
            -- vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"

            vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end,
    },
}
