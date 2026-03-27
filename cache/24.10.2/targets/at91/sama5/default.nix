# 24.10.2 at91/sama5
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/at91/sama5/";
  sha256sums = {
    hash = "sha256-IJN87aJj9zUcx4wRvg/qNmKAMlWbHlHfj8ys6Pj3YMU=";
    name = "at91_sama5-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/at91/sama5/sha256sums";
  };
  imagebuilder = {
    sha256 = "f83602eb33a7c9b1a37955b5284c0954e0aa994e58761817ec21e5dc4aa23cfd";
    filename = "immortalwrt-imagebuilder-24.10.2-at91-sama5.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-iUlDUtTaMuyI3MqcaT+GYvct8VTIhPFZyH/DWR9pDXM=";
    name = "at91_sama5-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/at91/sama5/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a5_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "ff8244deecca57987101e58b93d12b43";
      version = "6.6.93";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-at91-udc"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-usb-gadget-eth"
      "kmod-usb-ohci"
      "kmod-usb2"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.93-1-ff8244deecca57987101e58b93d12b43";
    profiles = {
      microchip_sama5d2-icp = {
        device_packages = [ ];
      };
      microchip_sama5d2-ptc-ek = {
        device_packages = [ ];
      };
      microchip_sama5d2-xplained = {
        device_packages = [ ];
      };
      microchip_sama5d27-som1-ek = {
        device_packages = [ ];
      };
      microchip_sama5d27-wlsom1-ek = {
        device_packages = [ ];
      };
      microchip_sama5d3-xplained = {
        device_packages = [ ];
      };
      microchip_sama5d4-xplained = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.93-1-ff8244deecca57987101e58b93d12b43" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/at91/sama5/kmods/6.6.93-1-ff8244deecca57987101e58b93d12b43/";
    sourceInfo = {
      hash = "sha256-vqmBirZLsCsC+l2Co7DWWLz8y6lkOPABm4bBlry3jXY=";
      name = "kmods-at91_sama5-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/at91/sama5/kmods/6.6.93-1-ff8244deecca57987101e58b93d12b43/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/at91/sama5/packages/";
    sourceInfo = {
      hash = "sha256-byu6DQ21MYf4KgahcAPHgoCKwY7u23C7xqYlQmm3G00=";
      name = "at91_sama5-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/at91/sama5/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a5_vfpv4";
  feeds = import ./../../../packages/arm_cortex-a5_vfpv4.nix;
}
