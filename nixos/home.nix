{
  config,
  pkgs,
  inputs,
  lib,
  ...
}: let
  gvariant = import (inputs.home-manager + "/modules/lib/gvariant.nix") {
    inherit lib;
  };
in {
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "luca";
  home.homeDirectory = "/home/luca";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "24.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    neofetch
    git
    stow
    tmux
    gcc
    kitty
    fzf
    zoxide
    gnomeExtensions.switcher
    gnomeExtensions.space-bar
    gnomeExtensions.tactile
    gnomeExtensions.just-perfection
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/luca/etc/profile.d/hm-session-vars.sh
  #
  programs.home-manager.enable = true;

  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # Let Home Manager install and manage itself.

  dconf = {
    enable = true;
    settings = {
      "org/gnome/interface".color-scheme = false;
      "org/gnome/mutter".dynamic-workspaces = false;
      "org/gnome/desktop/wm/preferences".num-workspaces = 6;
      "org/gnome/shell".last-selected-power-profile = "performance";
      "org/gnome/desktop/peripherals/mouse".accel-profile = "flat";
      "org/gnome/desktop/interface".enable-hot-corners = false;
      "org/gnome/shell/app-switcher".current-workspace-only = true;

      "org/gnome/settings-deamon/plugins/media-keys" = {
        screen-reader = [];
        magnifier = [];
        magnifier-zoom-in = [];
        magnifier-zoom-out = [];
        help = [];
        custom-keybindings = ["/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"];
      };

      "org/gnome/settings-deamon/plugins/media-keys/custom0" = {
        command = "kitty";
        name = "Launch Terminal";
        binding = "<Alt>Return";
      };

      "org/gnome/desktop/wm/keybindings" = {
        move-to-monitor-down = [];
        move-to-monitor-left = [];
        move-to-monitor-right = [];
        move-to-monitor-up = [];
        move-to-workspace-left = [];
        move-to-workspace-right = [];
        move-to-workspace-last = [];
        switch-panels = [];
        switch-panels-backward = [];
        cycle-panels = [];
        cycle-panels-backward = [];
        switch-to-workspace-last = [];
        switch-to-workspace-left = [];
        switch-to-workspace-right = [];
        cycle-windows = [];
        cycle-windows-backward = [];
        cycle-group = [];
        cycle-group-backward = [];
        switch-group = [];
        switch-group-backward = [];
        panel-run-dialog = [];
        switch-input-source = [];
        switch-input-source-backward = [];
        activate-window-menu = [];
        close = ["<Alt>q"];
        minimize = [];
        begin-move = [];
        begin-resize = [];
        toggle-maximized = [];

        move-to-workspace-1 = ["<Shift><Alt>1"];
        move-to-workspace-2 = ["<Shift><Alt>2"];
        move-to-workspace-3 = ["<Shift><Alt>3"];
        move-to-workspace-4 = ["<Shift><Alt>4"];
        move-to-workspace-5 = ["<Shift><Alt>5"];
        move-to-workspace-6 = ["<Shift><Alt>6"];

        switch-to-workspace-1 = ["<Alt>1"];
        switch-to-workspace-2 = ["<Alt>2"];
        switch-to-workspace-3 = ["<Alt>3"];
        switch-to-workspace-4 = ["<Alt>4"];
        switch-to-workspace-5 = ["<Alt>5"];
        switch-to-workspace-6 = ["<Alt>6"];
      };

      "org/gnome/shell/keybindings" = {
        show-screen-recording-ui = [];
        screen-shot = [];
        show-screenshot-ui = ["<Alt>c"];
        screenshot-window = [];
        focus-active-notification = [];
        toggle-quick-settings = [];
        toggle-application-view = [];
        toggle-message-tray = [];
      };

      "org/gnome/mutter/wayland/keybindings" = {
        restore-shortcuts = [];
      };

      "org/gnome/shell" = {
        disable-user-extensions = false;

        disabled-extensions = [];
        enabled-extensions = [
          "switcher@landau.fi"
          "space-bar@luchrioh"
          "tactile@lundal.io"
          "just-perfection-desktop@just-perfection"
        ];
      };
      "org/gnome/shell/extensions/switcher" = with gvariant; {
        show-switcher = ["<Alt>d"];
        matching = mkUint32 1;
        font-size = mkUint32 18;
        icon-size = mkUint32 18;
        max-width-percentage = mkUint32 50;
      };
      "org/gnome/shell/extensions/tactile" = {
        col-0 = 2;
        col-3 = 2;
        show-tiles = ["<Alt>t"];
        hide-tiles = ["Escape"];
        next-monitor = [];
        prev-monitor = [];
        show-settings = [];
        layout-1 = [];
        layout-2 = [];
        layout-3 = [];
        layout-4 = [];
      };
      "org/gnome/shell/extentions/just-perfection" = {
        support-notifier-type = 0;
        enable-animations = true;
        animations = 2;
      };
    };
  };
}
