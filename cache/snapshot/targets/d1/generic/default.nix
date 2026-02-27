# snapshot d1/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/d1/generic/";
  sha256sums = {
    hash = "sha256-wzOOGEIYm38O1WxbwQFswpDPQllIx0Ov6g0GXYmu2OY=";
    name = "d1_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/d1/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "d19b04be2e1405e39d169f100c4f2c4f1689c17de943b6d7e216df490cc50ed5";
    filename = "immortalwrt-imagebuilder-d1-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-jq6Hw0l2hSwu6844sQf017S/aovp55+wvf7RnBSCIB0=";
    name = "d1_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/d1/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "ad0e0b86de94cbfe52382cb746d99fb6";
      version = "6.12.67";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "f2fsck"
      "firewall4"
      "fstools"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.67-1-ad0e0b86de94cbfe52382cb746d99fb6";
    profiles = {
      "100ask_dongshan-nezha-stu" = {
        device_packages = [ ];
      };
      allwinner_d1-nezha = {
        device_packages = [ "kmod-gpio-pcf857x" ];
      };
      sipeed_lichee-rv-dock = {
        device_packages = [
          "kmod-rtw88-8723ds"
          "wpad-openssl"
        ];
      };
      widora_mangopi-mq-pro = {
        device_packages = [
          "kmod-rtw88-8723ds"
          "wpad-openssl"
        ];
      };
    };
  };
  kmods."6.12.67-1-ad0e0b86de94cbfe52382cb746d99fb6" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/d1/generic/kmods/6.12.67-1-ad0e0b86de94cbfe52382cb746d99fb6/";
    sourceInfo = {
      hash = "sha256-sKh1ZhDza21V/lvHRvQAg31XyFy8ijdMp9C0WGweXak=";
      name = "kmods-d1_generic-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/d1/generic/kmods/6.12.67-1-ad0e0b86de94cbfe52382cb746d99fb6/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/d1/generic/packages/";
    sourceInfo = {
      hash = "sha256-VPyQfGVJGv8WQxsmzor/7nefV2G71gbdaYt5baKprJo=";
      name = "d1_generic-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/d1/generic/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "riscv64_generic";
  feeds = import ./../../../packages/riscv64_generic.nix;
}
