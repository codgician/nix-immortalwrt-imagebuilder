# 25.12.0-rc1 at91/sama5
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/at91/sama5/";
  sha256sums = {
    hash = "sha256-Sr3GQLSj1M1tJHShfrrSn59+4DcrcTGeBSY+0ixbtP4=";
    name = "at91_sama5-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/at91/sama5/sha256sums";
  };
  imagebuilder = {
    sha256 = "8b9a9bd725630186c0c355fdf553996317684a3127fe979ef7e87dd4ead0aaef";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-at91-sama5.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-RBUz5V50WqpP+h0wl4ympqeWDx4x8u5knf16FyeO1fc=";
    name = "at91_sama5-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/at91/sama5/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a5_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "872235dbae0adaf6134cbaa69b53740f";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-872235dbae0adaf6134cbaa69b53740f";
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
  kmods."6.12.74-1-872235dbae0adaf6134cbaa69b53740f" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/at91/sama5/kmods/6.12.74-1-872235dbae0adaf6134cbaa69b53740f/";
    sourceInfo = {
      hash = "sha256-dWNpbAfXGn5T/NPnParNdxZI2j4L+cV1Oh5jbQj+6k8=";
      name = "kmods-at91_sama5-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/at91/sama5/kmods/6.12.74-1-872235dbae0adaf6134cbaa69b53740f/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/at91/sama5/packages/";
    sourceInfo = {
      hash = "sha256-BzFR+k1RF+Vnwsvv3dbIZE3HzIbJpD1xGKZa5fNHZxQ=";
      name = "at91_sama5-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/at91/sama5/packages/packages.adb";
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
