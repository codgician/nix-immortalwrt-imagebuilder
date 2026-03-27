# 23.05.4 mpc85xx/p2020
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/mpc85xx/p2020/";
  sha256sums = {
    hash = "sha256-D7K4mAIqLelpswJ2T7jsW9C9PNUS8gLC2PdYLQmNPD4=";
    name = "mpc85xx_p2020-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/mpc85xx/p2020/sha256sums";
  };
  imagebuilder = {
    sha256 = "26ef17a84a0a8cbfc0c114e6db2527f3910015ae80a6d09147c1561a3e2f9cb4";
    filename = "immortalwrt-imagebuilder-23.05.4-mpc85xx-p2020.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-vn1S86qRvpEXngrdovsHP89SKJ0uUWIc0LIBYyFnozE=";
    name = "mpc85xx_p2020-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/mpc85xx/p2020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = null;
    default_packages = [
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
      "kmod-ath9k"
      "kmod-button-hotplug"
      "kmod-input-core"
      "kmod-input-gpio-keys"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-usb2"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "swconfig"
      "uboot-envtools"
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/mpc85xx/p2020/packages/";
    sourceInfo = {
      hash = "sha256-9zP3Ti9B4/O1SI16bCKiSp6q2Y0xUXHglGiQo5qemZQ=";
      name = "mpc85xx_p2020-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/mpc85xx/p2020/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "powerpc_8548";
  feeds = import ./../../../packages/powerpc_8548.nix;
}
