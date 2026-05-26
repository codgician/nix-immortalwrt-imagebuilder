# 25.12.0 apm821xx/sata
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/apm821xx/sata/";
  sha256sums = {
    hash = "sha256-Yh5sF8UW5kKPlZIdcDiRVWeRi8Y0+xU3Tha/zpAOLv4=";
    name = "apm821xx_sata-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/apm821xx/sata/sha256sums";
  };
  imagebuilder = {
    sha256 = "ed9a501a1bc41a48a390760ccf328a45722130a659f925c244aef260b559bbcc";
    filename = "immortalwrt-imagebuilder-25.12.0-apm821xx-sata.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-UMaxymsJ1rsMgKCtY7bVpWhhh4Yt6NJHH0fzEeCesZI=";
    name = "apm821xx_sata-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/apm821xx/sata/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_464fp";
    linux_kernel = {
      release = "1";
      vermagic = "323ecfde91a226e006f41785c6136291";
      version = "6.12.87";
    };
    default_packages = [
      "apk-openssl"
      "badblocks"
      "base-files"
      "block-mount"
      "block-mount"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dropbear"
      "e2fsprogs"
      "f2fsck"
      "fdisk"
      "fstools"
      "kmod-dm"
      "kmod-gpio-button-hotplug"
      "kmod-hw-crypto-4xx"
      "kmod-hwmon-drivetemp"
      "kmod-i2c-core"
      "kmod-leds-gpio"
      "kmod-md-mod"
      "kmod-nf-nathelper"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "lsblk"
      "luci"
      "mdadm"
      "mkf2fs"
      "mtd"
      "netifd"
      "partx-utils"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.87-1-323ecfde91a226e006f41785c6136291";
    profiles = {
      wd_mybooklive = {
        device_packages = [
          "kmod-usb-dwc2"
          "kmod-ata-dwc"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb-storage"
          "kmod-fs-vfat"
          "wpad-openssl"
        ];
      };
    };
  };
  kmods."6.12.87-1-323ecfde91a226e006f41785c6136291" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/apm821xx/sata/kmods/6.12.87-1-323ecfde91a226e006f41785c6136291/";
    sourceInfo = {
      hash = "sha256-cBOPctwspfUvyGNtp75UrHwlxMYr38sizxpxDCXuiHA=";
      name = "kmods-apm821xx_sata-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/apm821xx/sata/kmods/6.12.87-1-323ecfde91a226e006f41785c6136291/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/apm821xx/sata/packages/";
    sourceInfo = {
      hash = "sha256-ehM3/WNVQmKvab+IK2gmnkTeY8V5LUes+g0Y/2VE2s8=";
      name = "apm821xx_sata-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/apm821xx/sata/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "powerpc_464fp";
  feeds = import ./../../../packages/powerpc_464fp.nix;
}
