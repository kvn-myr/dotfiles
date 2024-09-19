require("nightfox").setup({
    options = {
        colorblind = {
            enable = true,
            severity = {
                --protan = 1,
                deutan = 1,
            },
        },
    },
})

vim.cmd("colorscheme nightfox")

