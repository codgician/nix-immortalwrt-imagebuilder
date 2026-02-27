# 21.02.7 mpc85xx/p2020
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mpc85xx/p2020/";
  sha256sums = {
    hash = "sha256-06l5ehqcJ8BLKMpJ28iUmq2JdwCeVj4i5xWKX6u3z2Y=";
    name = "mpc85xx_p2020-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mpc85xx/p2020/sha256sums";
  };
  imagebuilder = {
    sha256 = "b856489366e0c7148556173d71aae51aae0a4390a3ccb542014b47e31ead6aa3";
    filename = "immortalwrt-imagebuilder-21.02.7-mpc85xx-p2020.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-11rN5AIoSCOxD+VpfvC9No14HOzQtHIRPNVJWBiJRvE=";
    name = "mpc85xx_p2020-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mpc85xx/p2020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8540";
    linux_kernel = null;
    default_packages = [
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
      "kmod-ath9k"
      "kmod-button-hotplug"
      "kmod-input-core"
      "kmod-input-gpio-keys"
      "kmod-ipt-raw"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-usb2"
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
      "mtd"
      "netifd"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "null-null-null";
    profiles = {
      freescale_p2020rdb = {
        device_packages = [
          "kmod-hwmon-lm90"
          "kmod-rtc-ds1307"
          "kmod-gpio-pca953x"
          "kmod-eeprom-at24"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mpc85xx/p2020/packages/";
    sourceInfo = {
      hash = "sha256-EerYJGHKQV6P+US9tSY+BLXdiZ2Bod45UuDJvw2ZWjI=";
      name = "mpc85xx_p2020-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mpc85xx/p2020/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "powerpc_8540";
  feeds = import ./../../../packages/powerpc_8540.nix;
}
