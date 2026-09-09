# 25.12.2 qoriq/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/qoriq/generic/";
  sha256sums = {
    hash = "sha256-jK7Z1Ymw905c/W84WalalqjxEQx3rTuXcTt2k/hIZ0s=";
    name = "qoriq_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/qoriq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "fc67a77dc7b3ea2ea12efc4ba7e9d80d81185b76baec5c08a7b502517049491d";
    filename = "immortalwrt-imagebuilder-25.12.2-qoriq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-vyD+2fnwXD3gxM/3XTQI4hETq4lNJMR2s/ed3rsK5HU=";
    name = "qoriq_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/qoriq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc64_e5500";
    linux_kernel = {
      release = "1";
      vermagic = "ee8363fe4701147ea45f8c9d66e077dd";
      version = "6.12.103";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
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
    kmods_target = "6.12.103-1-ee8363fe4701147ea45f8c9d66e077dd";
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
  kmods."6.12.103-1-ee8363fe4701147ea45f8c9d66e077dd" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/qoriq/generic/kmods/6.12.103-1-ee8363fe4701147ea45f8c9d66e077dd/";
    sourceInfo = {
      hash = "sha256-B13l7KESGcwAxceYi4ggIra7CYSNXjhe+Zf5v+N8/fg=";
      name = "kmods-qoriq_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/qoriq/generic/kmods/6.12.103-1-ee8363fe4701147ea45f8c9d66e077dd/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/qoriq/generic/packages/";
    sourceInfo = {
      hash = "sha256-sf9SqrSvlJHggIvkxFaRGxsaTQOQayz6Y7A6QIzUBIo=";
      name = "qoriq_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/qoriq/generic/packages/packages.adb";
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
