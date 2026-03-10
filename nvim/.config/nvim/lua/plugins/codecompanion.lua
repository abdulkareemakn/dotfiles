return {
    "olimorris/codecompanion.nvim",
    version = "^18.0.0",
    opts = {
        interactions = {
            chat = {
                adapter = "opencode"
            }
        }
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
    },
}
