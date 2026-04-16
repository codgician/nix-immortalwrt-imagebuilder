# 25.12.0-rc2 apm821xx/sata
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/apm821xx/sata/";
  sha256sums = {
    hash = "sha256-1U1p8ef+lFaHr6lrr4dFph0cK78WkaryUVulMTTzn70=";
    name = "apm821xx_sata-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/apm821xx/sata/sha256sums";
  };
  imagebuilder = {
    sha256 = "054860624954d93f11fe592eb0986fc78e00c9323c780f40078e8f6cfdae492b";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-apm821xx-sata.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-tAVtwwrPeupZFWutFhBYq+KnfMFKrWnyo6/uB0lWBO0=";
    name = "apm821xx_sata-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/apm821xx/sata/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_464fp";
    linux_kernel = {
      release = "1";
      vermagic = "cffd65e67cd4916023b5ec538e6b1acc";
      version = "6.12.79";
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
    kmods_target = "6.12.79-1-cffd65e67cd4916023b5ec538e6b1acc";
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
  kmods."6.12.79-1-cffd65e67cd4916023b5ec538e6b1acc" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/apm821xx/sata/kmods/6.12.79-1-cffd65e67cd4916023b5ec538e6b1acc/";
    sourceInfo = {
      hash = "sha256-Ukuwkec5HA1urNHym9/3897FQzI42uBpSdh/HFuFcRE=";
      name = "kmods-apm821xx_sata-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/apm821xx/sata/kmods/6.12.79-1-cffd65e67cd4916023b5ec538e6b1acc/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/apm821xx/sata/packages/";
    sourceInfo = {
      hash = "sha256-HV3Y/MaDCLh5igI7xy6UhPTMyNZebAVnFvtXtI9Ko6U=";
      name = "apm821xx_sata-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/apm821xx/sata/packages/packages.adb";
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
