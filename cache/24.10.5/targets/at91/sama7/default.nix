# 24.10.5 at91/sama7
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/at91/sama7/";
  sha256sums = {
    hash = "sha256-IIcsECUekyuNDrXTOHEQSZy77stjeE8sDKBK55hC0rQ=";
    name = "at91_sama7-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/at91/sama7/sha256sums";
  };
  imagebuilder = {
    sha256 = "05a86d13b15796373b92e59c3d9ad8673f2642932a128de116d70e3fede0ffac";
    filename = "immortalwrt-imagebuilder-24.10.5-at91-sama7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Cvcc7jFEAAan6cHc1HSuQ7kWIJYYEDW8cox+z5eq1h8=";
    name = "at91_sama7-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/at91/sama7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "e03a21f126c20d5ef5aabbeb324aa9cf";
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
    kmods_target = "6.6.122-1-e03a21f126c20d5ef5aabbeb324aa9cf";
    profiles = {
      microchip_sama7g5-ek = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.122-1-e03a21f126c20d5ef5aabbeb324aa9cf" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/at91/sama7/kmods/6.6.122-1-e03a21f126c20d5ef5aabbeb324aa9cf/";
    sourceInfo = {
      hash = "sha256-b/3imbl6bdDIw00UdwTqq0HloeTeu3rtNmc9qyB1ppE=";
      name = "kmods-at91_sama7-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/at91/sama7/kmods/6.6.122-1-e03a21f126c20d5ef5aabbeb324aa9cf/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/at91/sama7/packages/";
    sourceInfo = {
      hash = "sha256-F/xsMirn452y5QOJ3DK3QdtlQOg2aQYCbyIrUaZgMTM=";
      name = "at91_sama7-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/at91/sama7/packages/Packages";
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
