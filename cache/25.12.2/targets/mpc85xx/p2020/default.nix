# 25.12.2 mpc85xx/p2020
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mpc85xx/p2020/";
  sha256sums = {
    hash = "sha256-IkynSyY8hnDJFAPz64OVGtGcozRhz0p94+OLlboU0H4=";
    name = "mpc85xx_p2020-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mpc85xx/p2020/sha256sums";
  };
  imagebuilder = {
    sha256 = "63d359109b45166993ea18753629685432d241528686696b77d43d3ced953072";
    filename = "immortalwrt-imagebuilder-25.12.2-mpc85xx-p2020.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-k+JrksVnbnUl+Lf9xUkeJ3MzhGIhf8YzFZzVzAnxXgg=";
    name = "mpc85xx_p2020-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mpc85xx/p2020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "b494dffa64cecd4841d1ceb6da8cf0f3";
      version = "6.12.103";
    };
    default_packages = [
      "apk-openssl"
      "automount"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-ath9k"
      "kmod-crypto-hw-talitos"
      "kmod-gpio-button-hotplug"
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
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "6.12.103-1-b494dffa64cecd4841d1ceb6da8cf0f3";
    profiles = {
      freescale_p2020rdb = {
        device_packages = [
          "kmod-dsa-vsc73xx-platform"
          "kmod-gpio-pca953x"
          "kmod-hwmon-lm90"
          "kmod-rtc-ds1307"
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
  kmods."6.12.103-1-b494dffa64cecd4841d1ceb6da8cf0f3" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mpc85xx/p2020/kmods/6.12.103-1-b494dffa64cecd4841d1ceb6da8cf0f3/";
    sourceInfo = {
      hash = "sha256-EwrDnIv6nMktj2QwKgjY47gTQz4OABLXUoV2Q3HsjqE=";
      name = "kmods-mpc85xx_p2020-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mpc85xx/p2020/kmods/6.12.103-1-b494dffa64cecd4841d1ceb6da8cf0f3/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mpc85xx/p2020/packages/";
    sourceInfo = {
      hash = "sha256-EfDGxykarwbMlcVlrIOA56Eu1FzfiByNmSy6iJJObk0=";
      name = "mpc85xx_p2020-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/mpc85xx/p2020/packages/packages.adb";
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
