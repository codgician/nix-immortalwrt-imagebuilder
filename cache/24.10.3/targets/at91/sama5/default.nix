# 24.10.3 at91/sama5
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/at91/sama5/";
  sha256sums = {
    hash = "sha256-nk/5J3j34OmB+x11uHWxo8iiJnFcW/nKcQNHHn5R+I8=";
    name = "at91_sama5-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/at91/sama5/sha256sums";
  };
  imagebuilder = {
    sha256 = "8390512c0f51b3450e37f4562334ecd140a682bf6ee1b7b8caf1b3f06f5f98c3";
    filename = "immortalwrt-imagebuilder-24.10.3-at91-sama5.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-ezKPDFjGIxBLrNfrzdBzBfPjz7b6sh5lhLUpuQ0UWUQ=";
    name = "at91_sama5-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/at91/sama5/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a5_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "ff8244deecca57987101e58b93d12b43";
      version = "6.6.104";
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
    kmods_target = "6.6.104-1-ff8244deecca57987101e58b93d12b43";
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
  kmods."6.6.104-1-ff8244deecca57987101e58b93d12b43" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/at91/sama5/kmods/6.6.104-1-ff8244deecca57987101e58b93d12b43/";
    sourceInfo = {
      hash = "sha256-fRFoVQs1AJsKEjSwwyAaDz74gDcf16vziKSoaCiZUDY=";
      name = "kmods-at91_sama5-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/at91/sama5/kmods/6.6.104-1-ff8244deecca57987101e58b93d12b43/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/at91/sama5/packages/";
    sourceInfo = {
      hash = "sha256-PYCU1jNtDLHM3MUTdAOZ/TQ++lAIovnotTClz3VOVGA=";
      name = "at91_sama5-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/at91/sama5/packages/Packages";
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
