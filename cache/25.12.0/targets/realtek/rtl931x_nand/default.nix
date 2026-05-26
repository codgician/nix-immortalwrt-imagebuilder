# 25.12.0 realtek/rtl931x_nand
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl931x_nand/";
  sha256sums = {
    hash = "sha256-KcFIeOVzzrxsaxNNipdSDrcaW+sDJmSGtNqiL2CJzj0=";
    name = "realtek_rtl931x_nand-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl931x_nand/sha256sums";
  };
  imagebuilder = {
    sha256 = "af2d886ab3b8ff0c80cca17ee862bbc599f1ad17091db203d71e940234c20b4f";
    filename = "immortalwrt-imagebuilder-25.12.0-realtek-rtl931x_nand.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-M9nzsQHPk6pZdNUglnvXGAlE/PPg5e21ZYYpegiySD4=";
    name = "realtek_rtl931x_nand-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl931x_nand/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "8168e72d2972ed8c1e1f80b387f7f0cc";
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
    kmods_target = "6.12.87-1-8168e72d2972ed8c1e1f80b387f7f0cc";
    profiles = {
      linksys_lgs352c = {
        device_packages = [ "kmod-hwmon-lm63" ];
      };
    };
  };
  kmods."6.12.87-1-8168e72d2972ed8c1e1f80b387f7f0cc" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl931x_nand/kmods/6.12.87-1-8168e72d2972ed8c1e1f80b387f7f0cc/";
    sourceInfo = {
      hash = "sha256-dhVtsEAoIcn6teWwAiWv2bHkXx8KH/vYzHjq7z3A2iU=";
      name = "kmods-realtek_rtl931x_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl931x_nand/kmods/6.12.87-1-8168e72d2972ed8c1e1f80b387f7f0cc/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl931x_nand/packages/";
    sourceInfo = {
      hash = "sha256-MhVZ5u/IyOohRMIR0pwIXsClUqauFy4TCsZxjLxja20=";
      name = "realtek_rtl931x_nand-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/realtek/rtl931x_nand/packages/packages.adb";
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
