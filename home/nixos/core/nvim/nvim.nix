{config, pkgs, ...}:{
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    plugins = with pkgs.vimPlugins; [
      nvim-lspconfig
      telescope-nvim

      (nvim-treesitter.withPlugins (p: [
        p.tree-sitter-nix
	p.tree-sitter-vim
	p.tree-sitter-lua
	p.tree-sitter-bash
      ]))
    ];
  extraLuaConfig = ''
    ${builtins.readFile ./plugin/lsp.lua}
  '';
  };
}
