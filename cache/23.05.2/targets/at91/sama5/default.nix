# 23.05.2 at91/sama5
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.2/targets/at91/sama5/";
  sha256sums = {
    hash = "sha256-2jO5If8jWuFHIhz358rgV1VEk01CqwgmVw5mHzOWB1k=";
    name = "at91_sama5-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/at91/sama5/sha256sums";
  };
  imagebuilder = {
    sha256 = "a7ea4bca1f804a5da659a8fc0c2dda00585ca407395c9cbf5e90540b86145f3f";
    filename = "immortalwrt-imagebuilder-23.05.2-at91-sama5.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-GackuME+61E9ys3ko7BE93Jp58tmlJxher1J5Cuepcg=";
    name = "at91_sama5-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/at91/sama5/profiles.json";
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.2/targets/at91/sama5/packages/";
    sourceInfo = {
      hash = "sha256-y0ZkNV2f2+BtXwCN3kcAbA/trNeNeStT9uHdOO2VbPM=";
      name = "at91_sama5-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/at91/sama5/packages/Packages";
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
