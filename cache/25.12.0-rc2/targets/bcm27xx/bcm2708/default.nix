# 25.12.0-rc2 bcm27xx/bcm2708
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm27xx/bcm2708/";
  sha256sums = {
    hash = "sha256-7rzK60PqF0A4Oh+vu/qkU0udy+0+jLSWDicIMcX2i3M=";
    name = "bcm27xx_bcm2708-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm27xx/bcm2708/sha256sums";
  };
  imagebuilder = {
    sha256 = "03ffdff5380b074d2c4f852a43ceed2cb8d92a6066fe91c56424bf9519eef8f1";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-bcm27xx-bcm2708.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-iBeupGfxwXhtHKJiD47lcS2A5Eia477woBez1YXrbII=";
    name = "bcm27xx_bcm2708-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm27xx/bcm2708/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm1176jzf-s_vfp";
    linux_kernel = {
      release = "1";
      vermagic = "a6a79085416241588b4b02092f900303";
      version = "6.12.79";
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
    kmods_target = "6.12.79-1-a6a79085416241588b4b02092f900303";
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
  kmods."6.12.79-1-a6a79085416241588b4b02092f900303" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm27xx/bcm2708/kmods/6.12.79-1-a6a79085416241588b4b02092f900303/";
    sourceInfo = {
      hash = "sha256-J7iy5K5vlinG39IXXINJQUHf4IJBEduCDu74tEA4BNM=";
      name = "kmods-bcm27xx_bcm2708-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm27xx/bcm2708/kmods/6.12.79-1-a6a79085416241588b4b02092f900303/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm27xx/bcm2708/packages/";
    sourceInfo = {
      hash = "sha256-Hx81+Qam2Bq5PSrfUhYmRDZo/P5kxsDZPEbqa8ufCyk=";
      name = "bcm27xx_bcm2708-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm27xx/bcm2708/packages/packages.adb";
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
