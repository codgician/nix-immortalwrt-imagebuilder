# snapshot at91/sama5
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama5/";
  sha256sums = {
    hash = "sha256-87yMkgd6x2MC62KWlwhVL62Gm/TwQNATkK8PcraiYDk=";
    name = "at91_sama5-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama5/sha256sums";
  };
  imagebuilder = {
    sha256 = "0505b7b0649bfa351e1773d83effbe9647c1f027e1386415eee6465716f99508";
    filename = "immortalwrt-imagebuilder-at91-sama5.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-2K5KF3mc0qZQ3LS9jiZ3aRFhX34AsiDeWdvUNhSiS7M=";
    name = "at91_sama5-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama5/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a5_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "56ff2a7053f2efcdd3900a46bd2676b3";
      version = "6.12.108";
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
    kmods_target = "6.12.108-1-56ff2a7053f2efcdd3900a46bd2676b3";
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
  kmods."6.12.108-1-56ff2a7053f2efcdd3900a46bd2676b3" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama5/kmods/6.12.108-1-56ff2a7053f2efcdd3900a46bd2676b3/";
    sourceInfo = {
      hash = "sha256-cUX5ugvpRvmnfv0nds2IPsmFDNwJ5/W/vR5PLUHHyHw=";
      name = "kmods-at91_sama5-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama5/kmods/6.12.108-1-56ff2a7053f2efcdd3900a46bd2676b3/packages.adb";
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
      hash = "sha256-HpSIlPM77cjbqMv3Q1Ud0VEaB+uYHxXPrL+Wq5lMj7M=";
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
