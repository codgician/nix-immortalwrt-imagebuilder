# 21.02.7 apm821xx/sata
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/apm821xx/sata/";
  sha256sums = {
    hash = "sha256-HvMqJb29G1VdtAVEEbHW4YnB+jOBSnvsT4oWItoqJLI=";
    name = "apm821xx_sata-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/apm821xx/sata/sha256sums";
  };
  imagebuilder = {
    sha256 = "ddea8c6d3f0fad8e827dbd761be6495a370278bd8831db86d066f5e540559b92";
    filename = "immortalwrt-imagebuilder-21.02.7-apm821xx-sata.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-g6rKKIMYO1EWdiGWW8OYqySGe3ebvPQz6fWBoKZKwa0=";
    name = "apm821xx_sata-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/apm821xx/sata/profiles.json";
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
      "kmod-ipt-raw"
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
      "luci-app-filetransfer"
      "luci-app-turboacc"
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
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/apm821xx/sata/packages/";
    sourceInfo = {
      hash = "sha256-YAO3BxCjU11qylBevbYy2Fi3+RfJQ+klxC/DMRZQcOw=";
      name = "apm821xx_sata-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/apm821xx/sata/packages/Packages";
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
