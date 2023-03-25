{ ... }: {
  imports = [
    ./common.nix
  ];

  home = {
    username = "blntrsz";
    homeDirectory = "/home/blntrsz";
  };

  programs.git = {
    enable = true;
    userName = "Balint Orosz";
    userEmail = "orosz.balint.97@gmail.com";
  };
}
