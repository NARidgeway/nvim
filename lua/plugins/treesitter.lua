return{
	'nvim-treesitter/nvim-treesitter',
	-- {run = ':TSUpdate'},
	config = function()
		require'nvim-treesitter.configs'.setup {
			-- A list of parser names, or "all" (the listed parsers MUST always be installed)
			ensure_installed = "all",

			-- Install parsers synchronously (only applied to `ensure_installed`)
			sync_install = false,

			-- Automatically install missing parsers when entering buffer
			-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
			auto_install = true,

			highlight = {
				enable = true,
				-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
				-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
				-- Using this option may slow down your editor, and you may see some duplicate highlights.
				-- Instead of true it can also be a list of languages
				additional_vim_regex_highlighting = false,
			},
		}
	end
}

--[[
I had to do some extra work to get this working on Windows. It could not find a C compiler.

1. Installed Chocolatey using this one-liner.

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

2. choco install mingw

3. Import-Module $env:ChocolateyInstall\helpers\chocolateyProfile.psm1

4. refreshenv

There is a page that has more windows support topics:
https://github.com/nvim-treesitter/nvim-treesitter/wiki/Windows-support
--]]

