# snapshot ipq40xx/chromium
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ipq40xx/chromium/";
  sha256sums = {
    hash = "sha256-OwRIigqQ1GrPq38oh+e9+Ik9ws0e4d6gfo1M0fLHdoc=";
    name = "ipq40xx_chromium-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ipq40xx/chromium/sha256sums";
  };
  imagebuilder = {
    sha256 = "21b00e96f6a6f2856b0b0e7c80a7471f38a7d13f409d5739511169ec427652db";
    filename = "immortalwrt-imagebuilder-ipq40xx-chromium.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Gd/IZLp5+kJ+3u+hKSBNZRg9YQz+HWnlQsYH7lRq8nU=";
    name = "ipq40xx_chromium-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ipq40xx/chromium/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_neon-vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "536ea06107db6caac60219caf6423b9a";
      version = "6.12.67";
    };
    default_packages = [
      "apk-openssl"
      "ath10k-board-qca4019"
      "ath10k-firmware-qca4019-ct"
      "automount"
      "base-files"
      "ca-bundle"
      "cpufreq"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-ath10k-ct"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nft-offload"
      "kmod-usb-dwc3"
      "kmod-usb-dwc3-qcom"
      "kmod-usb3"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
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
    kmods_target = "6.12.67-1-536ea06107db6caac60219caf6423b9a";
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
  kmods."6.12.67-1-536ea06107db6caac60219caf6423b9a" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ipq40xx/chromium/kmods/6.12.67-1-536ea06107db6caac60219caf6423b9a/";
    sourceInfo = {
      hash = "sha256-rObBFdUoi/ChIzCBNVIIndKvvVr2D9YotdqSZ/tGn4c=";
      name = "kmods-ipq40xx_chromium-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ipq40xx/chromium/kmods/6.12.67-1-536ea06107db6caac60219caf6423b9a/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ipq40xx/chromium/packages/";
    sourceInfo = {
      hash = "sha256-WjBh1d/hAPYciB1yI+cOelZMYOwvqdL9YISLXtJ3BwY=";
      name = "ipq40xx_chromium-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/ipq40xx/chromium/packages/packages.adb";
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
