vim.pack.add({
	{ src = "https://github.com/silentium-theme/silentium.nvim" },
}, { confirm = false })

require("silentium").setup({
	accent = "#ef9f76",
})
