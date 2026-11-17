# snapshot apm821xx/sata
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/sata/";
  sha256sums = {
    hash = "sha256-JvdlCP0+ti5mbnrss2vFFyYz6b5/hf6P9NI38G0NhOI=";
    name = "apm821xx_sata-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/sata/sha256sums";
  };
  imagebuilder = {
    sha256 = "b980e17ecc886086f687febf4cd9f4a8e44e14ecd75a0ac7e5eac70af0d31ce6";
    filename = "immortalwrt-imagebuilder-apm821xx-sata.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-AHHyGlqoeUg8yGsyofg3UwdDf8i9Z2AwzYFGfTJ9RjY=";
    name = "apm821xx_sata-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/sata/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_464fp";
    linux_kernel = {
      release = "1";
      vermagic = "188b100c400f79a70cf913135efaf0a0";
      version = "6.18.60";
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
    kmods_target = "6.18.60-1-188b100c400f79a70cf913135efaf0a0";
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
  kmods."6.18.60-1-188b100c400f79a70cf913135efaf0a0" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/sata/kmods/6.18.60-1-188b100c400f79a70cf913135efaf0a0/";
    sourceInfo = {
      hash = "sha256-RxXCJD0gX7XOTUnNkkcNkzZ60bxvNI0OCHR0LQ15dOQ=";
      name = "kmods-apm821xx_sata-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/apm821xx/sata/kmods/6.18.60-1-188b100c400f79a70cf913135efaf0a0/packages.adb";
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
      hash = "sha256-Jl2LPmNX2OlSXXMTrZXmVth1KvAafehGWo1BO+ffEuQ=";
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
