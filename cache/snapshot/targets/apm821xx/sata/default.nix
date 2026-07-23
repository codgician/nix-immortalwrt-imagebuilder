# snapshot apm821xx/sata
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/sata/";
  sha256sums = {
    hash = "sha256-MFlTxPpEyOmWiTRwtRB64jaOJDnxBQT4EqyrM7n5qXU=";
    name = "apm821xx_sata-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/sata/sha256sums";
  };
  imagebuilder = {
    sha256 = "730022ebc70f8cc2e0c23a25e7c512068b0ad49e86f9fd71212f588deb2b6ff9";
    filename = "immortalwrt-imagebuilder-apm821xx-sata.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-HCixkbkagEF50Fklyf93ALr+Owxz1nc6brwsRYJpSuA=";
    name = "apm821xx_sata-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/sata/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_464fp";
    linux_kernel = {
      release = "1";
      vermagic = "a5e04b2c7bfbb11b574db46bfb3e2f8a";
      version = "6.18.39";
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
    kmods_target = "6.18.39-1-a5e04b2c7bfbb11b574db46bfb3e2f8a";
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
  kmods."6.18.39-1-a5e04b2c7bfbb11b574db46bfb3e2f8a" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/sata/kmods/6.18.39-1-a5e04b2c7bfbb11b574db46bfb3e2f8a/";
    sourceInfo = {
      hash = "sha256-2eFyDy7gMYnnOfBqDaBSlO4qy/KQT/hBEtpVQ+FR+/Y=";
      name = "kmods-apm821xx_sata-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/sata/kmods/6.18.39-1-a5e04b2c7bfbb11b574db46bfb3e2f8a/packages.adb";
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
      hash = "sha256-Z9oHXg7ZaBoI4giW4UUUA+vLEbd+Tr3aC814QWz4SSM=";
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
