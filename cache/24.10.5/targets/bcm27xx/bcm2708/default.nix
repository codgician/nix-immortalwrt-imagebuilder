# 24.10.5 bcm27xx/bcm2708
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm27xx/bcm2708/";
  sha256sums = {
    hash = "sha256-xaI5ZSEYk7T+yfCoXK/4ELqPrclciOxN03erTS/+W+E=";
    name = "bcm27xx_bcm2708-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm27xx/bcm2708/sha256sums";
  };
  imagebuilder = {
    sha256 = "82de072463d460ee1892f00189cae1169e92d7fd16b496d9c967d2f9d9b45cc4";
    filename = "immortalwrt-imagebuilder-24.10.5-bcm27xx-bcm2708.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-vbn8beZvXhkOR47hYtVSFwsCenUadJ6Ddmag6qj41Qg=";
    name = "bcm27xx_bcm2708-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm27xx/bcm2708/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm1176jzf-s_vfp";
    linux_kernel = {
      release = "1";
      vermagic = "ad00d661c3be1b63e04007a5d378ce03";
      version = "6.6.122";
    };
    default_packages = [
      "autocore"
      "automount"
      "base-files"
      "bcm27xx-gpu-fw"
      "bcm27xx-utils"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-fs-vfat"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-nls-cp437"
      "kmod-nls-iso8859-1"
      "kmod-sound-arm-bcm2835"
      "kmod-sound-core"
      "kmod-usb-hid"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-cpufreq"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
    ];
    kmods_target = "6.6.122-1-ad00d661c3be1b63e04007a5d378ce03";
    profiles = {
      rpi = {
        device_packages = [
          "cypress-firmware-43430-sdio"
          "brcmfmac-nvram-43430-sdio"
          "kmod-brcmfmac"
          "wpad-openssl"
          "kmod-i2c-bcm2835"
          "kmod-spi-bcm2835"
          "kmod-spi-bcm2835-aux"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.122-1-ad00d661c3be1b63e04007a5d378ce03" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm27xx/bcm2708/kmods/6.6.122-1-ad00d661c3be1b63e04007a5d378ce03/";
    sourceInfo = {
      hash = "sha256-prOncIP197gvv5dofFTICiMTOgkSXQkWNBJZIYFCFZM=";
      name = "kmods-bcm27xx_bcm2708-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm27xx/bcm2708/kmods/6.6.122-1-ad00d661c3be1b63e04007a5d378ce03/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm27xx/bcm2708/packages/";
    sourceInfo = {
      hash = "sha256-hzraag4wAfXPeJDpzhDa4qbTQSBrYkXiF0SFRtcPOeU=";
      name = "bcm27xx_bcm2708-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm27xx/bcm2708/packages/Packages";
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
