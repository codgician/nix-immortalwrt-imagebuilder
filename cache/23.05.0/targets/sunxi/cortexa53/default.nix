# 23.05.0 sunxi/cortexa53
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.0/targets/sunxi/cortexa53/";
  sha256sums = {
    hash = "sha256-pUUjeLOG4kSyTjruXo7QFaIc5btD7JeLEAqRx1tBzWI=";
    name = "sunxi_cortexa53-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/sunxi/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "7f40750af640013f2c43e83e7c1e523f5ebd0f1993ac016dd0df26d342b8b2c1";
    filename = "immortalwrt-imagebuilder-23.05.0-sunxi-cortexa53.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-hO82y587oMv318Cjl60rh031fxJcELQK0jni7pvpF4E=";
    name = "sunxi_cortexa53-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/sunxi/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = null;
    default_packages = [
      "autocore"
      "automount"
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "ipv6helper"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-cpufreq"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "opkg"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
    profiles = {
      friendlyarm_nanopi-neo-plus2 = {
        device_packages = [ ];
      };
      friendlyarm_nanopi-neo2 = {
        device_packages = [ ];
      };
      friendlyarm_nanopi-r1s-h5 = {
        device_packages = [
          "kmod-gpio-button-hotplug"
          "kmod-usb-net-rtl8152"
          "kmod-rtl8189es"
          "wpad-basic-openssl"
          "iwinfo"
        ];
      };
      libretech_all-h3-cc-h5 = {
        device_packages = [ ];
      };
      olimex_a64-olinuxino = {
        device_packages = [
          "kmod-rtl8723bs"
          "rtl8723bu-firmware"
        ];
      };
      olimex_a64-olinuxino-emmc = {
        device_packages = [
          "kmod-rtl8723bs"
          "rtl8723bu-firmware"
        ];
      };
      pine64_pine64-plus = {
        device_packages = [
          "kmod-rtl8723bs"
          "rtl8723bu-firmware"
        ];
      };
      pine64_sopine-baseboard = {
        device_packages = [
          "kmod-rtl8723bs"
          "rtl8723bu-firmware"
        ];
      };
      xunlong_orangepi-one-plus = {
        device_packages = [ ];
      };
      xunlong_orangepi-pc2 = {
        device_packages = [ ];
      };
      xunlong_orangepi-zero-plus = {
        device_packages = [ ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.0/targets/sunxi/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-quHyoLWkC95I1lOCcxaHeOAuE5GMweHc64Kv3+cM+/0=";
      name = "sunxi_cortexa53-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/sunxi/cortexa53/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_cortex-a53";
  feeds = import ./../../../packages/aarch64_cortex-a53.nix;
}
