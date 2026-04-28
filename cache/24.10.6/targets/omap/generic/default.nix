# 24.10.6 omap/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/omap/generic/";
  sha256sums = {
    hash = "sha256-AthAf4NdXcLu7bQgxQJ19ASZR3kGHNIdOBBk1UmdMyw=";
    name = "omap_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/omap/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "9a1a2de9f81c01d9a124bfaebadca487757e1adec0a2bf91d903dd945aa6dc0b";
    filename = "immortalwrt-imagebuilder-24.10.6-omap-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-gExQ7U3SncT2dvdqUB80JBD3NzrMGDn/oY5PXQJqiRc=";
    name = "omap_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/omap/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a8_vfpv3";
    linux_kernel = {
      release = "1";
      vermagic = "3a84d42d13daec44e79893c6f11853c7";
      version = "6.6.133";
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
    kmods_target = "6.6.133-1-3a84d42d13daec44e79893c6f11853c7";
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
  kmods."6.6.133-1-3a84d42d13daec44e79893c6f11853c7" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/omap/generic/kmods/6.6.133-1-3a84d42d13daec44e79893c6f11853c7/";
    sourceInfo = {
      hash = "sha256-ehUQ+2+emaBQ+/q5CXtuZ7t+aPZZmdiuQUxUptwMJqI=";
      name = "kmods-omap_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/omap/generic/kmods/6.6.133-1-3a84d42d13daec44e79893c6f11853c7/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.6/targets/omap/generic/packages/";
    sourceInfo = {
      hash = "sha256-McTRLiwV2V+YAzE8IvEiMVNzeYRgnWanV2YyEyVxzug=";
      name = "omap_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.6/targets/omap/generic/packages/Packages";
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
