# 24.10.5 mpc85xx/p1020
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mpc85xx/p1020/";
  sha256sums = {
    hash = "sha256-ZjsWYyWlY4ommBzFakdI+mJX4sSw8jcb5HwtpR0FKOE=";
    name = "mpc85xx_p1020-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mpc85xx/p1020/sha256sums";
  };
  imagebuilder = {
    sha256 = "51d3169369b7cb5b1713ba63835a8290f208ef897d66cafe0e6c581d22eb8cc7";
    filename = "immortalwrt-imagebuilder-24.10.5-mpc85xx-p1020.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Ps+6df6Sz7B4GIg4Qyp4Aho7Eu3xCexVZgbac+/99KE=";
    name = "mpc85xx_p1020-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mpc85xx/p1020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "9a33a955849b167558eb31f904e5260a";
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
      "kmod-ath9k"
      "kmod-button-hotplug"
      "kmod-crypto-hw-talitos"
      "kmod-input-core"
      "kmod-input-gpio-keys"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-usb2"
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
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "swconfig"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "6.6.122-1-9a33a955849b167558eb31f904e5260a";
    profiles = {
      aerohive_hiveap-330 = {
        device_packages = [
          "kmod-tpm-i2c-atmel"
          "kmod-hwmon-lm70"
        ];
      };
      enterasys_ws-ap3710i = {
        device_packages = [ ];
      };
      extreme-networks_ws-ap3825i = {
        device_packages = [
          "kmod-ath10k-ct"
          "ath10k-firmware-qca988x-ct"
        ];
      };
      hpe_msm460 = {
        device_packages = [ ];
      };
      ocedo_panda = {
        device_packages = [ "kmod-rtc-ds1307" ];
      };
    };
  };
  kmods."6.6.122-1-9a33a955849b167558eb31f904e5260a" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mpc85xx/p1020/kmods/6.6.122-1-9a33a955849b167558eb31f904e5260a/";
    sourceInfo = {
      hash = "sha256-ioROAJ0Qape+zWZSSwUtKcH3l+ZzbqCF46fqj+PfR+E=";
      name = "kmods-mpc85xx_p1020-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mpc85xx/p1020/kmods/6.6.122-1-9a33a955849b167558eb31f904e5260a/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mpc85xx/p1020/packages/";
    sourceInfo = {
      hash = "sha256-S5TdXOaWR3+A16rGjkVl4ofk5Rolm0kNdu3vJBMSKe4=";
      name = "mpc85xx_p1020-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mpc85xx/p1020/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "powerpc_8548";
  feeds = import ./../../../packages/powerpc_8548.nix;
}
