# snapshot realtek/rtl931x_nand
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x_nand/";
  sha256sums = {
    hash = "sha256-twkyiEHs5uhFxT4rDck7xWuaNyz3wHrNcb5O+Q3eYZ4=";
    name = "realtek_rtl931x_nand-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x_nand/sha256sums";
  };
  imagebuilder = {
    sha256 = "337d3a9fb2692432c3961c65ce44ba3f82548d132e0f8ead8301e4d7cb2ee9ab";
    filename = "immortalwrt-imagebuilder-realtek-rtl931x_nand.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-JsP45W2eKtK3L1jqiqjtCMA4OODjvFSvr2LT2C29eUA=";
    name = "realtek_rtl931x_nand-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x_nand/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "fa5caf881c98db07db334e942d1d4b26";
      version = "6.18.39";
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
    kmods_target = "6.18.39-1-fa5caf881c98db07db334e942d1d4b26";
    profiles = {
      linksys_lgs352c = {
        device_packages = [ "kmod-hwmon-lm63" ];
      };
    };
  };
  kmods."6.18.39-1-fa5caf881c98db07db334e942d1d4b26" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x_nand/kmods/6.18.39-1-fa5caf881c98db07db334e942d1d4b26/";
    sourceInfo = {
      hash = "sha256-/GtNvf6BvzyAdEqM/NUhUR3ymbjkZyfWOtFHXgnlrzM=";
      name = "kmods-realtek_rtl931x_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x_nand/kmods/6.18.39-1-fa5caf881c98db07db334e942d1d4b26/packages.adb";
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
      hash = "sha256-BjX+msHA9Kd9ooNw43FcxbRDQLYJ2NdciATOQE7qHfo=";
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
