# 23.05.3 apm821xx/sata
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/apm821xx/sata/";
  sha256sums = {
    hash = "sha256-R+ZiEygZm/VjLgk1K/wi29oreAE+IRLwzLkp8IIRgeA=";
    name = "apm821xx_sata-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/apm821xx/sata/sha256sums";
  };
  imagebuilder = {
    sha256 = "c847433cca95cf20451e66a7887744a4d5eb6715b16e3de57f83396d4b1a77d8";
    filename = "immortalwrt-imagebuilder-23.05.3-apm821xx-sata.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-iOSv73zgwbmPUZ7UG7WZ97VuDkHKIsIAdAYd3d1jE2I=";
    name = "apm821xx_sata-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/apm821xx/sata/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_464fp";
    linux_kernel = null;
    default_packages = [
      "badblocks"
      "base-files"
      "block-mount"
      "block-mount"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dropbear"
      "e2fsprogs"
      "f2fsck"
      "fdisk"
      "fstools"
      "kmod-dm"
      "kmod-gpio-button-hotplug"
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
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "mdadm"
      "mkf2fs"
      "mtd"
      "netifd"
      "opkg"
      "partx-utils"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
    profiles = {
      wd_mybooklive = {
        device_packages = [
          "kmod-usb-dwc2"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb-storage"
          "kmod-fs-vfat"
          "wpad-basic-openssl"
          "iwinfo"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/apm821xx/sata/packages/";
    sourceInfo = {
      hash = "sha256-8K8aZ6hhqbOJ5LOTtd82VfD6jLDnzuDuzUvimxXeCr8=";
      name = "apm821xx_sata-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/apm821xx/sata/packages/Packages";
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
