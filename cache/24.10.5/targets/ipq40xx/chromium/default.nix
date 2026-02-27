# 24.10.5 ipq40xx/chromium
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ipq40xx/chromium/";
  sha256sums = {
    hash = "sha256-Gh76/oTVlYKiGCrsm8dEuMbbbe3aABdyMPTngdO71hg=";
    name = "ipq40xx_chromium-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ipq40xx/chromium/sha256sums";
  };
  imagebuilder = {
    sha256 = "9ecb8b775a38a18df706abe096ff23ccd72deb72b705c3b0390af0dffbeb81a8";
    filename = "immortalwrt-imagebuilder-24.10.5-ipq40xx-chromium.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-p00jTjNLEuI5fJDwfRJKmLKxc7oDMV4ddvrACG/86Gw=";
    name = "ipq40xx_chromium-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ipq40xx/chromium/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "94a59e5d7b6242c751f9e3625fa7edb0";
      version = "6.6.122";
    };
    default_packages = [
      "ath10k-board-qca4019"
      "ath10k-firmware-qca4019-ct"
      "autocore"
      "automount"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-ath10k-ct"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-usb-dwc3"
      "kmod-usb-dwc3-qcom"
      "kmod-usb3"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-cpufreq"
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
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "6.6.122-1-94a59e5d7b6242c751f9e3625fa7edb0";
    profiles = {
      google_wifi = {
        device_packages = [
          "partx-utils"
          "mkf2fs"
          "e2fsprogs"
          "kmod-fs-ext4"
          "kmod-fs-f2fs"
          "kmod-google-firmware"
          "kmod-ramoops"
        ];
      };
    };
  };
  kmods."6.6.122-1-94a59e5d7b6242c751f9e3625fa7edb0" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ipq40xx/chromium/kmods/6.6.122-1-94a59e5d7b6242c751f9e3625fa7edb0/";
    sourceInfo = {
      hash = "sha256-xBddntWWuO9WPM49WXtlZ8cOBFH88moFxJg81VdCw68=";
      name = "kmods-ipq40xx_chromium-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ipq40xx/chromium/kmods/6.6.122-1-94a59e5d7b6242c751f9e3625fa7edb0/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ipq40xx/chromium/packages/";
    sourceInfo = {
      hash = "sha256-xR7awSKD/Iqp8BncT+rnyIb2vHub/YUsvv4qGiIAovI=";
      name = "ipq40xx_chromium-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ipq40xx/chromium/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a7_neon-vfpv4";
  feeds = import ./../../../packages/arm_cortex-a7_neon-vfpv4.nix;
}
