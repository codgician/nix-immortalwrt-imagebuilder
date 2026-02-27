# 23.05.7 bcm47xx/legacy
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bcm47xx/legacy/";
  sha256sums = {
    hash = "sha256-k/X9+yvCIwjqZo+QUl9A4NIns+0myMXQIUMcaUKigTI=";
    name = "bcm47xx_legacy-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bcm47xx/legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "8dcde86b54800a43dd6dfb21d04e424dfff6168178ea7679320941afbefa76dc";
    filename = "immortalwrt-imagebuilder-23.05.7-bcm47xx-legacy.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-cv62AVvQKcgr5AtAvduja3oV1fCcNBwPVPT0qlxEowY=";
    name = "bcm47xx_legacy-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bcm47xx/legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "010d31d31a8ae60fc9200300a0c56a50";
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
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
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
      "nvram"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "otrx"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "5.15.195-1-010d31d31a8ae60fc9200300a0c56a50";
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
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bcm47xx/legacy/packages/";
    sourceInfo = {
      hash = "sha256-3GQ2HCuLHlmZhC9O6e1U3VlfkxRIvTyOxzh9HscF6BU=";
      name = "bcm47xx_legacy-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bcm47xx/legacy/packages/Packages";
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
