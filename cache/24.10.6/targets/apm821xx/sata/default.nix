# 24.10.6 apm821xx/sata
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/apm821xx/sata/";
  sha256sums = {
    hash = "sha256-CdnGeU5deNyznhBjEuMeGOGVGTlzm8jyh93bBsPrrqw=";
    name = "apm821xx_sata-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/apm821xx/sata/sha256sums";
  };
  imagebuilder = {
    sha256 = "8b24e1ddf9cf5855f1c6e6dc9eb886d1765f8415d24625924f75828f4dd468b0";
    filename = "immortalwrt-imagebuilder-24.10.6-apm821xx-sata.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-hMz2i7VHwBrhcofIhUn81yTbITkVG6garfVQPpCt1Os=";
    name = "apm821xx_sata-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/apm821xx/sata/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_464fp";
    linux_kernel = {
      release = "1";
      vermagic = "074b07bf151b1c3fe1a612a2ff4cf8d3";
      version = "6.6.133";
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
    kmods_target = "6.6.133-1-074b07bf151b1c3fe1a612a2ff4cf8d3";
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
  kmods."6.6.133-1-074b07bf151b1c3fe1a612a2ff4cf8d3" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/apm821xx/sata/kmods/6.6.133-1-074b07bf151b1c3fe1a612a2ff4cf8d3/";
    sourceInfo = {
      hash = "sha256-Um3ddGrXeIW3fMYBsije0O3V7J2+WGjLjFHsmNXBjWQ=";
      name = "kmods-apm821xx_sata-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/apm821xx/sata/kmods/6.6.133-1-074b07bf151b1c3fe1a612a2ff4cf8d3/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/apm821xx/sata/packages/";
    sourceInfo = {
      hash = "sha256-l+gKG5awIKQKFVe/ZFXsofyIRqe11t5SYOCXIAFAyLs=";
      name = "apm821xx_sata-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/apm821xx/sata/packages/Packages";
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
