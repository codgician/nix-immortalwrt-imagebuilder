# snapshot mpc85xx/p2020
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p2020/";
  sha256sums = {
    hash = "sha256-PmXlxeaWigXtROqyFoIDz9hI5+3PHxOMUboFkJJNR7Q=";
    name = "mpc85xx_p2020-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p2020/sha256sums";
  };
  imagebuilder = {
    sha256 = "5b5b057cf87d0cf205bbb2be906af14a0e079def78e32a7589975e9d4b21c4f7";
    filename = "immortalwrt-imagebuilder-mpc85xx-p2020.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-dKMUeDgKa+S+D5GAyQ9v26Y4gIbAZpjOhTgzH30jxkA=";
    name = "mpc85xx_p2020-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p2020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "f4677ca7d11b11ada912576210b3137d";
      version = "6.18.52";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-ath9k"
      "kmod-crypto-hw-talitos"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nft-offload"
      "kmod-usb2"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
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
    kmods_target = "6.18.52-1-f4677ca7d11b11ada912576210b3137d";
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
  kmods."6.18.52-1-f4677ca7d11b11ada912576210b3137d" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p2020/kmods/6.18.52-1-f4677ca7d11b11ada912576210b3137d/";
    sourceInfo = {
      hash = "sha256-g8A2CrvIKrfhklokxCLpK3hhWPwkdb5ykQr9om+vLsk=";
      name = "kmods-mpc85xx_p2020-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p2020/kmods/6.18.52-1-f4677ca7d11b11ada912576210b3137d/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p2020/packages/";
    sourceInfo = {
      hash = "sha256-9ssbc7mBD2guq0uZE5Otmd8CLLezmrYGpW8KFczn8I8=";
      name = "mpc85xx_p2020-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p2020/packages/packages.adb";
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
