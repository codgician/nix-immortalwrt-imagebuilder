# snapshot at91/sama5
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama5/";
  sha256sums = {
    hash = "sha256-xipHCpShxELbKYoRZJz0z1nqOn7sVqYh2Ax5JqKxu28=";
    name = "at91_sama5-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama5/sha256sums";
  };
  imagebuilder = {
    sha256 = "600b747ce74116829b17b6869a45765d6a76b5ba9622e1195e2eaf6c9a55467a";
    filename = "immortalwrt-imagebuilder-at91-sama5.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-MQFgtJwilP0/oYoX+cwOOnAmd3ZunOrwH5oe/PdaSr0=";
    name = "at91_sama5-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama5/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a5_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "74e5b9e6c358e0087ed8643a50076520";
      version = "6.12.80";
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
    kmods_target = "6.12.80-1-74e5b9e6c358e0087ed8643a50076520";
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
  kmods."6.12.80-1-74e5b9e6c358e0087ed8643a50076520" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama5/kmods/6.12.80-1-74e5b9e6c358e0087ed8643a50076520/";
    sourceInfo = {
      hash = "sha256-Ug6yzzE4wOmstZfdIvWJwE7T93q7aEJyOmmHe/eGxoY=";
      name = "kmods-at91_sama5-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama5/kmods/6.12.80-1-74e5b9e6c358e0087ed8643a50076520/packages.adb";
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
      hash = "sha256-Yx4+/9iFkOE63fTvxFYZUIKwz1rXqa7j9BP1vA829v4=";
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
