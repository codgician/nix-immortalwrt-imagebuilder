# 25.12.0 realtek/rtl930x_nand
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl930x_nand/";
  sha256sums = {
    hash = "sha256-6/HyfcfWJkNdKpR7TBnvtdZaTMHUKM79OJ9DFNoR5Qw=";
    name = "realtek_rtl930x_nand-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl930x_nand/sha256sums";
  };
  imagebuilder = {
    sha256 = "3007f7ba8db850c43d5285bf33bc48c339851d01851b2e1767bc994727fe63f9";
    filename = "immortalwrt-imagebuilder-25.12.0-realtek-rtl930x_nand.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-HwmpEMyBzuY0a1XelQbSDx+Yn3zyhpB1PSSfjmT4I9k=";
    name = "realtek_rtl930x_nand-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl930x_nand/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "4c49d3bb940434a12ecba8b91cabca06";
      version = "6.12.87";
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
    kmods_target = "6.12.87-1-4c49d3bb940434a12ecba8b91cabca06";
    profiles = {
      linksys_lgs328c = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.87-1-4c49d3bb940434a12ecba8b91cabca06" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl930x_nand/kmods/6.12.87-1-4c49d3bb940434a12ecba8b91cabca06/";
    sourceInfo = {
      hash = "sha256-QeFe9c35chyuz42OomtpqgRK8+eiGRD4JnQOpIZVMeM=";
      name = "kmods-realtek_rtl930x_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl930x_nand/kmods/6.12.87-1-4c49d3bb940434a12ecba8b91cabca06/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl930x_nand/packages/";
    sourceInfo = {
      hash = "sha256-2TgBcn7rqqPa5Sy54j2235AVrVOQJfBG5/Ee0QXc+O8=";
      name = "realtek_rtl930x_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl930x_nand/packages/packages.adb";
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
