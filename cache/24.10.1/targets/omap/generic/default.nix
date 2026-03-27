# 24.10.1 omap/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/omap/generic/";
  sha256sums = {
    hash = "sha256-0pLRcKCsCQVwTq0ilGbv7Bw2CKgZ9pFwUPb7Sb9pG6s=";
    name = "omap_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/omap/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "eb4cc4b22ef3d3d5a9c6e2e0e131ae629d85794164cb7e89bfa96cc63356ade9";
    filename = "immortalwrt-imagebuilder-24.10.1-omap-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-mmznPo5FpMr9f9mXl58ZEm9WTa+KNwA+5GKNkHd5QFY=";
    name = "omap_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/omap/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a8_vfpv3";
    linux_kernel = {
      release = "1";
      vermagic = "dda9cbf02d73cd0a7b6ca94089e6dbc6";
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
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.86-1-dda9cbf02d73cd0a7b6ca94089e6dbc6";
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
  kmods."6.6.86-1-dda9cbf02d73cd0a7b6ca94089e6dbc6" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/omap/generic/kmods/6.6.86-1-dda9cbf02d73cd0a7b6ca94089e6dbc6/";
    sourceInfo = {
      hash = "sha256-7N3ENXr+tmelV0IB/DAYn5w5nfT5ebVuvPDejcNy05A=";
      name = "kmods-omap_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/omap/generic/kmods/6.6.86-1-dda9cbf02d73cd0a7b6ca94089e6dbc6/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/omap/generic/packages/";
    sourceInfo = {
      hash = "sha256-hlpv11NV6RTtVv/3LqlKPaEfy6jYEUvA+30rMa9TDbI=";
      name = "omap_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/omap/generic/packages/Packages";
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
