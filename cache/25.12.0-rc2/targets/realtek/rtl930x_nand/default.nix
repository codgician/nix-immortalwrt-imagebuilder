# 25.12.0-rc2 realtek/rtl930x_nand
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/realtek/rtl930x_nand/";
  sha256sums = {
    hash = "sha256-71A3VgAWePKG+4L/S7RDlqIf9FYMqLQPRQhyKm+p1fM=";
    name = "realtek_rtl930x_nand-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/realtek/rtl930x_nand/sha256sums";
  };
  imagebuilder = {
    sha256 = "5c80cdeb8d342b20af882cbde1d93de34860ce34224923d440b5104991cc1752";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-realtek-rtl930x_nand.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-zT/XaDsT5NVGzkLQGxeTPl7e+2hwYwuGXz+vB0mcj+E=";
    name = "realtek_rtl930x_nand-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/realtek/rtl930x_nand/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "6d7a4f6ae581de477abadf0ce63fa147";
      version = "6.12.79";
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
    kmods_target = "6.12.79-1-6d7a4f6ae581de477abadf0ce63fa147";
    profiles = {
      linksys_lgs328c = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.79-1-6d7a4f6ae581de477abadf0ce63fa147" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/realtek/rtl930x_nand/kmods/6.12.79-1-6d7a4f6ae581de477abadf0ce63fa147/";
    sourceInfo = {
      hash = "sha256-m61ljPTEXzlUYtx3rlFP6ylMyx6umqKMsRKpcfuKjwg=";
      name = "kmods-realtek_rtl930x_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/realtek/rtl930x_nand/kmods/6.12.79-1-6d7a4f6ae581de477abadf0ce63fa147/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/realtek/rtl930x_nand/packages/";
    sourceInfo = {
      hash = "sha256-g8TF4cM7FbIGzvGVWfXW+YK29IwI12QAh04FM6M7vhQ=";
      name = "realtek_rtl930x_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/realtek/rtl930x_nand/packages/packages.adb";
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
