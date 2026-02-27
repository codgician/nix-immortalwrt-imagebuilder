# 23.05.7 apm821xx/sata
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/apm821xx/sata/";
  sha256sums = {
    hash = "sha256-x0hL8eMsbRKyDq5os5twE6jgnjJCo7l4fv6TkXgHb4I=";
    name = "apm821xx_sata-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/apm821xx/sata/sha256sums";
  };
  imagebuilder = {
    sha256 = "645039e231bc183c7dd93a7b7ba80b08d97409881c438841bdbeff8c95f6e50e";
    filename = "immortalwrt-imagebuilder-23.05.7-apm821xx-sata.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-rNm1JOImjFoGGNEJrbjTudjPiL89pY5gl/pKB5YLDEk=";
    name = "apm821xx_sata-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/apm821xx/sata/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_464fp";
    linux_kernel = {
      release = "1";
      vermagic = "e560880edf800d4061fa51f11b956064";
      version = "5.15.195";
    };
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
    kmods_target = "5.15.195-1-e560880edf800d4061fa51f11b956064";
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
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/apm821xx/sata/packages/";
    sourceInfo = {
      hash = "sha256-hCHXIee/BUVRlezzNFwO4+3ZKN++z2++18iavU1Z8EA=";
      name = "apm821xx_sata-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/apm821xx/sata/packages/Packages";
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
