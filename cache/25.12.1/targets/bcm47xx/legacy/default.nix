# 25.12.1 bcm47xx/legacy
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm47xx/legacy/";
  sha256sums = {
    hash = "sha256-6V2ekAHwWieb/F/BpdDPaLrbsRzA0qg5t/PnHRinPzU=";
    name = "bcm47xx_legacy-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm47xx/legacy/sha256sums";
  };
  imagebuilder = {
    sha256 = "1016c71a218c172a3dda7e38cdd6d9112577025a40a0230a6e093d25b075fda8";
    filename = "immortalwrt-imagebuilder-25.12.1-bcm47xx-legacy.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-uvv9knrLsKR7hLbcFJQvxs/R+mgmmDW0GltNY4S0Xjw=";
    name = "bcm47xx_legacy-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm47xx/legacy/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "f0bfc3a878af8acf87b03ce372051cc2";
      version = "6.12.94";
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
    kmods_target = "6.12.94-1-f0bfc3a878af8acf87b03ce372051cc2";
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
  kmods."6.12.94-1-f0bfc3a878af8acf87b03ce372051cc2" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm47xx/legacy/kmods/6.12.94-1-f0bfc3a878af8acf87b03ce372051cc2/";
    sourceInfo = {
      hash = "sha256-FQlJMMGmK3Z29oeXVNNo1Zmbm4g+Lk5FVKnMGdroPpE=";
      name = "kmods-bcm47xx_legacy-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm47xx/legacy/kmods/6.12.94-1-f0bfc3a878af8acf87b03ce372051cc2/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm47xx/legacy/packages/";
    sourceInfo = {
      hash = "sha256-mFdyYjG9qgQPhmzce45fhAIrCGAi7r8e+3OIVX/8bUw=";
      name = "bcm47xx_legacy-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm47xx/legacy/packages/packages.adb";
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
