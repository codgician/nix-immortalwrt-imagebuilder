# 23.05.0 realtek/rtl930x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.0/targets/realtek/rtl930x/";
  sha256sums = {
    hash = "sha256-rOunOppr6hooUDoVJXoQjbxMPLZFNgqzQpzmUG84HSU=";
    name = "realtek_rtl930x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/realtek/rtl930x/sha256sums";
  };
  imagebuilder = {
    sha256 = "dbcd2b67fe09b88ad67b3147ecc58242938c8068ca82af4585807db92b106dcb";
    filename = "immortalwrt-imagebuilder-23.05.0-realtek-rtl930x.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-oYDUVp/9kD6TyfiJaPIHsW4qAkr5XDdIFg/zn3kUenA=";
    name = "realtek_rtl930x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/realtek/rtl930x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = null;
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
      "luci-lib-fs"
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
    kmods_target = "null-null-null";
    profiles = {
      zyxel_xgs1250-12 = {
        device_packages = [ ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.0/targets/realtek/rtl930x/packages/";
    sourceInfo = {
      hash = "sha256-olqm/3f7a9/aH4KrWI4i5B26YZInq30iFiuzUwJw570=";
      name = "realtek_rtl930x-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/realtek/rtl930x/packages/Packages";
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
