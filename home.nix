{ config, pkgs, ... }:

{
  home.username = "vscode";
  home.homeDirectory = "/home/vscode";

  home.packages = [
    pkgs.zsh
    pkgs.neovim
    pkgs.go
    pkgs.nodejs_22
    pkgs.fd
    pkgs.ripgrep
    pkgs.fzf
    pkgs.lazygit
  ];

  # Step 2: Linking dotfiles using home.file
    home.file = {
        ".config/nvim".source = config.lib.file.mkOutOfStoreSymlink "/home/vscode/dotfiles/neovim/.config/nvim";
        ".config/zsh".source = config.lib.file.mkOutOfStoreSymlink "/home/vscode/dotfiles/zsh/.config/zsh";
        ".zshenv".source = config.lib.file.mkOutOfStoreSymlink "/home/vscode/dotfiles/zsh/.zshenv";
    };

  home.stateVersion = "24.05";

  programs.home-manager.enable = true;
}
