# 24.10.5 qoriq/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/qoriq/generic/";
  sha256sums = {
    hash = "sha256-SldVD8tX4ZI9xZdtinI/4u1TbunHXa/SQASR/oDHhxg=";
    name = "qoriq_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/qoriq/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "2c559a03d42114124e7c25d49c18f6ac3c0ea9101d1c5dfb6ff0999d125775fc";
    filename = "immortalwrt-imagebuilder-24.10.5-qoriq-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-ZuZNBQpf+1TWNO5SBZl0FnXsfyeiShm2a8Ng2l6lBWM=";
    name = "qoriq_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/qoriq/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc64_e5500";
    linux_kernel = {
      release = "1";
      vermagic = "dcb0eec03b98148be405fa61a5043552";
      version = "6.6.122";
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
    kmods_target = "6.6.122-1-dcb0eec03b98148be405fa61a5043552";
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
  kmods."6.6.122-1-dcb0eec03b98148be405fa61a5043552" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/qoriq/generic/kmods/6.6.122-1-dcb0eec03b98148be405fa61a5043552/";
    sourceInfo = {
      hash = "sha256-NibZrHTR6t+ixDe/cfubAwK+f6uTiUE6P6en1RMPTw4=";
      name = "kmods-qoriq_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/qoriq/generic/kmods/6.6.122-1-dcb0eec03b98148be405fa61a5043552/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/qoriq/generic/packages/";
    sourceInfo = {
      hash = "sha256-LhcPLZuwk22xcuqtlWdP2ojz+ZV67D79YpcU00F3h00=";
      name = "qoriq_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/qoriq/generic/packages/Packages";
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
