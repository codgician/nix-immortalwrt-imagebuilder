# 23.05.2 apm821xx/sata
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.2/targets/apm821xx/sata/";
  sha256sums = {
    hash = "sha256-oNKE0VMlr+a7ntZeG44eIx6hu2PFm1hXXGITw5dttJo=";
    name = "apm821xx_sata-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/apm821xx/sata/sha256sums";
  };
  imagebuilder = {
    sha256 = "acf4e5948a37a5edfc86f6c5656ead5bb97464010f6943ecd7df04bc48a06362";
    filename = "immortalwrt-imagebuilder-23.05.2-apm821xx-sata.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-4UJDWVQB9Bd7bRAdy2jzJisv/903PPFna+2f4EdH6SQ=";
    name = "apm821xx_sata-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/apm821xx/sata/profiles.json";
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
      "luci-lib-fs"
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.2/targets/apm821xx/sata/packages/";
    sourceInfo = {
      hash = "sha256-ZcrL8Iru5qdVPmjoUf8vGYxKbFkXhqG0/L9avDyVdj4=";
      name = "apm821xx_sata-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/apm821xx/sata/packages/Packages";
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
