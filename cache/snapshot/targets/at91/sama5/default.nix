# snapshot at91/sama5
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama5/";
  sha256sums = {
    hash = "sha256-BS0BeYI8pyUTDTwEa00zGjt0Rgt/xYUpJSAVJ8JL51g=";
    name = "at91_sama5-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama5/sha256sums";
  };
  imagebuilder = {
    sha256 = "44d7aad8fb873ea0f580083220300fdba9cde7f9f77fa6542cf2cc53e5e8c0b3";
    filename = "immortalwrt-imagebuilder-at91-sama5.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-YJZhZ1TuzzZj9nX8XySTwOW/Xv6R/JohsA8T/03OqBI=";
    name = "at91_sama5-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama5/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a5_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "2a9ed31f08d6394a57916a48e2246f57";
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
    kmods_target = "6.12.94-1-2a9ed31f08d6394a57916a48e2246f57";
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
  kmods."6.12.94-1-2a9ed31f08d6394a57916a48e2246f57" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama5/kmods/6.12.94-1-2a9ed31f08d6394a57916a48e2246f57/";
    sourceInfo = {
      hash = "sha256-w9yTQxGWm3WZhhQy085cxkpsMH0h4aN3WA0/u3Ec0M8=";
      name = "kmods-at91_sama5-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama5/kmods/6.12.94-1-2a9ed31f08d6394a57916a48e2246f57/packages.adb";
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
      hash = "sha256-JNaenQeEMJw/K5BKqdbXI89s8xW1vXcjsoUUlWxPFnY=";
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
