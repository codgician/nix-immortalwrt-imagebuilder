# 24.10.2 apm821xx/sata
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/apm821xx/sata/";
  sha256sums = {
    hash = "sha256-HxM8udKdKsaF1fFCJvVpvV0DQxqp3sQdCF8Gw836N+s=";
    name = "apm821xx_sata-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/apm821xx/sata/sha256sums";
  };
  imagebuilder = {
    sha256 = "f9737a0829a854c42bc2df232652801def1ae018af97bf7ebafd7576fb901e1e";
    filename = "immortalwrt-imagebuilder-24.10.2-apm821xx-sata.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-JjwAyEFjVuW3viRIbGqXC2cfH2Gu1ZlF5seDCUM9Df0=";
    name = "apm821xx_sata-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/apm821xx/sata/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_464fp";
    linux_kernel = {
      release = "1";
      vermagic = "4185685a388dc6c2a1246b66724ea3ca";
      version = "6.6.93";
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
    kmods_target = "6.6.93-1-4185685a388dc6c2a1246b66724ea3ca";
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
  kmods."6.6.93-1-4185685a388dc6c2a1246b66724ea3ca" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/apm821xx/sata/kmods/6.6.93-1-4185685a388dc6c2a1246b66724ea3ca/";
    sourceInfo = {
      hash = "sha256-K7e+MqZ6pVPnUsMFdw9MrVI1rxBT5n6UPtdUAKL43Cs=";
      name = "kmods-apm821xx_sata-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/apm821xx/sata/kmods/6.6.93-1-4185685a388dc6c2a1246b66724ea3ca/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/apm821xx/sata/packages/";
    sourceInfo = {
      hash = "sha256-Pp9njfKwHnXoU1Joqxsg6jOU15xmp8wFr8pUmtJ5GSw=";
      name = "apm821xx_sata-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/apm821xx/sata/packages/Packages";
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
