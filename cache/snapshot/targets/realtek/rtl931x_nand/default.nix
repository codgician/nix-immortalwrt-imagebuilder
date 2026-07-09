# snapshot realtek/rtl931x_nand
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x_nand/";
  sha256sums = {
    hash = "sha256-vYKg6vh33b01wJtC2qqOZb3TYYaQ9vhzRTF8ZISwyac=";
    name = "realtek_rtl931x_nand-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x_nand/sha256sums";
  };
  imagebuilder = {
    sha256 = "b75f52057c8bfa0de4714acc1c92fcf665bee872a9facc11b7122ebefe57118e";
    filename = "immortalwrt-imagebuilder-realtek-rtl931x_nand.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-gtM2SmCCQyoK9YD3WrJHy0oEiMYZJFTLRUDrrU2f1j4=";
    name = "realtek_rtl931x_nand-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x_nand/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "de4a75a013689da1c4af55dfda5561e4";
      version = "6.18.37";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mtd"
      "netifd"
      "odhcp6c"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.18.37-1-de4a75a013689da1c4af55dfda5561e4";
    profiles = {
      linksys_lgs352c = {
        device_packages = [ "kmod-hwmon-lm63" ];
      };
    };
  };
  kmods."6.18.37-1-de4a75a013689da1c4af55dfda5561e4" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x_nand/kmods/6.18.37-1-de4a75a013689da1c4af55dfda5561e4/";
    sourceInfo = {
      hash = "sha256-eHuCEefn8sj3eINu9A2ubjBPD4z/RvLYyACcEGHi7xM=";
      name = "kmods-realtek_rtl931x_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x_nand/kmods/6.18.37-1-de4a75a013689da1c4af55dfda5561e4/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x_nand/packages/";
    sourceInfo = {
      hash = "sha256-gSI0puyzOnadVZA3gZmkbVtOA83esBAZiC2ROc53rYM=";
      name = "realtek_rtl931x_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x_nand/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_24kc";
  feeds = import ./../../../packages/mips_24kc.nix;
}
