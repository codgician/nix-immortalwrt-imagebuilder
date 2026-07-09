# 25.12.1 realtek/rtl931x_nand
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/realtek/rtl931x_nand/";
  sha256sums = {
    hash = "sha256-KdAV0ogmkVuVxbH7iCqiYEIz4ebvFYMux5U7I01EQ30=";
    name = "realtek_rtl931x_nand-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/realtek/rtl931x_nand/sha256sums";
  };
  imagebuilder = {
    sha256 = "62ab45b38a4c042fdd00fa5bceeaf4373cec447ca4f91c02a89ae63ef5e4c20e";
    filename = "immortalwrt-imagebuilder-25.12.1-realtek-rtl931x_nand.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-B8b0FlE5s6dLpRFjzxnlcS0E3VVREChtfrlsr9IZJDA=";
    name = "realtek_rtl931x_nand-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/realtek/rtl931x_nand/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "d588480e66ef29a63ec1f39ceaf7576e";
      version = "6.12.94";
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
    kmods_target = "6.12.94-1-d588480e66ef29a63ec1f39ceaf7576e";
    profiles = {
      linksys_lgs352c = {
        device_packages = [ "kmod-hwmon-lm63" ];
      };
    };
  };
  kmods."6.12.94-1-d588480e66ef29a63ec1f39ceaf7576e" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/realtek/rtl931x_nand/kmods/6.12.94-1-d588480e66ef29a63ec1f39ceaf7576e/";
    sourceInfo = {
      hash = "sha256-sEPxqyxtmKi5t/+chOWyi10zQ9ROCVbF69hwCVJ7iag=";
      name = "kmods-realtek_rtl931x_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/realtek/rtl931x_nand/kmods/6.12.94-1-d588480e66ef29a63ec1f39ceaf7576e/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/realtek/rtl931x_nand/packages/";
    sourceInfo = {
      hash = "sha256-2jazXWeO+W8qxkjjPwEzAeYh0/D3UJElFZapPEDcmKk=";
      name = "realtek_rtl931x_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/realtek/rtl931x_nand/packages/packages.adb";
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
