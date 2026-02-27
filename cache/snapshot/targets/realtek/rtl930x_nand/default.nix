# snapshot realtek/rtl930x_nand
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/realtek/rtl930x_nand/";
  sha256sums = {
    hash = "sha256-qHT19zlthewxOk8ZEyptURf3knHJ5gHwXx4tP1Tr69E=";
    name = "realtek_rtl930x_nand-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/realtek/rtl930x_nand/sha256sums";
  };
  imagebuilder = {
    sha256 = "50c582e02af1b7f5ac5aa309cc862ba039dcb0fde3eb7ed9c175dd989319e683";
    filename = "immortalwrt-imagebuilder-realtek-rtl930x_nand.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-YI2ZX0I8Imi2IXgfUYQXhFQIV/pCTTfRVbrkKrNIj44=";
    name = "realtek_rtl930x_nand-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/realtek/rtl930x_nand/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "56f511c53fe827732f377cb45cb5450d";
      version = "6.12.67";
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
    kmods_target = "6.12.67-1-56f511c53fe827732f377cb45cb5450d";
    profiles = {
      linksys_lgs328c = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.67-1-56f511c53fe827732f377cb45cb5450d" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/realtek/rtl930x_nand/kmods/6.12.67-1-56f511c53fe827732f377cb45cb5450d/";
    sourceInfo = {
      hash = "sha256-INs86Mg28Q2KwBWGAvWDDUoNWgPcUpeaVxT2633AHOg=";
      name = "kmods-realtek_rtl930x_nand-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/realtek/rtl930x_nand/kmods/6.12.67-1-56f511c53fe827732f377cb45cb5450d/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/realtek/rtl930x_nand/packages/";
    sourceInfo = {
      hash = "sha256-qD2+RX38FaZazpqeC2P7H7zAT2VUjR6cEwhQpxME5mk=";
      name = "realtek_rtl930x_nand-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/realtek/rtl930x_nand/packages/packages.adb";
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
