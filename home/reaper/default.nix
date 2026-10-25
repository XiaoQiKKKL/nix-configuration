{ inputs, ... }:
{
  imports = [ inputs.reaper-flake.homeModules.reaper ];

  programs.reaper = {
    enable = true;

    extensions = {
      reapack.enable = true;
      sws = {
        enable = true;
        colors = [
          "#F5E0E6"
          "#F2CDCD"
          "#F5C2E7"
          "#CBA6F7"
        ];
      };
    };

    preferences = {
      general.startupSettings.showSplashScreenOnStartup = false;
      project.trackSendDefaults.trackVolumeFaderGain = -10.0;
      plugIns.reascript.python.enable = true;
    };
  };
}
