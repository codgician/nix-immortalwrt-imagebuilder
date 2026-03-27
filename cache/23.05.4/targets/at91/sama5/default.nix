# 23.05.4 at91/sama5
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/at91/sama5/";
  sha256sums = {
    hash = "sha256-HxpZSPdXxEr+veomy2Rfs2b1qnqLAvvRBWh2MwYDdkM=";
    name = "at91_sama5-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/at91/sama5/sha256sums";
  };
  imagebuilder = {
    sha256 = "0b6db6fa9f0d81408eea3eabc9fbcab5b57cde072aad4cf9383546eb57837b16";
    filename = "immortalwrt-imagebuilder-23.05.4-at91-sama5.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-bO7cH/R3EzwVzHRPiqqfc11bBMmfn41V6oNBPMVxjhY=";
    name = "at91_sama5-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/at91/sama5/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a5_vfpv4";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "ipv6helper"
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
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
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
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/at91/sama5/packages/";
    sourceInfo = {
      hash = "sha256-k8bB7doXwhLKQ9iKis7KNH1/YZR0X1OhndNE/P9UHNY=";
      name = "at91_sama5-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/at91/sama5/packages/Packages";
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
