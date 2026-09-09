# 25.12.2 realtek/rtl930x_nand
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/realtek/rtl930x_nand/";
  sha256sums = {
    hash = "sha256-t+2bRilSDJPHHyOaADgin/4+ErKXjNts4MdSwtMTL0c=";
    name = "realtek_rtl930x_nand-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/realtek/rtl930x_nand/sha256sums";
  };
  imagebuilder = {
    sha256 = "fa88eaf1e59c5da0971263d1ac4105c1408c131565fd28d91488952eef64b672";
    filename = "immortalwrt-imagebuilder-25.12.2-realtek-rtl930x_nand.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-puyxPrTX0fx9ND+n/3QUrcCpnGjlkH33JS4Ius/YRwI=";
    name = "realtek_rtl930x_nand-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/realtek/rtl930x_nand/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "2572cc0a917a324a046851b214e400f0";
      version = "6.12.103";
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
    kmods_target = "6.12.103-1-2572cc0a917a324a046851b214e400f0";
    profiles = {
      linksys_lgs328c = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.103-1-2572cc0a917a324a046851b214e400f0" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/realtek/rtl930x_nand/kmods/6.12.103-1-2572cc0a917a324a046851b214e400f0/";
    sourceInfo = {
      hash = "sha256-izU4MxriJhSPm30UGHWQObJ4QgXs/DDWCeYkY41X9Wc=";
      name = "kmods-realtek_rtl930x_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/realtek/rtl930x_nand/kmods/6.12.103-1-2572cc0a917a324a046851b214e400f0/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/realtek/rtl930x_nand/packages/";
    sourceInfo = {
      hash = "sha256-dVy89vqdf4CPySFp0070WbhEhQO2x30uJqwpP2RnOCo=";
      name = "realtek_rtl930x_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/realtek/rtl930x_nand/packages/packages.adb";
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
