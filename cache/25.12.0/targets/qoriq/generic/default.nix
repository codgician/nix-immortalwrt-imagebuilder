# 25.12.0 qoriq/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/qoriq/generic/";
  sha256sums = {
    hash = "sha256-6uUTCiZc7GuUyqGYu29ZGtwTdg3K6WBL9XqDrGhim3w=";
    name = "qoriq_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/qoriq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "31f047091d4372b3f6442aca9239e0117602cbebebd208e20953836e1808cd56";
    filename = "immortalwrt-imagebuilder-25.12.0-qoriq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-0WEba0AGWKidZlhTdFI0Q/gQn7luTjShl1mdAkx1gdU=";
    name = "qoriq_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/qoriq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc64_e5500";
    linux_kernel = {
      release = "1";
      vermagic = "16c68a3699f0eaaa3ff16721c2d5a2de";
      version = "6.12.87";
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
    kmods_target = "6.12.87-1-16c68a3699f0eaaa3ff16721c2d5a2de";
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
  kmods."6.12.87-1-16c68a3699f0eaaa3ff16721c2d5a2de" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/qoriq/generic/kmods/6.12.87-1-16c68a3699f0eaaa3ff16721c2d5a2de/";
    sourceInfo = {
      hash = "sha256-wTbqtwXcKAOLQxufkZQIZIFrNBPtGSomdB0niFQsuiw=";
      name = "kmods-qoriq_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/qoriq/generic/kmods/6.12.87-1-16c68a3699f0eaaa3ff16721c2d5a2de/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/qoriq/generic/packages/";
    sourceInfo = {
      hash = "sha256-dQ0H3h8afvdjTYgmYD1PdOwiKS28wcDfNU1FfwEzJRE=";
      name = "qoriq_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/qoriq/generic/packages/packages.adb";
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
