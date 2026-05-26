# 25.12.0 at91/sama5
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/at91/sama5/";
  sha256sums = {
    hash = "sha256-zWSlxWyWRXo5U8sNwGLgURXXXLzgt5jHRp1Ndc0Dzvo=";
    name = "at91_sama5-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/at91/sama5/sha256sums";
  };
  imagebuilder = {
    sha256 = "c6f6c37a182792949cfb67e4a10d588b79555e975c9689f406616b97d1159609";
    filename = "immortalwrt-imagebuilder-25.12.0-at91-sama5.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-kspYrBc1wC3S7JYWl83RPPKgZ3LDRzfDPI/tFmlTeLE=";
    name = "at91_sama5-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/at91/sama5/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a5_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "1c98c3022f9822e7f6814edf2f3c08ef";
      version = "6.12.87";
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
    kmods_target = "6.12.87-1-1c98c3022f9822e7f6814edf2f3c08ef";
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
  kmods."6.12.87-1-1c98c3022f9822e7f6814edf2f3c08ef" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/at91/sama5/kmods/6.12.87-1-1c98c3022f9822e7f6814edf2f3c08ef/";
    sourceInfo = {
      hash = "sha256-cQTjO0dsVQWmyYBzKLSBQqfksRw8V9rBpOpskiD7H1w=";
      name = "kmods-at91_sama5-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/at91/sama5/kmods/6.12.87-1-1c98c3022f9822e7f6814edf2f3c08ef/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/at91/sama5/packages/";
    sourceInfo = {
      hash = "sha256-gwnBlOh5faV6GT9rvvEp1Kot0gOKxL5eF1CwCNl5ULQ=";
      name = "at91_sama5-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/at91/sama5/packages/packages.adb";
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
