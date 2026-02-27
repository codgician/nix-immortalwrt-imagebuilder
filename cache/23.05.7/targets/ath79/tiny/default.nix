# 23.05.7 ath79/tiny
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/ath79/tiny/";
  sha256sums = {
    hash = "sha256-vedZj06nYaUPfCstvxJfksvp9sSclmtUrV3EAfTobSE=";
    name = "ath79_tiny-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/ath79/tiny/sha256sums";
  };
  imagebuilder = {
    sha256 = "4ee468203f6bf16110710da213586d33c53c9a5da3cfb8cd15f159a17efbf2ad";
    filename = "immortalwrt-imagebuilder-23.05.7-ath79-tiny.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-3UA3LEmACyr8oQ2J+UwQgAeRywJNwZPHLisnPS0wtek=";
    name = "ath79_tiny-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/ath79/tiny/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "0e6ced8c1e2bc83aaebe4806d77de397";
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
    kmods_target = "5.15.195-1-0e6ced8c1e2bc83aaebe4806d77de397";
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
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/ath79/tiny/packages/";
    sourceInfo = {
      hash = "sha256-8lLJPh1xR2m2wa1QAosah+wLZIAWOl/01+5Yx+bzPF0=";
      name = "ath79_tiny-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/ath79/tiny/packages/Packages";
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
