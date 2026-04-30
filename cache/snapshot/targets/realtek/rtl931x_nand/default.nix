# snapshot realtek/rtl931x_nand
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x_nand/";
  sha256sums = {
    hash = "sha256-nej9GvC/4NFAJGR1FZ5ot4Xtkx4CU1gRPpPWD+3jeCc=";
    name = "realtek_rtl931x_nand-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x_nand/sha256sums";
  };
  imagebuilder = {
    sha256 = "e492784af81f84bbc9d52728216ecf127c3a6398a0fd92d631bc95ec90e4da76";
    filename = "immortalwrt-imagebuilder-realtek-rtl931x_nand.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-V0xX8uUD7ueL1c5s8SJ/CgJ875pNHEMx9aVSNyocxtY=";
    name = "realtek_rtl931x_nand-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x_nand/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "c339904815cced3b4ec7297596f5283d";
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
    kmods_target = "6.18.21-1-c339904815cced3b4ec7297596f5283d";
    profiles = {
      linksys_lgs352c = {
        device_packages = [ "kmod-hwmon-lm63" ];
      };
    };
  };
  kmods."6.18.21-1-c339904815cced3b4ec7297596f5283d" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x_nand/kmods/6.18.21-1-c339904815cced3b4ec7297596f5283d/";
    sourceInfo = {
      hash = "sha256-AsT455kCXsU9tXkwiGfZmR1+rBe2BJn6uCvfdkPiIEE=";
      name = "kmods-realtek_rtl931x_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/realtek/rtl931x_nand/kmods/6.18.21-1-c339904815cced3b4ec7297596f5283d/packages.adb";
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
      hash = "sha256-CLpD1/cYQ6qOFjB73lsBXGo2v0aKM7hmt7iFNV8n4Go=";
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
