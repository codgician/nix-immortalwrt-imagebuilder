# 24.10.0 apm821xx/sata
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/apm821xx/sata/";
  sha256sums = {
    hash = "sha256-YXTRmX1eFPanxtzCvCr769skNnTbLTTb5clcBqJI4Os=";
    name = "apm821xx_sata-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/apm821xx/sata/sha256sums";
  };
  imagebuilder = {
    sha256 = "6ca339f14b0a161b9b2927a0f0481f70fa49824f9fa56b1cb727be94c2918e23";
    filename = "immortalwrt-imagebuilder-24.10.0-apm821xx-sata.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-x2O3j/Fuf82+6zPgLS42K7VkvArMxPCjFoqZ5mtMgZ0=";
    name = "apm821xx_sata-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/apm821xx/sata/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_464fp";
    linux_kernel = {
      release = "1";
      vermagic = "9091dc159e2b188a157fbea9b3b3ce61";
      version = "6.6.73";
    };
    default_packages = [
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
      "kmod-nf-nathelper-extra"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "lsblk"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mdadm"
      "mkf2fs"
      "mtd"
      "netifd"
      "opkg"
      "partx-utils"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.73-1-9091dc159e2b188a157fbea9b3b3ce61";
    profiles = {
      wd_mybooklive = {
        device_packages = [
          "kmod-usb-dwc2"
          "kmod-ata-dwc"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb-storage"
          "kmod-fs-vfat"
          "wpad-basic-openssl"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.73-1-9091dc159e2b188a157fbea9b3b3ce61" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/apm821xx/sata/kmods/6.6.73-1-9091dc159e2b188a157fbea9b3b3ce61/";
    sourceInfo = {
      hash = "sha256-/mnJlLJo2WACRB9rl3kj943KkYH1E2FMEthkbBjyNwk=";
      name = "kmods-apm821xx_sata-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/apm821xx/sata/kmods/6.6.73-1-9091dc159e2b188a157fbea9b3b3ce61/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/apm821xx/sata/packages/";
    sourceInfo = {
      hash = "sha256-5qmLh8WzH7GkH5ecQ/Cin/fOHRz8UVWQymPMQO+cPh8=";
      name = "apm821xx_sata-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/apm821xx/sata/packages/Packages";
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
