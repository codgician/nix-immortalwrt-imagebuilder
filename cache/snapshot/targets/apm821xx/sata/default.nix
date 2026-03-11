# snapshot apm821xx/sata
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/sata/";
  sha256sums = {
    hash = "sha256-lAHrNIeGtRiGzLqYXMr2+pAtok0BdoJpyV+j4sRDhyM=";
    name = "apm821xx_sata-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/sata/sha256sums";
  };
  imagebuilder = {
    sha256 = "3204ddf4297ccbc4ac461fee3935070e2ef7aa33ae0fef13fc8a83d06a525872";
    filename = "immortalwrt-imagebuilder-apm821xx-sata.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-imm8uGnzLFELrC4/VrIU0iPbxy8ZxnjVTqZyb6v8Tr4=";
    name = "apm821xx_sata-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/sata/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_464fp";
    linux_kernel = {
      release = "1";
      vermagic = "f278dd3c0ac0239508556c74f445a7f6";
      version = "6.12.74";
    };
    default_packages = [
      "apk-openssl"
      "badblocks"
      "base-files"
      "block-mount"
      "block-mount"
      "ca-bundle"
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
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "lsblk"
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
    kmods_target = "6.12.74-1-f278dd3c0ac0239508556c74f445a7f6";
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
  kmods."6.12.74-1-f278dd3c0ac0239508556c74f445a7f6" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/sata/kmods/6.12.74-1-f278dd3c0ac0239508556c74f445a7f6/";
    sourceInfo = {
      hash = "sha256-0tbsSJ3Nx1jf7YfqYgsWHNKvyGa3Q1AHfTFogrMTbLU=";
      name = "kmods-apm821xx_sata-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/sata/kmods/6.12.74-1-f278dd3c0ac0239508556c74f445a7f6/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/sata/packages/";
    sourceInfo = {
      hash = "sha256-CGFtdT+jksHniJ3kc4tpRfifsU04Ht1tmsbPp7e3Zzk=";
      name = "apm821xx_sata-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/sata/packages/packages.adb";
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
