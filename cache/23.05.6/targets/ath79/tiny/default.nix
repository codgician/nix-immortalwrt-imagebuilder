# 23.05.6 ath79/tiny
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/ath79/tiny/";
  sha256sums = {
    hash = "sha256-l6KcVUWf51WNV2wQw95XnsbyE77vd8BUcxo+zQQj1sE=";
    name = "ath79_tiny-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/ath79/tiny/sha256sums";
  };
  imagebuilder = {
    sha256 = "06537bd8a12c8c945b6750d9184ad8111e81f339b90dfbe47202afe5404491dc";
    filename = "immortalwrt-imagebuilder-23.05.6-ath79-tiny.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-sVmjLFdTDaUZcrXlNjujFtp/ETWIhXdk6XCCiC+zNzg=";
    name = "ath79_tiny-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/ath79/tiny/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "0e6ced8c1e2bc83aaebe4806d77de397";
      version = "5.15.189";
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
      "odhcp6c"
      "odhcpd-ipv6only"
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
    kmods_target = "5.15.189-1-0e6ced8c1e2bc83aaebe4806d77de397";
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/ath79/tiny/packages/";
    sourceInfo = {
      hash = "sha256-z95P3ktsHmuISb0kkg6cQst1pBo0iRQ2xEgQLgksbqE=";
      name = "ath79_tiny-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/ath79/tiny/packages/Packages";
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
