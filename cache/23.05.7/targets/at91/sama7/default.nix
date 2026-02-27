# 23.05.7 at91/sama7
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/at91/sama7/";
  sha256sums = {
    hash = "sha256-h4kZ1jtJYSv82nfFp3n9slggqppSpyGLkq/P6OKBGxE=";
    name = "at91_sama7-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/at91/sama7/sha256sums";
  };
  imagebuilder = {
    sha256 = "2713517bde86c72ece9b46889e52d0cbef32ca88186ca30b6eb0566080610203";
    filename = "immortalwrt-imagebuilder-23.05.7-at91-sama7.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-4q9FAiue06fqYise+yzlhJSnKkGven4nRW3JKs3vZq0=";
    name = "at91_sama7-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/at91/sama7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "50d3a4839327c1a6e5f62525284688d2";
      version = "5.15.195";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
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
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "5.15.195-1-50d3a4839327c1a6e5f62525284688d2";
    profiles = {
      microchip_sama7g5-ek = {
        device_packages = [ ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/at91/sama7/packages/";
    sourceInfo = {
      hash = "sha256-9iJ2eDJxcJ0KT9S5coq4UrvJ7p04+qkYd6APEKc+yXg=";
      name = "at91_sama7-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/at91/sama7/packages/Packages";
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
