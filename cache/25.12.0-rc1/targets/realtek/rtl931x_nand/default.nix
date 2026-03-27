# 25.12.0-rc1 realtek/rtl931x_nand
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/realtek/rtl931x_nand/";
  sha256sums = {
    hash = "sha256-WYbgtM7y07l1NIqmfH3iHpW76/EFIijAJZcKXPmoB4s=";
    name = "realtek_rtl931x_nand-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/realtek/rtl931x_nand/sha256sums";
  };
  imagebuilder = {
    sha256 = "de652cd31175a8f6ec8ba43bda89ba7bfe36c812cbf27f91e02004f2b1de2679";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-realtek-rtl931x_nand.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-SENTEmZ9XkMMRLLezloTXwNLm+Es6BURKVWtkkXWwh8=";
    name = "realtek_rtl931x_nand-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/realtek/rtl931x_nand/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "3dc378bec457e24f1f2abe5e13170b1e";
      version = "6.12.74";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
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
    kmods_target = "6.12.74-1-3dc378bec457e24f1f2abe5e13170b1e";
    profiles = {
      linksys_lgs352c = {
        device_packages = [ "kmod-hwmon-lm63" ];
      };
    };
  };
  kmods."6.12.74-1-3dc378bec457e24f1f2abe5e13170b1e" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/realtek/rtl931x_nand/kmods/6.12.74-1-3dc378bec457e24f1f2abe5e13170b1e/";
    sourceInfo = {
      hash = "sha256-TUar6oQuTmqCRKYZpBYh+qYxHKPxLAMsmajOyKsiSpA=";
      name = "kmods-realtek_rtl931x_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/realtek/rtl931x_nand/kmods/6.12.74-1-3dc378bec457e24f1f2abe5e13170b1e/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/realtek/rtl931x_nand/packages/";
    sourceInfo = {
      hash = "sha256-fQQBb8nfDARXny2lV9VH2fLRtKgWq1M0BQNE5oyyaZU=";
      name = "realtek_rtl931x_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/realtek/rtl931x_nand/packages/packages.adb";
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
