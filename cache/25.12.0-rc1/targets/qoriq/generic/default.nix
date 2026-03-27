# 25.12.0-rc1 qoriq/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/qoriq/generic/";
  sha256sums = {
    hash = "sha256-o/t3AAj4AferJweLXbY9w8Zr++aUhcrIi9tFk1ycJNw=";
    name = "qoriq_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/qoriq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "86f983fd02ac0ca892d22425d7611c34f15256f4995da2b9f9f4eb9bbee8bf23";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-qoriq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-SLdgY6Lqh+xADCAkf71VkW0S4X9cPqSUohbJS0MESCw=";
    name = "qoriq_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/qoriq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc64_e5500";
    linux_kernel = {
      release = "1";
      vermagic = "551f110fb277932a09a4136a63e7834f";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-551f110fb277932a09a4136a63e7834f";
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
  kmods."6.12.74-1-551f110fb277932a09a4136a63e7834f" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/qoriq/generic/kmods/6.12.74-1-551f110fb277932a09a4136a63e7834f/";
    sourceInfo = {
      hash = "sha256-vac0DrAmuCnv4fSU+nPmQ167Z2bbpaUlap+V3RYi21w=";
      name = "kmods-qoriq_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/qoriq/generic/kmods/6.12.74-1-551f110fb277932a09a4136a63e7834f/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/qoriq/generic/packages/";
    sourceInfo = {
      hash = "sha256-kpopf7FUkt9+4Wkh4l87FQGYpAfJ3hpVHgrL1lLDC7Y=";
      name = "qoriq_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/qoriq/generic/packages/packages.adb";
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
