# 24.10.1 apm821xx/sata
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/apm821xx/sata/";
  sha256sums = {
    hash = "sha256-/947hnA2SYS0biLQ+rEujniec7FTHT2a9LeB+l5JIEs=";
    name = "apm821xx_sata-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/apm821xx/sata/sha256sums";
  };
  imagebuilder = {
    sha256 = "791114e1bebfd596bd823db37bb84f750035a2e24b2ae363ffb82adecabae8f1";
    filename = "immortalwrt-imagebuilder-24.10.1-apm821xx-sata.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-QP3l9vli+F8UBUDw/7wxrKEJgyi2Z4moUIWgkIWesv4=";
    name = "apm821xx_sata-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/apm821xx/sata/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_464fp";
    linux_kernel = {
      release = "1";
      vermagic = "1c13fce875eb2bae10b0e5dae38c7607";
      version = "6.6.86";
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
    kmods_target = "6.6.86-1-1c13fce875eb2bae10b0e5dae38c7607";
    profiles = {
      wd_mybooklive = {
        device_packages = [
          "kmod-usb-dwc2"
          "kmod-ata-dwc"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb-storage"
          "kmod-fs-vfat"
          "wpad-openssl"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.86-1-1c13fce875eb2bae10b0e5dae38c7607" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/apm821xx/sata/kmods/6.6.86-1-1c13fce875eb2bae10b0e5dae38c7607/";
    sourceInfo = {
      hash = "sha256-ficly3sKlN4VIIalVCxiO/LsL7oeRnS2RlDt0ZlKRgA=";
      name = "kmods-apm821xx_sata-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/apm821xx/sata/kmods/6.6.86-1-1c13fce875eb2bae10b0e5dae38c7607/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/apm821xx/sata/packages/";
    sourceInfo = {
      hash = "sha256-fMUy8Y9uwOrIuOqqHN2Ze/PwGpi5hOC1QAVRljlZCV4=";
      name = "apm821xx_sata-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/apm821xx/sata/packages/Packages";
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
