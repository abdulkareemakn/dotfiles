return {
    "akinsho/bufferline.nvim",
    enabled = false,
    version = "*",
    config = function()
        require("bufferline").setup( {
            options = {
                always_show_bufferline = false,
            },
        })
    end,
}
