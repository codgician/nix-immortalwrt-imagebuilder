# 24.10.0 mvebu/cortexa72
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mvebu/cortexa72/";
  sha256sums = {
    hash = "sha256-5gw9rFbQzlzqryPXdJrIs5R0BCf3sgia04wvM6vujIY=";
    name = "mvebu_cortexa72-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mvebu/cortexa72/sha256sums";
  };
  imagebuilder = {
    sha256 = "67cfb1968fd5b70de49354bc8fc4593408be17f6aa834962d4a2574d3e6d0b56";
    filename = "immortalwrt-imagebuilder-24.10.0-mvebu-cortexa72.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-OCPtwv+aK17QS8byOTLdyEv44v7l69eV5vqcoyIcTY0=";
    name = "mvebu_cortexa72-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mvebu/cortexa72/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a72";
    linux_kernel = {
      release = "1";
      vermagic = "d24b4cdd790ab07420abc1fa3477e563";
      version = "6.6.73";
    };
    default_packages = [
      "autocore"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
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
      "mkf2fs"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "partx-utils"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.73-1-d24b4cdd790ab07420abc1fa3477e563";
    profiles = {
      globalscale_mochabin = {
        device_packages = [ ];
      };
      iei_puzzle-m901 = {
        device_packages = [ "kmod-rtc-ds1307" ];
      };
      iei_puzzle-m902 = {
        device_packages = [ "kmod-rtc-ds1307" ];
      };
      marvell_armada7040-db = {
        device_packages = [ ];
      };
      marvell_armada8040-db = {
        device_packages = [ ];
      };
      marvell_clearfog-gt-8k = {
        device_packages = [
          "kmod-i2c-mux-pca954x"
          "kmod-crypto-hw-safexcel"
        ];
      };
      marvell_macchiatobin-doubleshot = {
        device_packages = [ "kmod-i2c-mux-pca954x" ];
      };
      marvell_macchiatobin-singleshot = {
        device_packages = [ "kmod-i2c-mux-pca954x" ];
      };
      mikrotik_rb5009 = {
        device_packages = [
          "kmod-i2c-gpio"
          "yafut"
        ];
      };
      solidrun_clearfog-pro = {
        device_packages = [ "kmod-i2c-mux-pca954x" ];
      };
    };
  };
  kmods."6.6.73-1-d24b4cdd790ab07420abc1fa3477e563" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mvebu/cortexa72/kmods/6.6.73-1-d24b4cdd790ab07420abc1fa3477e563/";
    sourceInfo = {
      hash = "sha256-YyqbGPyh4Of48Ua79GCAThZ9GCzjiFTB7ni4MAaAdTE=";
      name = "kmods-mvebu_cortexa72-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mvebu/cortexa72/kmods/6.6.73-1-d24b4cdd790ab07420abc1fa3477e563/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mvebu/cortexa72/packages/";
    sourceInfo = {
      hash = "sha256-xni/ikQsghV3PtSSTmeilpq24/uVqynCHSOTASQ1rT4=";
      name = "mvebu_cortexa72-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mvebu/cortexa72/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_cortex-a72";
  feeds = import ./../../../packages/aarch64_cortex-a72.nix;
}
