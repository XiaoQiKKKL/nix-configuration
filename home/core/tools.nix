{ pkgs, ... }:
{
  home.packages = with pkgs; [
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
    tmux
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
    mesa-demos
    psmisc
    nil

    # 网络与抓包工具
    wireguard-tools
    nethogs
    mihomo
    sing-box
    bind
    rclone
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

    # for gcc
    stdenv.cc
    pkg-config
  ];
}
