# snapshot realtek/rtl931x_nand
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/realtek/rtl931x_nand/";
  sha256sums = {
    hash = "sha256-xwnDk5afeY/FPL9GaoCAhHXqQDbZ/f0HvW3pgCxnFUc=";
    name = "realtek_rtl931x_nand-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/realtek/rtl931x_nand/sha256sums";
  };
  imagebuilder = {
    sha256 = "c0580ff543f75b63685d03030f7a1a2f4d4e96cf67456aeb96e6ccd63516a894";
    filename = "immortalwrt-imagebuilder-realtek-rtl931x_nand.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Ir8kE/tdPyh5XTZZm+eMatPtvGtJW6ZpA7orZ30NHZw=";
    name = "realtek_rtl931x_nand-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/realtek/rtl931x_nand/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "52ba2668b3b3d655f8c208db04573496";
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
    kmods_target = "6.12.67-1-52ba2668b3b3d655f8c208db04573496";
    profiles = {
      linksys_lgs352c = {
        device_packages = [ "kmod-hwmon-lm63" ];
      };
    };
  };
  kmods."6.12.67-1-52ba2668b3b3d655f8c208db04573496" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/realtek/rtl931x_nand/kmods/6.12.67-1-52ba2668b3b3d655f8c208db04573496/";
    sourceInfo = {
      hash = "sha256-L2MsPqQfzBa1KXr9YNpHqQKsxrX66l+BN99WuYT1qjU=";
      name = "kmods-realtek_rtl931x_nand-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/realtek/rtl931x_nand/kmods/6.12.67-1-52ba2668b3b3d655f8c208db04573496/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/realtek/rtl931x_nand/packages/";
    sourceInfo = {
      hash = "sha256-DBYy1UkotBr+6V/URe5IeOmrj/oy05bsmnyHThJKH30=";
      name = "realtek_rtl931x_nand-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/realtek/rtl931x_nand/packages/packages.adb";
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
