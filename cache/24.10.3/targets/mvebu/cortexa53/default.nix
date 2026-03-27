# 24.10.3 mvebu/cortexa53
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/mvebu/cortexa53/";
  sha256sums = {
    hash = "sha256-EacAWHeHg+O9dlsTyHdL5UyhrCrP12OUtyqn+JyRn08=";
    name = "mvebu_cortexa53-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/mvebu/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "3927bfd168dbbe1147eefae1b4786eb7893c0616f8b63fe6d006b9692bdf1d71";
    filename = "immortalwrt-imagebuilder-24.10.3-mvebu-cortexa53.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-W6AixyFceJyoe1wvnXkx98Bsl7Ic3kYf02zsbS8K2sc=";
    name = "mvebu_cortexa53-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/mvebu/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "0f9a1d65890896876bb0635e51d9c24f";
      version = "6.6.104";
    };
    default_packages = [
      "autocore"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.104-1-0f9a1d65890896876bb0635e51d9c24f";
    profiles = {
      glinet_gl-mv1000 = {
        device_packages = [ ];
      };
      globalscale_espressobin = {
        device_packages = [ ];
      };
      globalscale_espressobin-emmc = {
        device_packages = [ ];
      };
      globalscale_espressobin-ultra = {
        device_packages = [
          "kmod-i2c-pxa"
          "kmod-rtc-pcf8563"
        ];
      };
      globalscale_espressobin-v7 = {
        device_packages = [ ];
      };
      globalscale_espressobin-v7-emmc = {
        device_packages = [ ];
      };
      marvell_armada-3720-db = {
        device_packages = [ ];
      };
      methode_edpu = {
        device_packages = [
          "f2fs-tools"
          "fdisk"
          "kmod-i2c-pxa"
          "kmod-hwmon-lm75"
        ];
      };
      methode_udpu = {
        device_packages = [
          "f2fs-tools"
          "fdisk"
          "kmod-i2c-pxa"
          "kmod-hwmon-lm75"
        ];
      };
    };
  };
  kmods."6.6.104-1-0f9a1d65890896876bb0635e51d9c24f" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/mvebu/cortexa53/kmods/6.6.104-1-0f9a1d65890896876bb0635e51d9c24f/";
    sourceInfo = {
      hash = "sha256-4LbUW7nXNzOVOEl9v4mc1HHjx01BXAlY3RlMEmIvhSw=";
      name = "kmods-mvebu_cortexa53-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/mvebu/cortexa53/kmods/6.6.104-1-0f9a1d65890896876bb0635e51d9c24f/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/mvebu/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-t8ke+d3cEJh9m90v6pK42wNLQWhxpM1la6bwNCsPBLQ=";
      name = "mvebu_cortexa53-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/mvebu/cortexa53/packages/Packages";
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
