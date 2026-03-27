# 24.10.0 omap/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/omap/generic/";
  sha256sums = {
    hash = "sha256-ZUxW2umqHYKUZrzxelakU5w+w8+/ikZLxEg0LW6gLaI=";
    name = "omap_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/omap/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "ed291e7e479434c42258f785e31cb31698e1534b6b0a09b3c206a98e394cc84f";
    filename = "immortalwrt-imagebuilder-24.10.0-omap-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-DW5y/kd+Y8CDaBlVLjsVX1VejPeIq/E32rZdOUtlEKw=";
    name = "omap_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/omap/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a8_vfpv3";
    linux_kernel = {
      release = "1";
      vermagic = "211ab47cddf8ac0c951fef59fd6fe411";
      version = "6.6.73";
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
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.73-1-211ab47cddf8ac0c951fef59fd6fe411";
    profiles = {
      ti_am335x-bone-black = {
        device_packages = [ ];
      };
      ti_am335x-evm = {
        device_packages = [ ];
      };
      ti_omap3-beagle = {
        device_packages = [
          "kmod-usb-net-asix"
          "kmod-usb-net-asix-ax88179"
          "kmod-usb-net-hso"
          "kmod-usb-net-kaweth"
          "kmod-usb-net-pegasus"
          "kmod-usb-net-mcs7830"
          "kmod-usb-net-smsc95xx"
          "kmod-usb-net-dm9601-ether"
        ];
      };
      ti_omap4-panda = {
        device_packages = [ "kmod-usb-net-smsc95xx" ];
      };
    };
  };
  kmods."6.6.73-1-211ab47cddf8ac0c951fef59fd6fe411" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/omap/generic/kmods/6.6.73-1-211ab47cddf8ac0c951fef59fd6fe411/";
    sourceInfo = {
      hash = "sha256-odtBIODOBKRI8dphIhdNJgr+r4gxGwKIVUlsoSioDFo=";
      name = "kmods-omap_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/omap/generic/kmods/6.6.73-1-211ab47cddf8ac0c951fef59fd6fe411/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/omap/generic/packages/";
    sourceInfo = {
      hash = "sha256-PT0vAS7eMDayU6eOMU2za8qyFuphJu2zCkeiXHpCTPg=";
      name = "omap_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/omap/generic/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a8_vfpv3";
  feeds = import ./../../../packages/arm_cortex-a8_vfpv3.nix;
}
