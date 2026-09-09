# 25.12.2 apm821xx/sata
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/apm821xx/sata/";
  sha256sums = {
    hash = "sha256-wBM/n/O0J/fDLzccaSBLDAi7Kc7tPVGqSrSh58vbEpo=";
    name = "apm821xx_sata-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/apm821xx/sata/sha256sums";
  };
  imagebuilder = {
    sha256 = "f8a634263f2aa8e06b993d44cd6cded108b6b077fb5ae86e36d047f769576dc6";
    filename = "immortalwrt-imagebuilder-25.12.2-apm821xx-sata.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-oPLZNh64H7c1SbCLH4P6vw17NTquhTDrHFIV7qFCgHQ=";
    name = "apm821xx_sata-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/apm821xx/sata/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_464fp";
    linux_kernel = {
      release = "1";
      vermagic = "c7f88bb9b147617312509f9229d94725";
      version = "6.12.103";
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
    kmods_target = "6.12.103-1-c7f88bb9b147617312509f9229d94725";
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
  kmods."6.12.103-1-c7f88bb9b147617312509f9229d94725" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/apm821xx/sata/kmods/6.12.103-1-c7f88bb9b147617312509f9229d94725/";
    sourceInfo = {
      hash = "sha256-o/nRxrzbKVb9Kt2fjybk63hfJw+Xh2e4OfxFNKQ8rvE=";
      name = "kmods-apm821xx_sata-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/apm821xx/sata/kmods/6.12.103-1-c7f88bb9b147617312509f9229d94725/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/apm821xx/sata/packages/";
    sourceInfo = {
      hash = "sha256-XjIKCAaQcrto0U2pHRvcijuRbk0PujwSOPdWsIhJIh4=";
      name = "apm821xx_sata-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/apm821xx/sata/packages/packages.adb";
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
