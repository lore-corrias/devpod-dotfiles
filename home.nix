{ config, pkgs, ... }:

{
  home.username = "vscode";
  home.homeDirectory = "/home/vscode";

  home.packages = [
    pkgs.neovim
    pkgs.go
    pkgs.nodejs_22
    pkgs.fd
    pkgs.ripgrep
    pkgs.fzf
    pkgs.lazygit
    pkgs.eza
  ];

  # Step 2: Linking dotfiles using home.file
    home.file = {
        ".config/nvim".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/neovim/.config/nvim";
        ".config/zsh".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/zsh/.config/zsh";
        ".zshenv".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/zsh/.zshenv";
    };

  home.stateVersion = "24.05";

  programs.home-manager.enable = true;
}
