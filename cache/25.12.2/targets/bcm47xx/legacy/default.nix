# 25.12.2 bcm47xx/legacy
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm47xx/legacy/";
  sha256sums = {
    hash = "sha256-FsX1XSNdW1BWK6vEC34t6G6hzvtOtLWT51ZB9QR1ZjA=";
    name = "bcm47xx_legacy-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm47xx/legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "a8c887b5795fa365ffb0ebfa30598cbac5c256cadee448e52d25b568494885ef";
    filename = "immortalwrt-imagebuilder-25.12.2-bcm47xx-legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-K57wlPRiRmiY3mFTGz/BIEUKZod1ZIzEd6amyjsk6oI=";
    name = "bcm47xx_legacy-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm47xx/legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "f0bfc3a878af8acf87b03ce372051cc2";
      version = "6.12.103";
    };
    default_packages = [
      "apk-openssl"
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
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "mtd"
      "netifd"
      "nftables"
      "nvram"
      "odhcp6c"
      "odhcpd-ipv6only"
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
    kmods_target = "6.12.103-1-f0bfc3a878af8acf87b03ce372051cc2";
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
  kmods."6.12.103-1-f0bfc3a878af8acf87b03ce372051cc2" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm47xx/legacy/kmods/6.12.103-1-f0bfc3a878af8acf87b03ce372051cc2/";
    sourceInfo = {
      hash = "sha256-4OYDbCPlkNgUNG43dRuqdHNaSPHdtdh51iYhC+1GCqQ=";
      name = "kmods-bcm47xx_legacy-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm47xx/legacy/kmods/6.12.103-1-f0bfc3a878af8acf87b03ce372051cc2/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm47xx/legacy/packages/";
    sourceInfo = {
      hash = "sha256-Om9Qvbw/iBtWDkn3c5cBIGcZqS4Jsu4DtHqPZ2wknlQ=";
      name = "bcm47xx_legacy-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm47xx/legacy/packages/packages.adb";
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
