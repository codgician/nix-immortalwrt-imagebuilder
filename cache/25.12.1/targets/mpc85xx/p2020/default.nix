# 25.12.1 mpc85xx/p2020
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/mpc85xx/p2020/";
  sha256sums = {
    hash = "sha256-wVaXssJkfcqcUAnYR+rwbeqRPdssmqzhkpIqg2TGdIM=";
    name = "mpc85xx_p2020-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/mpc85xx/p2020/sha256sums";
  };
  imagebuilder = {
    sha256 = "14d9fadb478a2daba72640886aa9822a4a667cc38ac0a076f488c8f1f03ddc3b";
    filename = "immortalwrt-imagebuilder-25.12.1-mpc85xx-p2020.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-UAaMMLJiCOYLBRkF5MM5FCH6fS2ytgOOxrwK4sw/FbI=";
    name = "mpc85xx_p2020-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/mpc85xx/p2020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "b494dffa64cecd4841d1ceb6da8cf0f3";
      version = "6.12.94";
    };
    default_packages = [
      "apk-openssl"
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
      "kmod-nft-offload"
      "kmod-usb2"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
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
    kmods_target = "6.12.94-1-b494dffa64cecd4841d1ceb6da8cf0f3";
    profiles = {
      freescale_p2020rdb = {
        device_packages = [
          "kmod-hwmon-lm90"
          "kmod-rtc-ds1307"
          "kmod-gpio-pca953x"
        ];
      };
      watchguard_xtm330 = {
        device_packages = [
          "kmod-dsa-mv88e6xxx"
          "kmod-hwmon-w83793"
          "kmod-rtc-rs5c372a"
        ];
      };
    };
  };
  kmods."6.12.94-1-b494dffa64cecd4841d1ceb6da8cf0f3" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/mpc85xx/p2020/kmods/6.12.94-1-b494dffa64cecd4841d1ceb6da8cf0f3/";
    sourceInfo = {
      hash = "sha256-yBrT9LzLx8lwrpCUuiXr6Hmoj6bHeHMkROWKo87tNfQ=";
      name = "kmods-mpc85xx_p2020-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/mpc85xx/p2020/kmods/6.12.94-1-b494dffa64cecd4841d1ceb6da8cf0f3/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/mpc85xx/p2020/packages/";
    sourceInfo = {
      hash = "sha256-/bb2cqLUD3O9ibohd+4WYiqd//kngPDGKDJYCpjk2XY=";
      name = "mpc85xx_p2020-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/mpc85xx/p2020/packages/packages.adb";
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
