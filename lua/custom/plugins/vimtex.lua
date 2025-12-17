return {
  'lervag/vimtex',
  lazy = false,
  ft = { 'tex', 'plaintex', 'latex' },
  init = function()
    vim.g.vimtex_view_method = 'zathura'
    --
    -- Compiler (latexmk, continuous by default)
    vim.g.vimtex_compiler_method = 'latexmk'
    vim.g.vimtex_compiler_latexmk = {
      options = { '-pdf', '-interaction=nonstopmode', '-synctex=1' },
    }
    vim.g.vimtex_compiler_continuous = 1

    -- Optional quality-of-life
    vim.g.vimtex_quickfix_mode = 0 -- don’t auto-open quickfix on warnings
    vim.g.vimtex_mappings_enabled = 1 -- keep default mappings like \ll, \lv
    vim.g.vimtex_syntax_enabled = 1

    -- Force atomic writes (write to temp, then rename)
    vim.opt.backupcopy = 'yes'
  end,
}
