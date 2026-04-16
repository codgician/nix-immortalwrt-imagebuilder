# 25.12.0-rc2 qoriq/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/qoriq/generic/";
  sha256sums = {
    hash = "sha256-1kX8ur5+TjhNm/yL3Ox4lZvh3x4SN3RHT3ca/bQVrPc=";
    name = "qoriq_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/qoriq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "3c18ec9984938fc3bea884a72026bdfa54bfcc8fff100daff29832c9326b8f6f";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-qoriq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-cO5lNJU8gMnwX0ISrcAdC0P7xYr09N4UsExlWbcWoq8=";
    name = "qoriq_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/qoriq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc64_e5500";
    linux_kernel = {
      release = "1";
      vermagic = "707c4b3ade124c2c435b99888ff3ea32";
      version = "6.12.79";
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
    kmods_target = "6.12.79-1-707c4b3ade124c2c435b99888ff3ea32";
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
  kmods."6.12.79-1-707c4b3ade124c2c435b99888ff3ea32" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/qoriq/generic/kmods/6.12.79-1-707c4b3ade124c2c435b99888ff3ea32/";
    sourceInfo = {
      hash = "sha256-n5y5vP9vk4ar+76hgXw6dZwnrUX9KZ8fhfJds6KfkNk=";
      name = "kmods-qoriq_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/qoriq/generic/kmods/6.12.79-1-707c4b3ade124c2c435b99888ff3ea32/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/qoriq/generic/packages/";
    sourceInfo = {
      hash = "sha256-c5kaxvrnYDmrs7Y3CcUG9/L1XQb61cqYsr+Kk7ngv0c=";
      name = "qoriq_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/qoriq/generic/packages/packages.adb";
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
