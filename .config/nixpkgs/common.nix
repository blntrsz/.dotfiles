{ pkgs, ... }:
{
  imports = [
    ./apps/alacritty.nix
    ./apps/zsh.nix
  ];

  home = {
    stateVersion = "22.11";
    sessionVariables = {
      EDITOR = "nvim";
      BROWSER = "brave";
      TERMINAL = "alacritty";
    };
    packages = with pkgs; [
      curl
      direnv
      fzf
      gnupg
      nil
      pass
      ripgrep
    ];
  };

  nix.package = pkgs.nixFlakes;
  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';
  nixpkgs.config.allowUnfree = true;

  programs = {
    home-manager.enable = true;

    direnv.enable = true;
    direnv.nix-direnv.enable = true;
  };
}
