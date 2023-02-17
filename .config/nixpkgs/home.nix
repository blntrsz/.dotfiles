{ config, pkgs, ... }:
{
  home = {

    username = "blntrsz";
    homeDirectory = "/home/blntrsz";
    stateVersion = "22.11";
    sessionVariables = {
      EDITOR = "nvim";
      BROWSER = "brave";
      TERMINAL = "alacritty";
    };
    packages = with pkgs; [
      (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
      aws-vault
      cargo
      curl
      fzf
      gcc9
      gnupg
      neovim
      nil
      nodejs
      pass
      ripgrep
      tmux
    ];
  };

  nixpkgs.config.allowUnfree = true;

  programs = {
    home-manager.enable = true;

    git = (pkgs.callPackage ./apps/git.nix { }).programs.git;
    vscode = (pkgs.callPackage ./apps/vscode.nix { }).programs.vscode;
    zsh = (pkgs.callPackage ./apps/zsh.nix { }).programs.zsh;
  };
}
