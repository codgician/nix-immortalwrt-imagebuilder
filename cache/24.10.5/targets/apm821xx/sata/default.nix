# 24.10.5 apm821xx/sata
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/apm821xx/sata/";
  sha256sums = {
    hash = "sha256-J7ati1xNUQTb59lhnN2jUJ1kKUEOSFodG/YKxoK2UTI=";
    name = "apm821xx_sata-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/apm821xx/sata/sha256sums";
  };
  imagebuilder = {
    sha256 = "9ecd2a5f92b74f7af78131cc4d7f377d6ceff77cd86d7df689c7cdcee85c42ea";
    filename = "immortalwrt-imagebuilder-24.10.5-apm821xx-sata.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-EJj1iIYyhOrrDIcLIwYF14gCLfFvfqQy7niqy4fAdIQ=";
    name = "apm821xx_sata-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/apm821xx/sata/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_464fp";
    linux_kernel = {
      release = "1";
      vermagic = "074b07bf151b1c3fe1a612a2ff4cf8d3";
      version = "6.6.122";
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
    kmods_target = "6.6.122-1-074b07bf151b1c3fe1a612a2ff4cf8d3";
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
  kmods."6.6.122-1-074b07bf151b1c3fe1a612a2ff4cf8d3" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/apm821xx/sata/kmods/6.6.122-1-074b07bf151b1c3fe1a612a2ff4cf8d3/";
    sourceInfo = {
      hash = "sha256-tvkP+Pe5QF/FgJ32H2y/icSfDNfnix4KABpxRqs2lcU=";
      name = "kmods-apm821xx_sata-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/apm821xx/sata/kmods/6.6.122-1-074b07bf151b1c3fe1a612a2ff4cf8d3/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/apm821xx/sata/packages/";
    sourceInfo = {
      hash = "sha256-F3e30KCny8WfmabkT4dgdb6919RM0ChKf+SYhdVuL+k=";
      name = "apm821xx_sata-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/apm821xx/sata/packages/Packages";
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
