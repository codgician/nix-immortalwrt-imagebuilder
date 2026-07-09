# 25.12.1 qoriq/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/qoriq/generic/";
  sha256sums = {
    hash = "sha256-A4VqvQW7u5FjAJYtlYvOovy+A2bHqb5cpM4Lu8PoVDs=";
    name = "qoriq_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/qoriq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "32c7e5eaffd8ddd1bd06fe47d323ccd9c3a02a5199c232ad8e59c5a434cdf3c8";
    filename = "immortalwrt-imagebuilder-25.12.1-qoriq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-lyGMUWZk4K7vW8xX6YnMvbQt4UcaiCo9iT4b1I9pk4U=";
    name = "qoriq_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/qoriq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc64_e5500";
    linux_kernel = {
      release = "1";
      vermagic = "ee8363fe4701147ea45f8c9d66e077dd";
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
    kmods_target = "6.12.94-1-ee8363fe4701147ea45f8c9d66e077dd";
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
  kmods."6.12.94-1-ee8363fe4701147ea45f8c9d66e077dd" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/qoriq/generic/kmods/6.12.94-1-ee8363fe4701147ea45f8c9d66e077dd/";
    sourceInfo = {
      hash = "sha256-EtbTtFHy6MnoY/Im/oD17jTubYPUWLexSi4XKA5Gc9M=";
      name = "kmods-qoriq_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/qoriq/generic/kmods/6.12.94-1-ee8363fe4701147ea45f8c9d66e077dd/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/qoriq/generic/packages/";
    sourceInfo = {
      hash = "sha256-Z72tdyEEq6Eq9NLhDqLi/KdnuTleat27rZxJ4DtG7TU=";
      name = "qoriq_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/qoriq/generic/packages/packages.adb";
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
