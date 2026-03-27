# 23.05.4 realtek/rtl930x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/realtek/rtl930x/";
  sha256sums = {
    hash = "sha256-ALu2F/KjMQZVpMDyk7ad7It0RvK3ToU4Nh5HAMTL0/8=";
    name = "realtek_rtl930x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/realtek/rtl930x/sha256sums";
  };
  imagebuilder = {
    sha256 = "c608da0560fdc10ac7aa4389640d649a5a78e1481fde4fb15f2755ab59aaeb4d";
    filename = "immortalwrt-imagebuilder-23.05.4-realtek-rtl930x.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-XAV//s/ZItlkxTs692BVO84NiQGH/6+fK+54viVwzLc=";
    name = "realtek_rtl930x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/realtek/rtl930x/profiles.json";
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/realtek/rtl930x/packages/";
    sourceInfo = {
      hash = "sha256-4uakf1SIDsouf7yJ4QEALtHtLoH4acX7Fe8xO4IJ2gw=";
      name = "realtek_rtl930x-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/realtek/rtl930x/packages/Packages";
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
