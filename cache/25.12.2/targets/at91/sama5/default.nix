# 25.12.2 at91/sama5
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/at91/sama5/";
  sha256sums = {
    hash = "sha256-C+YkE4k96itYJiF8PeDLLWwE4rgC0yFjPgPOPRXkWqY=";
    name = "at91_sama5-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/at91/sama5/sha256sums";
  };
  imagebuilder = {
    sha256 = "53eeea34e4a14729b721e343f4d61120bb6d193bb71dfdfdf1d5ab20a9e604d2";
    filename = "immortalwrt-imagebuilder-25.12.2-at91-sama5.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-IDSDM5OO/UUZBla4tgrBQZbH9+MHX4TdVx1AV4TrIQQ=";
    name = "at91_sama5-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/at91/sama5/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a5_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "7ecea255a8ce778c3d903c06158dc2a0";
      version = "6.12.103";
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
    kmods_target = "6.12.103-1-7ecea255a8ce778c3d903c06158dc2a0";
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
  kmods."6.12.103-1-7ecea255a8ce778c3d903c06158dc2a0" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/at91/sama5/kmods/6.12.103-1-7ecea255a8ce778c3d903c06158dc2a0/";
    sourceInfo = {
      hash = "sha256-u2e6cHKAWy9q5uol9F9YtITKfR8/U2lmzgkBGYb3css=";
      name = "kmods-at91_sama5-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/at91/sama5/kmods/6.12.103-1-7ecea255a8ce778c3d903c06158dc2a0/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/at91/sama5/packages/";
    sourceInfo = {
      hash = "sha256-2V0EbWIdqyJd5rjy9sX+IgWtmXOZaql04wK1/ce77Cg=";
      name = "at91_sama5-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/at91/sama5/packages/packages.adb";
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
