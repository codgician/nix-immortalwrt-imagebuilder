# 23.05.7 bcm27xx/bcm2711
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bcm27xx/bcm2711/";
  sha256sums = {
    hash = "sha256-OydAh0bub6t4aQCp8pn4tuIUyETUu0APV4oINQ2Oi3Q=";
    name = "bcm27xx_bcm2711-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bcm27xx/bcm2711/sha256sums";
  };
  imagebuilder = {
    sha256 = "5683bb234b4f4ed0de28a31ce34a542917fa223e916afe15bb1a2a80037e1465";
    filename = "immortalwrt-imagebuilder-23.05.7-bcm27xx-bcm2711.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-yP8Hv7foNG1NSNsdpFDRduYpHzhS2TxS0W5LCXYSIxI=";
    name = "bcm27xx_bcm2711-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bcm27xx/bcm2711/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a72";
    linux_kernel = {
      release = "1";
      vermagic = "190a05698463659c1135d528b3ce0825";
      version = "5.15.195";
    };
    default_packages = [
      "autocore"
      "automount"
      "base-files"
      "bcm27xx-gpu-fw"
      "block-mount"
      "busybox"
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
      "luci"
      "luci-app-cpufreq"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
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
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
    ];
    kmods_target = "5.15.195-1-190a05698463659c1135d528b3ce0825";
    profiles = {
      rpi-4 = {
        device_packages = [
          "cypress-firmware-43455-sdio"
          "brcmfmac-nvram-43455-sdio"
          "kmod-brcmfmac"
          "wpad-openssl"
          "kmod-usb-net-lan78xx"
          "kmod-r8169"
          "iwinfo"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bcm27xx/bcm2711/packages/";
    sourceInfo = {
      hash = "sha256-3Hh0c1SPDvLDRcS+S9NO0dnXYptbnLfgH/JjvDyL5ko=";
      name = "bcm27xx_bcm2711-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bcm27xx/bcm2711/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_cortex-a72";
  feeds = import ./../../../packages/aarch64_cortex-a72.nix;
}
