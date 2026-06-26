-- 命令行模式：Cmd+V 从系统剪贴板粘贴
vim.keymap.set("c", "<C-v>", "<C-r>+")

-- 命令行模式：Shift+Insert 从系统剪贴板粘贴
vim.keymap.set("c", "<S-Insert>", "<C-r>+")
--
-- 如果你还想在普通插入模式下也用 Shift+Insert 粘贴系统剪贴板，可以再加：
vim.keymap.set("i", "<S-Insert>", "<C-r>+")

-- -- Neovide 中文英文独立字体大小（你记忆里的官方正确方案）
-- if vim.g.goneovim then
--   -- vim.g.goneovim_scale_wide_fonts = false  -- 关键开关
--   vim.o.guifont = "JetBrains Mono:h11:cANSI:qDRAFT" --h24,Microsoft YaHei Mono:h16"
--   vim.o.guifontwide = "Microsoft YaHei Mono:h13:cGB2312:qDRAFT"
-- end
-- 
-- if vim.g.neovide then
--     -- 1. 关闭所有粒子效果（闪电、气泡、导轨等）
--     -- vim.g.neovide_cursor_vfx_mode = ""
--     
--     -- 2. 关闭光标移动动画（设为 0 即为禁用）
--     vim.g.neovide_cursor_animation_length = 0.1
--     
--     -- 3. 关闭光标拖尾（行走时的粗细变化）
--     --vim.g.neovide_cursor_trail_size = 0
--     
--     -- 4. 调整刷新率（如果觉得卡顿，可以匹配你的显示器刷新率，如 60 或 144）
--     vim.g.neovide_refresh_rate = 60
--     
--     -- 5. 字体设置（GUI 模式下建议设置自己喜欢的电力字体）
--     -- vim.o.guifont = "JetBrainsMono Nerd Font:h12"
--     vim.o.guifont = "JetBrains Mono,Microsoft YaHei Mono:h14"
--     -- vim.o.guifont = "JetBrains Mono,Microsoft YaHei Mono"
-- end

vim.api.nvim_create_autocmd("UIEnter", {
  once = true,
  callback = function()
    pcall(vim.cmd.colorscheme, "desert")

    if vim.g.neovide then
      -- vim.o.guifont = "Consolas:h12"
      -- vim.g.neovide_scale_factor = 1.0
        -- 1. 关闭所有粒子效果（闪电、气泡、导轨等）
        -- vim.g.neovide_cursor_vfx_mode = ""
        
        -- 2. 关闭光标移动动画（设为 0 即为禁用）
        vim.g.neovide_cursor_animation_length = 0.1
        
        -- 3. 关闭光标拖尾（行走时的粗细变化）
        --vim.g.neovide_cursor_trail_size = 0
        
        -- 4. 调整刷新率（如果觉得卡顿，可以匹配你的显示器刷新率，如 60 或 144）
        vim.g.neovide_refresh_rate = 60
        
        -- 5. 字体设置（GUI 模式下建议设置自己喜欢的电力字体）
        -- vim.o.guifont = "JetBrainsMono Nerd Font:h12"
        vim.o.guifont = "JetBrains Mono,Microsoft YaHei Mono:h14"
        -- vim.o.guifont = "JetBrains Mono,Microsoft YaHei Mono"
    end
  end,
})

