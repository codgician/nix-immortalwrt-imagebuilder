# 23.05.4 realtek/rtl839x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/realtek/rtl839x/";
  sha256sums = {
    hash = "sha256-eHo+562wh/el6+q7AbwyngdwUmqv4b1K3poXMCQn1m0=";
    name = "realtek_rtl839x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/realtek/rtl839x/sha256sums";
  };
  imagebuilder = {
    sha256 = "35c0a9334c9cca8e0441471920d69861ee3966d5b142de88753581dd460a119e";
    filename = "immortalwrt-imagebuilder-23.05.4-realtek-rtl839x.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-oKNizHhunEFJjzA35GFD878a6+XAxxdQLQzlGeMKMSY=";
    name = "realtek_rtl839x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/realtek/rtl839x/profiles.json";
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
      d-link_dgs-1210-52 = {
        device_packages = [ ];
      };
      netgear_gs750e = {
        device_packages = [ ];
      };
      panasonic_m48eg-pn28480k = {
        device_packages = [
          "kmod-hwmon-gpiofan"
          "kmod-hwmon-lm75"
          "kmod-i2c-mux-pca954x"
          "kmod-thermal"
        ];
      };
      tplink_sg2452p-v4 = {
        device_packages = [
          "kmod-hwmon-gpiofan"
          "kmod-hwmon-tps23861"
        ];
      };
      zyxel_gs1900-48 = {
        device_packages = [ ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/realtek/rtl839x/packages/";
    sourceInfo = {
      hash = "sha256-5S8OvU5gcARjCbqrty09FFp6LDb3uDJSNkIOEpjApV4=";
      name = "realtek_rtl839x-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/realtek/rtl839x/packages/Packages";
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
