# 23.05.7 realtek/rtl930x
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/realtek/rtl930x/";
  sha256sums = {
    hash = "sha256-/AGd8rDSuRJPTjwKS9tkZu1upF8DwvOHUGa3oDxDRXY=";
    name = "realtek_rtl930x-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/realtek/rtl930x/sha256sums";
  };
  imagebuilder = {
    sha256 = "984184cc115a8777e046f196c8d76185ece3d220c6697589c561af5fac9708ee";
    filename = "immortalwrt-imagebuilder-23.05.7-realtek-rtl930x.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-zp0Hd0pjqS6SypGLG/yX12fOYGU0sLstjArZ5oaqG5s=";
    name = "realtek_rtl930x-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/realtek/rtl930x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "71d064e369b2215b557a4a23714828d3";
      version = "5.15.195";
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
    kmods_target = "5.15.195-1-71d064e369b2215b557a4a23714828d3";
    profiles = {
      zyxel_xgs1250-12 = {
        device_packages = [ ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/realtek/rtl930x/packages/";
    sourceInfo = {
      hash = "sha256-Yv427ZmxdcdLrSE/QxEKPBhCXMB7kS2UsLRD+N5PkXM=";
      name = "realtek_rtl930x-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/realtek/rtl930x/packages/Packages";
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
