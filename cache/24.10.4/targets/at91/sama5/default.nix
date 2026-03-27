# 24.10.4 at91/sama5
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/at91/sama5/";
  sha256sums = {
    hash = "sha256-uThMdzBpPx+pFPzXvPX6fxd5dcyApDkxkv+KPViaS4M=";
    name = "at91_sama5-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/at91/sama5/sha256sums";
  };
  imagebuilder = {
    sha256 = "a3ad522a6aed0d4631d2717a8589b0f310f08ca25ab7ea0af4ea95eb3eab27d3";
    filename = "immortalwrt-imagebuilder-24.10.4-at91-sama5.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-VJ1mJHS903cwiKIZJ2Ki62AZxObJ7/5D7Z0QCFsl9PI=";
    name = "at91_sama5-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/at91/sama5/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a5_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "f85125d494cc0c61568a39d067e3a6b4";
      version = "6.6.110";
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
    kmods_target = "6.6.110-1-f85125d494cc0c61568a39d067e3a6b4";
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
  kmods."6.6.110-1-f85125d494cc0c61568a39d067e3a6b4" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/at91/sama5/kmods/6.6.110-1-f85125d494cc0c61568a39d067e3a6b4/";
    sourceInfo = {
      hash = "sha256-SLEJ9uU8w0Pp5mn+JuDOTS7yctCxGN/dR2UpzybUikE=";
      name = "kmods-at91_sama5-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/at91/sama5/kmods/6.6.110-1-f85125d494cc0c61568a39d067e3a6b4/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/at91/sama5/packages/";
    sourceInfo = {
      hash = "sha256-BXwoC9n1nFnNMEyVN54Z50canhaoMd4yPLkXnvXbVXo=";
      name = "at91_sama5-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/at91/sama5/packages/Packages";
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
