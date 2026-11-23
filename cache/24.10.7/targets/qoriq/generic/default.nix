# 24.10.7 qoriq/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/qoriq/generic/";
  sha256sums = {
    hash = "sha256-LI7QregokhAOa0JCr8AS2LDgHDywWyKAtkohdqbHQP8=";
    name = "qoriq_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/qoriq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "6e7a1c742cb45d9359f1f4dc852557b866f8a1eac958ec6efce88fae927142ac";
    filename = "immortalwrt-imagebuilder-24.10.7-qoriq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Dyn/oi9g1xUWjPXbFGlT+L2DKJjohYRKC0MoytU3syM=";
    name = "qoriq_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/qoriq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc64_e5500";
    linux_kernel = {
      release = "1";
      vermagic = "dcb0eec03b98148be405fa61a5043552";
      version = "6.6.159";
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
    kmods_target = "6.6.159-1-dcb0eec03b98148be405fa61a5043552";
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
  kmods."6.6.159-1-dcb0eec03b98148be405fa61a5043552" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/qoriq/generic/kmods/6.6.159-1-dcb0eec03b98148be405fa61a5043552/";
    sourceInfo = {
      hash = "sha256-A0BRzwbJ4GX4enSfIizEn2sLAT+LIM84Ya3UCE71pW8=";
      name = "kmods-qoriq_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/qoriq/generic/kmods/6.6.159-1-dcb0eec03b98148be405fa61a5043552/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/qoriq/generic/packages/";
    sourceInfo = {
      hash = "sha256-uCDUg6c/bclPJWinzGpP7XH6A3Y2Rck/PowEdQUT2PM=";
      name = "qoriq_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/qoriq/generic/packages/Packages";
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
