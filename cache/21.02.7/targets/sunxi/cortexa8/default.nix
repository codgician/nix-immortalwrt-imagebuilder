# 21.02.7 sunxi/cortexa8
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/sunxi/cortexa8/";
  sha256sums = {
    hash = "sha256-nYgOjFz4nL+RZL0JGN1d+zexm8FoayR0cMNoqfuQEt0=";
    name = "sunxi_cortexa8-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/sunxi/cortexa8/sha256sums";
  };
  imagebuilder = {
    sha256 = "0a02aadefb7c95a9f43ff2d035268707ce2f96a50807fb4a8d130a30d3614172";
    filename = "immortalwrt-imagebuilder-21.02.7-sunxi-cortexa8.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-SN2itF7JBNeU/oaFE/CaVJrIvctNUniEJEtzHLwmloo=";
    name = "sunxi_cortexa8-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/sunxi/cortexa8/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a8_vfpv3";
    linux_kernel = null;
    default_packages = [
      "autocore-arm"
      "automount"
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall"
      "fstools"
      "iptables"
      "ipv6helper"
      "kmod-ipt-raw"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-cpufreq"
      "luci-app-filetransfer"
      "luci-app-turboacc"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mkf2fs"
      "mtd"
      "netifd"
      "opkg"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
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
      linksprite_a10-pcduino = {
        device_packages = [
          "kmod-sun4i-emac"
          "kmod-rtc-sunxi"
          "kmod-rtl8192cu"
        ];
      };
      marsboard_a10-marsboard = {
        device_packages = [
          "mod-ata-core"
          "kmod-ata-sunxi"
          "kmod-sun4i-emac"
          "kmod-rtc-sunxi"
          "sound-soc-sunxi"
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
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/sunxi/cortexa8/packages/";
    sourceInfo = {
      hash = "sha256-lx9nH+tt0kYQCG5ns9tFfLJKV8Va/Bb3HmyrUEPCw9g=";
      name = "sunxi_cortexa8-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/sunxi/cortexa8/packages/Packages";
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
