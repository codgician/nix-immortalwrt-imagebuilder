# 23.05.7 mvebu/cortexa53
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mvebu/cortexa53/";
  sha256sums = {
    hash = "sha256-P8KSy6TNKJrpvoaPFbZOEwEx5LgNTUA4Ovgezdh7nD4=";
    name = "mvebu_cortexa53-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mvebu/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "d30d5deb7e26d5dbac59da0d4f782ee11f271f3a189cea7efb36c06b0a4c8eb7";
    filename = "immortalwrt-imagebuilder-23.05.7-mvebu-cortexa53.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-arIEloj3iIZ0JtwjB3j9tUh5NLjfvGRiNx25IM57kpw=";
    name = "mvebu_cortexa53-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mvebu/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "8982ea25cd1eb559209541f10dd945fb";
      version = "5.15.195";
    };
    default_packages = [
      "autocore"
      "base-files"
      "block-mount"
      "busybox"
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
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
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
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "5.15.195-1-8982ea25cd1eb559209541f10dd945fb";
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
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mvebu/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-DGcbm5nWWrfwL+CgNNt4WlWvG8tIPPC+5/99ZWdjvBE=";
      name = "mvebu_cortexa53-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mvebu/cortexa53/packages/Packages";
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
