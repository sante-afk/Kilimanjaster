
return {
{
    "williamboman/mason.nvim"
},


{
    "yorumicolors/yorumi.nvim",
    lazy = false,    
    priority = 1000,
    config = function()
  	vim.cmd.colorscheme("yorumi")
    end,
  },

 {
    'goolord/alpha-nvim',
    event = 'VimEnter',
    config = function()
      local alpha = require('alpha')
      local dashboard = require('alpha.themes.dashboard')
      
      dashboard.section.header.val = {
[[ █  ▄ ▄ █ ▄ ▄▄▄▄  ▗▞▀▜▌▄▄▄▄     ▗▖▗▞▀▜▌ ▄▄▄   ■  ▗▞▀▚▖▄▄▄]], 
[[ █▄▀  ▄ █ ▄ █ █ █ ▝▚▄▟▌█   █    ▗▖▝▚▄▟▌▀▄▄ ▗▄▟▙▄▖▐▛▀▀▘█  ]], 
[[ █ ▀▄ █ █ █ █   █      █   █ ▄  ▐▌     ▄▄▄▀  ▐▌  ▝▚▄▄▖█  ]],  
[[ █  █ █ █ █                  ▀▄▄▞▘           ▐▌          ]],  
[[                                             ▐▌          ]],  
                                                         
                                                                                                                                                  
      }

      -- Кнопки для быстрых действий
      dashboard.section.buttons.val = {
        dashboard.button("e", "  New File", ":ene <BAR> startinsert<CR>"),
        dashboard.button("f", "  Find File", ":Telescope find_files<CR>"),
        dashboard.button("r", "  Recent Files", ":Telescope oldfiles<CR>"),
        dashboard.button("c", "  Config", ":e ~/.config/nvim/init.lua<CR>"),
        dashboard.button("q", "  Quit", ":qa<CR>"),
      }
	
      -- Настройка прозрачности
      vim.api.nvim_set_hl(0, 'AlphaHeader', { fg = '#5e81ac' })
      vim.api.nvim_set_hl(0, 'AlphaButtons', { fg = '#d8dee9' })

      alpha.setup(dashboard.opts)
    end,
  },
}
