vim.pack.add({
	{ src = "https://github.com/silentium-theme/silentium.nvim" },
}, { confirm = false })

require("silentium").setup({
	accent = "#ff0070",
})
