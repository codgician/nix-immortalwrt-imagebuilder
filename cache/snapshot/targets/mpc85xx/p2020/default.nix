# snapshot mpc85xx/p2020
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mpc85xx/p2020/";
  sha256sums = {
    hash = "sha256-JngwBmJZ28AbqEO6Hh0wS+ps3z3zR0pjDS/4srmQXus=";
    name = "mpc85xx_p2020-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mpc85xx/p2020/sha256sums";
  };
  imagebuilder = {
    sha256 = "c3b7e1da88b2eae21d311a303f0d9e4b14cb647a3164e4ec97b3cf5c4477b2b3";
    filename = "immortalwrt-imagebuilder-mpc85xx-p2020.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-f6BNmnPphRNmB/by8aX0yckJ5bD3onZIbYDMhi4RZLE=";
    name = "mpc85xx_p2020-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mpc85xx/p2020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "0ad4c21660e7e55664b0d518734229c6";
      version = "6.12.67";
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
      "kmod-button-hotplug"
      "kmod-crypto-hw-talitos"
      "kmod-input-core"
      "kmod-input-gpio-keys"
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
      "swconfig"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "6.12.67-1-0ad4c21660e7e55664b0d518734229c6";
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
  kmods."6.12.67-1-0ad4c21660e7e55664b0d518734229c6" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mpc85xx/p2020/kmods/6.12.67-1-0ad4c21660e7e55664b0d518734229c6/";
    sourceInfo = {
      hash = "sha256-3NwY8HUB6OnAVsD2dWps7cBY/R4X7ZkTgMWRCs58IOs=";
      name = "kmods-mpc85xx_p2020-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mpc85xx/p2020/kmods/6.12.67-1-0ad4c21660e7e55664b0d518734229c6/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mpc85xx/p2020/packages/";
    sourceInfo = {
      hash = "sha256-gH/t25f3mh5KUcCBLf1iyaLzmwH+TbwOeFMxCrYnY3k=";
      name = "mpc85xx_p2020-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/mpc85xx/p2020/packages/packages.adb";
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
