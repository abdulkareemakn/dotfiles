return {
    "akinsho/bufferline.nvim",
    enabled = false,
    version = "*",
    config = function()
        require("bufferline").setup({
            options = {
                close_command = function(n)
                    Snacks.bufdelete(n)
                end,
                right_mouse_command = function(n)
                    Snacks.bufdelete(n)
                end,

                diagnostics = "nvim_lsp",
                always_show_bufferline = false,
            },
        })
    end,
}
