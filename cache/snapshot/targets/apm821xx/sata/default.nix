# snapshot apm821xx/sata
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/sata/";
  sha256sums = {
    hash = "sha256-ybY6dGvoxwbedq9Yskbi1p1SjyozLaeNoLuHE1uMG4g=";
    name = "apm821xx_sata-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/sata/sha256sums";
  };
  imagebuilder = {
    sha256 = "8a0d6225be0ae89ed982904ff1ac21ec59d6913d56e296d276945fe5072f269f";
    filename = "immortalwrt-imagebuilder-apm821xx-sata.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-FSO7/Xu2YHXjShrzgHwckrKsFHokDUQgJoiuQPsbGVk=";
    name = "apm821xx_sata-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/sata/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_464fp";
    linux_kernel = {
      release = "1";
      vermagic = "b2d5fc094357f74926e16059a975fb4a";
      version = "6.12.89";
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
    kmods_target = "6.12.89-1-b2d5fc094357f74926e16059a975fb4a";
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
  kmods."6.12.89-1-b2d5fc094357f74926e16059a975fb4a" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/sata/kmods/6.12.89-1-b2d5fc094357f74926e16059a975fb4a/";
    sourceInfo = {
      hash = "sha256-pK3uepo4/g73NlWU0b/+rpD/ufyTzMJFvempQqoUbVU=";
      name = "kmods-apm821xx_sata-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/sata/kmods/6.12.89-1-b2d5fc094357f74926e16059a975fb4a/packages.adb";
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
      hash = "sha256-EyD1gV0e+zSyK7q5aAn/VR6dUDGq3tGd72sUd/M7R9o=";
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
