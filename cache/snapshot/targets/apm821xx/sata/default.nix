# snapshot apm821xx/sata
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/apm821xx/sata/";
  sha256sums = {
    hash = "sha256-skfQ2nnCseLvLSZxhgYZRzeSh1sKbxYdCjWycrSbeLA=";
    name = "apm821xx_sata-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/apm821xx/sata/sha256sums";
  };
  imagebuilder = {
    sha256 = "b1aced89131c57542ff3183437daab237df03ecb5763dfcd0f2979446c62ce4f";
    filename = "immortalwrt-imagebuilder-apm821xx-sata.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-9ed32n02yhxWnttlo+yoeYjXZyILY6EYjgf8Zf3OmDc=";
    name = "apm821xx_sata-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/apm821xx/sata/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_464fp";
    linux_kernel = {
      release = "1";
      vermagic = "396ce74a00c91a1fb48ca76eb67eec53";
      version = "6.12.67";
    };
    default_packages = [
      "apk-openssl"
      "badblocks"
      "base-files"
      "block-mount"
      "block-mount"
      "ca-bundle"
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
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "lsblk"
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
    kmods_target = "6.12.67-1-396ce74a00c91a1fb48ca76eb67eec53";
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
  kmods."6.12.67-1-396ce74a00c91a1fb48ca76eb67eec53" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/apm821xx/sata/kmods/6.12.67-1-396ce74a00c91a1fb48ca76eb67eec53/";
    sourceInfo = {
      hash = "sha256-WegK00ytgLdbdrdIQ8bf1g8MfoUJjYWjleLu+t1dnwY=";
      name = "kmods-apm821xx_sata-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/apm821xx/sata/kmods/6.12.67-1-396ce74a00c91a1fb48ca76eb67eec53/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/apm821xx/sata/packages/";
    sourceInfo = {
      hash = "sha256-ZfDxjITGb/CwNWp2zg+mMlsTimymyqRUtbL6rd8jrCc=";
      name = "apm821xx_sata-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/apm821xx/sata/packages/packages.adb";
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
