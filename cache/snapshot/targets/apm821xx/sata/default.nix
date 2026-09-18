# snapshot apm821xx/sata
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/sata/";
  sha256sums = {
    hash = "sha256-w96dFZ6VXcjcKGHnXP8wFdXx6a/Y5Lak5Y72SxNfn8s=";
    name = "apm821xx_sata-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/sata/sha256sums";
  };
  imagebuilder = {
    sha256 = "b1a7bb9344bb5f7b048ad37e1f0d225b5146791de986229692c7ee1d838dc31e";
    filename = "immortalwrt-imagebuilder-apm821xx-sata.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-QLv7WIq+Vm3PyXsyIGfWTsKsMEcqP3gDtAehGOh4Y1w=";
    name = "apm821xx_sata-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/sata/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_464fp";
    linux_kernel = {
      release = "1";
      vermagic = "787e46c9ae509202cb74e0e0e6d160e1";
      version = "6.18.52";
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
    kmods_target = "6.18.52-1-787e46c9ae509202cb74e0e0e6d160e1";
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
  kmods."6.18.52-1-787e46c9ae509202cb74e0e0e6d160e1" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/sata/kmods/6.18.52-1-787e46c9ae509202cb74e0e0e6d160e1/";
    sourceInfo = {
      hash = "sha256-nMw4L1Tdq/MO5vbAdbw+wsogWBXwbQdXlpg00DxQipY=";
      name = "kmods-apm821xx_sata-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/sata/kmods/6.18.52-1-787e46c9ae509202cb74e0e0e6d160e1/packages.adb";
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
      hash = "sha256-YNFZMfssUBXIiJFZhriJO8NNNeolM+hID+SbTnUBfcI=";
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
