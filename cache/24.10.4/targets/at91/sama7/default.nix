# 24.10.4 at91/sama7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/at91/sama7/";
  sha256sums = {
    hash = "sha256-KWQzm6GHXjzWbLSU2ERae4pzWq5HT9si6KsnuxZ5T+w=";
    name = "at91_sama7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/at91/sama7/sha256sums";
  };
  imagebuilder = {
    sha256 = "648b717b39909a6421e2cc5ef723b3d4018892bcbbbe2c0c0d6bdf6b185296d6";
    filename = "immortalwrt-imagebuilder-24.10.4-at91-sama7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-ZbMOldeDbcJ6wd1QpU61wJ022D2EavA6wyRXBCs1yWw=";
    name = "at91_sama7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/at91/sama7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "d5e2971ae6b6b2a43378c396e9ad62d6";
      version = "6.6.110";
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
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
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
    kmods_target = "6.6.110-1-d5e2971ae6b6b2a43378c396e9ad62d6";
    profiles = {
      microchip_sama7g5-ek = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.110-1-d5e2971ae6b6b2a43378c396e9ad62d6" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/at91/sama7/kmods/6.6.110-1-d5e2971ae6b6b2a43378c396e9ad62d6/";
    sourceInfo = {
      hash = "sha256-A//Ryxvr4PEEhguc8Cfu+rB8T7nKJ7/Kng2OYKvzFlw=";
      name = "kmods-at91_sama7-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/at91/sama7/kmods/6.6.110-1-d5e2971ae6b6b2a43378c396e9ad62d6/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/at91/sama7/packages/";
    sourceInfo = {
      hash = "sha256-idr73WULh3rgQjCnZ8OfEngv1okhxXoWsV+g2za31HE=";
      name = "at91_sama7-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/at91/sama7/packages/Packages";
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
