return {
    "folke/snacks.nvim",
    priority = 500,
    lazy = false,
    opts = {
        dashboard = { enabled = true },
        input = { enabled = true },
        quickfile = { enabled = true },
        picker = {
            enabled = true,
            formatters = {
                file = {
                    filename_first = true,
                },
            },
        },
        notifier = { enabled = true },
    },
}
