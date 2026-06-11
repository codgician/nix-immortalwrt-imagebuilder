# snapshot at91/sama5
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama5/";
  sha256sums = {
    hash = "sha256-98iEf+an/tIKXraR6l/3nmRt723PjD8cnX/jv/3Gb+Q=";
    name = "at91_sama5-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama5/sha256sums";
  };
  imagebuilder = {
    sha256 = "11b57d4613ceceaab0175ae0a0b75d19377b770eb3ac483da22616dd47353237";
    filename = "immortalwrt-imagebuilder-at91-sama5.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-x0HRpP1GLcwaaCmUtvLXMuvNjzO1JN/3LoMounZRg9Y=";
    name = "at91_sama5-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama5/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a5_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "6771acb30e465843183be634d1937859";
      version = "6.12.92";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-at91-udc"
      "kmod-nft-offload"
      "kmod-usb-gadget-eth"
      "kmod-usb-ohci"
      "kmod-usb2"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.92-1-6771acb30e465843183be634d1937859";
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
  kmods."6.12.92-1-6771acb30e465843183be634d1937859" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama5/kmods/6.12.92-1-6771acb30e465843183be634d1937859/";
    sourceInfo = {
      hash = "sha256-tCDX+LhARlEcq0w0YqyTPI23UO6zY9qRxk+z/gkV3ko=";
      name = "kmods-at91_sama5-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama5/kmods/6.12.92-1-6771acb30e465843183be634d1937859/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama5/packages/";
    sourceInfo = {
      hash = "sha256-TwWLGK5sz861YXgq7j4MPgJWGxfDLMsI3lFgD+N79mM=";
      name = "at91_sama5-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama5/packages/packages.adb";
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
