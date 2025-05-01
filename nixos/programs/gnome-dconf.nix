# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{lib, ...}:
with lib.hm.gvariant; {
  dconf.settings = {
    "Extensions" = {
      window-height = 808;
      window-width = 991;
    };

    "Geary" = {
      migrated-config = true;
      window-maximize = true;
    };

    "Snapshot" = {
      is-maximized = false;
      window-height = 640;
      window-width = 800;
    };

    "calendar" = {
      active-view = "month";
      window-maximized = true;
      window-size = mkTuple [768 600];
    };

    "control-center" = {
      last-panel = "keyboard";
      window-state = mkTuple [980 640 true];
    };

    "desktop/a11y/applications" = {
      screen-magnifier-enabled = false;
      screen-reader-enabled = false;
    };

    "desktop/a11y/magnifier" = {
      mag-factor = 2.0;
    };

    "desktop/app-folders" = {
      folder-children = ["Utilities" "YaST" "Pardus"];
    };

    "desktop/app-folders/folders/Pardus" = {
      categories = ["X-Pardus-Apps"];
      name = "X-Pardus-Apps.directory";
      translate = true;
    };

    "desktop/app-folders/folders/Utilities" = {
      apps = ["org.freedesktop.GnomeAbrt.desktop" "nm-connection-editor.desktop" "org.gnome.baobab.desktop" "org.gnome.Connections.desktop" "org.gnome.DejaDup.desktop" "org.gnome.DiskUtility.desktop" "org.gnome.Evince.desktop" "org.gnome.FileRoller.desktop" "org.gnome.font-viewer.desktop" "org.gnome.Loupe.desktop" "org.gnome.seahorse.Application.desktop" "org.gnome.tweaks.desktop" "org.gnome.Usage.desktop"];
      categories = ["X-GNOME-Utilities"];
      name = "X-GNOME-Utilities.directory";
      translate = true;
    };

    "desktop/app-folders/folders/YaST" = {
      categories = ["X-SuSE-YaST"];
      name = "suse-yast.directory";
      translate = true;
    };

    "desktop/background" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///home/luca/.local/share/backgrounds/2025-04-28-22-51-50-2.png";
      picture-uri-dark = "file:///home/luca/.local/share/backgrounds/2025-04-28-22-51-50-2.png";
      primary-color = "#000000000000";
      secondary-color = "#000000000000";
    };

    "desktop/input-sources" = {
      sources = [(mkTuple ["xkb" "de"])];
      xkb-options = ["terminate:ctrl_alt_bksp"];
    };

    "desktop/interface" = {
      accent-color = "blue";
      color-scheme = "prefer-dark";
      enable-animations = false;
      enable-hot-corners = false;
      toolkit-accessibility = false;
    };

    "desktop/notifications" = {
      application-children = ["org-gnome-geary" "org-gnome-console"];
      show-banners = true;
    };

    "desktop/notifications/application/org-gnome-console" = {
      application-id = "org.gnome.Console.desktop";
    };

    "desktop/notifications/application/org-gnome-geary" = {
      application-id = "org.gnome.Geary.desktop";
    };

    "desktop/peripherals/mouse" = {
      accel-profile = "flat";
      speed = 0.0;
    };

    "desktop/peripherals/touchpad" = {
      two-finger-scrolling-enabled = true;
    };

    "desktop/screensaver" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///home/luca/.local/share/backgrounds/2025-04-28-22-51-50-2.png";
      primary-color = "#000000000000";
      secondary-color = "#000000000000";
    };

    "desktop/search-providers" = {
      sort-order = ["org.gnome.Settings.desktop" "org.gnome.Contacts.desktop" "org.gnome.Nautilus.desktop"];
    };

    "desktop/wm/keybindings" = {
      activate-window-menu = [];
      begin-move = [];
      begin-resize = [];
      close = ["<Alt>q"];
      cycle-group = [];
      cycle-group-backward = [];
      cycle-panels = [];
      cycle-panels-backward = [];
      cycle-windows = [];
      cycle-windows-backward = [];
      maximize = ["<Alt>Up"];
      minimize = [];
      move-to-monitor-down = [];
      move-to-monitor-left = [];
      move-to-monitor-right = [];
      move-to-monitor-up = [];
      move-to-workspace-1 = ["<Shift><Alt>1"];
      move-to-workspace-2 = ["<Shift><Alt>2"];
      move-to-workspace-3 = ["<Shift><Alt>3"];
      move-to-workspace-4 = ["<Shift><Alt>4"];
      move-to-workspace-5 = ["<Shift><Alt>5"];
      move-to-workspace-6 = ["<Shift><Alt>6"];
      move-to-workspace-last = [];
      move-to-workspace-left = [];
      move-to-workspace-right = [];
      panel-run-dialog = [];
      switch-group = [];
      switch-group-backward = [];
      switch-input-source = [];
      switch-input-source-backward = [];
      switch-panels = [];
      switch-panels-backward = [];
      switch-to-workspace-1 = ["<Alt>1"];
      switch-to-workspace-2 = ["<Alt>2"];
      switch-to-workspace-3 = ["<Alt>3"];
      switch-to-workspace-4 = ["<Alt>4"];
      switch-to-workspace-5 = ["<Alt>5"];
      switch-to-workspace-6 = ["<Alt>6"];
      switch-to-workspace-last = [];
      switch-to-workspace-left = [];
      switch-to-workspace-right = [];
      toggle-maximized = [];
      unmaximize = ["<Alt>Down"];
    };

    "desktop/wm/preferences" = {
      num-workspaces = 6;
    };

    "epiphany/state" = {
      is-maximized = true;
      window-size = mkTuple [1024 736];
    };

    "evolution-data-server" = {
      migrated = true;
    };

    "file-roller/listing" = {
      list-mode = "as-folder";
      show-path = false;
      sort-method = "name";
      sort-type = "ascending";
    };

    "file-roller/ui" = {
      sidebar-width = 200;
      window-height = 480;
      window-width = 600;
    };

    "gnome-system-monitor" = {
      cpu-colors = [(mkTuple [(mkUint32 0) "#e01b24"]) (mkTuple [1 "#ff7800"]) (mkTuple [2 "#f6d32d"]) (mkTuple [3 "#33d17a"]) (mkTuple [4 "#26a269"]) (mkTuple [5 "#62a0ea"]) (mkTuple [6 "#1c71d8"]) (mkTuple [7 "#613583"]) (mkTuple [8 "#9141ac"]) (mkTuple [9 "#c061cb"]) (mkTuple [10 "#ffbe6f"]) (mkTuple [11 "#f9f06b"]) (mkTuple [12 "#8ff0a4"]) (mkTuple [13 "#2ec27e"]) (mkTuple [14 "#1a5fb4"]) (mkTuple [15 "#c061cb"]) (mkTuple [16 "#79998335f332"]) (mkTuple [17 "#a6b0f3327999"]) (mkTuple [18 "#f3327999ca2c"]) (mkTuple [19 "#7999eda7f332"]) (mkTuple [20 "#f332d5417999"]) (mkTuple [21 "#b1c67999f332"]) (mkTuple [22 "#7999f3328e4a"]) (mkTuple [23 "#f33279998862"])];
      current-tab = "resources";
      show-dependencies = false;
      show-whose-processes = "user";
    };

    "gnome-system-monitor/proctree" = {
      col-26-visible = false;
      col-26-width = 0;
    };

    "interface" = {
      color-scheme = false;
    };

    "maps" = {
      last-viewed-location = [0.0 0.0];
      map-type = "MapsVectorSource";
      transportation-type = "pedestrian";
      window-maximized = true;
      zoom-level = 2;
    };

    "mutter" = {
      dynamic-workspaces = false;
    };

    "mutter/keybindings" = {
      toggle-tiled-left = ["<Alt>Left"];
      toggle-tiled-right = ["<Alt>Right"];
    };

    "mutter/wayland/keybindings" = {
      restore-shortcuts = [];
    };

    "nautilus/preferences" = {
      default-folder-viewer = "icon-view";
      migrated-gtk-settings = true;
      search-filter-time-type = "last_modified";
    };

    "nautilus/window-state" = {
      initial-size = mkTuple [1245 834];
      initial-size-file-chooser = mkTuple [890 550];
    };

    "portal/filechooser/org/gnome/Settings" = {
      last-folder-path = "/home/luca/dotfiles/wallpapers/wallpapers";
    };

    "settings-daemon/plugins/color" = {
      night-light-enabled = false;
      night-light-schedule-automatic = false;
    };

    "settings-daemon/plugins/media-keys" = {
      custom-keybindings = ["/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"];
      help = [];
      magnifier-zoom-in = [];
      magnifier-zoom-out = [];
    };

    "settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Alt>Return";
      command = "kitty";
      name = "Open Terminal";
    };

    "settings-deamon/plugins/media-keys" = {
      custom-keybindings = ["/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"];
      help = [];
      magnifier = [];
      magnifier-zoom-in = [];
      magnifier-zoom-out = [];
      screen-reader = [];
    };

    "settings-deamon/plugins/media-keys/custom0" = {
      binding = "<Alt>Return";
      command = "kitty";
      name = "Launch Terminal";
    };

    "shell" = {
      disable-user-extensions = false;
      disabled-extensions = [];
      enabled-extensions = ["switcher@landau.fi" "space-bar@luchrioh" "tactile@lundal.io" "just-perfection-desktop@just-perfection"];
      last-selected-power-profile = "performance";
      welcome-dialog-last-shown-version = "47.2";
    };

    "shell/app-switcher" = {
      current-workspace-only = true;
    };

    "shell/extensions/just-perfection" = {
      accessibility-menu = true;
      animation = 0;
      background-menu = true;
      controls-manager-spacing-size = 0;
      dash = true;
      dash-icon-size = 0;
      double-super-to-appgrid = true;
      max-displayed-search-results = 0;
      osd = true;
      panel = true;
      panel-in-overview = true;
      ripple-box = true;
      search = true;
      show-apps-button = true;
      startup-status = 1;
      support-notifier-showed-version = 34;
      support-notifier-type = 0;
      theme = false;
      window-demands-attention-focus = false;
      window-picker-icon = true;
      window-preview-caption = true;
      window-preview-close-button = true;
      workspace = true;
      workspace-background-corner-size = 0;
      workspace-popup = false;
      workspaces-in-app-grid = true;
    };

    "shell/extensions/space-bar/appearance" = {
      active-workspace-background-color = "rgb(36,36,36)";
      active-workspace-border-color = "rgba(255,255,255,0.3)";
      active-workspace-border-radius = 32;
      active-workspace-font-weight = "700";
      application-styles = ".space-bar {n  -natural-hpadding: 1px;n}nn.space-bar-workspace-label.active {n  margin: 0 3px;n  background-color: rgb(36,36,36);n  color: rgba(255,255,255,1);n  border-color: rgba(255,255,255,0.3);n  font-weight: 700;n  border-radius: 32px;n  border-width: 0px;n  padding: 3px 8px;n}nn.space-bar-workspace-label.inactive {n  margin: 0 3px;n  background-color: rgba(0,0,0,0);n  color: rgba(255,255,255,1);n  border-color: rgba(0,0,0,0);n  font-weight: 700;n  border-radius: 32px;n  border-width: 0px;n  padding: 3px 8px;n}nn.space-bar-workspace-label.inactive.empty {n  margin: 0 3px;n  background-color: rgba(0,0,0,0);n  color: rgba(255,255,255,0.5);n  border-color: rgba(0,0,0,0);n  font-weight: 700;n  border-radius: 32px;n  border-width: 0px;n  padding: 3px 8px;n}";
      empty-workspace-border-radius = 32;
      empty-workspace-font-weight = "700";
      inactive-workspace-border-radius = 32;
      inactive-workspace-font-weight = "700";
      workspace-margin = 3;
      workspaces-bar-padding = 1;
    };

    "shell/extensions/space-bar/behavior" = {
      always-show-numbers = false;
      indicator-style = "workspaces-bar";
      position = "left";
      scroll-wheel = "disabled";
      show-empty-workspaces = true;
      smart-workspace-names = false;
      toggle-overview = true;
    };

    "shell/extensions/space-bar/shortcuts" = {
      enable-activate-workspace-shortcuts = false;
    };

    "shell/extensions/space-bar/state" = {
      version = 32;
    };

    "shell/extensions/switcher" = {
      activate-after-ms = mkUint32 300;
      font-size = mkUint32 18;
      icon-size = mkUint32 18;
      launcher-stats = ''
        {"nixos-manual.desktop":1,"simple-scan.desktop":1,"com.mattjakeman.ExtensionManager.desktop":7,"kitty.desktop":3,"google-chrome.desktop":4,"org.gnome.Settings.desktop":5,"org.gnome.Extensions.desktop":1}
      '';
      matching = mkUint32 1;
      max-width-percentage = mkUint32 50;
      show-switcher = ["<Alt>d"];
    };

    "shell/extensions/tactile" = {
      border-color = "rgba(111,111,111,0.5)";
      col-0 = 2;
      col-3 = 2;
      grid-rows = 2;
      hide-tiles = ["Escape"];
      layout-1 = [];
      layout-2 = [];
      layout-3 = [];
      layout-4 = [];
      monitor-0-layout = 1;
      next-monitor = [];
      prev-monitor = [];
      show-settings = [];
      show-tiles = ["<Alt>t"];
      text-color = "rgb(107,107,107)";
    };

    "shell/extentions/just-perfection" = {
      animations = 2;
      enable-animations = true;
      support-notifier-type = 0;
    };

    "shell/keybindings" = {
      focus-active-notification = [];
      screen-shot = [];
      screenshot-window = [];
      show-screen-recording-ui = [];
      show-screenshot-ui = ["<Alt>c"];
      toggle-application-view = [];
      toggle-message-tray = [];
      toggle-quick-settings = [];
    };

    "shell/world-clocks" = {
      locations = [];
    };
  };
}
