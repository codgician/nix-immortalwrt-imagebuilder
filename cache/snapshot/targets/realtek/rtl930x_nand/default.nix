# snapshot realtek/rtl930x_nand
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x_nand/";
  sha256sums = {
    hash = "sha256-5XI4dtXcarp2wTPywJBXmHh9/J2FelOFYGyOSZwbQlQ=";
    name = "realtek_rtl930x_nand-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x_nand/sha256sums";
  };
  imagebuilder = {
    sha256 = "d763e04cd3aaea3f721a45b116995eaa7129e418b2e36da848210bd969935742";
    filename = "immortalwrt-imagebuilder-realtek-rtl930x_nand.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-V8GHfVrzcjJaNgIzkmDaFXkq6h33iZJHsOjKZeB/R9s=";
    name = "realtek_rtl930x_nand-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x_nand/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "fde334cbc233e4a9cfab3fc7d89e6737";
      version = "6.18.21";
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
    kmods_target = "6.18.21-1-fde334cbc233e4a9cfab3fc7d89e6737";
    profiles = {
      linksys_lgs328c = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.18.21-1-fde334cbc233e4a9cfab3fc7d89e6737" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x_nand/kmods/6.18.21-1-fde334cbc233e4a9cfab3fc7d89e6737/";
    sourceInfo = {
      hash = "sha256-ZHAbqYV3ujDwtZgPjf9MOF8jNql6Ye3GfYrTsEBTJZA=";
      name = "kmods-realtek_rtl930x_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl930x_nand/kmods/6.18.21-1-fde334cbc233e4a9cfab3fc7d89e6737/packages.adb";
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
      hash = "sha256-qae/BurADWXb2eunb58viDnZRYRS5la6DNZIFIB/zXM=";
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
