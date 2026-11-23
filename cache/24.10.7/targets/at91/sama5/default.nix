# 24.10.7 at91/sama5
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/at91/sama5/";
  sha256sums = {
    hash = "sha256-sS4G5kkQ/WJonm+XDyINEyKSH5tOETjwf7hG1CkD2Pc=";
    name = "at91_sama5-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/at91/sama5/sha256sums";
  };
  imagebuilder = {
    sha256 = "275d65a52dde96a8bf2f887579a19b919e32994387721a8082361e1beddacc76";
    filename = "immortalwrt-imagebuilder-24.10.7-at91-sama5.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-i/qabG37LSo/h5x5OIN6/1HmafLyHpMcTbaOKXkd4RA=";
    name = "at91_sama5-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/at91/sama5/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a5_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "65beca9c0f99158e4540ed5cbceff139";
      version = "6.6.159";
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
      "kmod-usb2"
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
    kmods_target = "6.6.159-1-65beca9c0f99158e4540ed5cbceff139";
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
  kmods."6.6.159-1-65beca9c0f99158e4540ed5cbceff139" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/at91/sama5/kmods/6.6.159-1-65beca9c0f99158e4540ed5cbceff139/";
    sourceInfo = {
      hash = "sha256-wjPZW4iHdaCXguAepdiy5bs2qa4dNX1HSC8QoeNlfvo=";
      name = "kmods-at91_sama5-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/at91/sama5/kmods/6.6.159-1-65beca9c0f99158e4540ed5cbceff139/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/at91/sama5/packages/";
    sourceInfo = {
      hash = "sha256-LR9tk8fQC/imbLh5daakQJ1VIU4mIDBufqvMoCAoXlI=";
      name = "at91_sama5-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/at91/sama5/packages/Packages";
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
