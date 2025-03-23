-- Settings to make :! and :term use PowerShell
vim.o.shell = "powershell.exe"
vim.o.shellcmdflag = "-NoLogo -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.UTF8Encoding]::new();$PSDefaultParameterValues['Out-File:Encoding']='utf8';"
vim.o.shellredir = "2>&1 | %{ \"$_\" } | Out-File %s; exit $LastExitCode"
vim.o.shellpipe = "2>&1 | %{ \"$_\" } | Tee-Object %s; exit $LastExitCode"
vim.o.shellquote = ""
vim.o.shellxquote = ""

-- Map F9 to run the current file in PowerShell
vim.api.nvim_set_keymap('n', '<F9>', ':!powershell -NoLogo -ExecutionPolicy RemoteSigned -Command "& \'%:p\'"<CR><CR>', { noremap = true, silent = true })