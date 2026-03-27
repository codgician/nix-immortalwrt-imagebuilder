# 23.05.3 mxs/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/mxs/generic/";
  sha256sums = {
    hash = "sha256-UQWvYHfQp7O3eS8os42HWBVTRBg8i11UK/Ipcq64ybc=";
    name = "mxs_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/mxs/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "6ce862ba7367192971677a877ed881b09daa3b44b462ff81050fbb49afaeeb53";
    filename = "immortalwrt-imagebuilder-23.05.3-mxs-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-0vLLxd0M2RPBPleLsPQ+xYB2SxLixyH7EneBlABrDvA=";
    name = "mxs_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/mxs/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm926ej-s";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "ipv6helper"
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
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
    profiles = {
      i2se_duckbill = {
        device_packages = [
          "-dnsmasq"
          "-firewall"
          "-ppp"
          "-ip6tables"
          "-iptables"
          "-6relayd"
          "-mtd"
          "uboot-envtools"
          "kmod-leds-gpio"
          "-kmod-ipt-nathelper"
        ];
      };
      olinuxino_maxi = {
        device_packages = [
          "kmod-usb-net-smsc95xx"
          "kmod-pinctrl-mcp23s08-i2c"
          "kmod-pinctrl-mcp23s08-spi"
          "kmod-leds-gpio"
          "kmod-sound-core"
        ];
      };
      olinuxino_micro = {
        device_packages = [
          "kmod-pinctrl-mcp23s08-spi"
          "kmod-pinctrl-mcp23s08-i2c"
          "kmod-leds-gpio"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/mxs/generic/packages/";
    sourceInfo = {
      hash = "sha256-qNj8DY6fD57gg2QjK23sXRdHgPM2I3sGUkOU5vZFD3k=";
      name = "mxs_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/mxs/generic/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_arm926ej-s";
  feeds = import ./../../../packages/arm_arm926ej-s.nix;
}
