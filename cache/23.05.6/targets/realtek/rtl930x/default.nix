# 23.05.6 realtek/rtl930x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/realtek/rtl930x/";
  sha256sums = {
    hash = "sha256-yb/nwHEiDL/eS7f8FZgrBW/g9qeti8oqe96FUqhBEtg=";
    name = "realtek_rtl930x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/realtek/rtl930x/sha256sums";
  };
  imagebuilder = {
    sha256 = "0e7abb0716264e7e5d1200c958c5db9fb3dced3bd4eb5c5064a9f4f88eac6493";
    filename = "immortalwrt-imagebuilder-23.05.6-realtek-rtl930x.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-giG2X4CpCOsHzGY2z9OD2M87pnN3/EJlpMEey67uWd4=";
    name = "realtek_rtl930x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/realtek/rtl930x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "71d064e369b2215b557a4a23714828d3";
      version = "5.15.189";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "ip-bridge"
      "ip-full"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
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
      "opkg"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "tc-bpf"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "5.15.189-1-71d064e369b2215b557a4a23714828d3";
    profiles = {
      zyxel_xgs1250-12 = {
        device_packages = [ ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/realtek/rtl930x/packages/";
    sourceInfo = {
      hash = "sha256-b4NlJnnweYqoopR/uOybHDA7mWNtdS4PuVb3aZyQzE8=";
      name = "realtek_rtl930x-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/realtek/rtl930x/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_24kc";
  feeds = import ./../../../packages/mips_24kc.nix;
}
