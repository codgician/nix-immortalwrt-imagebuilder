# 24.10.4 mvebu/cortexa53
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mvebu/cortexa53/";
  sha256sums = {
    hash = "sha256-D6d1QNnGoP44F9kP/fA4fJLamM3L6NIBEPn/r+b2Tg8=";
    name = "mvebu_cortexa53-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mvebu/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "c393c97551a14bddd2ef64d5cf775ddc8947e17d08a8b4ef711dc64db4a4fae1";
    filename = "immortalwrt-imagebuilder-24.10.4-mvebu-cortexa53.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-putx/nR7Kh3rxdtETkKdL366F6OSn+jHRCKGC4spwRc=";
    name = "mvebu_cortexa53-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mvebu/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "15e97b1b40ee69b0ab235456836d0d37";
      version = "6.6.110";
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
    kmods_target = "6.6.110-1-15e97b1b40ee69b0ab235456836d0d37";
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
  kmods."6.6.110-1-15e97b1b40ee69b0ab235456836d0d37" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mvebu/cortexa53/kmods/6.6.110-1-15e97b1b40ee69b0ab235456836d0d37/";
    sourceInfo = {
      hash = "sha256-pWQGABjem4jNUjK4IQqlNvQsAr7Z1SxEaPk/eDNL2b0=";
      name = "kmods-mvebu_cortexa53-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mvebu/cortexa53/kmods/6.6.110-1-15e97b1b40ee69b0ab235456836d0d37/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mvebu/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-sphrayNxxlEnh5ByXxo+1CTLCMsZnr9zLWtjSbFhTNY=";
      name = "mvebu_cortexa53-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mvebu/cortexa53/packages/Packages";
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
