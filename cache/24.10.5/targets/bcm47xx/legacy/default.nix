# 24.10.5 bcm47xx/legacy
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm47xx/legacy/";
  sha256sums = {
    hash = "sha256-vyqeuZxSBF1lZ55du9ydLfxef9V64o6yU/xgf5C+cyI=";
    name = "bcm47xx_legacy-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm47xx/legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "9a6db084e0818be8283396263d8db781cdfc5a516a83d0ba031934aa4914e072";
    filename = "immortalwrt-imagebuilder-24.10.5-bcm47xx-legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-ujuQkPo+sbpttHYOTd6LziTssxYMb38AmX06JczD9B8=";
    name = "bcm47xx_legacy-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm47xx/legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "b82540539f69933d234987e5de4cc65b";
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
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
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
      "nvram"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "otrx"
      "ppp"
      "ppp-mod-pppoe"
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "6.6.122-1-b82540539f69933d234987e5de4cc65b";
    profiles = {
      dlink_dwl-3150 = {
        device_packages = [ ];
      };
      standard = {
        device_packages = [ ];
      };
      standard-noloader-gz = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.122-1-b82540539f69933d234987e5de4cc65b" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm47xx/legacy/kmods/6.6.122-1-b82540539f69933d234987e5de4cc65b/";
    sourceInfo = {
      hash = "sha256-r2hbmFG7IfLebg9QV3S8uSQY312r/j9vs6eGacp4NQg=";
      name = "kmods-bcm47xx_legacy-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm47xx/legacy/kmods/6.6.122-1-b82540539f69933d234987e5de4cc65b/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm47xx/legacy/packages/";
    sourceInfo = {
      hash = "sha256-XOK73KAiYPtM5xlQyDJK7fmmvuI8LqhcE0W8ZeBX6ks=";
      name = "bcm47xx_legacy-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm47xx/legacy/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mipsel_mips32";
  feeds = import ./../../../packages/mipsel_mips32.nix;
}
