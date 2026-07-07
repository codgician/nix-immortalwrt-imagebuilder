# 25.12.1 at91/sama7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/at91/sama7/";
  sha256sums = {
    hash = "sha256-+PACS62qzfMVF9sGhTR5fvKIaK1XEAdnP/1goEWo6jc=";
    name = "at91_sama7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/at91/sama7/sha256sums";
  };
  imagebuilder = {
    sha256 = "01fd1ca663d91ad5e7bb9687d6fb1389d079ab8e7a54a99a8ca244b584e3d73d";
    filename = "immortalwrt-imagebuilder-25.12.1-at91-sama7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-yFb575RvIwD6+KJ7n2DOGSe3E4InolSrEXqcpUq9Ipo=";
    name = "at91_sama7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/at91/sama7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "aae5446cb482dfb4a9fc6da0043d1dd5";
      version = "6.12.94";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
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
    kmods_target = "6.12.94-1-aae5446cb482dfb4a9fc6da0043d1dd5";
    profiles = {
      microchip_sama7g5-ek = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.94-1-aae5446cb482dfb4a9fc6da0043d1dd5" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/at91/sama7/kmods/6.12.94-1-aae5446cb482dfb4a9fc6da0043d1dd5/";
    sourceInfo = {
      hash = "sha256-aMq9JjO1rbcxZ1G/kWCZ9wQZ+ovRzBw90DFeIzgwed4=";
      name = "kmods-at91_sama7-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/at91/sama7/kmods/6.12.94-1-aae5446cb482dfb4a9fc6da0043d1dd5/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/at91/sama7/packages/";
    sourceInfo = {
      hash = "sha256-kKOp0bRocO6eYhIvortmuqZgRqsx+WtB1zjojWURZdA=";
      name = "at91_sama7-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/at91/sama7/packages/packages.adb";
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
