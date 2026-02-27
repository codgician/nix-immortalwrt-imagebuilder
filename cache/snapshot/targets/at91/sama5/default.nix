# snapshot at91/sama5
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/at91/sama5/";
  sha256sums = {
    hash = "sha256-V1EYZLZvTuk96WHbUITjY0plHAftSy6cXfb9JsKXAN8=";
    name = "at91_sama5-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/at91/sama5/sha256sums";
  };
  imagebuilder = {
    sha256 = "54f548d2272605a8b35e509e6f50d88f093121b387a037563da2a333ee1c3b3d";
    filename = "immortalwrt-imagebuilder-at91-sama5.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-DhuZThNZjRqMtq8gmz6ULAWmwcuESWM5Mf3cZGQMufQ=";
    name = "at91_sama5-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/at91/sama5/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a5_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "4ec4030db5dc455614295653c1e77d06";
      version = "6.12.67";
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
    kmods_target = "6.12.67-1-4ec4030db5dc455614295653c1e77d06";
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
  kmods."6.12.67-1-4ec4030db5dc455614295653c1e77d06" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/at91/sama5/kmods/6.12.67-1-4ec4030db5dc455614295653c1e77d06/";
    sourceInfo = {
      hash = "sha256-SiK1cQBwZxL1IY82nso43SL751k0kaac+mAteN0pFb4=";
      name = "kmods-at91_sama5-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/at91/sama5/kmods/6.12.67-1-4ec4030db5dc455614295653c1e77d06/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/at91/sama5/packages/";
    sourceInfo = {
      hash = "sha256-rY+lr/zSw044QbbE40/nRGKwlxvoBj1l5Vl12pTgMHc=";
      name = "at91_sama5-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/at91/sama5/packages/packages.adb";
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
