# 25.12.2 realtek/rtl931x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/realtek/rtl931x/";
  sha256sums = {
    hash = "sha256-sU73kq3qz2UIC+D74mmqLNAoaVXaVAOsb5zQ2uLOmyM=";
    name = "realtek_rtl931x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/realtek/rtl931x/sha256sums";
  };
  imagebuilder = {
    sha256 = "d2035a1fc80a5938ea4777033e6c5c3696121906720d22b1479a4742bdf3dd8a";
    filename = "immortalwrt-imagebuilder-25.12.2-realtek-rtl931x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-FTn+ztuitpXzF/H6bQHpc0V/H5ru3U54Mmou2ZfH92c=";
    name = "realtek_rtl931x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/realtek/rtl931x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "d8677f18dc2e84ae4267074cb453bee6";
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
    kmods_target = "6.12.103-1-d8677f18dc2e84ae4267074cb453bee6";
    profiles = {
      plasmacloud_esx28 = {
        device_packages = [ "kmod-hwmon-adt7475" ];
      };
      plasmacloud_psx28 = {
        device_packages = [
          "kmod-hwmon-adt7475"
          "poemgr"
        ];
      };
    };
  };
  kmods."6.12.103-1-d8677f18dc2e84ae4267074cb453bee6" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/realtek/rtl931x/kmods/6.12.103-1-d8677f18dc2e84ae4267074cb453bee6/";
    sourceInfo = {
      hash = "sha256-vLwxwbXQBc/HajjnERpeFdJFHGSTl5CxWSjoAEApEeE=";
      name = "kmods-realtek_rtl931x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/realtek/rtl931x/kmods/6.12.103-1-d8677f18dc2e84ae4267074cb453bee6/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/realtek/rtl931x/packages/";
    sourceInfo = {
      hash = "sha256-tkuax1ga2J1kfW/hmChWtnfknwdwvczyIx1lRzivCpo=";
      name = "realtek_rtl931x-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/realtek/rtl931x/packages/packages.adb";
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
