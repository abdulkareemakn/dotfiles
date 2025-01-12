return {
    "zaldih/themery.nvim",
    lazy = false,
    config = function()
        require("themery").setup({
            themes = {
                {
                    name = "Ayu Light",
                    colorscheme = "ayu",
                    before = [[vim.g.ayucolor="light"]],
                },

                { name = "Catppuccin Latte",           colorscheme = "catppuccin-latte" },

                { name = "Github Light",               colorscheme = "github_light" },
                { name = "Github Light Default",       colorscheme = "github_light_default" },
                { name = "Github Light High Contrast", colorscheme = "github_light_high_contrast" },
                { name = "Github Light Colorblind",    colorscheme = "github_light_colorblind" },
                { name = "Github Light Tritanopia",    colorscheme = "github_light_tritanopia" },

                {
                    name = "Gruvbox Light",
                    colorscheme = "gruvbox",
                    before = [[vim.o.background="light"]],
                },

                { name = "Kanagawa Lotus", colorscheme = "kanagawa-lotus" },

                {
                    name = "Material Lighter",
                    colorscheme = "material",
                    before = [[vim.g.material_style="lighter"]],
                },

                { name = "OneLight",       colorscheme = "onelight" },

                { name = "Rose Pine Dawn", colorscheme = "rose-pine-dawn" },

                { name = "TokyoNight Day", colorscheme = "tokyonight-day" },

                {
                    name = "Gruvbox Dark",
                    colorscheme = "gruvbox",
                    before = [[vim.o.background="dark"]],
                },

                { name = "Kanagawa Wave", colorscheme = "kanagawa-wave" },
                { name = "Kanagawa Dragon", colorscheme = "kanagawa-dragon" },

                {
                    name = "Material Darker",
                    colorscheme = "material",
                    before = [[vim.g.material_style="darker"]],
                },

                {
                    name = "Material Oceanic",
                    colorscheme = "material",
                    before = [[vim.g.material_style="oceanic"]],
                },

                {
                    name = "Material Palenight",
                    colorscheme = "material",
                    before = [[vim.g.material_style="palenight"]],
                },

                {
                    name = "Material Deep Ocean",
                    colorscheme = "material",
                    before = [[vim.g.material_style="deep ocean"]],
                },

                { name = "OneDark",          colorscheme = "onedark" },
                { name = "OneDark Vivid",    colorscheme = "onedark_vivid" },
                { name = "OneDark Dark",     colorscheme = "onedark_dark" },

                { name = "Rose Pine",        colorscheme = "rose-pine-main" },
                { name = "Rose Pine Moon",   colorscheme = "rose-pine-moon" },

                { name = "TokyoNight Night", colorscheme = "tokyonight-night" },
                { name = "TokyoNight Storm", colorscheme = "tokyonight-storm" },
                { name = "TokyoNight Moon",  colorscheme = "tokyonight-moon" },
            },
        })
    end,
}
