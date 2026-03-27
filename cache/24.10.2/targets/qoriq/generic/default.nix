# 24.10.2 qoriq/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/qoriq/generic/";
  sha256sums = {
    hash = "sha256-89TxhP7TH3jjvOLhQWMu0cgruwtoA5/G1GpvE+jb1dU=";
    name = "qoriq_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/qoriq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "0e4ebf2452005b25dbb9f5e04cd2f049c604d302f655d6fb6cbba26461fa855e";
    filename = "immortalwrt-imagebuilder-24.10.2-qoriq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-pEWAzp5zBzZh5qZutccw1lHeT4pj+wcmrM8qbnKlRrw=";
    name = "qoriq_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/qoriq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc64_e5500";
    linux_kernel = {
      release = "1";
      vermagic = "805f00d04968e1d9640a3dc9485b0cef";
      version = "6.6.93";
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
    kmods_target = "6.6.93-1-805f00d04968e1d9640a3dc9485b0cef";
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
  kmods."6.6.93-1-805f00d04968e1d9640a3dc9485b0cef" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/qoriq/generic/kmods/6.6.93-1-805f00d04968e1d9640a3dc9485b0cef/";
    sourceInfo = {
      hash = "sha256-EMF+Xi0rTMMVwFvECEklqaEiA9WXINi+Hercqhhj3KI=";
      name = "kmods-qoriq_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/qoriq/generic/kmods/6.6.93-1-805f00d04968e1d9640a3dc9485b0cef/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/qoriq/generic/packages/";
    sourceInfo = {
      hash = "sha256-Iw21PRd7XyvuXMC6yruyH/4e/lNEl4GCk66SL70FsP4=";
      name = "qoriq_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/qoriq/generic/packages/Packages";
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
