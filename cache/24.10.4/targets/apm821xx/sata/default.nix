# 24.10.4 apm821xx/sata
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/apm821xx/sata/";
  sha256sums = {
    hash = "sha256-2E0WZIfRN0+WSIvh/xUN3G6USFRsLGlUKm5WWvzh+wQ=";
    name = "apm821xx_sata-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/apm821xx/sata/sha256sums";
  };
  imagebuilder = {
    sha256 = "61e7f07748c4cbc8c1b01eb8769453e2e01d62f8b6da8aed9e385636ad249325";
    filename = "immortalwrt-imagebuilder-24.10.4-apm821xx-sata.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-z/wPgknhzPah0feMSzELeA2PFB302CGRJdpdA8+uOTQ=";
    name = "apm821xx_sata-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/apm821xx/sata/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_464fp";
    linux_kernel = {
      release = "1";
      vermagic = "2812ba52f0551d2373d42692cd2f225c";
      version = "6.6.110";
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
    kmods_target = "6.6.110-1-2812ba52f0551d2373d42692cd2f225c";
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
  kmods."6.6.110-1-2812ba52f0551d2373d42692cd2f225c" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/apm821xx/sata/kmods/6.6.110-1-2812ba52f0551d2373d42692cd2f225c/";
    sourceInfo = {
      hash = "sha256-ElWYbz9KXmc/Y+6LDGTjDLBWJPOkpx2RVCM/00NaX5E=";
      name = "kmods-apm821xx_sata-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/apm821xx/sata/kmods/6.6.110-1-2812ba52f0551d2373d42692cd2f225c/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/apm821xx/sata/packages/";
    sourceInfo = {
      hash = "sha256-uNAZ1kBGNYoBPXFCPoi/fzlkQNKfkfCQcq95P7AmOBc=";
      name = "apm821xx_sata-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/apm821xx/sata/packages/Packages";
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
