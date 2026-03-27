# 23.05.6 bcm47xx/legacy
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/bcm47xx/legacy/";
  sha256sums = {
    hash = "sha256-4Hw3uinH+y1HX2WgrkbI3PvOrVRCprz09Hh9m1H7jBc=";
    name = "bcm47xx_legacy-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/bcm47xx/legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "ef8dd4e9275918bc193486b42aff519a2730e818a1f7d53869aeee7f82f21ffe";
    filename = "immortalwrt-imagebuilder-23.05.6-bcm47xx-legacy.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-q/6rkc4ZYhtDgn+sp0uLTK/US0QWPq1mdBfTM5V0xjo=";
    name = "bcm47xx_legacy-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/bcm47xx/legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "010d31d31a8ae60fc9200300a0c56a50";
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
    kmods_target = "5.15.189-1-010d31d31a8ae60fc9200300a0c56a50";
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/bcm47xx/legacy/packages/";
    sourceInfo = {
      hash = "sha256-pByEWJ9CwhTzTvuL8il6tZQVCJqA4rJS+UYC236AddQ=";
      name = "bcm47xx_legacy-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/bcm47xx/legacy/packages/Packages";
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
