# 23.05.0 ath79/tiny
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.0/targets/ath79/tiny/";
  sha256sums = {
    hash = "sha256-cygfl3Q9YPDzuCrEYUSjH9nRNB08zZpDN1pe0lUpiqs=";
    name = "ath79_tiny-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/ath79/tiny/sha256sums";
  };
  imagebuilder = {
    sha256 = "a62e79d7f54e5a7c7f9ef4140d271d1a3133020b68e58ad0fb25bad4a3684311";
    filename = "immortalwrt-imagebuilder-23.05.0-ath79-tiny.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-PbKUnxaa8HkNA94LXJhVrkpgCshqjpWDVACfQJpk9AE=";
    name = "ath79_tiny-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/ath79/tiny/profiles.json";
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
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "ipv6helper"
      "kmod-ath9k"
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
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "swconfig"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "null-null-null";
    profiles = {
      engenius_eap350-v1 = {
        device_packages = [ ];
      };
      engenius_ecb350-v1 = {
        device_packages = [ ];
      };
      engenius_enh202-v1 = {
        device_packages = [ "rssileds" ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.0/targets/ath79/tiny/packages/";
    sourceInfo = {
      hash = "sha256-L2J4CJGKldogtcUQxVXNsy2eUc4Dq10jUWJ7/rSr2UY=";
      name = "ath79_tiny-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.0/targets/ath79/tiny/packages/Packages";
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
