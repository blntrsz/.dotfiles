{ config, pkgs, ... }:
let
  unstable = import <nixos-unstable> { config = { allowUnfree = true; }; };
in
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
      unstable.rustc
      curl
      direnv
      fzf
      gcc9
      gnupg
      neovim
      nil
      nodejs
      pass
      ripgrep
      tmux
      nodePackages_latest.pnpm
      yarn
    ];
  };

  nixpkgs.config.allowUnfree = true;

  programs = {
    home-manager.enable = true;

    git = (pkgs.callPackage ./apps/git.nix { }).programs.git;
    vscode = (pkgs.callPackage ./apps/vscode.nix { }).programs.vscode;
    zsh = (pkgs.callPackage ./apps/zsh.nix { }).programs.zsh;
    direnv.enable = true;
    direnv.nix-direnv.enable = true;
  };
}
