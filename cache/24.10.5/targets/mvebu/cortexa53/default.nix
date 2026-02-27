# 24.10.5 mvebu/cortexa53
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mvebu/cortexa53/";
  sha256sums = {
    hash = "sha256-gcq7TvvQGd1EQgf4Q5CoUJom02r14bXvF8tQkuWR5Uk=";
    name = "mvebu_cortexa53-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mvebu/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "e8d960de4fda8f055084fb0ec90d9c6495f70c0bfe8a45c492fea345cfa3e62e";
    filename = "immortalwrt-imagebuilder-24.10.5-mvebu-cortexa53.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-oY0rDUaPxKpsrwxNrtZQiFI62Aghr9rH5fv5x2mUFLs=";
    name = "mvebu_cortexa53-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mvebu/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "cad8e44b7f4b219fb97507e8283023e2";
      version = "6.6.122";
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
    kmods_target = "6.6.122-1-cad8e44b7f4b219fb97507e8283023e2";
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
  kmods."6.6.122-1-cad8e44b7f4b219fb97507e8283023e2" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mvebu/cortexa53/kmods/6.6.122-1-cad8e44b7f4b219fb97507e8283023e2/";
    sourceInfo = {
      hash = "sha256-CJJCXRgN1LBivzVVtc5g+I9W38KEBssJ+fAFmgwIa3w=";
      name = "kmods-mvebu_cortexa53-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mvebu/cortexa53/kmods/6.6.122-1-cad8e44b7f4b219fb97507e8283023e2/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mvebu/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-V/ekL+pKPM80sXCdXmbMcihD/WkXat7JHnChW0az/zU=";
      name = "mvebu_cortexa53-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mvebu/cortexa53/packages/Packages";
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
