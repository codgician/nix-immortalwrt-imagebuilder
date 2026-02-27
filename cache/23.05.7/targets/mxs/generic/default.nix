# 23.05.7 mxs/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mxs/generic/";
  sha256sums = {
    hash = "sha256-Z8rWvTcUjHNUeHCF69sB+pWPFbiPSLzkuK7B/hI4LoA=";
    name = "mxs_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mxs/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "b5a5d7a0c7ee62e35d3af7783eef242773aab1364c6a94e4a061d575e6eb3fb2";
    filename = "immortalwrt-imagebuilder-23.05.7-mxs-generic.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-W7MRVEMq6IN6RMS7JQzalkfN4fE6y4cnEioTd2gcFXw=";
    name = "mxs_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mxs/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_arm926ej-s";
    linux_kernel = {
      release = "1";
      vermagic = "c2d1aa1c651f6d8841a4a4b76810c2fe";
      version = "5.15.195";
    };
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
      "odhcpd-ipv6only"
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
    kmods_target = "5.15.195-1-c2d1aa1c651f6d8841a4a4b76810c2fe";
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
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mxs/generic/packages/";
    sourceInfo = {
      hash = "sha256-pbgsFOHqPIR30yrDTyjGi4SOyuVDxS6e9nb4B+W5nfI=";
      name = "mxs_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mxs/generic/packages/Packages";
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
