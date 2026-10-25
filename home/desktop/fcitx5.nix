{ pkgs, ... }:
{
  stylix.targets.fcitx5.enable = true;
  i18n.inputMethod = {
    type = "fcitx5";
    enable = true;
    fcitx5.waylandFrontend = true;
    fcitx5.addons = with pkgs; [
      (fcitx5-rime.override {
        rimeDataPkgs = [
          rime-data
          rime-ice
        ];
      })
      fcitx5-gtk
      qt6Packages.fcitx5-configtool
      kdePackages.fcitx5-qt
      fcitx5-nord
    ];

    fcitx5.settings.globalOptions = {
      Hotkey = {
        EnumerateWithTriggerKeys = true;
        EnumerateForwardKeys = "";
        EnumerateBackwardKeys = "";
        EnumerateSkipFirst = false;
        ModifierOnlyKeyTimeout = 250;
      };

      "Hotkey/TriggerKeys" = {
        "0" = "Control+Shift+Shift_L";
        "1" = "Zenkaku_Hankaku";
        "2" = "Hangul";
      };

      "Hotkey/ActivateKeys" = {
        "0" = "Hangul_Hanja";
      };

      "Hotkey/DeactivateKeys" = {
        "0" = "Hangul_Romaja";
      };

      "Hotkey/AltTriggerKeys" = {
        "0" = "Shift_L";
      };

      "Hotkey/EnumerateGroupForwardKeys" = {
        "0" = "Super+space";
      };

      "Hotkey/EnumerateGroupBackwardKeys" = {
        "0" = "Shift+Super+space";
      };

      "Hotkey/PrevPage" = {
        "0" = "Up";
      };

      "Hotkey/NextPage" = {
        "0" = "Down";
      };

      "Hotkey/PrevCandidate" = {
        "0" = "Shift+Tab";
      };

      "Hotkey/NextCandidate" = {
        "0" = "Tab";
      };

      "Hotkey/TogglePreedit" = {
        "0" = "Control+Alt+P";
      };

      Behavior = {
        ActiveByDefault = false;
        resetStateWhenFocusIn = "No";
        ShareInputState = "No";
        PreeditEnabledByDefault = true;
        ShowInputMethodInformation = true;
        showInputMethodInformationWhenFocusIn = false;
        CompactInputMethodInformation = true;
        ShowFirstInputMethodInformation = true;
        DefaultPageSize = 5;
        OverrideXkbOption = false;
        CustomXkbOption = "";
        EnabledAddons = "";
        DisabledAddons = "";
        PreloadInputMethod = true;
        AllowInputMethodForPassword = false;
        ShowPreeditForPassword = false;
        AutoSavePeriod = 30;
      };
    };
  };
  home.packages = with pkgs; [
    gnomeExtensions.kimpanel
  ];
}
