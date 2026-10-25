{ niri, ... }:
{
  programs.niri = {
    settings = {
      input = {
        keyboard.xkb.options = "caps:escape";
        mouse = {
          accel-speed = 1;
          accel-profile = "flat";
        };
        focus-follows-mouse = {
          enable = true;
          max-scroll-amount = "100%";
        };
      };
      outputs."DP-1" = {
        mode = {
          height = 1440;
          width = 2560;
          refresh = 170.001007;
        };
        scale = 1.25;
        position = {
          x = 1280;
          y = 0;
        };
      };
      layout = {
        gaps = 16;
        preset-column-widths = [
          { proportion = 1. / 3.; }
          { proportion = 1. / 2.; }
          { proportion = 2. / 3.; }
        ];
        default-column-width.proportion = 1. / 2.;
        focus-ring = {
          width = 4;
        };
      };
      layer-rules = [
        {
          matches = [
            { namespace = "^noctalia-backdrop"; }
          ];
          place-within-backdrop = true;
        }
      ];
      spawn-at-startup = [
        { argv = [ "noctalia" ]; }
      ];
      prefer-no-csd = true;
      window-rules = [
        {
          matches = [
            { app-id = ''^org\.wezfurlong\.wezterm$''; }
          ];
          default-column-width = { };
        }
        {
          matches = [
            {
              app-id = ''"firefox$'';
              title = "^Picture-in-Picture$";
            }
          ];
          open-floating = true;
        }
        {
          geometry-corner-radius = {
            top-left = 20.0;
            top-right = 20.0;
            bottom-left = 20.0;
            bottom-right = 20.0;
          };
          clip-to-geometry = true;
        }
        {
          matches = [
            { app-id = "dev.noctalia.Noctalia"; }
          ];
          open-floating = true;
          default-column-width.fixed = 1080;
          default-window-height.fixed = 920;
        }
      ];
      binds = {
        "Mod+Shift+Slash".action.show-hotkey-overlay = { };

        "Mod+T" = {
          action.spawn = [
            "kitty"
            "fish"
          ];
          hotkey-overlay.title = "Open a Terminal";
        };
        "Mod+Space" = {
          action.spawn = [
            "noctalia"
            "msg"
            "panel-toggle"
            "launcher"
          ];
          hotkey-overlay.title = "Run an Application";
        };
        "Super+Alt+L" = {
          action.spawn = [
            "lockScreen"
            "lock"
          ];
          hotkey-overlay.title = "Lock the Screen";
        };
        "Super+Alt+S" = {
          action.spawn = [
            "fish"
            "-c"
            "pkill orca || exec orca"
          ];
          allow-when-locked = true;
        };

        "XF86AudioRaiseVolume" = {
          action.spawn = [
            "fish"
            "-c"
            "noctalia msg volume increase"
          ];
          allow-when-locked = true;
        };
        "XF86AudioLowerVolume" = {
          action.spawn = [
            "fish"
            "-c"
            "noctalia msg volume decrease"
          ];
          allow-when-locked = true;
        };
        "XF86AudioMute" = {
          action.spawn = [
            "fish"
            "-c"
            "noctalia msg volume muteOutput"
          ];
          allow-when-locked = true;
        };
        "XF86AudioMicMute" = {
          action.spawn = [
            "fish"
            "-c"
            "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
          ];
          allow-when-locked = true;
        };

        "XF86AudioPlay" = {
          action.spawn = [
            "fish"
            "-c"
            "playerctl play-pause"
          ];
          allow-when-locked = true;
        };
        "XF86AudioStop" = {
          action.spawn = [
            "fish"
            "-c"
            "playerctl stop"
          ];
          allow-when-locked = true;
        };
        "XF86AudioPrev" = {
          action.spawn = [
            "fish"
            "-c"
            "playerctl previous"
          ];
          allow-when-locked = true;
        };
        "XF86AudioNext" = {
          action.spawn = [
            "fish"
            "-c"
            "playerctl next"
          ];
          allow-when-locked = true;
        };

        "XF86MonBrightnessUp" = {
          action.spawn = [
            "noctalia"
            "msg"
            "brightness"
            "increase"
          ];
          allow-when-locked = true;
        };
        "XF86MonBrightnessDown" = {
          action.spawn = [
            "noctalia"
            "msg"
            "brightness"
            "decrease"
          ];
          allow-when-locked = true;
        };

        "Mod+O".action.toggle-overview = { };
        "Mod+Q".action.close-window = { };

        "Mod+Left".action.focus-column-left = { };
        "Mod+Down".action.focus-window-down = { };
        "Mod+Up".action.focus-window-up = { };
        "Mod+Right".action.focus-column-right = { };
        "Mod+H".action.focus-column-left = { };
        "Mod+J".action.focus-window-down = { };
        "Mod+K".action.focus-window-up = { };
        "Mod+L".action.focus-column-right = { };

        "Mod+Ctrl+Left".action.move-column-left = { };
        "Mod+Ctrl+Down".action.move-window-down = { };
        "Mod+Ctrl+Up".action.move-window-up = { };
        "Mod+Ctrl+Right".action.move-column-right = { };
        "Mod+Ctrl+H".action.move-column-left = { };
        "Mod+Ctrl+J".action.move-window-down = { };
        "Mod+Ctrl+K".action.move-window-up = { };
        "Mod+Ctrl+L".action.move-column-right = { };

        "Mod+Home".action.focus-column-first = { };
        "Mod+End".action.focus-column-last = { };
        "Mod+Ctrl+Home".action.move-column-to-first = { };
        "Mod+Ctrl+End".action.move-column-to-last = { };

        "Mod+Shift+Left".action.focus-monitor-left = { };
        "Mod+Shift+Down".action.focus-monitor-down = { };
        "Mod+Shift+Up".action.focus-monitor-up = { };
        "Mod+Shift+Right".action.focus-monitor-right = { };
        "Mod+Shift+H".action.focus-monitor-left = { };
        "Mod+Shift+J".action.focus-monitor-down = { };
        "Mod+Shift+K".action.focus-monitor-up = { };
        "Mod+Shift+L".action.focus-monitor-right = { };

        "Mod+Shift+Ctrl+Left".action.move-column-to-monitor-left = { };
        "Mod+Shift+Ctrl+Down".action.move-column-to-monitor-down = { };
        "Mod+Shift+Ctrl+Up".action.move-column-to-monitor-up = { };
        "Mod+Shift+Ctrl+Right".action.move-column-to-monitor-right = { };
        "Mod+Shift+Ctrl+H".action.move-column-to-monitor-left = { };
        "Mod+Shift+Ctrl+J".action.move-column-to-monitor-down = { };
        "Mod+Shift+Ctrl+K".action.move-column-to-monitor-up = { };
        "Mod+Shift+Ctrl+L".action.move-column-to-monitor-right = { };

        "Mod+Page_Down".action.focus-workspace-down = { };
        "Mod+Page_Up".action.focus-workspace-up = { };
        "Mod+U".action.focus-workspace-down = { };
        "Mod+I".action.focus-workspace-up = { };
        "Mod+Ctrl+Page_Down".action.move-column-to-workspace-down = { };
        "Mod+Ctrl+Page_Up".action.move-column-to-workspace-up = { };
        "Mod+Ctrl+U".action.move-column-to-workspace-down = { };
        "Mod+Ctrl+I".action.move-column-to-workspace-up = { };

        "Mod+Shift+Page_Down".action.move-workspace-down = { };
        "Mod+Shift+Page_Up".action.move-workspace-up = { };
        "Mod+Shift+U".action.move-workspace-down = { };
        "Mod+Shift+I".action.move-workspace-up = { };

        "Mod+WheelScrollDown" = {
          action.focus-workspace-down = { };
          cooldown-ms = 150;
        };
        "Mod+WheelScrollUp" = {
          action.focus-workspace-up = { };
          cooldown-ms = 150;
        };
        "Mod+Ctrl+WheelScrollDown" = {
          action.move-column-to-workspace-down = { };
          cooldown-ms = 150;
        };
        "Mod+Ctrl+WheelScrollUp" = {
          action.move-column-to-workspace-up = { };
          cooldown-ms = 150;
        };

        "Mod+WheelScrollRight".action.focus-column-right = { };
        "Mod+WheelScrollLeft".action.focus-column-left = { };
        "Mod+Ctrl+WheelScrollRight".action.move-column-right = { };
        "Mod+Ctrl+WheelScrollLeft".action.move-column-left = { };

        "Mod+Shift+WheelScrollDown".action.focus-column-right = { };
        "Mod+Shift+WheelScrollUp".action.focus-column-left = { };
        "Mod+Ctrl+Shift+WheelScrollDown".action.move-column-right = { };
        "Mod+Ctrl+Shift+WheelScrollUp".action.move-column-left = { };

        "Mod+1".action.focus-workspace = 1;
        "Mod+2".action.focus-workspace = 2;
        "Mod+3".action.focus-workspace = 3;
        "Mod+4".action.focus-workspace = 4;
        "Mod+5".action.focus-workspace = 5;
        "Mod+6".action.focus-workspace = 6;
        "Mod+7".action.focus-workspace = 7;
        "Mod+8".action.focus-workspace = 8;
        "Mod+9".action.focus-workspace = 9;
        "Mod+Ctrl+1".action.move-column-to-workspace = 1;
        "Mod+Ctrl+2".action.move-column-to-workspace = 2;
        "Mod+Ctrl+3".action.move-column-to-workspace = 3;
        "Mod+Ctrl+4".action.move-column-to-workspace = 4;
        "Mod+Ctrl+5".action.move-column-to-workspace = 5;
        "Mod+Ctrl+6".action.move-column-to-workspace = 6;
        "Mod+Ctrl+7".action.move-column-to-workspace = 7;
        "Mod+Ctrl+8".action.move-column-to-workspace = 8;
        "Mod+Ctrl+9".action.move-column-to-workspace = 9;

        "Mod+BracketLeft".action.consume-or-expel-window-left = { };
        "Mod+BracketRight".action.consume-or-expel-window-right = { };
        "Mod+Comma".action.consume-window-into-column = { };
        "Mod+Period".action.expel-window-from-column = { };

        "Mod+R".action.switch-preset-column-width = { };
        "Mod+Shift+R".action.switch-preset-column-width-back = { };
        "Mod+Ctrl+Shift+R".action.switch-preset-window-height = { };
        "Mod+Ctrl+R".action.reset-window-height = { };

        "Mod+F".action.maximize-column = { };
        "Mod+Shift+F".action.fullscreen-window = { };
        "Mod+M".action = {
          maximize-column = [ ];
        };
        "Mod+Ctrl+F".action.expand-column-to-available-width = { };
        "Mod+C".action.center-column = { };
        "Mod+Ctrl+C".action.center-visible-columns = { };

        "Mod+Minus".action.set-column-width = "-10%";
        "Mod+Equal".action.set-column-width = "+10%";
        "Mod+Shift+Minus".action.set-window-height = "-10%";
        "Mod+Shift+Equal".action.set-window-height = "+10%";

        "Mod+V".action.toggle-window-floating = { };
        "Mod+Shift+V".action.switch-focus-between-floating-and-tiling = { };
        "Mod+W".action.toggle-column-tabbed-display = { };

        "Print".action.spawn = [
          "noctalia"
          "msg"
          "screenshot-region"
        ];
        "Ctrl+Print".action.spawn = [
          "noctalia"
          "msg"
          "screenshot-fullscreen"
        ];
        "Alt+Print".action.spawn = [
          "noctalia"
          "msg"
          "screenshot-fullscreen"
          "all"
        ];

        "Mod+Escape" = {
          action.toggle-keyboard-shortcuts-inhibit = { };
          allow-inhibiting = false;
        };
        "Mod+Shift+E".action.quit = { };
        "Ctrl+Alt+Delete".action.spawn = [
          "noctalia"
          "msg"
          "panel-toggle"
          "session"
        ];
        "Mod+Shift+P".action.power-off-monitors = { };

        "Mod+S".action.spawn = [
          "noctalia"
          "msg"
          "panel-toggle"
          "control-center"
        ];
        "Alt+V".action.spawn = [
          "noctalia"
          "msg"
          "panel-toggle"
          "clipboard"
        ];
        "Ctrl+Shift+Escape".action.spawn = [
          "noctalia"
          "msg"
          "panel-toggle"
          "control-center"
          "system"
        ];
      };
    };
  };
}
