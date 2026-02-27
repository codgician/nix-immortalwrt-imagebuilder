# 23.05.7 ipq40xx/chromium
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/ipq40xx/chromium/";
  sha256sums = {
    hash = "sha256-a/scn4obM2xwbJgjgre+nvVYmbLmGwwpLxLMI0jQS24=";
    name = "ipq40xx_chromium-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/ipq40xx/chromium/sha256sums";
  };
  imagebuilder = {
    sha256 = "4607a901e69af1dcc2eb72da046bb1a530392616fc04a4fbc657daebde6d2531";
    filename = "immortalwrt-imagebuilder-23.05.7-ipq40xx-chromium.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-i2dCI44L2aQ9UtTuEp6iVvfT08JXcRj3F4KcUTfmfBo=";
    name = "ipq40xx_chromium-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/ipq40xx/chromium/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "7f27723de7d4057a08bd7b92abe9cb24";
      version = "5.15.195";
    };
    default_packages = [
      "ath10k-board-qca4019"
      "ath10k-firmware-qca4019-ct"
      "autocore"
      "automount"
      "base-files"
      "block-mount"
      "busybox"
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
      "luci"
      "luci-app-cpufreq"
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
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "5.15.195-1-7f27723de7d4057a08bd7b92abe9cb24";
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
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/ipq40xx/chromium/packages/";
    sourceInfo = {
      hash = "sha256-fxo27MRutTZXgdUkBsMv+f4C7zLdxQ7fRO2Q/DMCbG8=";
      name = "ipq40xx_chromium-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/ipq40xx/chromium/packages/Packages";
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
