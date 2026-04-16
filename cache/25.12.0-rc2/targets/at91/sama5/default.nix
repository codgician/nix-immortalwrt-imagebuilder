# 25.12.0-rc2 at91/sama5
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/at91/sama5/";
  sha256sums = {
    hash = "sha256-FlAyrhKuMl0f7ZCPBGqZeBDzLz4RQ3FQL21LtMT9jDw=";
    name = "at91_sama5-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/at91/sama5/sha256sums";
  };
  imagebuilder = {
    sha256 = "be9bc441f6231b6f3aa38062b3c191be83881a40a817783cd77608a775272a84";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-at91-sama5.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-c/whmXFNOMdYPjxD+1SPeKYDPD0k3tJrmGGtfiIv4aE=";
    name = "at91_sama5-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/at91/sama5/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a5_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "1d976557c134a41efc8ee8e11e6094e0";
      version = "6.12.79";
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
      "kmod-at91-udc"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "kmod-usb-gadget-eth"
      "kmod-usb-ohci"
      "kmod-usb2"
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
    kmods_target = "6.12.79-1-1d976557c134a41efc8ee8e11e6094e0";
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
  kmods."6.12.79-1-1d976557c134a41efc8ee8e11e6094e0" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/at91/sama5/kmods/6.12.79-1-1d976557c134a41efc8ee8e11e6094e0/";
    sourceInfo = {
      hash = "sha256-RrAjRacCiQd6zlzDCrqlBu4ejU+oThCNOfMdBPwIPKk=";
      name = "kmods-at91_sama5-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/at91/sama5/kmods/6.12.79-1-1d976557c134a41efc8ee8e11e6094e0/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/at91/sama5/packages/";
    sourceInfo = {
      hash = "sha256-Srb2p2twwB5xaYNnE+NrBXIEzNq7uixXBjJ3cO1npwE=";
      name = "at91_sama5-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/at91/sama5/packages/packages.adb";
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
