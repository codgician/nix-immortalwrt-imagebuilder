# 24.10.5 at91/sama5
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/at91/sama5/";
  sha256sums = {
    hash = "sha256-c7XZJVOHBBKmV1ZsxAdZ84B6e+V5mdhz12TLMZmk79g=";
    name = "at91_sama5-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/at91/sama5/sha256sums";
  };
  imagebuilder = {
    sha256 = "90a00c1b48328611a2427a3b7d129c08a839e932ca806a1e6a2046608d041ebc";
    filename = "immortalwrt-imagebuilder-24.10.5-at91-sama5.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-oR6UTYlieJ6kh2rRk/fBLuHx6S0yemzxXH8G3JxGZHc=";
    name = "at91_sama5-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/at91/sama5/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a5_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "65beca9c0f99158e4540ed5cbceff139";
      version = "6.6.122";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
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
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.122-1-65beca9c0f99158e4540ed5cbceff139";
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
  kmods."6.6.122-1-65beca9c0f99158e4540ed5cbceff139" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/at91/sama5/kmods/6.6.122-1-65beca9c0f99158e4540ed5cbceff139/";
    sourceInfo = {
      hash = "sha256-0NYfeWUyl4QrCM9alN4ByvhDrCUKDARGEmYtIa7RXxo=";
      name = "kmods-at91_sama5-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/at91/sama5/kmods/6.6.122-1-65beca9c0f99158e4540ed5cbceff139/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/at91/sama5/packages/";
    sourceInfo = {
      hash = "sha256-4HmIA9qXBAqsZuZDQdXSmL74YDBg6o9e3p/3BrRXGys=";
      name = "at91_sama5-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/at91/sama5/packages/Packages";
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
