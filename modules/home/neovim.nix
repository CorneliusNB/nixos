{ pkgs, ... }: {
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    extraConfig = ''
      set clipboard=unnamedplus
      set number relativenumber
      set tabstop=2 shiftwidth=2 expandtab
    '';
    extraLuaConfig = ''
      vim.opt.termguicolors = true
      vim.opt.background = "light"

      local function inherit_terminal_bg()
        local groups = { "Normal", "NormalNC", "NormalFloat", "SignColumn", "LineNr", "FoldColumn", "EndOfBuffer", "MsgArea" }
        for _, g in ipairs(groups) do
          vim.api.nvim_set_hl(0, g, { bg = "none" })
        end
      end

      inherit_terminal_bg()
    '';
  };
}
