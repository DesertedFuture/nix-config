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
        p.tree-sitter-python
	p.tree-sitter-vim
	p.tree-sitter-lua
	p.tree-sitter-bash
        p.tree-sitter-json
      ]))
    ];
  extraLuaConfig = ''
    ${builtins.readFile ./plugin/set.lua}
    ${builtins.readFile ./plugin/remap.lua}
    ${builtins.readFile ./plugin/lsp.lua}
    ${builtins.readFile ./plugin/colors.lua}
    ${builtins.readFile ./plugin/fugative.lua}
    ${builtins.readFile ./plugin/treesitter.lua}
    ${builtins.readFile ./plugin/harpoon.lua}
    ${builtins.readFile ./plugin/telescope.lua}
    ${builtins.readFile ./plugin/undotree.lua}
  '';
  };
}
