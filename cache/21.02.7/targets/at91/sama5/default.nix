# 21.02.7 at91/sama5
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/at91/sama5/";
  sha256sums = {
    hash = "sha256-pOb0+OrRrUJjJ4Jgyumad1Dnw3l9r8uKwLwd3qfwLro=";
    name = "at91_sama5-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/at91/sama5/sha256sums";
  };
  imagebuilder = {
    sha256 = "e2811fb996f5db14f16619c1fa0c339aa4c73b05e89333376071457c7c0b455f";
    filename = "immortalwrt-imagebuilder-21.02.7-at91-sama5.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-2Pfc50Kpl340NJzst1R7w0H/e0dX7J2wP7eEXfVQLG8=";
    name = "at91_sama5-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/at91/sama5/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a5_vfpv4";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall"
      "fstools"
      "iptables"
      "ipv6helper"
      "kmod-at91-udc"
      "kmod-ipt-raw"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-usb-gadget-eth"
      "kmod-usb-ohci"
      "kmod-usb2"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-filetransfer"
      "luci-app-turboacc"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
    profiles = {
      microchip_sama5d2-ptc-ek = {
        device_packages = [ ];
      };
      microchip_sama5d2-xplained = {
        device_packages = [ ];
      };
      microchip_sama5d27-som1-ek = {
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
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/at91/sama5/packages/";
    sourceInfo = {
      hash = "sha256-ZLmwCwkluLeiyrkc42UKxPwVBjSqDmxWCuhmk+dL18U=";
      name = "at91_sama5-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/at91/sama5/packages/Packages";
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
