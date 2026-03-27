# 23.05.2 at91/sama7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.2/targets/at91/sama7/";
  sha256sums = {
    hash = "sha256-f4tz4ETZCCdv6dg4LpTaofHLgZP/FAIWZZk47Cb+6k4=";
    name = "at91_sama7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/at91/sama7/sha256sums";
  };
  imagebuilder = {
    sha256 = "371d5c018085438088e9bdb5732cb55b12e50182fa456f86214b529be50edc3f";
    filename = "immortalwrt-imagebuilder-23.05.2-at91-sama7.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-ye4osH69Wgr4VRt5XOHBH54RCIAQoIbCsf5JALbmMwk=";
    name = "at91_sama7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/at91/sama7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_vfpv4";
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
      microchip_sama7g5-ek = {
        device_packages = [ ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.2/targets/at91/sama7/packages/";
    sourceInfo = {
      hash = "sha256-+hxUyZ5z0dhNT28jr44XvPE3Mq8YttOFxrsn/7wkf/Y=";
      name = "at91_sama7-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.2/targets/at91/sama7/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a7_vfpv4";
  feeds = import ./../../../packages/arm_cortex-a7_vfpv4.nix;
}
