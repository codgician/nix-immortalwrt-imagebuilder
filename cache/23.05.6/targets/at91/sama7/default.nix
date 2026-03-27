# 23.05.6 at91/sama7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/at91/sama7/";
  sha256sums = {
    hash = "sha256-6bfNjsYnW/lma7wc5/Tktk67j5aEZe5frtcqSvkiFxg=";
    name = "at91_sama7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/at91/sama7/sha256sums";
  };
  imagebuilder = {
    sha256 = "d81921981d436231a4c39cd20d13acac4d503f1c07ff690adddbfaae201c95cf";
    filename = "immortalwrt-imagebuilder-23.05.6-at91-sama7.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-UfMmXuhxNfCibieyG06tXB2LR4i5p+8RYXSaOsckRWo=";
    name = "at91_sama7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/at91/sama7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "50d3a4839327c1a6e5f62525284688d2";
      version = "5.15.189";
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
    kmods_target = "5.15.189-1-50d3a4839327c1a6e5f62525284688d2";
    profiles = {
      microchip_sama7g5-ek = {
        device_packages = [ ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/at91/sama7/packages/";
    sourceInfo = {
      hash = "sha256-IH1SFSdRBwzgHllNRPX/LtJPqub586/HsziKb9GREDE=";
      name = "at91_sama7-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/at91/sama7/packages/Packages";
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
