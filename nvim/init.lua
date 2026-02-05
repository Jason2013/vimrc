-- 命令行模式：Cmd+V 从系统剪贴板粘贴
vim.keymap.set("c", "<C-v>", "<C-r>+")

-- 命令行模式：Shift+Insert 从系统剪贴板粘贴
vim.keymap.set("c", "<S-Insert>", "<C-r>+")
--
-- 如果你还想在普通插入模式下也用 Shift+Insert 粘贴系统剪贴板，可以再加：
vim.keymap.set("i", "<S-Insert>", "<C-r>+")
