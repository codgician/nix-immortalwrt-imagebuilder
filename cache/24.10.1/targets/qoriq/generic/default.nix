# 24.10.1 qoriq/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/qoriq/generic/";
  sha256sums = {
    hash = "sha256-hmogZ1v59XKogZzWXnq2GjYonRBIHvmuJB4ONG8g8NI=";
    name = "qoriq_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/qoriq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "a76ff7d40ea4488128b7f7b4d6e5aa5b9c3a1526deb31b2e8d10c839784bc510";
    filename = "immortalwrt-imagebuilder-24.10.1-qoriq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-1cB5Ww2gj6VyUHVwNJ4AhPSUwjeSsPPTKWRRKdk2+hY=";
    name = "qoriq_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/qoriq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc64_e5500";
    linux_kernel = {
      release = "1";
      vermagic = "3494f9396cb19b9381a2179d11f0427d";
      version = "6.6.86";
    };
    default_packages = [
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
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.86-1-3494f9396cb19b9381a2179d11f0427d";
    profiles = {
      watchguard_firebox-m300 = {
        device_packages = [
          "kmod-gpio-button-hotplug"
          "kmod-hwmon-w83793"
          "kmod-leds-gpio"
          "kmod-ptp-qoriq"
          "kmod-rtc-rs5c372a"
          "kmod-tpm-i2c-atmel"
        ];
      };
    };
  };
  kmods."6.6.86-1-3494f9396cb19b9381a2179d11f0427d" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/qoriq/generic/kmods/6.6.86-1-3494f9396cb19b9381a2179d11f0427d/";
    sourceInfo = {
      hash = "sha256-atlSadRod4zCMpl2Jkz8er+vy/zyTkN17y75tDMwfLs=";
      name = "kmods-qoriq_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/qoriq/generic/kmods/6.6.86-1-3494f9396cb19b9381a2179d11f0427d/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/qoriq/generic/packages/";
    sourceInfo = {
      hash = "sha256-RuTHTh59Qx8G8CQNdovYwit71bS5whNEUguNCBQiLDU=";
      name = "qoriq_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/qoriq/generic/packages/Packages";
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
