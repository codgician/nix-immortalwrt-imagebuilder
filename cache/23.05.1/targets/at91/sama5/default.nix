# 23.05.1 at91/sama5
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/at91/sama5/";
  sha256sums = {
    hash = "sha256-nK/fLgs9BsbEEljLGtY6ianqEjo/7f3WyZ+rEebcxIQ=";
    name = "at91_sama5-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/at91/sama5/sha256sums";
  };
  imagebuilder = {
    sha256 = "2cc3faa38120525ca227e693fc21017c7eb29fe874703777f2b935180a8321e6";
    filename = "immortalwrt-imagebuilder-23.05.1-at91-sama5.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-v6p28Xb7Y2C4RwOp0+haxQk64vCTUwji58tu5o/mULs=";
    name = "at91_sama5-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/at91/sama5/profiles.json";
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
      "luci-lib-fs"
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/at91/sama5/packages/";
    sourceInfo = {
      hash = "sha256-CjusR6wogNWY5HqZ3o8x2zBcZMqPYDO6rL/bnbdOAZA=";
      name = "at91_sama5-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/at91/sama5/packages/Packages";
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
