# 23.05.1 sunxi/cortexa8
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/sunxi/cortexa8/";
  sha256sums = {
    hash = "sha256-g3QvKHl5UHVJLPtTDZUUmTQ73W9Qhcy0mrctSUkI738=";
    name = "sunxi_cortexa8-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/sunxi/cortexa8/sha256sums";
  };
  imagebuilder = {
    sha256 = "f261dca8294bbccb0b3752a04fe76adf94d4818fa5e4f27ba0d2b12fd4f607cf";
    filename = "immortalwrt-imagebuilder-23.05.1-sunxi-cortexa8.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-1rXsMCwwo6dQwWXulsvYMK/TIuPD+FRFk4kDlRkMwPE=";
    name = "sunxi_cortexa8-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/sunxi/cortexa8/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a8_vfpv3";
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
      cubietech_a10-cubieboard = {
        device_packages = [
          "kmod-ata-sunxi"
          "kmod-sun4i-emac"
          "kmod-rtc-sunxi"
        ];
      };
      haoyu_a10-marsboard = {
        device_packages = [
          "kmod-ata-core"
          "kmod-ata-sunxi"
          "kmod-sun4i-emac"
          "kmod-rtc-sunxi"
          "kmod-sound-core"
          "kmod-sound-soc-sunxi"
        ];
      };
      linksprite_a10-pcduino = {
        device_packages = [
          "kmod-sun4i-emac"
          "kmod-rtc-sunxi"
          "kmod-rtl8192cu"
        ];
      };
      olimex_a10-olinuxino-lime = {
        device_packages = [
          "kmod-ata-sunxi"
          "kmod-sun4i-emac"
          "kmod-rtc-sunxi"
        ];
      };
      olimex_a13-olimex-som = {
        device_packages = [ "kmod-rtl8192cu" ];
      };
      olimex_a13-olinuxino = {
        device_packages = [ "kmod-rtl8192cu" ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/sunxi/cortexa8/packages/";
    sourceInfo = {
      hash = "sha256-PHwywuxv/DvJiz4BpFRzS6XBLoePJA39RuImE0Kp0NA=";
      name = "sunxi_cortexa8-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/sunxi/cortexa8/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a8_vfpv3";
  feeds = import ./../../../packages/arm_cortex-a8_vfpv3.nix;
}
