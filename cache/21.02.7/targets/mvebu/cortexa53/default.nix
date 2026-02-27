# 21.02.7 mvebu/cortexa53
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mvebu/cortexa53/";
  sha256sums = {
    hash = "sha256-c0O/A+8nfOZdcayq5YBWr1qWdrqxDlpmVCrpz1BBRCM=";
    name = "mvebu_cortexa53-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mvebu/cortexa53/sha256sums";
  };
  imagebuilder = {
    sha256 = "a3ff2d912189fa040e5107e869c8e94162d06922ab352194ebfd1d36bd2a43c3";
    filename = "immortalwrt-imagebuilder-21.02.7-mvebu-cortexa53.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-VqulJIKMpD/PHst9koqXKfnhUApJ9J5HCNS0K0pjbqU=";
    name = "mvebu_cortexa53-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mvebu/cortexa53/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = null;
    default_packages = [
      "autocore-arm"
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "ethtool"
      "firewall"
      "fstools"
      "iptables"
      "ipv6helper"
      "kmod-gpio-button-hotplug"
      "kmod-ipt-raw"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
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
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mvebu/cortexa53/packages/";
    sourceInfo = {
      hash = "sha256-smxeBs7BqqHsjFn4Oop/IdAHNK7DXD/G4gmMhcuTzTk=";
      name = "mvebu_cortexa53-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mvebu/cortexa53/packages/Packages";
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
