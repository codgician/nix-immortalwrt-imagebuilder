# 24.10.3 bcm27xx/bcm2708
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bcm27xx/bcm2708/";
  sha256sums = {
    hash = "sha256-UInogPKui6EUJ8j0/i0IdfTstvV+FZaEaq73zB5m1aM=";
    name = "bcm27xx_bcm2708-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bcm27xx/bcm2708/sha256sums";
  };
  imagebuilder = {
    sha256 = "34d5a7773d6cd15f4ae8ee43aa5fa82e17031a7ebfa9785f8d622b9d78da3be5";
    filename = "immortalwrt-imagebuilder-24.10.3-bcm27xx-bcm2708.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-aFcGcjb8lu+i2nrfRbwFLHDnncthUrzAJBP93T5lM0w=";
    name = "bcm27xx_bcm2708-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bcm27xx/bcm2708/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm1176jzf-s_vfp";
    linux_kernel = {
      release = "1";
      vermagic = "e5522e28845d4a666ffa1b2ca37500b7";
      version = "6.6.104";
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
    kmods_target = "6.6.104-1-e5522e28845d4a666ffa1b2ca37500b7";
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
  kmods."6.6.104-1-e5522e28845d4a666ffa1b2ca37500b7" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bcm27xx/bcm2708/kmods/6.6.104-1-e5522e28845d4a666ffa1b2ca37500b7/";
    sourceInfo = {
      hash = "sha256-aTkdXVWGGErQ5FgcFi8w+6wX0KI2AOMdX+cgsBUL8IM=";
      name = "kmods-bcm27xx_bcm2708-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bcm27xx/bcm2708/kmods/6.6.104-1-e5522e28845d4a666ffa1b2ca37500b7/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bcm27xx/bcm2708/packages/";
    sourceInfo = {
      hash = "sha256-UTmG9mGMgch/GUCjeqR/R9lVfO/oiOLG/DHizoMmGCc=";
      name = "bcm27xx_bcm2708-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/bcm27xx/bcm2708/packages/Packages";
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
