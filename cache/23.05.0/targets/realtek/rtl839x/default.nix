# 23.05.0 realtek/rtl839x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.0/targets/realtek/rtl839x/";
  sha256sums = {
    hash = "sha256-oJSe7Vcf8pVWYZ9LH+89oBSQETXLo/1UYBgl2wQu30U=";
    name = "realtek_rtl839x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/realtek/rtl839x/sha256sums";
  };
  imagebuilder = {
    sha256 = "53e73f0dcbbe02b12bb020f943b80f3e023beb3327267e5279cde2f4e318a37c";
    filename = "immortalwrt-imagebuilder-23.05.0-realtek-rtl839x.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-JFQMT8iDCQltfJ/1HtGjuVUXdac6VZP7xTDHymNO4RM=";
    name = "realtek_rtl839x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/realtek/rtl839x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "ip-bridge"
      "ip-full"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "opkg"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "tc-bpf"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
    profiles = {
      d-link_dgs-1210-52 = {
        device_packages = [ ];
      };
      netgear_gs750e = {
        device_packages = [ ];
      };
      panasonic_m48eg-pn28480k = {
        device_packages = [
          "kmod-hwmon-gpiofan"
          "kmod-hwmon-lm75"
          "kmod-i2c-mux-pca954x"
          "kmod-thermal"
        ];
      };
      tplink_sg2452p-v4 = {
        device_packages = [
          "kmod-hwmon-gpiofan"
          "kmod-hwmon-tps23861"
        ];
      };
      zyxel_gs1900-48 = {
        device_packages = [ ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.0/targets/realtek/rtl839x/packages/";
    sourceInfo = {
      hash = "sha256-+wgMK2adTTAVkcZV70//VenlDbqOHS3j4Onk9qKAku0=";
      name = "realtek_rtl839x-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/realtek/rtl839x/packages/Packages";
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
