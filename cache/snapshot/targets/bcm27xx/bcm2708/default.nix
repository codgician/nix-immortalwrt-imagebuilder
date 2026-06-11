# snapshot bcm27xx/bcm2708
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2708/";
  sha256sums = {
    hash = "sha256-uiGrxd3oshlsKDE2SbEXvMHmvnF3uyLBSVQPkl6xid4=";
    name = "bcm27xx_bcm2708-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2708/sha256sums";
  };
  imagebuilder = {
    sha256 = "229e539c795fba65598ef86b4e6c66c02aa11497a6b0cc15741530c232ea0110";
    filename = "immortalwrt-imagebuilder-bcm27xx-bcm2708.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-OJxPOwxcPe+fo+l0zt8jp5/VeWShurnXf8jt+VWc9bM=";
    name = "bcm27xx_bcm2708-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2708/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm1176jzf-s_vfp";
    linux_kernel = {
      release = "1";
      vermagic = "d076df84d108edaf52d691722614350d";
      version = "6.12.92";
    };
    default_packages = [
      "apk-openssl"
      "automount"
      "base-files"
      "bcm27xx-gpu-fw"
      "bcm27xx-utils"
      "ca-bundle"
      "cpufreq"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-fs-vfat"
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
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
    ];
    kmods_target = "6.12.92-1-d076df84d108edaf52d691722614350d";
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
        ];
      };
    };
  };
  kmods."6.12.92-1-d076df84d108edaf52d691722614350d" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2708/kmods/6.12.92-1-d076df84d108edaf52d691722614350d/";
    sourceInfo = {
      hash = "sha256-LjDO5EWqiMsFwvrcpxGguF4l3uA6HgZatmqzNZl1RHQ=";
      name = "kmods-bcm27xx_bcm2708-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2708/kmods/6.12.92-1-d076df84d108edaf52d691722614350d/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2708/packages/";
    sourceInfo = {
      hash = "sha256-njkbz2JCnrZ0EL21kpPsJRhKQg++hd0eP342V2oUfDk=";
      name = "bcm27xx_bcm2708-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm27xx/bcm2708/packages/packages.adb";
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
