# 23.05.4 ath79/tiny
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/ath79/tiny/";
  sha256sums = {
    hash = "sha256-Hqt8hOHHTVbWln5IFjYnzox6vMwPO2s97Ov0o5GW+T4=";
    name = "ath79_tiny-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/ath79/tiny/sha256sums";
  };
  imagebuilder = {
    sha256 = "4b742feefe88dbdee602435435d74995a322a426a010fad6f539e5eb4d55cc49";
    filename = "immortalwrt-imagebuilder-23.05.4-ath79-tiny.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-MrdA0vzyHLaOGaWj0L0yRi0FgYJJMsgziI8fy+BJjng=";
    name = "ath79_tiny-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/ath79/tiny/profiles.json";
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.4/targets/ath79/tiny/packages/";
    sourceInfo = {
      hash = "sha256-EQ/hcIRgcQKdhlwEXE33hTeEHRs9gEBYgPaTNZmtP94=";
      name = "ath79_tiny-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.4/targets/ath79/tiny/packages/Packages";
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
