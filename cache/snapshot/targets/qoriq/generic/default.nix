# snapshot qoriq/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/qoriq/generic/";
  sha256sums = {
    hash = "sha256-lMMCryksf7Qm6i/VQLHYmtOgW0UUYl726PF5SHBoQow=";
    name = "qoriq_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/qoriq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "a425c136dc135bb4c492f0b886ff1e7c81bba2fba27b0c289b0dcbb4aad51441";
    filename = "immortalwrt-imagebuilder-qoriq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-i1p7Eno/hAHPKbVjQK5f6Ngy5uuKuq5X8LXsciQp0bg=";
    name = "qoriq_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/qoriq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc64_e5500";
    linux_kernel = {
      release = "1";
      vermagic = "3db325b1b7e2c9756f1955b27715e8aa";
      version = "6.18.37";
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
    kmods_target = "6.18.37-1-3db325b1b7e2c9756f1955b27715e8aa";
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
  kmods."6.18.37-1-3db325b1b7e2c9756f1955b27715e8aa" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/qoriq/generic/kmods/6.18.37-1-3db325b1b7e2c9756f1955b27715e8aa/";
    sourceInfo = {
      hash = "sha256-dfWWAEaBufZRPAP3QEtflEZPurMHicaSw43QwBfJ8j4=";
      name = "kmods-qoriq_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/qoriq/generic/kmods/6.18.37-1-3db325b1b7e2c9756f1955b27715e8aa/packages.adb";
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
      hash = "sha256-Vg/NTVOL4+4wS8EM/+FFR+4AzuN7o8bngjPfA7Q+bko=";
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
