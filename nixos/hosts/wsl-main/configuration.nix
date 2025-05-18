# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

# NixOS-WSL specific options are documented on the NixOS-WSL repository:
# https://github.com/nix-community/NixOS-WSL

{ inputs, config, lib, pkgs, ... }:

{
  imports = [
    # include NixOS-WSL modules
    ./../../nixosModules/fhs.nix
    <nixos-wsl/modules>
  ];

  wsl.enable = true;
  wsl.defaultUser = "luca";


  # Set your time zone.
  time.timeZone = "Europe/Berlin";


  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.luca = {
    isNormalUser = true;
    description = "luca";
    extraGroups = ["networkmanager" "wheel"];
    packages = with pkgs; [
    ];
    shell = pkgs.zsh;
  };

  home-manager = {
    extraSpecialArgs = {inherit inputs;};
    users = {
      "luca" = import ./home.nix;
    };
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    alejandra
  ];

  programs.zsh.enable = true;

  # List services that you want to enable:
  services.openssh.enable = true;

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It's perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.11"; # Did you read the comment?
}
