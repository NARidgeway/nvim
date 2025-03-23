return {
    -- Mason
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    -- Mason to NeovimLSP Integration
    {
        "williamboman/mason-lspconfig",
        dependencies = { "williamboman/mason.nvim" },
        config = function()
            require("mason-lspconfig").setup {
                ensure_installed = {
                    "lua_ls",
                    "powershell_es",
                    "omnisharp"
                }
            }

            local lspconfig = require("lspconfig")

            -- Lua LSP setup
            lspconfig.lua_ls.setup {
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = {"vim"},
                        },
                    },
                },
            }

            -- PowerShell LSP setup
            lspconfig.powershell_es.setup {
                -- Dont think I need this line anymore
                -- cmd = { "pwsh", "-NoLogo", "-NoProfile", "-Command", "C:/Users/Admin/AppData/Local/nvim-data/mason/packages/powershell-editor-services/PowerShellEditorServices/Start-EditorServices.ps1" },
                bundle_path = "C:/Users/Admin/AppData/Local/nvim-data/mason/packages/powershell-editor-services",
                root_dir = function()
                    return vim.fn.getcwd()
                end,
                single_file_support = true,
            }

            -- OmniSharp setup for C#
            lspconfig.omnisharp.setup {
                cmd = { "dotnet", "C:/Users/Admin/AppData/Local/nvim-data/mason/packages/omnisharp/libexec/OmniSharp.dll" },
                settings = {
                    FormattingOptions = { EnableEditorConfigSupport = true, OrganizeImports = nil },
                    MsBuild = { LoadProjectsOnDemand = nil },
                    RoslynExtensionsOptions = { EnableAnalyzersSupport = true, EnableImportCompletion = nil, AnalyzeOpenDocumentsOnly = nil },
                    Sdk = { IncludePrereleases = true },
                },
            }
        end
    },
    -- Neovim LSP handler
    {
        "neovim/nvim-lspconfig"
    },
    -- LSP Autocompletion
    {
        "hrsh7th/nvim-cmp",
        config = function()
            local cmp = require'cmp'
            cmp.setup({
                completion = { completeopt = 'menu,menuone,noinsert' },
                mapping = {
                    ['<C-n>'] = cmp.mapping.select_next_item(),
                    ['<C-p>'] = cmp.mapping.select_prev_item(),
                    ['<Tab>'] = cmp.mapping.confirm({ select = true }),
                },
                sources = cmp.config.sources({
                    { name = 'nvim_lsp' },
                    { name = 'buffer' },
                    { name = 'path' },
                })
            })
        end
    },
    {
        "hrsh7th/cmp-nvim-lsp"
    }
}

