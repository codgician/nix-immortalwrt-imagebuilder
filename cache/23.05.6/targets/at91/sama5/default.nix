# 23.05.6 at91/sama5
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/at91/sama5/";
  sha256sums = {
    hash = "sha256-V/BFFmLW7GsADgy3qpyX9xM+NrcQ82namRT7cG7f464=";
    name = "at91_sama5-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/at91/sama5/sha256sums";
  };
  imagebuilder = {
    sha256 = "f97eeb877c5c59dff00a3cf565377e85e218dc0a807fd0a652980d835ecff19b";
    filename = "immortalwrt-imagebuilder-23.05.6-at91-sama5.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-ev+pXSBmspi2Digv8vsBxFQXuTKlksVmSGiqqy3mz7o=";
    name = "at91_sama5-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/at91/sama5/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a5_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "735614b53989e9f13dc0646546e28b44";
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
    kmods_target = "5.15.189-1-735614b53989e9f13dc0646546e28b44";
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/at91/sama5/packages/";
    sourceInfo = {
      hash = "sha256-IxFXAVVnycHiA29SfcCdj0+OWSwg1k/9fsjvYE/w7MA=";
      name = "at91_sama5-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/at91/sama5/packages/Packages";
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
