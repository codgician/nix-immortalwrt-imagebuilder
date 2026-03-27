# 24.10.0 bcm27xx/bcm2708
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm27xx/bcm2708/";
  sha256sums = {
    hash = "sha256-cOX466KLCPIdV59a3L5z9uRwlNm/BB3FyATkqtYZd1Y=";
    name = "bcm27xx_bcm2708-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm27xx/bcm2708/sha256sums";
  };
  imagebuilder = {
    sha256 = "434f06997c1a744d0944278686ea9130ad52597ed595538f1310d645b6402495";
    filename = "immortalwrt-imagebuilder-24.10.0-bcm27xx-bcm2708.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-UXZBVgvcLUBv2xnwkE+fkxe96D/xZV70ujyj8YF04+Q=";
    name = "bcm27xx_bcm2708-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm27xx/bcm2708/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm1176jzf-s_vfp";
    linux_kernel = {
      release = "1";
      vermagic = "4358b2d1867bfbe14830b9d15e4ac967";
      version = "6.6.73";
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
    kmods_target = "6.6.73-1-4358b2d1867bfbe14830b9d15e4ac967";
    profiles = {
      rpi = {
        device_packages = [
          "cypress-firmware-43430-sdio"
          "brcmfmac-nvram-43430-sdio"
          "kmod-brcmfmac"
          "wpad-basic-openssl"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.73-1-4358b2d1867bfbe14830b9d15e4ac967" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm27xx/bcm2708/kmods/6.6.73-1-4358b2d1867bfbe14830b9d15e4ac967/";
    sourceInfo = {
      hash = "sha256-V/P2pTerSxHrIvq2uk0vEIN2gO8nFn0Nov6F/6+uHXo=";
      name = "kmods-bcm27xx_bcm2708-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm27xx/bcm2708/kmods/6.6.73-1-4358b2d1867bfbe14830b9d15e4ac967/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm27xx/bcm2708/packages/";
    sourceInfo = {
      hash = "sha256-zYU6OPSPe8N3gDwEvbJ34rzw1IT72ejzTnBwBaGRtw0=";
      name = "bcm27xx_bcm2708-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/bcm27xx/bcm2708/packages/Packages";
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
