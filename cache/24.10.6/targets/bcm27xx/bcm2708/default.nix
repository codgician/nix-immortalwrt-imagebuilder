# 24.10.6 bcm27xx/bcm2708
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm27xx/bcm2708/";
  sha256sums = {
    hash = "sha256-eHpGvbOWbhxZ60uowU7BnXZhgfyZJ0QUgDNU2fxYSNc=";
    name = "bcm27xx_bcm2708-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm27xx/bcm2708/sha256sums";
  };
  imagebuilder = {
    sha256 = "6d69a8fa624626f91f681cf7d30d3163456e0f640985c5b47a86ebcfbaa72e41";
    filename = "immortalwrt-imagebuilder-24.10.6-bcm27xx-bcm2708.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-1AHc/Y1mghfQt3aXz8JLiF+V8dZSPtWcNUfJo4EL3iI=";
    name = "bcm27xx_bcm2708-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm27xx/bcm2708/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm1176jzf-s_vfp";
    linux_kernel = {
      release = "1";
      vermagic = "ad00d661c3be1b63e04007a5d378ce03";
      version = "6.6.133";
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
    kmods_target = "6.6.133-1-ad00d661c3be1b63e04007a5d378ce03";
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
  kmods."6.6.133-1-ad00d661c3be1b63e04007a5d378ce03" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm27xx/bcm2708/kmods/6.6.133-1-ad00d661c3be1b63e04007a5d378ce03/";
    sourceInfo = {
      hash = "sha256-0/YOnjCLVj4VYRfy20NWkbn2J67s9IS8+8J9N1Lj5FE=";
      name = "kmods-bcm27xx_bcm2708-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm27xx/bcm2708/kmods/6.6.133-1-ad00d661c3be1b63e04007a5d378ce03/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm27xx/bcm2708/packages/";
    sourceInfo = {
      hash = "sha256-/Ux8KCjnaFXq9eAJ3S95bKkuCiLn5+Oz1zReGR4iD8k=";
      name = "bcm27xx_bcm2708-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/bcm27xx/bcm2708/packages/Packages";
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
