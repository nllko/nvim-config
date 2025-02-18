return {
	"luukvbaal/statuscol.nvim",
	opts = function()
		local builtin = require("statuscol.builtin")
		return {
			setopt = true,
			-- override the default list of segments with:
			-- number-less fold indicator, then signs, then line number & separator
			segments = {
				{ text = { builtin.foldfunc }, click = "v:lua.ScFa" },
				{
					sign = { namespace = { "diagnostic/signs" }, maxwidth = 2, auto = true },
					click = "v:lua.ScSa",
				},
				{ text = { builtin.lnumfunc }, click = "v:lua.ScLa" },
				{
					sign = { namespace = { "gitsign" }, maxwidth = 2, colwidth = 1, auto = true, wrap = true },
					click = "v:lua.ScSa",
				},
			},
		}
	end,
}
