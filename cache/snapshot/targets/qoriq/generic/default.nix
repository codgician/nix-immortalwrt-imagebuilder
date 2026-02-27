# snapshot qoriq/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/qoriq/generic/";
  sha256sums = {
    hash = "sha256-LMvJD98fk1TPCGrEK9wiOl/XQMCgzrcbkC2ikU6fSh4=";
    name = "qoriq_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/qoriq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "e04774e71ae73c78e12187b5544c06a7e7d90a512b9079d34797d98f0f018e2f";
    filename = "immortalwrt-imagebuilder-qoriq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Kw5mLuQgXYgA61XUJbZZmLx75YbT4feR4SPx5GctdLk=";
    name = "qoriq_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/qoriq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc64_e5500";
    linux_kernel = {
      release = "1";
      vermagic = "3e572dd1203562fb6e72b06d2b2342c6";
      version = "6.12.67";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mkf2fs"
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
    ];
    kmods_target = "6.12.67-1-3e572dd1203562fb6e72b06d2b2342c6";
    profiles = {
      fsl_T4240RDB = {
        device_packages = [
          "kmod-eeprom-at24"
          "kmod-gpio-button-hotplug"
          "kmod-hwmon-w83793"
          "kmod-leds-gpio"
          "kmod-ptp-qoriq"
          "kmod-rtc-ds1374"
        ];
      };
      watchguard_firebox-m300 = {
        device_packages = [
          "kmod-gpio-button-hotplug"
          "kmod-hwmon-w83793"
          "kmod-leds-gpio"
          "kmod-ptp-qoriq"
          "kmod-rtc-rs5c372a"
          "kmod-tpm-i2c-atmel"
          "kmod-dsa-mv88e6xxx"
        ];
      };
    };
  };
  kmods."6.12.67-1-3e572dd1203562fb6e72b06d2b2342c6" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/qoriq/generic/kmods/6.12.67-1-3e572dd1203562fb6e72b06d2b2342c6/";
    sourceInfo = {
      hash = "sha256-ACB7KQtV2udxJEwpA5ya4G55DdxrVYWL0vpX3PYNaaA=";
      name = "kmods-qoriq_generic-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/qoriq/generic/kmods/6.12.67-1-3e572dd1203562fb6e72b06d2b2342c6/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/qoriq/generic/packages/";
    sourceInfo = {
      hash = "sha256-6oVWyi+leTYxKHeXwrycHuy30ACfKec8KWpW7UlsdPQ=";
      name = "qoriq_generic-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/qoriq/generic/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "powerpc64_e5500";
  feeds = import ./../../../packages/powerpc64_e5500.nix;
}
