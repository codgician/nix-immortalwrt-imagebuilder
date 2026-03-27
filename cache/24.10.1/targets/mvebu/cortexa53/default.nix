# 24.10.1 mvebu/cortexa53
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mvebu/cortexa53/";
  sha256sums = {
    hash = "sha256-itoFMaPfZ/0GZ+LDqpyFxYbQ8hiQ9LfTWaRen5lWALc=";
    name = "mvebu_cortexa53-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mvebu/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "3813f659606884bb85356c47aff3005fcb1a37a17e4a80a3b17515cc98377826";
    filename = "immortalwrt-imagebuilder-24.10.1-mvebu-cortexa53.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-/hBeGeQAjGf6bTUqOHnYup4PUZ72JYamNkmmkVVGFcY=";
    name = "mvebu_cortexa53-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mvebu/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "d4ad49faa83e67843eea7c345dcd73fb";
      version = "6.6.86";
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
    kmods_target = "6.6.86-1-d4ad49faa83e67843eea7c345dcd73fb";
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
  kmods."6.6.86-1-d4ad49faa83e67843eea7c345dcd73fb" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mvebu/cortexa53/kmods/6.6.86-1-d4ad49faa83e67843eea7c345dcd73fb/";
    sourceInfo = {
      hash = "sha256-aES3VN6Bv0QBXmhUvs5qW7Sq2XfA3u+0p2ATmQy/iYs=";
      name = "kmods-mvebu_cortexa53-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mvebu/cortexa53/kmods/6.6.86-1-d4ad49faa83e67843eea7c345dcd73fb/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mvebu/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-NjQJWAe8zCPBVFMhTfNXmMK2UXuVA9ibgSNxpSdrKPw=";
      name = "mvebu_cortexa53-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mvebu/cortexa53/packages/Packages";
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
