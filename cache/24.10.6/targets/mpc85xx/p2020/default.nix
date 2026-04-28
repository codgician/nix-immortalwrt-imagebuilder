# 24.10.6 mpc85xx/p2020
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/mpc85xx/p2020/";
  sha256sums = {
    hash = "sha256-fFZeZycc+6y/b6ublt2TiDQtnQmagxc0RWi1HkxKi3M=";
    name = "mpc85xx_p2020-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/mpc85xx/p2020/sha256sums";
  };
  imagebuilder = {
    sha256 = "5fb6df6c186d6f5335a485773243553e3b3c12322c40d4e7ae1096ef2910d47e";
    filename = "immortalwrt-imagebuilder-24.10.6-mpc85xx-p2020.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-BLSThV63xPojTyzE8ZSkU2YQMsu6Fc5JWl5niWvv6jQ=";
    name = "mpc85xx_p2020-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/mpc85xx/p2020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "6bcb210a090eae90afc9afd1be8e7b37";
      version = "6.6.133";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-ath9k"
      "kmod-button-hotplug"
      "kmod-crypto-hw-talitos"
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
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "swconfig"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "6.6.133-1-6bcb210a090eae90afc9afd1be8e7b37";
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
  kmods."6.6.133-1-6bcb210a090eae90afc9afd1be8e7b37" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/mpc85xx/p2020/kmods/6.6.133-1-6bcb210a090eae90afc9afd1be8e7b37/";
    sourceInfo = {
      hash = "sha256-dI/g+8AwyssH4w7dL/qvelTMomKN1hIIfn7olHkmzW8=";
      name = "kmods-mpc85xx_p2020-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/mpc85xx/p2020/kmods/6.6.133-1-6bcb210a090eae90afc9afd1be8e7b37/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/mpc85xx/p2020/packages/";
    sourceInfo = {
      hash = "sha256-HR84WyWPNE2d4qgbiS0CDr9SuMQNNxfwIdnqf7y/PsE=";
      name = "mpc85xx_p2020-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/mpc85xx/p2020/packages/Packages";
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
