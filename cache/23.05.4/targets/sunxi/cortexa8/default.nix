# 23.05.4 sunxi/cortexa8
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/sunxi/cortexa8/";
  sha256sums = {
    hash = "sha256-cy6uJgGYH3ZGWeV5v18jq9AXYoGJyIBfb1wWkvyAURE=";
    name = "sunxi_cortexa8-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/sunxi/cortexa8/sha256sums";
  };
  imagebuilder = {
    sha256 = "acb2c08d13293824dc5f9da02537e496ecec7194ce0b36b82d5f782f3b16e7fb";
    filename = "immortalwrt-imagebuilder-23.05.4-sunxi-cortexa8.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-umgEdMNCnYAoGL5wZAr0Q3lChw/IjHGloOkR6jyRrx8=";
    name = "sunxi_cortexa8-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/sunxi/cortexa8/profiles.json";
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/sunxi/cortexa8/packages/";
    sourceInfo = {
      hash = "sha256-46yquhRQjd2XJ1bXu7Juk2f4oMyyMmkLfQTS/98yQ8k=";
      name = "sunxi_cortexa8-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/sunxi/cortexa8/packages/Packages";
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
