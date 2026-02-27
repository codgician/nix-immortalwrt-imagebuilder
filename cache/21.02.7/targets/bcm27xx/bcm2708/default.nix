# 21.02.7 bcm27xx/bcm2708
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm27xx/bcm2708/";
  sha256sums = {
    hash = "sha256-e8AVAsxWGNSZSkbbcoL40isHbduL5OGDBPjYKfZgBgU=";
    name = "bcm27xx_bcm2708-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm27xx/bcm2708/sha256sums";
  };
  imagebuilder = {
    sha256 = "c49c759295ba9fe6970fdaa6ab51c66eb5218926d9544e61752079a97d392426";
    filename = "immortalwrt-imagebuilder-21.02.7-bcm27xx-bcm2708.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-JjEqdNsAMqnvYHv0H3bCxvtn+/KXwwdlka9O2S7f30I=";
    name = "bcm27xx_bcm2708-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm27xx/bcm2708/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm1176jzf-s_vfp";
    linux_kernel = null;
    default_packages = [
      "autocore-arm"
      "automount"
      "base-files"
      "bcm27xx-gpu-fw"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall"
      "fstools"
      "iptables"
      "ipv6helper"
      "kmod-fs-vfat"
      "kmod-ipt-raw"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nls-cp437"
      "kmod-nls-iso8859-1"
      "kmod-sound-arm-bcm2835"
      "kmod-sound-core"
      "kmod-usb-hid"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-cpufreq"
      "luci-app-filetransfer"
      "luci-app-turboacc"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mkf2fs"
      "mtd"
      "netifd"
      "opkg"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "uci"
      "uclient-fetch"
      "urandom-seed"
    ];
    kmods_target = "null-null-null";
    profiles = {
      rpi = {
        device_packages = [
          "cypress-firmware-43430-sdio"
          "cypress-nvram-43430-sdio-rpi-zero-w"
          "kmod-brcmfmac"
          "wpad-basic-openssl"
          "iwinfo"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm27xx/bcm2708/packages/";
    sourceInfo = {
      hash = "sha256-aVYesmmwfEPhWbiEjG0A0f8FCj9tvbrqj8He6IW/J80=";
      name = "bcm27xx_bcm2708-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm27xx/bcm2708/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_arm1176jzf-s_vfp";
  feeds = import ./../../../packages/arm_arm1176jzf-s_vfp.nix;
}
