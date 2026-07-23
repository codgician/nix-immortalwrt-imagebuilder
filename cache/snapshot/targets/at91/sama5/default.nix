# snapshot at91/sama5
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama5/";
  sha256sums = {
    hash = "sha256-tvmQCbmfrOSTJLBDn8YJg00m3nrzWYVwbDkI7Ht9YOA=";
    name = "at91_sama5-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama5/sha256sums";
  };
  imagebuilder = {
    sha256 = "ef8cced78606331bc0e986694c31c6cca73b90cb927d2260c17ddaf66272b624";
    filename = "immortalwrt-imagebuilder-at91-sama5.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-lmDjqZmaIFYdrHuof2ia+q/WNsPeGTGk2fXwoOGHcLY=";
    name = "at91_sama5-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama5/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a5_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "88de707ff70941e0d312379cf19cdb08";
      version = "6.12.94";
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
    kmods_target = "6.12.94-1-88de707ff70941e0d312379cf19cdb08";
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
  kmods."6.12.94-1-88de707ff70941e0d312379cf19cdb08" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama5/kmods/6.12.94-1-88de707ff70941e0d312379cf19cdb08/";
    sourceInfo = {
      hash = "sha256-TFCM/qA2HU/S2PFEeHRlEPr8SilbgrlbvXOi5A9luN4=";
      name = "kmods-at91_sama5-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama5/kmods/6.12.94-1-88de707ff70941e0d312379cf19cdb08/packages.adb";
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
      hash = "sha256-6V07e+O+z+H3sgtIhI6BGLP+DMBgI/XXy1jQ4kDoTK4=";
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
