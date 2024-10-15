# https://github.com/mischavandenburg/dotfiles-devpod/tree/main
{
  packageOverrides = pkgs: with pkgs; {
    myPackages = pkgs.buildEnv {
      name = "devcontainer-dots";
      paths = [
        zsh-completions
        neovim
        go
        nodejs_22
        pure-prompt
        fd
        ripgrep
        fzf
        lazygit
        stow
      ];
    };
  };
}
