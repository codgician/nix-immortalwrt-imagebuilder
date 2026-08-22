# snapshot qoriq/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/qoriq/generic/";
  sha256sums = {
    hash = "sha256-uNNI72SFVpYH0xF1kgwBgjykGzBCR3C4CqksgqPiAto=";
    name = "qoriq_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/qoriq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "4af1a11926cf71fc1626ef459ac9cc3b1cd09a1435550840343a81507fc91168";
    filename = "immortalwrt-imagebuilder-qoriq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-HX63dUm1vjihtkljZdVj8oujsAlQawLqHXJuDvikZBU=";
    name = "qoriq_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/qoriq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc64_e5500";
    linux_kernel = {
      release = "1";
      vermagic = "e07281bd14111c3fc8c95dfc55ee5417";
      version = "6.18.44";
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
    kmods_target = "6.18.44-1-e07281bd14111c3fc8c95dfc55ee5417";
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
  kmods."6.18.44-1-e07281bd14111c3fc8c95dfc55ee5417" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/qoriq/generic/kmods/6.18.44-1-e07281bd14111c3fc8c95dfc55ee5417/";
    sourceInfo = {
      hash = "sha256-XAi3M+AhkblgKukbTMPUMVZu9rCm3I5jvAxuTVvaIUc=";
      name = "kmods-qoriq_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/qoriq/generic/kmods/6.18.44-1-e07281bd14111c3fc8c95dfc55ee5417/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/qoriq/generic/packages/";
    sourceInfo = {
      hash = "sha256-6j8MVgle/55agi1Kq2giOfr5xy3iC29lptsla9wE6tQ=";
      name = "qoriq_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/qoriq/generic/packages/packages.adb";
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
