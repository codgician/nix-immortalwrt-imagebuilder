# 23.05.3 mpc85xx/p2020
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/mpc85xx/p2020/";
  sha256sums = {
    hash = "sha256-ew1f3Zt2rIkjNGIV+5nSOLKWh3VNKr05a/RJXgRLMkI=";
    name = "mpc85xx_p2020-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/mpc85xx/p2020/sha256sums";
  };
  imagebuilder = {
    sha256 = "2d7a27e60eb2e6474dc25eadcc581d6052f3080bc1bd6f5cb46630e3ae70aa0d";
    filename = "immortalwrt-imagebuilder-23.05.3-mpc85xx-p2020.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-FLh6mUgHdUV+piNjn21JjcfxdAPbJFUujRcYDjXcjPk=";
    name = "mpc85xx_p2020-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/mpc85xx/p2020/profiles.json";
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/mpc85xx/p2020/packages/";
    sourceInfo = {
      hash = "sha256-om2KYltHjuidgx0c+/xumYbtaA4xpVDORKMXcm03yr8=";
      name = "mpc85xx_p2020-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/mpc85xx/p2020/packages/Packages";
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
