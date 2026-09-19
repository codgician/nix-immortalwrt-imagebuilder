# snapshot realtek/rtl930x_nand
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x_nand/";
  sha256sums = {
    hash = "sha256-j9m5zAmriCcjDvi+S2F9Bt1s7hS3CEOMX32FIG9tXik=";
    name = "realtek_rtl930x_nand-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x_nand/sha256sums";
  };
  imagebuilder = {
    sha256 = "aa93d0648231b8ab29a36f840be0bf24bb800df86ec8804610a50159af58187a";
    filename = "immortalwrt-imagebuilder-realtek-rtl930x_nand.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-GWLJTL9Gh56T4yil9ZVG+OAdoU4LfyW7L00F1P6gmKc=";
    name = "realtek_rtl930x_nand-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x_nand/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "b11167f409eb28de95137da7ef2571c2";
      version = "6.18.52";
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
    kmods_target = "6.18.52-1-b11167f409eb28de95137da7ef2571c2";
    profiles = {
      linksys_lgs328c = {
        device_packages = [ ];
      };
      linksys_lgs328mpc-v2 = {
        device_packages = [
          "kmod-hwmon-lm63"
          "kmod-pse-realtek-mcu-i2c"
        ];
      };
    };
  };
  kmods."6.18.52-1-b11167f409eb28de95137da7ef2571c2" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x_nand/kmods/6.18.52-1-b11167f409eb28de95137da7ef2571c2/";
    sourceInfo = {
      hash = "sha256-X9ilpuuGW1TuF5bDWRzHOCB6EZe7gnLds5Aq/jiYnx4=";
      name = "kmods-realtek_rtl930x_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x_nand/kmods/6.18.52-1-b11167f409eb28de95137da7ef2571c2/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x_nand/packages/";
    sourceInfo = {
      hash = "sha256-TW8w6Ojj02WuJgRigcGySFP3IxAs4ehCsOiHSP2HjrY=";
      name = "realtek_rtl930x_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x_nand/packages/packages.adb";
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
