# 24.10.0 at91/sama7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/at91/sama7/";
  sha256sums = {
    hash = "sha256-2h7Jxz5QsKIjFL3bRJ0ZvoLxMWhOOQP05ORhAti0Elw=";
    name = "at91_sama7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/at91/sama7/sha256sums";
  };
  imagebuilder = {
    sha256 = "4433d9c59b1d0f976855797aea446ab4d9ea692149bb064b2f01a62900a1e2da";
    filename = "immortalwrt-imagebuilder-24.10.0-at91-sama7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-arpMk3mf1zaMa8T43I6ERcBWb6D+Zd4ESUUoDiv4H04=";
    name = "at91_sama7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/at91/sama7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "0439f1084d6ad1a4b38f6f42f590b74b";
      version = "6.6.73";
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
    kmods_target = "6.6.73-1-0439f1084d6ad1a4b38f6f42f590b74b";
    profiles = {
      microchip_sama7g5-ek = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.73-1-0439f1084d6ad1a4b38f6f42f590b74b" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/at91/sama7/kmods/6.6.73-1-0439f1084d6ad1a4b38f6f42f590b74b/";
    sourceInfo = {
      hash = "sha256-Ai8n7QnhzAAxk43wntnMphiWd1YnM5cgUt8hS35j8aM=";
      name = "kmods-at91_sama7-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/at91/sama7/kmods/6.6.73-1-0439f1084d6ad1a4b38f6f42f590b74b/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/at91/sama7/packages/";
    sourceInfo = {
      hash = "sha256-W2erp31ZXAvBDzeZEU4xXpVfRkJNUfn6BWAf0r4ITPQ=";
      name = "at91_sama7-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/at91/sama7/packages/Packages";
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
