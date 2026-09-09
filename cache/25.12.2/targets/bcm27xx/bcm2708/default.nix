# 25.12.2 bcm27xx/bcm2708
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm27xx/bcm2708/";
  sha256sums = {
    hash = "sha256-YWSi3LXTPDqQB/xfkNV7C2jsv+1xMOF8kUQYiCKN09I=";
    name = "bcm27xx_bcm2708-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm27xx/bcm2708/sha256sums";
  };
  imagebuilder = {
    sha256 = "ce4cfa539fe7a1e4b0d0fb3fa5b79a70225b577d799cae638da0502b2bff32c6";
    filename = "immortalwrt-imagebuilder-25.12.2-bcm27xx-bcm2708.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-ZKyNk9j1Rp8vW1UwubQxUn4++8qV1rGcwhrQ7zMTMyE=";
    name = "bcm27xx_bcm2708-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm27xx/bcm2708/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm1176jzf-s_vfp";
    linux_kernel = {
      release = "1";
      vermagic = "df0fe0efd00567aa6e9118c65226ec08";
      version = "6.12.103";
    };
    default_packages = [
      "apk-openssl"
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
    kmods_target = "6.12.103-1-df0fe0efd00567aa6e9118c65226ec08";
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
  kmods."6.12.103-1-df0fe0efd00567aa6e9118c65226ec08" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm27xx/bcm2708/kmods/6.12.103-1-df0fe0efd00567aa6e9118c65226ec08/";
    sourceInfo = {
      hash = "sha256-/5nUaKtJRUV9ja9iLX5ebKTsfUwIT4zHe5B3A8adePY=";
      name = "kmods-bcm27xx_bcm2708-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm27xx/bcm2708/kmods/6.12.103-1-df0fe0efd00567aa6e9118c65226ec08/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm27xx/bcm2708/packages/";
    sourceInfo = {
      hash = "sha256-Szgy3KMRr7WvtijbAmiAA8beNaazFcmVmwnQ5Eww7j0=";
      name = "bcm27xx_bcm2708-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm27xx/bcm2708/packages/packages.adb";
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
