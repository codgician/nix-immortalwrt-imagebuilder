# 23.05.3 sunxi/cortexa8
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/sunxi/cortexa8/";
  sha256sums = {
    hash = "sha256-OmOF8UzUf70tFlSXOqhBAuwqgTfUpwoiR7YF2kRnY2k=";
    name = "sunxi_cortexa8-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/sunxi/cortexa8/sha256sums";
  };
  imagebuilder = {
    sha256 = "9226b868fa1f4eebc5b4c596b8395e95cdeec0153fb60ef4bafc290a56fb99b9";
    filename = "immortalwrt-imagebuilder-23.05.3-sunxi-cortexa8.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-VNQZzgrmALHTkauA3bcGIyS3XFB8dg6yyaKK3tdyOUc=";
    name = "sunxi_cortexa8-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/sunxi/cortexa8/profiles.json";
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/sunxi/cortexa8/packages/";
    sourceInfo = {
      hash = "sha256-nEb5/9qVQf1EQmF64Dv026S3xpEVFWRbq1LOqANIzfs=";
      name = "sunxi_cortexa8-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/sunxi/cortexa8/packages/Packages";
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
