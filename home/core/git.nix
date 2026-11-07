{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "XiaoQiKKKL";
        email = "xiaoq21731057382021@outlook.com";
      };
      signing = {
        key = "/home/xiaoqi/.ssh/id_ed25519.pub";
        signByDefault = true;
        format = "ssh";
      };
    };
  };
}
