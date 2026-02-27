# 23.05.7 at91/sama5
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/at91/sama5/";
  sha256sums = {
    hash = "sha256-UYlmDvG+MUUFgSm4Oh6kO110iYx8nInVC5MBsu7MZbk=";
    name = "at91_sama5-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/at91/sama5/sha256sums";
  };
  imagebuilder = {
    sha256 = "fa658820f572681b923553a459aa29260b0b6f07a32cc1884d933f42648c03c3";
    filename = "immortalwrt-imagebuilder-23.05.7-at91-sama5.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-FG2X1/qBR6UvEdNbapwDvUuuom+2Uv0oKnmGRs+mzPs=";
    name = "at91_sama5-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/at91/sama5/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a5_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "735614b53989e9f13dc0646546e28b44";
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
      "kmod-usb2"
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
    kmods_target = "5.15.195-1-735614b53989e9f13dc0646546e28b44";
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
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/at91/sama5/packages/";
    sourceInfo = {
      hash = "sha256-jGdjP+H9EVa9CVqzPTrqrPkY8Lyq4uJzyJ80eQtSTaQ=";
      name = "at91_sama5-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/at91/sama5/packages/Packages";
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
