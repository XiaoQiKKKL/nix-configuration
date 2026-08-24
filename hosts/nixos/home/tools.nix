{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # 系统监控与硬件信息
    btop
    htop
    iftop
    iotop
    fastfetch
    lm_sensors
    pciutils
    usbutils
    nix-output-monitor

    # 文本、文件处理与搜索
    fzf
    zoxide
    ripgrep
    jq
    tree
    file
    which
    cowsay
    gawk
    gnused
    gnutar
    gnupg
    sops

    # 进程诊断与调试
    lsof
    strace
    ltrace
    sysstat

    # 网络与抓包工具
    android-tools
    bind
    nmap
    tcpdump
    tcping-go
    traceroute
    xray
    aria2
    wget

    # 媒体与图像 CLI
    ffmpeg
    imagemagick
    poppler
    resvg

    # 压缩解压与文件系统
    ntfs3g
    p7zip
    unzip
    xz
    zip
    zstd

    # 依赖运行库
    zulu # Java (HMCL 依赖)
  ];
}
