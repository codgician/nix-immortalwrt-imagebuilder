# 25.12.0-rc1 apm821xx/sata
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/apm821xx/sata/";
  sha256sums = {
    hash = "sha256-vLjHlyxh9/2PhmcvuuA8EgsNFrcc0bh3K3mVcNhK7uM=";
    name = "apm821xx_sata-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/apm821xx/sata/sha256sums";
  };
  imagebuilder = {
    sha256 = "7f01e4c775ea0f9f58e7a43c4b04175dee4b6260493ba3d034e1f13cd9b4e528";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-apm821xx-sata.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-jCl8kKrI/wRXxu+R00nh+R1ul4NmICtwwBYt+3WhTUo=";
    name = "apm821xx_sata-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/apm821xx/sata/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_464fp";
    linux_kernel = {
      release = "1";
      vermagic = "1ae5a69a09b9d182a00b1b17a8c4a1fd";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-1ae5a69a09b9d182a00b1b17a8c4a1fd";
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
  kmods."6.12.74-1-1ae5a69a09b9d182a00b1b17a8c4a1fd" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/apm821xx/sata/kmods/6.12.74-1-1ae5a69a09b9d182a00b1b17a8c4a1fd/";
    sourceInfo = {
      hash = "sha256-zYKXIveH6x54Szh05cvmIFlNHPDWj+YZUCNwIIOIsug=";
      name = "kmods-apm821xx_sata-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/apm821xx/sata/kmods/6.12.74-1-1ae5a69a09b9d182a00b1b17a8c4a1fd/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/apm821xx/sata/packages/";
    sourceInfo = {
      hash = "sha256-7OUKfn6/aTjJtxvgJ72zKLkklOYMRZJM2O/UZNPh3ZM=";
      name = "apm821xx_sata-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/apm821xx/sata/packages/packages.adb";
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
