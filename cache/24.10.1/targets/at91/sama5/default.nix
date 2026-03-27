# 24.10.1 at91/sama5
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/at91/sama5/";
  sha256sums = {
    hash = "sha256-QKqvTn/JZP7hQ9izYH0iEfdtL9GCTCTPIJWwuPvX4qs=";
    name = "at91_sama5-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/at91/sama5/sha256sums";
  };
  imagebuilder = {
    sha256 = "b398b8c151ae40209235ba1101df533bcc51310505b68b0fd5585ec0a368e272";
    filename = "immortalwrt-imagebuilder-24.10.1-at91-sama5.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-JFVAKsGbIFCKVHRMzV1brcBuGy992iAw1t1TTO8mTj0=";
    name = "at91_sama5-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/at91/sama5/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a5_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "9acf934a84ab8357f85d1f9a39bc4369";
      version = "6.6.86";
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
    kmods_target = "6.6.86-1-9acf934a84ab8357f85d1f9a39bc4369";
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
  kmods."6.6.86-1-9acf934a84ab8357f85d1f9a39bc4369" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/at91/sama5/kmods/6.6.86-1-9acf934a84ab8357f85d1f9a39bc4369/";
    sourceInfo = {
      hash = "sha256-kJGV9od8DJebanNxZTmYVmzOq0EBtBn70FgTpkFsH2M=";
      name = "kmods-at91_sama5-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/at91/sama5/kmods/6.6.86-1-9acf934a84ab8357f85d1f9a39bc4369/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/at91/sama5/packages/";
    sourceInfo = {
      hash = "sha256-mUM78Z41nrVVQ1Uz2qGorCj1vj9rlAxW+1rv1oTj+aM=";
      name = "at91_sama5-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/at91/sama5/packages/Packages";
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
