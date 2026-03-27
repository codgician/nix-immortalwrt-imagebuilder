# 23.05.3 at91/sama7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/at91/sama7/";
  sha256sums = {
    hash = "sha256-qkNGw757XgR42M7i0h0HsOBbXKmdutAuoruGGJ7W1io=";
    name = "at91_sama7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/at91/sama7/sha256sums";
  };
  imagebuilder = {
    sha256 = "0036cb4d00c74c30961e4d727e8ccc663ca61664386a9ec110b50b1f5096e5e7";
    filename = "immortalwrt-imagebuilder-23.05.3-at91-sama7.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-P38mfMSFbE5HqNtrXPr9l2OEZlWPlDtAblzj10Ovh3U=";
    name = "at91_sama7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/at91/sama7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_vfpv4";
    linux_kernel = null;
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
      "ipv6helper"
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
    kmods_target = "null-null-null";
    profiles = {
      microchip_sama7g5-ek = {
        device_packages = [ ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/at91/sama7/packages/";
    sourceInfo = {
      hash = "sha256-YfLyNC6ALB/IpBMT1qMDKwLvY0nAxZrAVpiTRxHYofU=";
      name = "at91_sama7-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/at91/sama7/packages/Packages";
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
