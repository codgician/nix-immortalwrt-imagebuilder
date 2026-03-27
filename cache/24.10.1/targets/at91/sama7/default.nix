# 24.10.1 at91/sama7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/at91/sama7/";
  sha256sums = {
    hash = "sha256-5Bwhll/frPAVsP7Ls7Kmwdyt6R9X9M1vvKntUnYJQiE=";
    name = "at91_sama7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/at91/sama7/sha256sums";
  };
  imagebuilder = {
    sha256 = "333cdca91628ce1387bbe1864e82941f1cb5c006baa290e02b54f9ad33895603";
    filename = "immortalwrt-imagebuilder-24.10.1-at91-sama7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-B6/am0bd6DsuocHNEN6N39+b3NsLGwJ0DhZUjtdUkPo=";
    name = "at91_sama7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/at91/sama7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "c012962afb10bc4af81c4bf5577ea5d1";
      version = "6.6.86";
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
    kmods_target = "6.6.86-1-c012962afb10bc4af81c4bf5577ea5d1";
    profiles = {
      microchip_sama7g5-ek = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.86-1-c012962afb10bc4af81c4bf5577ea5d1" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/at91/sama7/kmods/6.6.86-1-c012962afb10bc4af81c4bf5577ea5d1/";
    sourceInfo = {
      hash = "sha256-WgaGPbFkh3RVliRpdSGZjgtahY+yQ4VLW+z8wMn4lrg=";
      name = "kmods-at91_sama7-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/at91/sama7/kmods/6.6.86-1-c012962afb10bc4af81c4bf5577ea5d1/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/at91/sama7/packages/";
    sourceInfo = {
      hash = "sha256-s8gduMrBh0vluqLO5K2wdiyN0pb4ZXLmF3hqBOjzXXI=";
      name = "at91_sama7-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/at91/sama7/packages/Packages";
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
