# snapshot mpc85xx/p2020
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p2020/";
  sha256sums = {
    hash = "sha256-NFEHS9EWAAr34+jZo6Z8XOZLBaEWB16uBJXHdJmGPgg=";
    name = "mpc85xx_p2020-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p2020/sha256sums";
  };
  imagebuilder = {
    sha256 = "92455c83800a3e4e6143a764acdc96f33d6f7d766dca6834c9f4c7b3bca4f872";
    filename = "immortalwrt-imagebuilder-mpc85xx-p2020.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Ypt+jnG1bm/Y+mir2+RgmaJNqMgJcC5JEqZjsmTAEPA=";
    name = "mpc85xx_p2020-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p2020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "eed8a87a8a321398d42d37ec6626b316";
      version = "6.12.94";
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
    kmods_target = "6.12.94-1-eed8a87a8a321398d42d37ec6626b316";
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
  kmods."6.12.94-1-eed8a87a8a321398d42d37ec6626b316" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p2020/kmods/6.12.94-1-eed8a87a8a321398d42d37ec6626b316/";
    sourceInfo = {
      hash = "sha256-6Je7HP/XBbC9+aU9FZ3d32JqZBx+LAPtiLntEFssSbk=";
      name = "kmods-mpc85xx_p2020-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/mpc85xx/p2020/kmods/6.12.94-1-eed8a87a8a321398d42d37ec6626b316/packages.adb";
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
      hash = "sha256-427ltRJ/FSKMkqJ80HwtKKB5Ytv8SW7FFULv50SMgQM=";
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
