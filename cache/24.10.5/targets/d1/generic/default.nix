# 24.10.5 d1/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/d1/generic/";
  sha256sums = {
    hash = "sha256-e1YgRDD4+YpEso9FlVw+y8Y1ayV6J2vx0+tOLJK2bKE=";
    name = "d1_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/d1/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "46ef61ea34f637f6d70d6462dd14650406a8d5d53a4d432e6865f79a1b0260cf";
    filename = "immortalwrt-imagebuilder-24.10.5-d1-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-/SSryS6YBZ9Sbu40fMO24x8ZzKE8vD79zmojM5ML4As=";
    name = "d1_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/d1/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_riscv64";
    linux_kernel = {
      release = "1";
      vermagic = "88063115ab4a3603a60a70ad7664c88a";
      version = "6.6.122";
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
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
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
    kmods_target = "6.6.122-1-88063115ab4a3603a60a70ad7664c88a";
    profiles = {
      "100ask_dongshan-nezha-stu" = {
        device_packages = [ ];
      };
      allwinner_d1-nezha = {
        device_packages = [ ];
      };
      sipeed_lichee-rv-dock = {
        device_packages = [
          "kmod-rtw88-8723ds"
          "wpad-openssl"
          "iwinfo"
        ];
      };
      widora_mangopi-mq-pro = {
        device_packages = [
          "kmod-rtw88-8723ds"
          "wpad-openssl"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.122-1-88063115ab4a3603a60a70ad7664c88a" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/d1/generic/kmods/6.6.122-1-88063115ab4a3603a60a70ad7664c88a/";
    sourceInfo = {
      hash = "sha256-wKjzk1RaY87/Xkc7FjPT7x15imlM16hzd5vlS2PcMnY=";
      name = "kmods-d1_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/d1/generic/kmods/6.6.122-1-88063115ab4a3603a60a70ad7664c88a/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/d1/generic/packages/";
    sourceInfo = {
      hash = "sha256-ZvwsGVIsDoOnJcZGc+6vwakrsW4C+l8gTnhwfCiftxo=";
      name = "d1_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/d1/generic/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "riscv64_riscv64";
  feeds = import ./../../../packages/riscv64_riscv64.nix;
}
