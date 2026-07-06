# 25.12.1 apm821xx/sata
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/apm821xx/sata/";
  sha256sums = {
    hash = "sha256-9YfuAO2bMDi+LWYCteRx1nvXsRmhac0+erhWdURHVlo=";
    name = "apm821xx_sata-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/apm821xx/sata/sha256sums";
  };
  imagebuilder = {
    sha256 = "dbb4f445f9f93d4fcbadede29958032ec527d9a8b6eaaf42dcf79c2c4d01521c";
    filename = "immortalwrt-imagebuilder-25.12.1-apm821xx-sata.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Ml56wfuykzksirVy3PHEohKiwHvq65uO6LcJngtSwkQ=";
    name = "apm821xx_sata-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/apm821xx/sata/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_464fp";
    linux_kernel = {
      release = "1";
      vermagic = "c7f88bb9b147617312509f9229d94725";
      version = "6.12.94";
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
    kmods_target = "6.12.94-1-c7f88bb9b147617312509f9229d94725";
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
  kmods."6.12.94-1-c7f88bb9b147617312509f9229d94725" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/apm821xx/sata/kmods/6.12.94-1-c7f88bb9b147617312509f9229d94725/";
    sourceInfo = {
      hash = "sha256-mL5Q6qxL2o9N4cDlqOY6nSXjtVmXS7fw32Z9PAIQ3oE=";
      name = "kmods-apm821xx_sata-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/apm821xx/sata/kmods/6.12.94-1-c7f88bb9b147617312509f9229d94725/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/apm821xx/sata/packages/";
    sourceInfo = {
      hash = "sha256-/6bCx6dl1O1J7IwAwGv+RDbgcHBrrvgF4u0LPw5hXY4=";
      name = "apm821xx_sata-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/apm821xx/sata/packages/packages.adb";
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
