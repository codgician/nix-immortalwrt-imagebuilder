# 23.05.7 bcm27xx/bcm2710
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bcm27xx/bcm2710/";
  sha256sums = {
    hash = "sha256-3XjK5cBwTgLZpM7F4v8YHHQsFxySayo9Mve3NEbq13w=";
    name = "bcm27xx_bcm2710-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bcm27xx/bcm2710/sha256sums";
  };
  imagebuilder = {
    sha256 = "1065e6344d8f5d904d7a56150f17945d369931ea24b3e7a78e862ab437399cb2";
    filename = "immortalwrt-imagebuilder-23.05.7-bcm27xx-bcm2710.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-MHsUTxSczEUnBMgLl2uuV974l+bvg+f51Vlff8zjyD0=";
    name = "bcm27xx_bcm2710-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bcm27xx/bcm2710/profiles.json";
  };
  profiles.extract = {
    arch_packages = "aarch64_cortex-a53";
    linux_kernel = {
      release = "1";
      vermagic = "8d790f4b81cbe377a52f4e03d0431d5e";
      version = "5.15.195";
    };
    default_packages = [
      "autocore"
      "automount"
      "base-files"
      "bcm27xx-gpu-fw"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-fs-vfat"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-nls-cp437"
      "kmod-nls-iso8859-1"
      "kmod-sound-arm-bcm2835"
      "kmod-sound-core"
      "kmod-usb-hid"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-cpufreq"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
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
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
    ];
    kmods_target = "5.15.195-1-8d790f4b81cbe377a52f4e03d0431d5e";
    profiles = {
      rpi-3 = {
        device_packages = [
          "cypress-firmware-43430-sdio"
          "brcmfmac-nvram-43430-sdio"
          "cypress-firmware-43455-sdio"
          "brcmfmac-nvram-43455-sdio"
          "kmod-brcmfmac"
          "wpad-openssl"
          "iwinfo"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bcm27xx/bcm2710/packages/";
    sourceInfo = {
      hash = "sha256-tfCA7K1w241ewb6qZCOpBAewiJnOBTnHGMYoyj12Tqk=";
      name = "bcm27xx_bcm2710-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bcm27xx/bcm2710/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "aarch64_cortex-a53";
  feeds = import ./../../../packages/aarch64_cortex-a53.nix;
}
