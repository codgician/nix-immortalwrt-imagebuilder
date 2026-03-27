# 24.10.2 mvebu/cortexa53
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mvebu/cortexa53/";
  sha256sums = {
    hash = "sha256-NPxtF4tqoAHDclzxs0u+OG2vxdnQMw2W6p6lCam8B5M=";
    name = "mvebu_cortexa53-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mvebu/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "6d3c05c578a13b32b8d2b36c3e26e6034965af2189f2cbae21cee43e1600250e";
    filename = "immortalwrt-imagebuilder-24.10.2-mvebu-cortexa53.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-RkW1zwBidRkeJ6LABKZoPAPLajWdyL4eEJjTRIkrbrw=";
    name = "mvebu_cortexa53-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mvebu/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "0f9a1d65890896876bb0635e51d9c24f";
      version = "6.6.93";
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
    kmods_target = "6.6.93-1-0f9a1d65890896876bb0635e51d9c24f";
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
  kmods."6.6.93-1-0f9a1d65890896876bb0635e51d9c24f" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mvebu/cortexa53/kmods/6.6.93-1-0f9a1d65890896876bb0635e51d9c24f/";
    sourceInfo = {
      hash = "sha256-iZUMJatx7cLNHjLiJ/ncFZ+icbBEb0xfgWAnAna2XVs=";
      name = "kmods-mvebu_cortexa53-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mvebu/cortexa53/kmods/6.6.93-1-0f9a1d65890896876bb0635e51d9c24f/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mvebu/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-ngbKwVkZW0ccIDo7+nM66CeiM1eoJ9JtpT8a9SDAW9Q=";
      name = "mvebu_cortexa53-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mvebu/cortexa53/packages/Packages";
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
