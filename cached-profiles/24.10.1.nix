{
  apm821xx = {
    nand = {
      arch_packages = "powerpc_464fp";
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
        "kmod-gpio-button-hotplug"
        "kmod-hw-crypto-4xx"
        "kmod-i2c-core"
        "kmod-leds-gpio"
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
      linux_kernel = {
        release = "1";
        vermagic = "3203f3be225a09379120faf7e9ca923e";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        meraki_mr24 = {
          device_packages = [
            "kmod-spi-gpio"
            "-swconfig"
          ];
          image_prefix = "immortalwrt-24.10.1-apm821xx-nand-meraki_mr24";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-apm821xx-nand-meraki_mr24-initramfs-kernel.bin";
              sha256 = "98a245b270943668fea4401e1a3421f4eff0df8d2eca296877c6a663d0a14719";
              sha256_unsigned = "98a245b270943668fea4401e1a3421f4eff0df8d2eca296877c6a663d0a14719";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-apm821xx-nand-meraki_mr24-squashfs-sysupgrade.bin";
              sha256 = "8264f59bd18b2dbb5c562cd06733d706db05fd064aa0bef9ec605d9f3b24f267";
              sha256_unsigned = "95b7db1464f42f8d08c6839588883b13eb47f46b2af8d5524a69bebd23cad252";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "meraki,mr24"
            "mr24"
          ];
          titles = [
            {
              model = "MR24";
              vendor = "Cisco Meraki";
            }
          ];
        };
        meraki_mx60 = {
          device_packages = [
            "kmod-spi-gpio"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb-dwc2"
            "kmod-usb-storage"
            "block-mount"
          ];
          image_prefix = "immortalwrt-24.10.1-apm821xx-nand-meraki_mx60";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-apm821xx-nand-meraki_mx60-initramfs-kernel.bin";
              sha256 = "b0eed35ff41fc5d559d42a704b909dbbe9871c828e82db1cf694f6a879ae879c";
              sha256_unsigned = "b0eed35ff41fc5d559d42a704b909dbbe9871c828e82db1cf694f6a879ae879c";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-apm821xx-nand-meraki_mx60-squashfs-sysupgrade.bin";
              sha256 = "4762bcc5cfc9ec0c007ac74a3000e5f1fcc2f7073347ea91a7efe695ab696016";
              sha256_unsigned = "4f9ec6d906b66ce09b21de01003d9df0640c62a14e790b968c80fd6709642351";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "meraki,mx60"
          ];
          titles = [
            {
              model = "MX60";
              vendor = "Cisco Meraki";
            }
            {
              model = "MX60W";
              vendor = "Cisco Meraki";
            }
          ];
        };
        netgear_wndap620 = {
          device_packages = [
            "kmod-eeprom-at24"
          ];
          image_prefix = "immortalwrt-24.10.1-apm821xx-nand-netgear_wndap620";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-apm821xx-nand-netgear_wndap620-squashfs-sysupgrade.bin";
              sha256 = "17792176eaf187dde5ad4f2e90020d41b4671e481484c0d8f09796ca8933bdf2";
              sha256_unsigned = "d7b7682531751b32cbacb1ae5ef744e38e7969f3b7431715013c774ba6bc20bc";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-apm821xx-nand-netgear_wndap620-squashfs-factory.img";
              sha256 = "0190cf688a7a162b9d86ff6203a1f9c69adc00952782f1302401c47412a6fc47";
              sha256_unsigned = "0190cf688a7a162b9d86ff6203a1f9c69adc00952782f1302401c47412a6fc47";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-apm821xx-nand-netgear_wndap620-initramfs-kernel.bin";
              sha256 = "2b20b9ab511981af41d4b2b3c597530fafd3340edb2ecc84fa601ee2c2149e93";
              sha256_unsigned = "2b20b9ab511981af41d4b2b3c597530fafd3340edb2ecc84fa601ee2c2149e93";
              type = "kernel";
            }
          ];
          supported_devices = [
            "netgear,wndap620"
          ];
          titles = [
            {
              model = "WNDAP620 (Premium Wireless-N)";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndap660 = {
          device_packages = [
            "kmod-eeprom-at24"
          ];
          image_prefix = "immortalwrt-24.10.1-apm821xx-nand-netgear_wndap660";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-apm821xx-nand-netgear_wndap660-initramfs-kernel.bin";
              sha256 = "a6e91ad01b5c5de6a87d2402d0c8fd707c4c684022ff5238b09efc0647d8097d";
              sha256_unsigned = "a6e91ad01b5c5de6a87d2402d0c8fd707c4c684022ff5238b09efc0647d8097d";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-apm821xx-nand-netgear_wndap660-squashfs-sysupgrade.bin";
              sha256 = "94ff2b2226eb8c90c58ce9458ff85e0b5b8c559cb056e6c1139a26159c158bb2";
              sha256_unsigned = "f236016efe4c8cf06149361473c3d6d824e10c558792feb6c23394cbff3aa278";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-apm821xx-nand-netgear_wndap660-squashfs-factory.img";
              sha256 = "93d49e9d28935b9a7f72ce9677de88f276e453e2fffcec81607d37ec66fc6652";
              sha256_unsigned = "93d49e9d28935b9a7f72ce9677de88f276e453e2fffcec81607d37ec66fc6652";
              type = "factory";
            }
          ];
          supported_devices = [
            "netgear,wndap660"
          ];
          titles = [
            {
              model = "WNDAP660 (Dual Radio Dual Band Wireless-N)";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr4700 = {
          device_packages = [
            "badblocks"
            "block-mount"
            "e2fsprogs"
            "kmod-hwmon-drivetemp"
            "kmod-dm"
            "kmod-fs-ext4"
            "kmod-fs-vfat"
            "kmod-usb-ledtrig-usbport"
            "kmod-md-mod"
            "kmod-nls-cp437"
            "kmod-nls-iso8859-1"
            "kmod-nls-iso8859-15"
            "kmod-nls-utf8"
            "kmod-usb3"
            "kmod-usb-dwc2"
            "kmod-usb-storage"
            "partx-utils"
            "kmod-ata-dwc"
          ];
          image_prefix = "immortalwrt-24.10.1-apm821xx-nand-netgear_wndr4700";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-apm821xx-nand-netgear_wndr4700-squashfs-factory.img";
              sha256 = "9acb0f3cbc58582db57aac5fa2144dc08b8bebc27b9aeb014b9ef9435ca716a4";
              sha256_unsigned = "9acb0f3cbc58582db57aac5fa2144dc08b8bebc27b9aeb014b9ef9435ca716a4";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-apm821xx-nand-netgear_wndr4700-initramfs-kernel.bin";
              sha256 = "32a4e0fb7a2d125340edf604dbec900671bb80138e7d31838e7d8f31647b044c";
              sha256_unsigned = "32a4e0fb7a2d125340edf604dbec900671bb80138e7d31838e7d8f31647b044c";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-apm821xx-nand-netgear_wndr4700-squashfs-sysupgrade.bin";
              sha256 = "d2f26c8ae86af5f57caab36b0d7b69fccfcf984b4fb320de0665af49fc8a96fd";
              sha256_unsigned = "71e4b09793da102c726e89fc461eb6bd1a66cc5f0f39490d4142d9928bfc88e2";
              type = "sysupgrade";
            }
            {
              name = "immortalwrt-24.10.1-apm821xx-nand-netgear_wndr4700-device-tree.dtb";
              sha256 = "63a41e5e740c837d5fd66d1f08f3a950566addc3cc5d077f9537476fbf779cb6";
              sha256_unsigned = "63a41e5e740c837d5fd66d1f08f3a950566addc3cc5d077f9537476fbf779cb6";
              type = "device-tree.dtb";
            }
          ];
          supported_devices = [
            "netgear,wndr4700"
            "wndr4700"
          ];
          titles = [
            {
              model = "Centria N900 WNDR4700";
              vendor = "NETGEAR";
            }
            {
              model = "Centria N900 WNDR4720";
              vendor = "NETGEAR";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "apm821xx/nand";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
    sata = {
      arch_packages = "powerpc_464fp";
      default_packages = [
        "badblocks"
        "base-files"
        "block-mount"
        "block-mount"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dropbear"
        "e2fsprogs"
        "f2fsck"
        "fdisk"
        "fstools"
        "kmod-dm"
        "kmod-gpio-button-hotplug"
        "kmod-hw-crypto-4xx"
        "kmod-hwmon-drivetemp"
        "kmod-i2c-core"
        "kmod-leds-gpio"
        "kmod-md-mod"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
        "lsblk"
        "luci-app-package-manager"
        "luci-compat"
        "luci-lib-base"
        "luci-lib-ipkg"
        "luci-light"
        "mdadm"
        "mkf2fs"
        "mtd"
        "netifd"
        "opkg"
        "partx-utils"
        "procd-ujail"
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "1c13fce875eb2bae10b0e5dae38c7607";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        wd_mybooklive = {
          device_packages = [
            "kmod-usb-dwc2"
            "kmod-ata-dwc"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb-storage"
            "kmod-fs-vfat"
            "wpad-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-apm821xx-sata-wd_mybooklive";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-apm821xx-sata-wd_mybooklive-squashfs-sysupgrade.img.gz";
              sha256 = "99ec8ca8fb39f5399e2f48c391e50d9ec28d49ad2b107ef3e398f6b02bf34077";
              sha256_unsigned = "edbad0d4b67eda17c2a4b96e214c70c2e1fa585576325a1037e4b458d23eada5";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-apm821xx-sata-wd_mybooklive-initramfs-kernel.bin";
              sha256 = "ef08dd600c30da8f1b121dfb73009f87c2be988f0a30024e64c609572f0ddded";
              sha256_unsigned = "ef08dd600c30da8f1b121dfb73009f87c2be988f0a30024e64c609572f0ddded";
              type = "kernel";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-apm821xx-sata-wd_mybooklive-ext4-factory.img.gz";
              sha256 = "c0229d213ef4e3724ae19be344d16d8411f209f52b393ec436357f69ca5e6b00";
              sha256_unsigned = "c0229d213ef4e3724ae19be344d16d8411f209f52b393ec436357f69ca5e6b00";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-apm821xx-sata-wd_mybooklive-squashfs-factory.img.gz";
              sha256 = "758c28319add5923ccbc5aa6ecbf4f836f479d8e9dad78569235f83e58122e22";
              sha256_unsigned = "758c28319add5923ccbc5aa6ecbf4f836f479d8e9dad78569235f83e58122e22";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-apm821xx-sata-wd_mybooklive-ext4-sysupgrade.img.gz";
              sha256 = "e75485727c493fc6597fa2acc3b7c6181115403411a8fc38940904e7b80d679e";
              sha256_unsigned = "a6668b8e82d2f93a4771d2c0f69cd1a20e3ea7927710a188ac39808cec4254fe";
              type = "sysupgrade";
            }
            {
              name = "immortalwrt-24.10.1-apm821xx-sata-wd_mybooklive-apollo3g.dtb";
              sha256 = "8d8fbe80392732e15d8d7439cead6b71b9f3fac9a8248ad5e02cf35869b2ad19";
              sha256_unsigned = "8d8fbe80392732e15d8d7439cead6b71b9f3fac9a8248ad5e02cf35869b2ad19";
              type = "apollo3g.dtb";
            }
          ];
          supported_devices = [
            "wd,mybooklive"
            "mbl"
            "wd,mybooklive-duo"
          ];
          titles = [
            {
              model = "My Book Live";
              vendor = "Western Digital";
            }
            {
              model = "My Book Live Duo";
              vendor = "Western Digital";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "apm821xx/sata";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
  };
  armsr = {
    armv7 = {
      arch_packages = "arm_cortex-a15_neon-vfpv4";
      default_packages = [
        "autocore"
        "automount"
        "base-files"
        "blkid"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "e2fsprogs"
        "firewall4"
        "fstools"
        "kmod-fs-vfat"
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
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "cbdf37b8439b0ded966b396ff7133157";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        generic = {
          device_packages = [
            "kmod-amazon-ena"
            "kmod-e1000e"
            "kmod-vmxnet3"
            "kmod-rtc-rx8025"
            "kmod-i2c-mux-pca954x"
            "kmod-gpio-pca953x"
            "partx-utils"
            "kmod-wdt-sp805"
            "kmod-mvneta"
            "kmod-mvpp2"
            "kmod-fsl-dpaa1-net"
            "kmod-fsl-dpaa2-net"
            "kmod-fsl-enetc-net"
            "kmod-dwmac-imx"
            "kmod-fsl-fec"
            "kmod-dwmac-rockchip"
            "kmod-dwmac-sun8i"
            "kmod-phy-aquantia"
            "kmod-phy-broadcom"
            "kmod-phy-marvell"
            "kmod-phy-marvell-10g"
            "kmod-sfp"
            "kmod-atlantic"
            "kmod-bcmgenet"
            "kmod-octeontx2-net"
            "kmod-renesas-net-avb"
            "kmod-phy-realtek"
            "kmod-phy-smsc"
          ];
          image_prefix = "immortalwrt-24.10.1-armsr-armv7-generic";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-armsr-armv7-generic-ext4-rootfs.img.gz";
              sha256 = "f9b8fa4732d95e80200ea937ec9e1ddd7bf88e7bd98e0119138dd2d404cf902e";
              sha256_unsigned = "f9b8fa4732d95e80200ea937ec9e1ddd7bf88e7bd98e0119138dd2d404cf902e";
              type = "rootfs";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-armsr-armv7-generic-squashfs-combined-efi.img.gz";
              sha256 = "0243726bac6f28451d464f136ce8dc6d20687435069f13b39e3819cc11243913";
              sha256_unsigned = "404a3cb81b1e27dff31a858579329d6da799168cd3cfe916c3c0d9ad5cdac41c";
              type = "combined-efi";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-armsr-armv7-generic-squashfs-combined-efi.qcow2";
              sha256 = "40a9b3d2cefc857a0febfdbddaba28bd7b2740991382752e27a2ecf2278a0d6c";
              sha256_unsigned = "40a9b3d2cefc857a0febfdbddaba28bd7b2740991382752e27a2ecf2278a0d6c";
              type = "combined-efi";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-armsr-armv7-generic-initramfs-kernel.bin";
              sha256 = "0ce17dd8d5818bd2e4541f3634bd2af075db8b74533c3191b70d95e01d9a9cc6";
              sha256_unsigned = "0ce17dd8d5818bd2e4541f3634bd2af075db8b74533c3191b70d95e01d9a9cc6";
              type = "kernel";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-armsr-armv7-generic-ext4-combined-efi.img.gz";
              sha256 = "5293f38c197934eea3c13a61915a523980d36f11e41d22f15c43561b9f4b034e";
              sha256_unsigned = "7da3c67b4e1240857a8efca7e81ade33b7c7ac26d562890581cc71aeb77012fe";
              type = "combined-efi";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-armsr-armv7-generic-squashfs-rootfs.img.gz";
              sha256 = "ab95168f3985d92466c5175a76e46f6e50afae05d2ac859ee7603c0fd6360caf";
              sha256_unsigned = "ab95168f3985d92466c5175a76e46f6e50afae05d2ac859ee7603c0fd6360caf";
              type = "rootfs";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-armsr-armv7-generic-ext4-combined-efi.qcow2";
              sha256 = "accae015de4cc08bd8b684d2891bfdc9b6302a61194925fd31d6c48289a4e1dd";
              sha256_unsigned = "accae015de4cc08bd8b684d2891bfdc9b6302a61194925fd31d6c48289a4e1dd";
              type = "combined-efi";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-armsr-armv7-generic-ext4-combined-efi.vmdk";
              sha256 = "f2fe4de49f5d16175efb37942b929ebb6acae1c01675b8e7b8fe6482a9d469bc";
              sha256_unsigned = "f2fe4de49f5d16175efb37942b929ebb6acae1c01675b8e7b8fe6482a9d469bc";
              type = "combined-efi";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-armsr-armv7-generic-squashfs-combined-efi.vmdk";
              sha256 = "8c6aaf6d5d3c95388da09ed2dc852c3550168d6b188a4d070911951bd988f2ca";
              sha256_unsigned = "8c6aaf6d5d3c95388da09ed2dc852c3550168d6b188a4d070911951bd988f2ca";
              type = "combined-efi";
            }
          ];
          supported_devices = [ ];
          titles = [
            {
              title = "Generic EFI Boot";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "armsr/armv7";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
    armv8 = {
      arch_packages = "aarch64_generic";
      default_packages = [
        "autocore"
        "automount"
        "base-files"
        "blkid"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "e2fsprogs"
        "firewall4"
        "fstools"
        "kmod-fs-vfat"
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
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "ad0abd17f62ba101da503a2ba8a778de";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        generic = {
          device_packages = [
            "kmod-amazon-ena"
            "kmod-e1000e"
            "kmod-vmxnet3"
            "kmod-rtc-rx8025"
            "kmod-i2c-mux-pca954x"
            "kmod-gpio-pca953x"
            "partx-utils"
            "kmod-wdt-sp805"
            "kmod-mvneta"
            "kmod-mvpp2"
            "kmod-fsl-dpaa1-net"
            "kmod-fsl-dpaa2-net"
            "kmod-fsl-enetc-net"
            "kmod-dwmac-imx"
            "kmod-fsl-fec"
            "kmod-dwmac-rockchip"
            "kmod-dwmac-sun8i"
            "kmod-phy-aquantia"
            "kmod-phy-broadcom"
            "kmod-phy-marvell"
            "kmod-phy-marvell-10g"
            "kmod-sfp"
            "kmod-atlantic"
            "kmod-bcmgenet"
            "kmod-octeontx2-net"
            "kmod-renesas-net-avb"
            "kmod-phy-realtek"
            "kmod-phy-smsc"
            "kmod-thunderx-net"
          ];
          image_prefix = "immortalwrt-24.10.1-armsr-armv8-generic";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-armsr-armv8-generic-ext4-combined-efi.qcow2";
              sha256 = "66035dbf3add819947a15d4db913b6605a0fcba2a540b14a82d837b96c7d0c55";
              sha256_unsigned = "66035dbf3add819947a15d4db913b6605a0fcba2a540b14a82d837b96c7d0c55";
              type = "combined-efi";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-armsr-armv8-generic-ext4-rootfs.img.gz";
              sha256 = "9fea00afe2bebe9dfd6c267d70e82b0466983bb28b6fecda32d5942bb43b1ebd";
              sha256_unsigned = "9fea00afe2bebe9dfd6c267d70e82b0466983bb28b6fecda32d5942bb43b1ebd";
              type = "rootfs";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-armsr-armv8-generic-squashfs-rootfs.img.gz";
              sha256 = "52cd3fc8849eb9cac7a624686aba1b8be2ce7429ad85255ab48115ae781c5bb3";
              sha256_unsigned = "52cd3fc8849eb9cac7a624686aba1b8be2ce7429ad85255ab48115ae781c5bb3";
              type = "rootfs";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-armsr-armv8-generic-squashfs-combined-efi.qcow2";
              sha256 = "e5dc4ab7c33402f1a5bb71327bc6fdcae1f01a2dd7231567a43f7466d35e18f6";
              sha256_unsigned = "e5dc4ab7c33402f1a5bb71327bc6fdcae1f01a2dd7231567a43f7466d35e18f6";
              type = "combined-efi";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-armsr-armv8-generic-squashfs-combined-efi.img.gz";
              sha256 = "5f473b4cc7f7a1d16d279fcd0d1c1a1c35bab61efab167410a1d85068c64a72a";
              sha256_unsigned = "b611e08f17915802c6d239eab3914d36645a9442156460834e471dec26d1020a";
              type = "combined-efi";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-armsr-armv8-generic-ext4-combined-efi.img.gz";
              sha256 = "eb5c490df37b99c2c8b33affc9c815fde94f0b61980acbac7e28d75148431e0c";
              sha256_unsigned = "1edf4dc58ee82be8a5031902e0201be15883ea4f64ef2fb57b5344630fdfdf2b";
              type = "combined-efi";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-armsr-armv8-generic-ext4-combined-efi.vmdk";
              sha256 = "638c1e766e6e256dc102c701c9f392344b08bad7813240a6b234fcb2c30dcec1";
              sha256_unsigned = "638c1e766e6e256dc102c701c9f392344b08bad7813240a6b234fcb2c30dcec1";
              type = "combined-efi";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-armsr-armv8-generic-initramfs-kernel.bin";
              sha256 = "a15f54fa0dbd03bedf6df0db140411bd3e04ba434111ce7e0546a0c3e75f866d";
              sha256_unsigned = "a15f54fa0dbd03bedf6df0db140411bd3e04ba434111ce7e0546a0c3e75f866d";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-armsr-armv8-generic-squashfs-combined-efi.vmdk";
              sha256 = "a229a57ddc9892194ce8b5196daca152ef6636973268d66e458145d4e33e16d7";
              sha256_unsigned = "a229a57ddc9892194ce8b5196daca152ef6636973268d66e458145d4e33e16d7";
              type = "combined-efi";
            }
          ];
          supported_devices = [ ];
          titles = [
            {
              title = "Generic EFI Boot";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "armsr/armv8";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
  };
  at91 = {
    sam9x = {
      arch_packages = "arm_arm926ej-s";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-at91-udc"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-usb-gadget-eth"
        "kmod-usb-ohci"
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
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "11cfe7a2082a2713e5b93126936c4f1c";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        atmel_at91sam9263ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9263ek";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9263ek-squashfs-root.ubi";
              sha256 = "f80ddc6798dce56da9732bb4304c74a114ae18a2dd4b9451d8ec36f5abd01ef6";
              sha256_unsigned = "f80ddc6798dce56da9732bb4304c74a114ae18a2dd4b9451d8ec36f5abd01ef6";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9263ek-ubifs-root.ubi";
              sha256 = "032f3d705b384313414654e062288239ccdf630d55aa42493b7dbd2cec594aaf";
              sha256_unsigned = "032f3d705b384313414654e062288239ccdf630d55aa42493b7dbd2cec594aaf";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9263ek-ext4-root.ubi";
              sha256 = "207565ab6af46d908aaa8f165b5eeee272c356c8a9d530ada08172a217567fba";
              sha256_unsigned = "207565ab6af46d908aaa8f165b5eeee272c356c8a9d530ada08172a217567fba";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9263ek"
          ];
          titles = [
            {
              model = "AT91SAM9263-EK";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9g15ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9g15ek";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9g15ek-squashfs-root.ubi";
              sha256 = "f80ddc6798dce56da9732bb4304c74a114ae18a2dd4b9451d8ec36f5abd01ef6";
              sha256_unsigned = "f80ddc6798dce56da9732bb4304c74a114ae18a2dd4b9451d8ec36f5abd01ef6";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9g15ek-ubifs-root.ubi";
              sha256 = "032f3d705b384313414654e062288239ccdf630d55aa42493b7dbd2cec594aaf";
              sha256_unsigned = "032f3d705b384313414654e062288239ccdf630d55aa42493b7dbd2cec594aaf";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9g15ek-ext4-root.ubi";
              sha256 = "207565ab6af46d908aaa8f165b5eeee272c356c8a9d530ada08172a217567fba";
              sha256_unsigned = "207565ab6af46d908aaa8f165b5eeee272c356c8a9d530ada08172a217567fba";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9g15ek"
          ];
          titles = [
            {
              model = "AT91SAM9G15-EK";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9g20ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9g20ek";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9g20ek-squashfs-root.ubi";
              sha256 = "f80ddc6798dce56da9732bb4304c74a114ae18a2dd4b9451d8ec36f5abd01ef6";
              sha256_unsigned = "f80ddc6798dce56da9732bb4304c74a114ae18a2dd4b9451d8ec36f5abd01ef6";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9g20ek-ubifs-root.ubi";
              sha256 = "032f3d705b384313414654e062288239ccdf630d55aa42493b7dbd2cec594aaf";
              sha256_unsigned = "032f3d705b384313414654e062288239ccdf630d55aa42493b7dbd2cec594aaf";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9g20ek-ext4-root.ubi";
              sha256 = "207565ab6af46d908aaa8f165b5eeee272c356c8a9d530ada08172a217567fba";
              sha256_unsigned = "207565ab6af46d908aaa8f165b5eeee272c356c8a9d530ada08172a217567fba";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9g20ek"
          ];
          titles = [
            {
              model = "AT91SAM9G20-EK";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9g20ek-2mmc = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9g20ek-2mmc";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9g20ek-2mmc-ubifs-root.ubi";
              sha256 = "032f3d705b384313414654e062288239ccdf630d55aa42493b7dbd2cec594aaf";
              sha256_unsigned = "032f3d705b384313414654e062288239ccdf630d55aa42493b7dbd2cec594aaf";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9g20ek-2mmc-ext4-root.ubi";
              sha256 = "207565ab6af46d908aaa8f165b5eeee272c356c8a9d530ada08172a217567fba";
              sha256_unsigned = "207565ab6af46d908aaa8f165b5eeee272c356c8a9d530ada08172a217567fba";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9g20ek-2mmc-squashfs-root.ubi";
              sha256 = "f80ddc6798dce56da9732bb4304c74a114ae18a2dd4b9451d8ec36f5abd01ef6";
              sha256_unsigned = "f80ddc6798dce56da9732bb4304c74a114ae18a2dd4b9451d8ec36f5abd01ef6";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9g20ek_2mmc"
          ];
          titles = [
            {
              model = "AT91SAM9G20-EK";
              variant = "2MMC";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9g25ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9g25ek";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9g25ek-ext4-root.ubi";
              sha256 = "207565ab6af46d908aaa8f165b5eeee272c356c8a9d530ada08172a217567fba";
              sha256_unsigned = "207565ab6af46d908aaa8f165b5eeee272c356c8a9d530ada08172a217567fba";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9g25ek-ubifs-root.ubi";
              sha256 = "032f3d705b384313414654e062288239ccdf630d55aa42493b7dbd2cec594aaf";
              sha256_unsigned = "032f3d705b384313414654e062288239ccdf630d55aa42493b7dbd2cec594aaf";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9g25ek-squashfs-root.ubi";
              sha256 = "f80ddc6798dce56da9732bb4304c74a114ae18a2dd4b9451d8ec36f5abd01ef6";
              sha256_unsigned = "f80ddc6798dce56da9732bb4304c74a114ae18a2dd4b9451d8ec36f5abd01ef6";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9g25ek"
          ];
          titles = [
            {
              model = "AT91SAM9G25-EK";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9g35ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9g35ek";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9g35ek-squashfs-root.ubi";
              sha256 = "f80ddc6798dce56da9732bb4304c74a114ae18a2dd4b9451d8ec36f5abd01ef6";
              sha256_unsigned = "f80ddc6798dce56da9732bb4304c74a114ae18a2dd4b9451d8ec36f5abd01ef6";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9g35ek-ext4-root.ubi";
              sha256 = "207565ab6af46d908aaa8f165b5eeee272c356c8a9d530ada08172a217567fba";
              sha256_unsigned = "207565ab6af46d908aaa8f165b5eeee272c356c8a9d530ada08172a217567fba";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9g35ek-ubifs-root.ubi";
              sha256 = "032f3d705b384313414654e062288239ccdf630d55aa42493b7dbd2cec594aaf";
              sha256_unsigned = "032f3d705b384313414654e062288239ccdf630d55aa42493b7dbd2cec594aaf";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9g35ek"
          ];
          titles = [
            {
              model = "AT91SAM9G35-EK";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9m10g45ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9m10g45ek";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9m10g45ek-squashfs-root.ubi";
              sha256 = "f80ddc6798dce56da9732bb4304c74a114ae18a2dd4b9451d8ec36f5abd01ef6";
              sha256_unsigned = "f80ddc6798dce56da9732bb4304c74a114ae18a2dd4b9451d8ec36f5abd01ef6";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9m10g45ek-ubifs-root.ubi";
              sha256 = "032f3d705b384313414654e062288239ccdf630d55aa42493b7dbd2cec594aaf";
              sha256_unsigned = "032f3d705b384313414654e062288239ccdf630d55aa42493b7dbd2cec594aaf";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9m10g45ek-ext4-root.ubi";
              sha256 = "207565ab6af46d908aaa8f165b5eeee272c356c8a9d530ada08172a217567fba";
              sha256_unsigned = "207565ab6af46d908aaa8f165b5eeee272c356c8a9d530ada08172a217567fba";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9m10g45ek"
          ];
          titles = [
            {
              model = "AT91SAM9M10G45-EK";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9x25ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9x25ek";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9x25ek-ext4-sdcard.img.gz";
              sha256 = "8485bc7c719d832304a2b400aa68a4b4ff7add01b0a588475f145d370e0654a4";
              sha256_unsigned = "8485bc7c719d832304a2b400aa68a4b4ff7add01b0a588475f145d370e0654a4";
              type = "sdcard";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9x25ek-ubifs-root.ubi";
              sha256 = "032f3d705b384313414654e062288239ccdf630d55aa42493b7dbd2cec594aaf";
              sha256_unsigned = "032f3d705b384313414654e062288239ccdf630d55aa42493b7dbd2cec594aaf";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9x25ek-squashfs-root.ubi";
              sha256 = "f80ddc6798dce56da9732bb4304c74a114ae18a2dd4b9451d8ec36f5abd01ef6";
              sha256_unsigned = "f80ddc6798dce56da9732bb4304c74a114ae18a2dd4b9451d8ec36f5abd01ef6";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9x25ek-ext4-root.ubi";
              sha256 = "207565ab6af46d908aaa8f165b5eeee272c356c8a9d530ada08172a217567fba";
              sha256_unsigned = "207565ab6af46d908aaa8f165b5eeee272c356c8a9d530ada08172a217567fba";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9x25ek"
          ];
          titles = [
            {
              model = "AT91SAM9X25-EK";
              vendor = "Atmel";
            }
          ];
        };
        atmel_at91sam9x35ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9x35ek";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9x35ek-squashfs-root.ubi";
              sha256 = "f80ddc6798dce56da9732bb4304c74a114ae18a2dd4b9451d8ec36f5abd01ef6";
              sha256_unsigned = "f80ddc6798dce56da9732bb4304c74a114ae18a2dd4b9451d8ec36f5abd01ef6";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9x35ek-ext4-root.ubi";
              sha256 = "207565ab6af46d908aaa8f165b5eeee272c356c8a9d530ada08172a217567fba";
              sha256_unsigned = "207565ab6af46d908aaa8f165b5eeee272c356c8a9d530ada08172a217567fba";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9x35ek-ext4-sdcard.img.gz";
              sha256 = "ba184a2d75f525c1a780ca0fc5d9a6db122ba4deb4a59ab34be2beaba1215cb7";
              sha256_unsigned = "ba184a2d75f525c1a780ca0fc5d9a6db122ba4deb4a59ab34be2beaba1215cb7";
              type = "sdcard";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.1-at91-sam9x-atmel_at91sam9x35ek-ubifs-root.ubi";
              sha256 = "032f3d705b384313414654e062288239ccdf630d55aa42493b7dbd2cec594aaf";
              sha256_unsigned = "032f3d705b384313414654e062288239ccdf630d55aa42493b7dbd2cec594aaf";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,at91sam9x35ek"
          ];
          titles = [
            {
              model = "AT91SAM9X35-EK";
              vendor = "Atmel";
            }
          ];
        };
        calamp_lmu5000 = {
          device_packages = [
            "kmod-rtc-pcf2123"
            "kmod-usb-acm"
            "kmod-usb-serial-option"
            "kmod-usb-serial-sierrawireless"
            "kmod-pinctrl-mcp23s08-spi"
          ];
          image_prefix = "immortalwrt-24.10.1-at91-sam9x-calamp_lmu5000";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-at91-sam9x-calamp_lmu5000-squashfs-factory.bin";
              sha256 = "0931808e9be296327d182733b5554dee5630a9a18fad23815c4c4d48abf3df33";
              sha256_unsigned = "0931808e9be296327d182733b5554dee5630a9a18fad23815c4c4d48abf3df33";
              type = "factory";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.1-at91-sam9x-calamp_lmu5000-ubifs-factory.bin";
              sha256 = "9d71f17a2cbdc717ba6207df4b7e61ead34fafc125a166e2d3a4afa08eda8f01";
              sha256_unsigned = "9d71f17a2cbdc717ba6207df4b7e61ead34fafc125a166e2d3a4afa08eda8f01";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sam9x-calamp_lmu5000-ext4-factory.bin";
              sha256 = "654b527a410b7fcff203c4f38cae22c61fc44a004f19b1bc82fd4b8587b25cd0";
              sha256_unsigned = "654b527a410b7fcff203c4f38cae22c61fc44a004f19b1bc82fd4b8587b25cd0";
              type = "factory";
            }
          ];
          supported_devices = [
            "calamp,lmu5000"
          ];
          titles = [
            {
              model = "LMU5000";
              vendor = "CalAmp";
            }
          ];
        };
        calao_tny-a9260 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-at91-sam9x-calao_tny-a9260";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-at91-sam9x-calao_tny-a9260-squashfs-factory.bin";
              sha256 = "30bf53628e712080443f17c73a430490e83094e2b51923253981c91d4f3ade7f";
              sha256_unsigned = "30bf53628e712080443f17c73a430490e83094e2b51923253981c91d4f3ade7f";
              type = "factory";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.1-at91-sam9x-calao_tny-a9260-ubifs-factory.bin";
              sha256 = "0ab384bded62b4109bd96d3cd9f2449ae65fcaa1f185be3e3bf149275ac6b256";
              sha256_unsigned = "0ab384bded62b4109bd96d3cd9f2449ae65fcaa1f185be3e3bf149275ac6b256";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sam9x-calao_tny-a9260-ext4-factory.bin";
              sha256 = "071b224d1301b73f6c6e64b6ea48aef58d1c56804d7fffa6c56959ff005f5653";
              sha256_unsigned = "071b224d1301b73f6c6e64b6ea48aef58d1c56804d7fffa6c56959ff005f5653";
              type = "factory";
            }
          ];
          supported_devices = [
            "calao,tny-a9260"
          ];
          titles = [
            {
              model = "TNY A9260";
              vendor = "Calao";
            }
          ];
        };
        calao_tny-a9263 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-at91-sam9x-calao_tny-a9263";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sam9x-calao_tny-a9263-ext4-factory.bin";
              sha256 = "68efa58225e33aaaf65333bbe743ce286daae0cc55db43a97aa932bb591b8c06";
              sha256_unsigned = "68efa58225e33aaaf65333bbe743ce286daae0cc55db43a97aa932bb591b8c06";
              type = "factory";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.1-at91-sam9x-calao_tny-a9263-ubifs-factory.bin";
              sha256 = "e367130b02eeee53044269591b78ad35fc57ce8966d960f44d4e13d371352c6f";
              sha256_unsigned = "e367130b02eeee53044269591b78ad35fc57ce8966d960f44d4e13d371352c6f";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-at91-sam9x-calao_tny-a9263-squashfs-factory.bin";
              sha256 = "8ebff12e14e4264fa829e47636a1d3706a86b720046115716c203828119e583a";
              sha256_unsigned = "8ebff12e14e4264fa829e47636a1d3706a86b720046115716c203828119e583a";
              type = "factory";
            }
          ];
          supported_devices = [
            "atmel,tny-a9263"
          ];
          titles = [
            {
              model = "TNY A9263";
              vendor = "Calao";
            }
          ];
        };
        calao_tny-a9g20 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-at91-sam9x-calao_tny-a9g20";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sam9x-calao_tny-a9g20-ext4-factory.bin";
              sha256 = "a9d533f039b15b3ae6369e69adbc658a6954ec37ca0707aae169d7e8de5fdd05";
              sha256_unsigned = "a9d533f039b15b3ae6369e69adbc658a6954ec37ca0707aae169d7e8de5fdd05";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-at91-sam9x-calao_tny-a9g20-squashfs-factory.bin";
              sha256 = "1268b71c6ae0e156b1a9003c6f37f0dbc206f8f07d7575f211419cea7d1520e6";
              sha256_unsigned = "1268b71c6ae0e156b1a9003c6f37f0dbc206f8f07d7575f211419cea7d1520e6";
              type = "factory";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.1-at91-sam9x-calao_tny-a9g20-ubifs-factory.bin";
              sha256 = "41dbb61e1eb5c06e3ca27c18696562d298ef09c7657396f2402e8d5edbcc2791";
              sha256_unsigned = "41dbb61e1eb5c06e3ca27c18696562d298ef09c7657396f2402e8d5edbcc2791";
              type = "factory";
            }
          ];
          supported_devices = [
            "calao,tny-a9g20"
          ];
          titles = [
            {
              model = "TNY A9G20";
              vendor = "Calao";
            }
          ];
        };
        calao_usb-a9260 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-at91-sam9x-calao_usb-a9260";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sam9x-calao_usb-a9260-ext4-factory.bin";
              sha256 = "66e91e58bdd1b9003d45391bb028077bf0bb7b48bd91072517fb52f4fc6e8336";
              sha256_unsigned = "66e91e58bdd1b9003d45391bb028077bf0bb7b48bd91072517fb52f4fc6e8336";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-at91-sam9x-calao_usb-a9260-squashfs-factory.bin";
              sha256 = "2126b8dacb4c0a17a1124e443ed1b9f7d22f034e1df7071ac1ef5f6de07d1f01";
              sha256_unsigned = "2126b8dacb4c0a17a1124e443ed1b9f7d22f034e1df7071ac1ef5f6de07d1f01";
              type = "factory";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.1-at91-sam9x-calao_usb-a9260-ubifs-factory.bin";
              sha256 = "89125b90dcf09abb295d96cfd393a80ce569ccbf5dc475733dfe49338e8e4167";
              sha256_unsigned = "89125b90dcf09abb295d96cfd393a80ce569ccbf5dc475733dfe49338e8e4167";
              type = "factory";
            }
          ];
          supported_devices = [
            "calao,usb-a9260"
          ];
          titles = [
            {
              model = "USB A9260";
              vendor = "Calao";
            }
          ];
        };
        calao_usb-a9263 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-at91-sam9x-calao_usb-a9263";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-at91-sam9x-calao_usb-a9263-squashfs-factory.bin";
              sha256 = "ed08262748cc5e59cb255ba9783eb736c198b5a0393e459a102c2af7e35aad7c";
              sha256_unsigned = "ed08262748cc5e59cb255ba9783eb736c198b5a0393e459a102c2af7e35aad7c";
              type = "factory";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.1-at91-sam9x-calao_usb-a9263-ubifs-factory.bin";
              sha256 = "00da27d8edd5676c13e13f104ed8ee93aa24fcf08c6f73c6d9b48cef5dd6cae5";
              sha256_unsigned = "00da27d8edd5676c13e13f104ed8ee93aa24fcf08c6f73c6d9b48cef5dd6cae5";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sam9x-calao_usb-a9263-ext4-factory.bin";
              sha256 = "186d7e9bc94cf2adee2f33ffc0b1854de0a26ae376368952426acd22b27afd39";
              sha256_unsigned = "186d7e9bc94cf2adee2f33ffc0b1854de0a26ae376368952426acd22b27afd39";
              type = "factory";
            }
          ];
          supported_devices = [
            "atmel,usb-a9263"
          ];
          titles = [
            {
              model = "USB A9263";
              vendor = "Calao";
            }
          ];
        };
        calao_usb-a9g20 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-at91-sam9x-calao_usb-a9g20";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-at91-sam9x-calao_usb-a9g20-squashfs-factory.bin";
              sha256 = "f81e6b1491f9e602dd824291f6aee666d61f6ca8e160e99f3e66c61c55a5f537";
              sha256_unsigned = "f81e6b1491f9e602dd824291f6aee666d61f6ca8e160e99f3e66c61c55a5f537";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sam9x-calao_usb-a9g20-ext4-factory.bin";
              sha256 = "4ba5bebaf9a6fe07baeb6cb2b7fe3478fcedf74618ce8dcc0c2886e7c4675286";
              sha256_unsigned = "4ba5bebaf9a6fe07baeb6cb2b7fe3478fcedf74618ce8dcc0c2886e7c4675286";
              type = "factory";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.1-at91-sam9x-calao_usb-a9g20-ubifs-factory.bin";
              sha256 = "8a485967c0dfa4214f8edef440fd316b7c3705732e94d50b134cfbb3d6ff923e";
              sha256_unsigned = "8a485967c0dfa4214f8edef440fd316b7c3705732e94d50b134cfbb3d6ff923e";
              type = "factory";
            }
          ];
          supported_devices = [
            "calao,usb-a9g20"
          ];
          titles = [
            {
              model = "USB A9G20";
              vendor = "Calao";
            }
          ];
        };
        egnite_ethernut5 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-at91-sam9x-egnite_ethernut5";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-at91-sam9x-egnite_ethernut5-squashfs-root.ubi";
              sha256 = "1b4059302d520b901becc57dbd17efee12fe2867ef25304aac50fd239fda671b";
              sha256_unsigned = "1b4059302d520b901becc57dbd17efee12fe2867ef25304aac50fd239fda671b";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sam9x-egnite_ethernut5-ext4-root.ubi";
              sha256 = "b2845c7af783de1e2b70c20966877e9a4bdfefdc6ff0c19c8185239e05d3934a";
              sha256_unsigned = "b2845c7af783de1e2b70c20966877e9a4bdfefdc6ff0c19c8185239e05d3934a";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.1-at91-sam9x-egnite_ethernut5-ubifs-root.ubi";
              sha256 = "3fc09e7969e16c91ff6335378ea8fb045fb5ed93ca8a4bcaeb633ca38a8f30d8";
              sha256_unsigned = "3fc09e7969e16c91ff6335378ea8fb045fb5ed93ca8a4bcaeb633ca38a8f30d8";
              type = "root";
            }
          ];
          supported_devices = [
            "egnite,ethernut5"
          ];
          titles = [
            {
              model = "Ethernut 5";
              vendor = "egnite";
            }
          ];
        };
        laird_wb45n = {
          device_packages = [
            "kmod-mmc-at91"
            "kmod-ath6kl-sdio"
            "ath6k-firmware"
            "kmod-usb-storage"
            "kmod-fs-vfat"
            "kmod-fs-msdos"
            "kmod-leds-gpio"
          ];
          image_prefix = "immortalwrt-24.10.1-at91-sam9x-laird_wb45n";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sam9x-laird_wb45n-ext4-root.ubi";
              sha256 = "c8891b4ee1672df4e6949ebcc59bac48ad166a957dcd5610788aa4621c95a7d9";
              sha256_unsigned = "c8891b4ee1672df4e6949ebcc59bac48ad166a957dcd5610788aa4621c95a7d9";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-at91-sam9x-laird_wb45n-squashfs-root.ubi";
              sha256 = "162e2f486273677744e3f79b45d9df4ceb8e73f93138f98de46bebfbb91860c2";
              sha256_unsigned = "162e2f486273677744e3f79b45d9df4ceb8e73f93138f98de46bebfbb91860c2";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.1-at91-sam9x-laird_wb45n-ubifs-root.ubi";
              sha256 = "b1863f423936743e09293c544313633cfb99c9e5148787d6d6c31b6926fbe6b2";
              sha256_unsigned = "b1863f423936743e09293c544313633cfb99c9e5148787d6d6c31b6926fbe6b2";
              type = "root";
            }
          ];
          supported_devices = [
            "laird,wb45n"
          ];
          titles = [
            {
              model = "WB45N";
              vendor = "Laird";
            }
          ];
        };
        microchip_sam9x60ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-at91-sam9x-microchip_sam9x60ek";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sam9x-microchip_sam9x60ek-ext4-sdcard.img.gz";
              sha256 = "00cc28bc3e535eba5529e09deb7f7ea5d07caebc7d4cb56a469df26d0e7481ea";
              sha256_unsigned = "00cc28bc3e535eba5529e09deb7f7ea5d07caebc7d4cb56a469df26d0e7481ea";
              type = "sdcard";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sam9x-microchip_sam9x60ek-ext4-root.ubi";
              sha256 = "207565ab6af46d908aaa8f165b5eeee272c356c8a9d530ada08172a217567fba";
              sha256_unsigned = "207565ab6af46d908aaa8f165b5eeee272c356c8a9d530ada08172a217567fba";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-at91-sam9x-microchip_sam9x60ek-squashfs-root.ubi";
              sha256 = "f80ddc6798dce56da9732bb4304c74a114ae18a2dd4b9451d8ec36f5abd01ef6";
              sha256_unsigned = "f80ddc6798dce56da9732bb4304c74a114ae18a2dd4b9451d8ec36f5abd01ef6";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.1-at91-sam9x-microchip_sam9x60ek-ubifs-root.ubi";
              sha256 = "032f3d705b384313414654e062288239ccdf630d55aa42493b7dbd2cec594aaf";
              sha256_unsigned = "032f3d705b384313414654e062288239ccdf630d55aa42493b7dbd2cec594aaf";
              type = "root";
            }
          ];
          supported_devices = [
            "microchip,sam9x60ek"
          ];
          titles = [
            {
              model = "SAM9X60-EK";
              vendor = "Microchip";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "at91/sam9x";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
    sama5 = {
      arch_packages = "arm_cortex-a5_vfpv4";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-at91-udc"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-usb-gadget-eth"
        "kmod-usb-ohci"
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
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "9acf934a84ab8357f85d1f9a39bc4369";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        microchip_sama5d2-icp = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-at91-sama5-microchip_sama5d2-icp";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sama5-microchip_sama5d2-icp-ext4-root.ubi";
              sha256 = "b9dd6ec2881028ab2afbd0b879ff2a5b4f293ef85e16a88939221bb46a1500e9";
              sha256_unsigned = "b9dd6ec2881028ab2afbd0b879ff2a5b4f293ef85e16a88939221bb46a1500e9";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.1-at91-sama5-microchip_sama5d2-icp-ubifs-root.ubi";
              sha256 = "7bcafd466d26f880542a1eefec40942921e0c3d5c898aa4f1bb785ce8402d5da";
              sha256_unsigned = "7bcafd466d26f880542a1eefec40942921e0c3d5c898aa4f1bb785ce8402d5da";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-at91-sama5-microchip_sama5d2-icp-squashfs-root.ubi";
              sha256 = "0134bd16f7897f766fcd652cfafa1819509f9b9a9b934a49ce74e2d1dd81da06";
              sha256_unsigned = "0134bd16f7897f766fcd652cfafa1819509f9b9a9b934a49ce74e2d1dd81da06";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sama5-microchip_sama5d2-icp-ext4-sdcard.img.gz";
              sha256 = "49c134422ff14eaa9351ed48117d2a6873c682427b3a9b9d489b7f2d5eb2ca6b";
              sha256_unsigned = "49c134422ff14eaa9351ed48117d2a6873c682427b3a9b9d489b7f2d5eb2ca6b";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "microchip,sama5d2-icp"
          ];
          titles = [
            {
              model = "SAMA5D2 ICP";
              vendor = "Microchip";
            }
          ];
        };
        microchip_sama5d2-ptc-ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-at91-sama5-microchip_sama5d2-ptc-ek";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sama5-microchip_sama5d2-ptc-ek-ext4-sdcard.img.gz";
              sha256 = "7ef1137cef08dd5ddd754d7de490d61174dabee6cc86061c4b3020e62418427c";
              sha256_unsigned = "7ef1137cef08dd5ddd754d7de490d61174dabee6cc86061c4b3020e62418427c";
              type = "sdcard";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sama5-microchip_sama5d2-ptc-ek-ext4-root.ubi";
              sha256 = "b9dd6ec2881028ab2afbd0b879ff2a5b4f293ef85e16a88939221bb46a1500e9";
              sha256_unsigned = "b9dd6ec2881028ab2afbd0b879ff2a5b4f293ef85e16a88939221bb46a1500e9";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.1-at91-sama5-microchip_sama5d2-ptc-ek-ubifs-root.ubi";
              sha256 = "7bcafd466d26f880542a1eefec40942921e0c3d5c898aa4f1bb785ce8402d5da";
              sha256_unsigned = "7bcafd466d26f880542a1eefec40942921e0c3d5c898aa4f1bb785ce8402d5da";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-at91-sama5-microchip_sama5d2-ptc-ek-squashfs-root.ubi";
              sha256 = "0134bd16f7897f766fcd652cfafa1819509f9b9a9b934a49ce74e2d1dd81da06";
              sha256_unsigned = "0134bd16f7897f766fcd652cfafa1819509f9b9a9b934a49ce74e2d1dd81da06";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,sama5d2-ptc_ek"
          ];
          titles = [
            {
              model = "SAMA5D2 PTC Ek";
              vendor = "Microchip";
            }
          ];
        };
        microchip_sama5d2-xplained = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-at91-sama5-microchip_sama5d2-xplained";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-at91-sama5-microchip_sama5d2-xplained-squashfs-root.ubi";
              sha256 = "0134bd16f7897f766fcd652cfafa1819509f9b9a9b934a49ce74e2d1dd81da06";
              sha256_unsigned = "0134bd16f7897f766fcd652cfafa1819509f9b9a9b934a49ce74e2d1dd81da06";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.1-at91-sama5-microchip_sama5d2-xplained-ubifs-root.ubi";
              sha256 = "7bcafd466d26f880542a1eefec40942921e0c3d5c898aa4f1bb785ce8402d5da";
              sha256_unsigned = "7bcafd466d26f880542a1eefec40942921e0c3d5c898aa4f1bb785ce8402d5da";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sama5-microchip_sama5d2-xplained-ext4-root.ubi";
              sha256 = "b9dd6ec2881028ab2afbd0b879ff2a5b4f293ef85e16a88939221bb46a1500e9";
              sha256_unsigned = "b9dd6ec2881028ab2afbd0b879ff2a5b4f293ef85e16a88939221bb46a1500e9";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sama5-microchip_sama5d2-xplained-ext4-sdcard.img.gz";
              sha256 = "240387fc9feb9e69700ca2a8f3eb0379344af8e51c6fed7798305e83aa1a06f6";
              sha256_unsigned = "240387fc9feb9e69700ca2a8f3eb0379344af8e51c6fed7798305e83aa1a06f6";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "atmel,sama5d2-xplained"
          ];
          titles = [
            {
              model = "SAMA5D2 Xplained";
              vendor = "Microchip";
            }
          ];
        };
        microchip_sama5d27-som1-ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-at91-sama5-microchip_sama5d27-som1-ek";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-at91-sama5-microchip_sama5d27-som1-ek-squashfs-root.ubi";
              sha256 = "0134bd16f7897f766fcd652cfafa1819509f9b9a9b934a49ce74e2d1dd81da06";
              sha256_unsigned = "0134bd16f7897f766fcd652cfafa1819509f9b9a9b934a49ce74e2d1dd81da06";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sama5-microchip_sama5d27-som1-ek-ext4-sdcard.img.gz";
              sha256 = "d34b548a62c1f27d323c91d23f14308ff9925469269196f7ed93e042a50a0eb9";
              sha256_unsigned = "d34b548a62c1f27d323c91d23f14308ff9925469269196f7ed93e042a50a0eb9";
              type = "sdcard";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sama5-microchip_sama5d27-som1-ek-ext4-root.ubi";
              sha256 = "b9dd6ec2881028ab2afbd0b879ff2a5b4f293ef85e16a88939221bb46a1500e9";
              sha256_unsigned = "b9dd6ec2881028ab2afbd0b879ff2a5b4f293ef85e16a88939221bb46a1500e9";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.1-at91-sama5-microchip_sama5d27-som1-ek-ubifs-root.ubi";
              sha256 = "7bcafd466d26f880542a1eefec40942921e0c3d5c898aa4f1bb785ce8402d5da";
              sha256_unsigned = "7bcafd466d26f880542a1eefec40942921e0c3d5c898aa4f1bb785ce8402d5da";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,sama5d27-som1-ek"
          ];
          titles = [
            {
              model = "SAMA5D27 SOM1 Ek";
              vendor = "Microchip";
            }
          ];
        };
        microchip_sama5d27-wlsom1-ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-at91-sama5-microchip_sama5d27-wlsom1-ek";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sama5-microchip_sama5d27-wlsom1-ek-ext4-root.ubi";
              sha256 = "b9dd6ec2881028ab2afbd0b879ff2a5b4f293ef85e16a88939221bb46a1500e9";
              sha256_unsigned = "b9dd6ec2881028ab2afbd0b879ff2a5b4f293ef85e16a88939221bb46a1500e9";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.1-at91-sama5-microchip_sama5d27-wlsom1-ek-ubifs-root.ubi";
              sha256 = "7bcafd466d26f880542a1eefec40942921e0c3d5c898aa4f1bb785ce8402d5da";
              sha256_unsigned = "7bcafd466d26f880542a1eefec40942921e0c3d5c898aa4f1bb785ce8402d5da";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sama5-microchip_sama5d27-wlsom1-ek-ext4-sdcard.img.gz";
              sha256 = "457a817f07f0ee87d34de4fa31f35ef6678b5ff57f0401c875731085c6c2ff0b";
              sha256_unsigned = "457a817f07f0ee87d34de4fa31f35ef6678b5ff57f0401c875731085c6c2ff0b";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-at91-sama5-microchip_sama5d27-wlsom1-ek-squashfs-root.ubi";
              sha256 = "0134bd16f7897f766fcd652cfafa1819509f9b9a9b934a49ce74e2d1dd81da06";
              sha256_unsigned = "0134bd16f7897f766fcd652cfafa1819509f9b9a9b934a49ce74e2d1dd81da06";
              type = "root";
            }
          ];
          supported_devices = [
            "microchip,sama5d27-wlsom1-ek"
          ];
          titles = [
            {
              model = "SAMA5D27 WSOM1 Ek";
              vendor = "Microchip";
            }
          ];
        };
        microchip_sama5d3-xplained = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-at91-sama5-microchip_sama5d3-xplained";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-at91-sama5-microchip_sama5d3-xplained-squashfs-root.ubi";
              sha256 = "0134bd16f7897f766fcd652cfafa1819509f9b9a9b934a49ce74e2d1dd81da06";
              sha256_unsigned = "0134bd16f7897f766fcd652cfafa1819509f9b9a9b934a49ce74e2d1dd81da06";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sama5-microchip_sama5d3-xplained-ext4-root.ubi";
              sha256 = "b9dd6ec2881028ab2afbd0b879ff2a5b4f293ef85e16a88939221bb46a1500e9";
              sha256_unsigned = "b9dd6ec2881028ab2afbd0b879ff2a5b4f293ef85e16a88939221bb46a1500e9";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sama5-microchip_sama5d3-xplained-ext4-sdcard.img.gz";
              sha256 = "568af18cae8fc9bcfd1a566c0c31258975dfe0ca8ad314a0f96ea8d04e6e1af2";
              sha256_unsigned = "568af18cae8fc9bcfd1a566c0c31258975dfe0ca8ad314a0f96ea8d04e6e1af2";
              type = "sdcard";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.1-at91-sama5-microchip_sama5d3-xplained-ubifs-root.ubi";
              sha256 = "7bcafd466d26f880542a1eefec40942921e0c3d5c898aa4f1bb785ce8402d5da";
              sha256_unsigned = "7bcafd466d26f880542a1eefec40942921e0c3d5c898aa4f1bb785ce8402d5da";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,sama5d3-xplained"
          ];
          titles = [
            {
              model = "SAMA5D3 Xplained";
              vendor = "Microchip";
            }
          ];
        };
        microchip_sama5d4-xplained = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-at91-sama5-microchip_sama5d4-xplained";
          images = [
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.1-at91-sama5-microchip_sama5d4-xplained-ubifs-root.ubi";
              sha256 = "de928e326f28920cd4c61057748423b619a7ac791873bf35b701f18e7ff25aef";
              sha256_unsigned = "de928e326f28920cd4c61057748423b619a7ac791873bf35b701f18e7ff25aef";
              type = "root";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-at91-sama5-microchip_sama5d4-xplained-squashfs-root.ubi";
              sha256 = "57033e16430bde5f2bdcc1c388385d51b2889a6c79e5850ed05c0721369b31fd";
              sha256_unsigned = "57033e16430bde5f2bdcc1c388385d51b2889a6c79e5850ed05c0721369b31fd";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sama5-microchip_sama5d4-xplained-ext4-sdcard.img.gz";
              sha256 = "6471f97e53fe08d42b0decd256b191319d870724487598633a0b92d74b3a4bc2";
              sha256_unsigned = "6471f97e53fe08d42b0decd256b191319d870724487598633a0b92d74b3a4bc2";
              type = "sdcard";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sama5-microchip_sama5d4-xplained-ext4-root.ubi";
              sha256 = "c4b7c2d96f0403229314bec16c518aeef3b8b45cce35715c063920bad21bfba3";
              sha256_unsigned = "c4b7c2d96f0403229314bec16c518aeef3b8b45cce35715c063920bad21bfba3";
              type = "root";
            }
          ];
          supported_devices = [
            "atmel,sama5d4-xplained"
          ];
          titles = [
            {
              model = "SAMA5D4 Xplained";
              vendor = "Microchip";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "at91/sama5";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
    sama7 = {
      arch_packages = "arm_cortex-a7_vfpv4";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
        "kmod-at91-udc"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-usb-gadget-eth"
        "kmod-usb-ohci"
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
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "c012962afb10bc4af81c4bf5577ea5d1";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        microchip_sama7g5-ek = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-at91-sama7-microchip_sama7g5-ek";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sama7-microchip_sama7g5-ek-ext4-sdcard.img.gz";
              sha256 = "868d1c00d5608e4a80abf21c16ebabf1e8005ac512958649254cc0719dc88663";
              sha256_unsigned = "868d1c00d5608e4a80abf21c16ebabf1e8005ac512958649254cc0719dc88663";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-at91-sama7-microchip_sama7g5-ek-squashfs-root.ubi";
              sha256 = "4964d0ed9739dfe799f0bb9b8aec4729eb84c172e82d3d432edebf9dc8a23324";
              sha256_unsigned = "4964d0ed9739dfe799f0bb9b8aec4729eb84c172e82d3d432edebf9dc8a23324";
              type = "root";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-at91-sama7-microchip_sama7g5-ek-ext4-root.ubi";
              sha256 = "97183120f6aad7e37a440f745fe83cde1ae4e24219fc5f972d85f941190b1cbc";
              sha256_unsigned = "97183120f6aad7e37a440f745fe83cde1ae4e24219fc5f972d85f941190b1cbc";
              type = "root";
            }
            {
              filesystem = "ubifs";
              name = "immortalwrt-24.10.1-at91-sama7-microchip_sama7g5-ek-ubifs-root.ubi";
              sha256 = "2d2d48a7a837bf0b5397f6aa39d757dcb4680911434705dce71d17c20079fbf0";
              sha256_unsigned = "2d2d48a7a837bf0b5397f6aa39d757dcb4680911434705dce71d17c20079fbf0";
              type = "root";
            }
          ];
          supported_devices = [
            "microchip,sama7g5ek"
          ];
          titles = [
            {
              model = "SAMA7G5-EK";
              vendor = "Microchip";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "at91/sama7";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
  };
  ath79 = {
    mikrotik = {
      arch_packages = "mips_24kc";
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
        "yafut"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "73f233590e5bd43c4f974cd8b135332a";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        mikrotik_routerboard-493g = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-493g";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-493g-squashfs-sysupgrade.bin";
              sha256 = "747aa2a36007dbadaabc56a13e06bac1421cb7b5b2672c19742be7feae8a781a";
              sha256_unsigned = "d7ed25c0345b32ebaeea1aff79ccf4aea9de079e6d2fff0b53b051c560f792c2";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-493g-initramfs-kernel.bin";
              sha256 = "2ba0fe24769dfba3068b76968c4102153052302c3b2ea32d56f7f9bb8d93af56";
              sha256_unsigned = "2ba0fe24769dfba3068b76968c4102153052302c3b2ea32d56f7f9bb8d93af56";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-493g"
            "rb-493g"
          ];
          titles = [
            {
              model = "RouterBOARD 493G";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-750-r2 = {
          device_packages = [
            "-yafut"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-750-r2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-750-r2-initramfs-kernel.bin";
              sha256 = "c0c1a1dfb3651d7f1b51f6a38559c41ab3eca20667184f3f9545a8d824d4bb60";
              sha256_unsigned = "c0c1a1dfb3651d7f1b51f6a38559c41ab3eca20667184f3f9545a8d824d4bb60";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-750-r2-squashfs-sysupgrade.bin";
              sha256 = "efee061a56549f90af49697796d200ee4163bffb10298a060c7682ce1b65e96c";
              sha256_unsigned = "3b6fcae6bfe28abb06fedf311f0a4c0a5e4805cb2db814b5f1a5a898b7b6ded8";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-750-r2"
            "rb-750-r2"
          ];
          titles = [
            {
              model = "RouterBOARD 750 r2 (hEX lite)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-911-lite = {
          device_packages = [
            "-yafut"
            "rssileds"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-911-lite";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-911-lite-initramfs-kernel.bin";
              sha256 = "a0afe1ddb95d21353b187ef9bdf78023001ac31506882d3c319ab8058b16e7fc";
              sha256_unsigned = "a0afe1ddb95d21353b187ef9bdf78023001ac31506882d3c319ab8058b16e7fc";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-911-lite-squashfs-sysupgrade.bin";
              sha256 = "3d8ebc0de507019425943ba196a72fc67ab3748e1aeab866af7dc1e6d2a0ad86";
              sha256_unsigned = "3d99a3a5edf835f421cba1cefcbe79e27aa8684b173e626470910845beb6c388";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-911-lite"
            "rb-911-2hn"
            "rb-911-5hn"
          ];
          titles = [
            {
              model = "RouterBOARD 911 Lite2/Lite5 (2Hn/5Hn)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-911g-5hpacd = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-911g-5hpacd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-911g-5hpacd-initramfs-kernel.bin";
              sha256 = "a19a54058dd4472d19af7ef76480d53edafcfe2c09342cb99891b1355eaef318";
              sha256_unsigned = "a19a54058dd4472d19af7ef76480d53edafcfe2c09342cb99891b1355eaef318";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-911g-5hpacd-squashfs-sysupgrade.bin";
              sha256 = "b58a9a1c1b7ade7da541d7a142047d9fe3d3c27c8d16f8752c67edb249b1be89";
              sha256_unsigned = "3acd1eaed469cd2fee0530f2f6a237860fb74ff9a843495558898b1f17ba6990";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-911g-5hpacd"
            "rb-921gs-5hpacd-r2"
          ];
          titles = [
            {
              model = "RouterBOARD 911G-5HPacD";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-911g-xhpnd = {
          device_packages = [
            "rssileds"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-911g-xhpnd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-911g-xhpnd-initramfs-kernel.bin";
              sha256 = "8d06886d64856ca316ad8561bbc11ba551fbb128fba5d461c8d9367c765d04bb";
              sha256_unsigned = "8d06886d64856ca316ad8561bbc11ba551fbb128fba5d461c8d9367c765d04bb";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-911g-xhpnd-squashfs-sysupgrade.bin";
              sha256 = "dab98d406a344b1e71756f39bd2e1f24148019e6274573aa23d4834788ccef89";
              sha256_unsigned = "5af4ddce87406592bfa2b3cb0503435971c028d5395931957d73ad555fb7c558";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-911g-xhpnd"
            "rb-912uag-2hpnd"
          ];
          titles = [
            {
              model = "RouterBOARD 911G-2HPnD";
              vendor = "MikroTik";
            }
            {
              model = "RouterBOARD 911G-5HPnD";
              vendor = "Mikrotik";
            }
          ];
        };
        mikrotik_routerboard-912uag-2hpnd = {
          device_packages = [
            "kmod-usb-ehci"
            "kmod-usb2"
            "rssileds"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-912uag-2hpnd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-912uag-2hpnd-initramfs-kernel.bin";
              sha256 = "8e3022f149f301630d713f1dd08053cd8c99eaa4eac29e9105fae778b18a6978";
              sha256_unsigned = "8e3022f149f301630d713f1dd08053cd8c99eaa4eac29e9105fae778b18a6978";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-912uag-2hpnd-squashfs-sysupgrade.bin";
              sha256 = "cb3a598dfcdc6b0242941741be567d4f774574cc5eb035b28c3e24b9dedac99e";
              sha256_unsigned = "1c907967ec3ba8f868c6e489920f151759da19d624c80f21c1f5c2da4ec23c75";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-912uag-2hpnd"
            "rb-912uag-2hpnd"
          ];
          titles = [
            {
              model = "RouterBOARD 912UAG-2HPnD";
              vendor = "MikroTik";
            }
            {
              model = "RouterBOARD 912UAG-5HPnD";
              vendor = "Mikrotik";
            }
          ];
        };
        mikrotik_routerboard-921gs-5hpacd-15s = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "kmod-i2c-gpio"
            "kmod-sfp"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-921gs-5hpacd-15s";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-921gs-5hpacd-15s-initramfs-kernel.bin";
              sha256 = "117e15fbabdbccca77ffd44068d5cf11607679555ca330215777091e8ecc7f26";
              sha256_unsigned = "117e15fbabdbccca77ffd44068d5cf11607679555ca330215777091e8ecc7f26";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-921gs-5hpacd-15s-squashfs-sysupgrade.bin";
              sha256 = "d68c7c7a4049ce4da11f879813f6ea4a9d81cd8992b78f39dbc027873f6c9ce2";
              sha256_unsigned = "5f1273ec1a195ca47c81ecc83a566192961d79da017c31bba4c19074c7b75440";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-921gs-5hpacd-15s"
            "rb-921gs-5hpacd-r2"
          ];
          titles = [
            {
              model = "RouterBOARD 921GS-5HPacD-15s (mANTBox 15s)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-922uags-5hpacd = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "kmod-usb2"
            "kmod-i2c-gpio"
            "kmod-sfp"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-922uags-5hpacd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-922uags-5hpacd-squashfs-sysupgrade.bin";
              sha256 = "d8f4d254ca5a74bb425baefe32a4558407915581942e7eb3a601a8ac153199d2";
              sha256_unsigned = "a1fc3de2718e2c7d7c7b0a753b8c408bbe447e287b93a4aba23ef8e131b4985a";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-922uags-5hpacd-initramfs-kernel.bin";
              sha256 = "bdf09fb7c2f88df8b0b4aa9742de359e74356fc2bae662f7ccfe2118afd5b9c5";
              sha256_unsigned = "bdf09fb7c2f88df8b0b4aa9742de359e74356fc2bae662f7ccfe2118afd5b9c5";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-922uags-5hpacd"
            "rb-922uags-5hpacd"
          ];
          titles = [
            {
              model = "RouterBOARD 922UAGS-5HPacD";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-951g-2hnd = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-951g-2hnd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-951g-2hnd-initramfs-kernel.bin";
              sha256 = "e80edb66b632d72180e387c5b09443e1a005b548eece5e82ab954fa3c5f61750";
              sha256_unsigned = "e80edb66b632d72180e387c5b09443e1a005b548eece5e82ab954fa3c5f61750";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-951g-2hnd-squashfs-sysupgrade.bin";
              sha256 = "dd68e7214f05988ecece3740c981616e433bfb44ff5bb45e7807b50d2225a06f";
              sha256_unsigned = "252ee57d7e30f62c5336b89ae2657400a6b50540ffb9b8865413958031ed76ad";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-951g-2hnd"
            "rb-951g-2hnd"
          ];
          titles = [
            {
              model = "RouterBOARD 951G-2HnD";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-951ui-2hnd = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-951ui-2hnd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-951ui-2hnd-squashfs-sysupgrade.bin";
              sha256 = "438086b3429731a610fa93ea28b1d9f4fe41ff9ede83fc4078c5f5fb1e745c08";
              sha256_unsigned = "dd1807281991294176c36d3b7445d00dcffb2566f1a32d13577a89cec3688a4d";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-951ui-2hnd-initramfs-kernel.bin";
              sha256 = "68a689d4b937b8acf95bc26817e79786f1a049d34d78e14372d7c61d43cd9dc3";
              sha256_unsigned = "68a689d4b937b8acf95bc26817e79786f1a049d34d78e14372d7c61d43cd9dc3";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-951ui-2hnd"
            "rb-951ui-2hnd"
          ];
          titles = [
            {
              model = "RouterBOARD 951Ui-2HnD";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-951ui-2nd = {
          device_packages = [
            "-yafut"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-951ui-2nd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-951ui-2nd-squashfs-sysupgrade.bin";
              sha256 = "b8399a80bd70c6b63a5e88c57c9684ce876f112aa9aa8dfbb6d05b7d19b7292d";
              sha256_unsigned = "d62566b8c9ec841147d25d86cf879b3f9d8d95485e9a64b9f7188184c41bc27d";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-951ui-2nd-initramfs-kernel.bin";
              sha256 = "3207d1912a530d452dba546ab20cbd44935b6c432ebccef47f0b4c188320e2c8";
              sha256_unsigned = "3207d1912a530d452dba546ab20cbd44935b6c432ebccef47f0b4c188320e2c8";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-951ui-2nd"
            "rb-951ui-2nd"
          ];
          titles = [
            {
              model = "RouterBOARD 951Ui-2nD (hAP)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-952ui-5ac2nd = {
          device_packages = [
            "-yafut"
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca9887-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-952ui-5ac2nd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-952ui-5ac2nd-initramfs-kernel.bin";
              sha256 = "9dd319c0a2b9b3b7238caf3abf831359d3c00dd94cb10ba63541c78d3591b09f";
              sha256_unsigned = "9dd319c0a2b9b3b7238caf3abf831359d3c00dd94cb10ba63541c78d3591b09f";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-952ui-5ac2nd-squashfs-sysupgrade.bin";
              sha256 = "d180b7e613892c27e57e6803bf7597ce0d8d029130640e20fbe459ad6662ffec";
              sha256_unsigned = "e649dc38cb255b0aa79d5b4c513ab2c3f464bcb1979334c9d52accb98d45c838";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-952ui-5ac2nd"
            "rb-952ui-5ac2nd"
          ];
          titles = [
            {
              model = "RouterBOARD 952Ui-5ac2nD (hAP ac lite)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-962uigs-5hact2hnt = {
          device_packages = [
            "-yafut"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "kmod-usb2"
            "kmod-i2c-gpio"
            "kmod-sfp"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-962uigs-5hact2hnt";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-962uigs-5hact2hnt-squashfs-sysupgrade.bin";
              sha256 = "2ace4f2adbbac58e0f3708740d6f6ba2d0a9974c657e4cd3b4af09f3bf6eb1f6";
              sha256_unsigned = "193fcae88b25acc87fb1cd7b9dcbcf141d54f22153653eddc759b949de1ce5ab";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-962uigs-5hact2hnt-initramfs-kernel.bin";
              sha256 = "66ad3dfb9d6ba591f0887046e6d5efa9171bfd9deb76428c2762e2ab7460f187";
              sha256_unsigned = "66ad3dfb9d6ba591f0887046e6d5efa9171bfd9deb76428c2762e2ab7460f187";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-962uigs-5hact2hnt"
            "rb-962uigs-5hact2hnt"
          ];
          titles = [
            {
              model = "RouterBOARD 962UiGS-5HacT2HnT (hAP ac)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-lhg-2nd = {
          device_packages = [
            "-yafut"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-lhg-2nd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-lhg-2nd-initramfs-kernel.bin";
              sha256 = "351ac6e2de588647ee6db5d14b22b755aa009496cf15052121088a315d52ac79";
              sha256_unsigned = "351ac6e2de588647ee6db5d14b22b755aa009496cf15052121088a315d52ac79";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-lhg-2nd-squashfs-sysupgrade.bin";
              sha256 = "36554acd997d96788ac6433353e68ac5e4dbabcc3112ff5db3a3bffafd45abb5";
              sha256_unsigned = "3fe971c9f053a5beaa9b9297e4bbd50dac5870e44a33dca72499ed9ab1260d25";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-lhg-2nd"
          ];
          titles = [
            {
              model = "RouterBOARD LHG 2nD (LHG 2)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-lhg-5nd = {
          device_packages = [
            "-yafut"
            "rssileds"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-lhg-5nd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-lhg-5nd-initramfs-kernel.bin";
              sha256 = "1e30c1f59cbbb87424010079a5e85ca2c21bd056b787165537b940a4355f80a0";
              sha256_unsigned = "1e30c1f59cbbb87424010079a5e85ca2c21bd056b787165537b940a4355f80a0";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-lhg-5nd-squashfs-sysupgrade.bin";
              sha256 = "fb13aefd0ea6cae373aa94fde48c6127b0997356f6034668b8721eea4362bdd6";
              sha256_unsigned = "9d7e8179032377ec740c45be19c80783d9f5e800ed04be115ac6a2f490c864a6";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-lhg-5nd"
          ];
          titles = [
            {
              model = "RouterBOARD LHG 5nD (LHG 5)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-map-2nd = {
          device_packages = [
            "-yafut"
            "kmod-usb2"
            "kmod-ledtrig-gpio"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-map-2nd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-map-2nd-squashfs-sysupgrade.bin";
              sha256 = "6d37a7c64b77941647aae6d711e0e78e0430598ef3c073b856e4b6d1ce9479b0";
              sha256_unsigned = "384c4259078d21b3f8aa140df38c85397978c66ab1bc06bf1ed14c5411809bde";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-map-2nd-initramfs-kernel.bin";
              sha256 = "3be529afb426ee981b4b44e05519aaf2b1b020b22f2e5605229742481d06d668";
              sha256_unsigned = "3be529afb426ee981b4b44e05519aaf2b1b020b22f2e5605229742481d06d668";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-map-2nd"
          ];
          titles = [
            {
              model = "RouterBOARD mAP-2nD (mAP)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-mapl-2nd = {
          device_packages = [
            "-yafut"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-mapl-2nd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-mapl-2nd-squashfs-sysupgrade.bin";
              sha256 = "54e2f8727146ebd7d6f83264922cce20b40a346db3ccb5f15e24bbcb4b0490ad";
              sha256_unsigned = "a15abc63e6027fc388f37d20a286c0170c3a7f6e6f08939b0ad01354985b5bc9";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-mapl-2nd-initramfs-kernel.bin";
              sha256 = "aeefc33c591dc8672b9a35a0e70e49bcf777189af5dd58441dd24f92896edb9f";
              sha256_unsigned = "aeefc33c591dc8672b9a35a0e70e49bcf777189af5dd58441dd24f92896edb9f";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-mapl-2nd"
          ];
          titles = [
            {
              model = "RouterBOARD mAPL-2nD (mAP lite)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-sxt-5nd-r2 = {
          device_packages = [
            "rssileds"
            "kmod-gpio-beeper"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-sxt-5nd-r2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-sxt-5nd-r2-initramfs-kernel.bin";
              sha256 = "002fa0c760458ac13a66a061866bb6fbebcd07bdd6e4f0e0ac5cc702ffb755f6";
              sha256_unsigned = "002fa0c760458ac13a66a061866bb6fbebcd07bdd6e4f0e0ac5cc702ffb755f6";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-sxt-5nd-r2-squashfs-sysupgrade.bin";
              sha256 = "62cad7dc62b6779288bc063ab312774ab54a221af3a21745e067590035e38fce";
              sha256_unsigned = "452d5ca23d53ce5a3c1070472e9cf93220bf77f9e7228e7111a0adb6b7c8b45a";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-sxt-5nd-r2"
            "rb-sxt5n"
          ];
          titles = [
            {
              model = "RouterBOARD SXT 5nD r2 (SXT Lite5)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-wap-2nd = {
          device_packages = [
            "-yafut"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-wap-2nd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-wap-2nd-squashfs-sysupgrade.bin";
              sha256 = "d5fa6e1dce7301f21f2ba66210b17aa313591654bbeac4a8c7a17c6374f1b59b";
              sha256_unsigned = "556907c4ec03e11003bb8909d57b826326dc2c61066bff1184cf88be6ee1be01";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-wap-2nd-initramfs-kernel.bin";
              sha256 = "658a3b9d89b53264407ea5ec79fe0fefd125ad71f4c54ca481b7e71f0eb456a5";
              sha256_unsigned = "658a3b9d89b53264407ea5ec79fe0fefd125ad71f4c54ca481b7e71f0eb456a5";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-wap-2nd"
          ];
          titles = [
            {
              model = "RouterBOARD wAP-2nD (wAP)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-wap-g-5hact2hnd = {
          device_packages = [
            "-yafut"
            "kmod-ath10k-ct-smallbuffers"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-wap-g-5hact2hnd";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-wap-g-5hact2hnd-initramfs-kernel.bin";
              sha256 = "3716a97283d4d8f3f3d270a2a99595663466a9429062c2f5ba9c33770f6625da";
              sha256_unsigned = "3716a97283d4d8f3f3d270a2a99595663466a9429062c2f5ba9c33770f6625da";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-wap-g-5hact2hnd-squashfs-sysupgrade.bin";
              sha256 = "1f3208aec65cd95bf4bba8f1d3256faa4b82d40eda61c03c3936e90d90fc8f9f";
              sha256_unsigned = "f098bb022ea601aa47b6ccb28084386259bcb5b8977f8853b4f8d79b3ee27491";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-wap-g-5hact2hnd"
            "rb-wapg-5hact2hnd"
          ];
          titles = [
            {
              model = "RouterBOARD wAP G-5HacT2HnD (wAP AC)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_routerboard-wapr-2nd = {
          device_packages = [
            "-yafut"
            "kmod-usb2"
            "rssileds"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-wapr-2nd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-wapr-2nd-squashfs-sysupgrade.bin";
              sha256 = "4724ec29a6354ea94b80e7da6f139a2094df8084465eb77d3beea6a5b44cf18e";
              sha256_unsigned = "5925033e4a074215c66d1d47ede39093203fb9b802e295063e83421f200f0dde";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-mikrotik-mikrotik_routerboard-wapr-2nd-initramfs-kernel.bin";
              sha256 = "feaa4cf0da29bb3a5f38ddcf6e1753fa48cebd03bba396721e08718fdbeb4392";
              sha256_unsigned = "feaa4cf0da29bb3a5f38ddcf6e1753fa48cebd03bba396721e08718fdbeb4392";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,routerboard-wapr-2nd"
          ];
          titles = [
            {
              model = "RouterBOARD wAPR-2nD (wAP R)";
              vendor = "MikroTik";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "ath79/mikrotik";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
    nand = {
      arch_packages = "mips_24kc";
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
      linux_kernel = {
        release = "1";
        vermagic = "959b19db21b9c394cb920d869ec86430";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        "8dev_rambutan" = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-nand-8dev_rambutan";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-8dev_rambutan-squashfs-factory.bin";
              sha256 = "2bfb8f37b10d9d237692574ebf9fb43c9b0cf43d5286e913e64c138b4142a200";
              sha256_unsigned = "2bfb8f37b10d9d237692574ebf9fb43c9b0cf43d5286e913e64c138b4142a200";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-nand-8dev_rambutan-initramfs-kernel.bin";
              sha256 = "2fef2b2b3a016f0df8637a554a8273f2d9e897e8b6fe59ebb91207f240e786ed";
              sha256_unsigned = "2fef2b2b3a016f0df8637a554a8273f2d9e897e8b6fe59ebb91207f240e786ed";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-8dev_rambutan-squashfs-sysupgrade.tar";
              sha256 = "28ebc74dd2ca4184e2fa8daf05c973a9cee3fe3404a0f1179c127b2d62f882ec";
              sha256_unsigned = "8ded4afec1eaee6af177724d9f790fda9e068bd51130034dce84073e1506251f";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "8dev,rambutan"
          ];
          titles = [
            {
              model = "Rambutan";
              vendor = "8devices";
            }
          ];
        };
        aerohive_hiveap-121 = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-nand-aerohive_hiveap-121";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-aerohive_hiveap-121-squashfs-factory.bin";
              sha256 = "66bacfca8c5b1ebc41b3d73413ae1d966f216410d41c8f8aed84f340150a2cdc";
              sha256_unsigned = "66bacfca8c5b1ebc41b3d73413ae1d966f216410d41c8f8aed84f340150a2cdc";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-aerohive_hiveap-121-squashfs-sysupgrade.bin";
              sha256 = "2e3f14e456f8909529bac8020c16a9ddf7edea5e4fa9e2cae2abf24ae5cfc6b7";
              sha256_unsigned = "2b968832358974724e8faf55b47a2748bf3ebb6edc4bd52e6e2d25d299329023";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-nand-aerohive_hiveap-121-initramfs-kernel.bin";
              sha256 = "9f9fc346e36c596142d5ebf7f3955d0314770edca102583a887e68471d26ae62";
              sha256_unsigned = "9f9fc346e36c596142d5ebf7f3955d0314770edca102583a887e68471d26ae62";
              type = "kernel";
            }
          ];
          supported_devices = [
            "aerohive,hiveap-121"
            "hiveap-121"
          ];
          titles = [
            {
              model = "HiveAP 121";
              vendor = "Aerohive";
            }
          ];
        };
        domywifi_dw33d = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-storage"
            "kmod-usb-ledtrig-usbport"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-nand-domywifi_dw33d";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-domywifi_dw33d-squashfs-sysupgrade.bin";
              sha256 = "2a29126f78bb539f95312f00e56fd493bd1a80cbdf6011e295895ee3a14dbb47";
              sha256_unsigned = "23503661f0cdf03209c39b7937c16c22cb1a3e00277175e588e22389e69f2bd4";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-nand-domywifi_dw33d-initramfs-kernel.bin";
              sha256 = "85c74b97fbb4a33bf8c9c51a5adc34d43b12dd05b3d287f8b406b50aa3085a50";
              sha256_unsigned = "85c74b97fbb4a33bf8c9c51a5adc34d43b12dd05b3d287f8b406b50aa3085a50";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-domywifi_dw33d-squashfs-factory.bin";
              sha256 = "0d1be0b4026325b768699db5189f66a06a6057c5735c6281adc2b25a9ebca14f";
              sha256_unsigned = "0d1be0b4026325b768699db5189f66a06a6057c5735c6281adc2b25a9ebca14f";
              type = "factory";
            }
          ];
          supported_devices = [
            "domywifi,dw33d"
          ];
          titles = [
            {
              model = "DW33D";
              vendor = "DomyWifi";
            }
          ];
        };
        dongwon_dw02-412h-128m = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-nand-dongwon_dw02-412h-128m";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-nand-dongwon_dw02-412h-128m-initramfs-kernel.bin";
              sha256 = "9c5388b6a81eae0c6ecd3f75208f973dd6133bafe97e9ad16565520a219b2478";
              sha256_unsigned = "9c5388b6a81eae0c6ecd3f75208f973dd6133bafe97e9ad16565520a219b2478";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-dongwon_dw02-412h-128m-squashfs-factory.img";
              sha256 = "4f8b21d57e6fc56cc6a91c36597c25378b37788547c81dcd79c14f5b0dc69df0";
              sha256_unsigned = "4f8b21d57e6fc56cc6a91c36597c25378b37788547c81dcd79c14f5b0dc69df0";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-dongwon_dw02-412h-128m-squashfs-sysupgrade.bin";
              sha256 = "f0275d1a44d04dcfe620138234bd5167be522195e63976f35867c18ce64fa8ed";
              sha256_unsigned = "d96c1d2a5fe08425b7f45334ac3ab4dc71456d0313f9a117e17807a2640da8f9";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "dongwon,dw02-412h-128m"
          ];
          titles = [
            {
              model = "DW02-412H";
              variant = "(128M)";
              vendor = "Dongwon T&I";
            }
            {
              model = "GiGA WiFi home";
              variant = "(128M)";
              vendor = "KT";
            }
          ];
        };
        dongwon_dw02-412h-64m = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-nand-dongwon_dw02-412h-64m";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-dongwon_dw02-412h-64m-squashfs-sysupgrade.bin";
              sha256 = "723dbb6981780031a0898c9ae8b3906a2fb80da506f5ac498b2f8d8384195a7e";
              sha256_unsigned = "f2e6f96a27c75646014d8e816ad98153704ca1733b2820a76709c34b6c5ef71a";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-nand-dongwon_dw02-412h-64m-initramfs-kernel.bin";
              sha256 = "152e02d91d7c5ab449f87dec1444df13d854fa070b4f69e8efa4087d6e64733a";
              sha256_unsigned = "152e02d91d7c5ab449f87dec1444df13d854fa070b4f69e8efa4087d6e64733a";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-dongwon_dw02-412h-64m-squashfs-factory.img";
              sha256 = "b55d917f50b5db83f7bb9011e33369a3fc3646fda352b8eb158aa5bb16a1ad90";
              sha256_unsigned = "b55d917f50b5db83f7bb9011e33369a3fc3646fda352b8eb158aa5bb16a1ad90";
              type = "factory";
            }
          ];
          supported_devices = [
            "dongwon,dw02-412h-64m"
          ];
          titles = [
            {
              model = "DW02-412H";
              variant = "(64M)";
              vendor = "Dongwon T&I";
            }
            {
              model = "GiGA WiFi home";
              variant = "(64M)";
              vendor = "KT";
            }
          ];
        };
        glinet_gl-ar300m-nand = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-nand-glinet_gl-ar300m-nand";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-glinet_gl-ar300m-nand-squashfs-factory.img";
              sha256 = "21b32cb892739310e0ce033c7b3e9721787341fe57cc7fae9b7520e98e46ffff";
              sha256_unsigned = "21b32cb892739310e0ce033c7b3e9721787341fe57cc7fae9b7520e98e46ffff";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-glinet_gl-ar300m-nand-squashfs-sysupgrade.bin";
              sha256 = "b72f5040d523efa183d7dd794efceee79635cd24ddc0a013106b45600cb9b7f8";
              sha256_unsigned = "026be6740d840b54c56528f8dfde07b4e0078d49a7687ac8ade9c0aeaf71e3af";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-nand-glinet_gl-ar300m-nand-initramfs-kernel.bin";
              sha256 = "bcf5a367c61e18e6de46deedebb00209bbe788c21082280451c99661fa7a15eb";
              sha256_unsigned = "bcf5a367c61e18e6de46deedebb00209bbe788c21082280451c99661fa7a15eb";
              type = "kernel";
            }
          ];
          supported_devices = [
            "glinet,gl-ar300m-nand"
            "glinet,gl-ar300m-nor"
          ];
          titles = [
            {
              model = "GL-AR300M";
              variant = "NAND";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-ar300m-nor = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-nand-glinet_gl-ar300m-nor";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-nand-glinet_gl-ar300m-nor-initramfs-kernel.bin";
              sha256 = "1f552d8685bec2dd1bb8b3ad1799ffad167093fc237e1cda09724753298fef1f";
              sha256_unsigned = "1f552d8685bec2dd1bb8b3ad1799ffad167093fc237e1cda09724753298fef1f";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-glinet_gl-ar300m-nor-squashfs-sysupgrade.bin";
              sha256 = "5951283ade3fb111ff1d25980c73860637ecafa1076b7b2d51457b5f42697c26";
              sha256_unsigned = "315f63d1496f3057c8277a8b51688b1d328aaee4a3fb7498a25ec53420dcc3cf";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "glinet,gl-ar300m-nor"
            "glinet,gl-ar300m-nand"
            "gl-ar300m"
          ];
          titles = [
            {
              model = "GL-AR300M";
              variant = "NOR";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-ar750s-nor = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9887-ct"
            "kmod-usb2"
            "kmod-usb-storage"
            "block-mount"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-nand-glinet_gl-ar750s-nor";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-nand-glinet_gl-ar750s-nor-initramfs-kernel.bin";
              sha256 = "65c9c38cdb2b4e4b140cb4f1952ab4c5cb12cbefcd0e59cae59f98cdee331176";
              sha256_unsigned = "65c9c38cdb2b4e4b140cb4f1952ab4c5cb12cbefcd0e59cae59f98cdee331176";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-glinet_gl-ar750s-nor-squashfs-sysupgrade.bin";
              sha256 = "26a5216f6a07f9909dc4966e83e08a4a2eb486514039f10caa27e1836782c6f1";
              sha256_unsigned = "bd511e69df821022d2f93cf6f3676f3296dcf2370ac7da022859a79f70be4304";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "glinet,gl-ar750s-nor"
            "gl-ar750s"
            "glinet,gl-ar750s"
            "glinet,gl-ar750s-nor-nand"
          ];
          titles = [
            {
              model = "GL-AR750S";
              variant = "NOR";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-ar750s-nor-nand = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9887-ct"
            "kmod-usb2"
            "kmod-usb-storage"
            "block-mount"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-nand-glinet_gl-ar750s-nor-nand";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-nand-glinet_gl-ar750s-nor-nand-initramfs-kernel.bin";
              sha256 = "7afc2527be8381fd734daeac3e67287a46bb44c875a81faa92962939453c70e0";
              sha256_unsigned = "7afc2527be8381fd734daeac3e67287a46bb44c875a81faa92962939453c70e0";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-glinet_gl-ar750s-nor-nand-squashfs-sysupgrade.bin";
              sha256 = "bf7c9a4dd13d4c9479b7ab78c755037b9fd6acc754c90aeddc52ca8191c3e1b3";
              sha256_unsigned = "963d7da73e04964976040fb6d8ee7b3864ae6068d9ae6b65da4ae2b0b39714d2";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "glinet,gl-ar750s-nor-nand"
            "glinet,gl-ar750s-nor"
          ];
          titles = [
            {
              model = "GL-AR750S";
              variant = "NOR/NAND";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-e750 = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9887-ct"
            "kmod-usb2"
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "uqmi"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-nand-glinet_gl-e750";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-glinet_gl-e750-squashfs-factory.img";
              sha256 = "c878c64394a36cb534d14b48edf7e066b73728b3e9cae34d392de9818dfc4dd2";
              sha256_unsigned = "c878c64394a36cb534d14b48edf7e066b73728b3e9cae34d392de9818dfc4dd2";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-glinet_gl-e750-squashfs-sysupgrade.bin";
              sha256 = "62bfafe40a7f0ce5d9d48c2c2ad6c6bbe447d1f65a3fd286fb395f4d627566a0";
              sha256_unsigned = "416246a508a313cd5044b9fbed427f67ea7f812c944d22d7aea27ce85c0d95a9";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-nand-glinet_gl-e750-initramfs-kernel.bin";
              sha256 = "9b967a3d0362dda924fa9d018cafc1f5ed19b3c7a52e988c977c9b0331b035d4";
              sha256_unsigned = "9b967a3d0362dda924fa9d018cafc1f5ed19b3c7a52e988c977c9b0331b035d4";
              type = "kernel";
            }
          ];
          supported_devices = [
            "glinet,gl-e750"
            "gl-e750"
          ];
          titles = [
            {
              model = "GL-E750";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-s200-nor = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-serial-ch341"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-nand-glinet_gl-s200-nor";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-nand-glinet_gl-s200-nor-initramfs-kernel.bin";
              sha256 = "d6528ddbf7b20e16f36b0af128bcd2a7abd5c4e388ae4035dc0e7118ee3cb76e";
              sha256_unsigned = "d6528ddbf7b20e16f36b0af128bcd2a7abd5c4e388ae4035dc0e7118ee3cb76e";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-glinet_gl-s200-nor-squashfs-sysupgrade.bin";
              sha256 = "2f7ba284009b3e46b46d05813f3f10f970813d75d66f6e2adecd54e4af304232";
              sha256_unsigned = "03e303ba7ef8c8b49ca777c7b9da9fe82f55f32a955ddb0f6bd3372ce98ec161";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "glinet,gl-s200-nor"
            "gl-s200"
            "glinet,gl-s200"
          ];
          titles = [
            {
              model = "GL-S200";
              variant = "NOR";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-s200-nor-nand = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-serial-ch341"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-nand-glinet_gl-s200-nor-nand";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-glinet_gl-s200-nor-nand-squashfs-factory.img";
              sha256 = "957813c387b99daed07df4f449dd143c8c50d98aea7b38923c38a97e77e9dfc6";
              sha256_unsigned = "957813c387b99daed07df4f449dd143c8c50d98aea7b38923c38a97e77e9dfc6";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-nand-glinet_gl-s200-nor-nand-initramfs-kernel.bin";
              sha256 = "39cd714180fadf406dff322851eabccaf4f609b1aaa356d1cfcf9b2652d9b0ab";
              sha256_unsigned = "39cd714180fadf406dff322851eabccaf4f609b1aaa356d1cfcf9b2652d9b0ab";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-glinet_gl-s200-nor-nand-squashfs-sysupgrade.bin";
              sha256 = "648a81ac21d190d0a6ed2fc7dc538348bc06f268d3eab473d96b20230057102a";
              sha256_unsigned = "e84dceac632ed7250e53e2e9e559190c58b1584731342cfd2ca60f028848b408";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "glinet,gl-s200-nor-nand"
            "gl-s200"
            "glinet,gl-s200"
            "gl-s200"
            "glinet,gl-s200"
          ];
          titles = [
            {
              model = "GL-S200";
              variant = "NOR/NAND";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-x1200-nor = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct-htt"
            "kmod-usb2"
            "kmod-usb-storage"
            "block-mount"
            "kmod-usb-net-qmi-wwan"
            "uqmi"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-nand-glinet_gl-x1200-nor";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-nand-glinet_gl-x1200-nor-initramfs-kernel.bin";
              sha256 = "fe3b8f949ced60fc2c9b052a0797439ab8b1a8c5a348dd60e089e7bbaba56182";
              sha256_unsigned = "fe3b8f949ced60fc2c9b052a0797439ab8b1a8c5a348dd60e089e7bbaba56182";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-glinet_gl-x1200-nor-squashfs-sysupgrade.bin";
              sha256 = "29fddcedbaed624c2243012dc6f937431140be6c134c0327deed4bfc500584b3";
              sha256_unsigned = "5383af1ca851e58e48a5c77d48d475dd5d54eef1a43df735c33464ad1973783d";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "glinet,gl-x1200-nor"
          ];
          titles = [
            {
              model = "GL-X1200";
              variant = "NOR";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-x1200-nor-nand = {
          device_packages = [
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct-htt"
            "kmod-usb2"
            "kmod-usb-storage"
            "block-mount"
            "kmod-usb-net-qmi-wwan"
            "uqmi"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-nand-glinet_gl-x1200-nor-nand";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-nand-glinet_gl-x1200-nor-nand-initramfs-kernel.bin";
              sha256 = "a0e7a7ab0e7a530f6a75e2215b53c7659d91eda9c745225d11973d0dd2fd66ce";
              sha256_unsigned = "a0e7a7ab0e7a530f6a75e2215b53c7659d91eda9c745225d11973d0dd2fd66ce";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-glinet_gl-x1200-nor-nand-squashfs-factory.img";
              sha256 = "615af5470df02ce7d61c8a2753fba1a2ce5fc96356e7a8fc836ab83480e9592c";
              sha256_unsigned = "615af5470df02ce7d61c8a2753fba1a2ce5fc96356e7a8fc836ab83480e9592c";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-glinet_gl-x1200-nor-nand-squashfs-sysupgrade.bin";
              sha256 = "48576334288cfa0d987cc23a129e05c964577c36fd3fef196223eed3ccef601e";
              sha256_unsigned = "08c5febf0afa43857f699c866b32737ea5f93645dcc738e3c4148ea9adfbe999";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "glinet,gl-x1200-nor-nand"
          ];
          titles = [
            {
              model = "GL-X1200";
              variant = "NOR/NAND";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-xe300 = {
          device_packages = [
            "kmod-usb2"
            "block-mount"
            "kmod-usb-serial-ch341"
            "kmod-usb-serial-option"
            "kmod-usb-net-qmi-wwan"
            "uqmi"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-nand-glinet_gl-xe300";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-nand-glinet_gl-xe300-initramfs-kernel.bin";
              sha256 = "885ff34d0a55fbc9d872ebf32958ceb48b589464e1377fc4e3f505ce86054311";
              sha256_unsigned = "885ff34d0a55fbc9d872ebf32958ceb48b589464e1377fc4e3f505ce86054311";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-glinet_gl-xe300-squashfs-sysupgrade.bin";
              sha256 = "a7a1069b6133d6b27f0c6021d6a10889f9531d1e67ef192cab363f2a40fb0552";
              sha256_unsigned = "36d0bca3b58996207c20562609fabed2c1a039ade0b053f3ebebca6da2947496";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-glinet_gl-xe300-squashfs-factory.img";
              sha256 = "02772d9abde2dfec55f6559579139aed9b38b6332300d70c1598402971a3ef42";
              sha256_unsigned = "02772d9abde2dfec55f6559579139aed9b38b6332300d70c1598402971a3ef42";
              type = "factory";
            }
          ];
          supported_devices = [
            "glinet,gl-xe300"
          ];
          titles = [
            {
              model = "GL-XE300";
              vendor = "GL.iNet";
            }
          ];
        };
        linksys_ea4500-v3 = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-nand-linksys_ea4500-v3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-linksys_ea4500-v3-squashfs-factory.img";
              sha256 = "ca06f6dcf4fda7133424347fa6de00f98ba331e39c791819a8211b1b071a9ee7";
              sha256_unsigned = "ca06f6dcf4fda7133424347fa6de00f98ba331e39c791819a8211b1b071a9ee7";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-linksys_ea4500-v3-squashfs-sysupgrade.bin";
              sha256 = "027b100f739543b991f940be626aabcd9065135561445561709ec843473e1b18";
              sha256_unsigned = "5f9cb48861c772073b0b15f591bac8563b286511438158aa70da0e3594f4b4f2";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-nand-linksys_ea4500-v3-initramfs-kernel.bin";
              sha256 = "02078813f65c9bc83b69b8cba5079247792b3e233d8f71c5cb58fbcc41c82efb";
              sha256_unsigned = "02078813f65c9bc83b69b8cba5079247792b3e233d8f71c5cb58fbcc41c82efb";
              type = "kernel";
            }
          ];
          supported_devices = [
            "linksys,ea4500-v3"
          ];
          titles = [
            {
              model = "EA4500";
              variant = "v3";
              vendor = "Linksys";
            }
          ];
        };
        netgear_pgzng1 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-i2c-gpio"
            "kmod-leds-pca955x"
            "kmod-rtc-isl1208"
            "kmod-spi-dev"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-nand-netgear_pgzng1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-netgear_pgzng1-squashfs-sysupgrade.bin";
              sha256 = "00f53652d635fb68ffa18bcf158947efe55d9b905352577975ea930ff6a50e60";
              sha256_unsigned = "951d59ca640423833436d9999980bbd9c571d0713accc69120e0752592bc04b3";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-nand-netgear_pgzng1-initramfs-kernel.bin";
              sha256 = "b42c39c0e2577f2f4806dc7b8b64403537a70049bcf38b73e278d00b25083c3a";
              sha256_unsigned = "b42c39c0e2577f2f4806dc7b8b64403537a70049bcf38b73e278d00b25083c3a";
              type = "kernel";
            }
          ];
          supported_devices = [
            "netgear,pgzng1"
          ];
          titles = [
            {
              model = "PGZNG1";
              vendor = "NETGEAR";
            }
            {
              model = "Pulse Gateway";
              vendor = "ADT";
            }
          ];
        };
        netgear_r6100 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-nand-netgear_r6100";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-netgear_r6100-squashfs-factory.img";
              sha256 = "8c0dc24c0d5f3551d3e0c485aa84a42221efc56af130618814efdd1ee8eb0c48";
              sha256_unsigned = "8c0dc24c0d5f3551d3e0c485aa84a42221efc56af130618814efdd1ee8eb0c48";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-nand-netgear_r6100-initramfs-kernel.bin";
              sha256 = "c2cf711bab1c51e110c86e8bb9c68da544a8c620cb11b5c911e01db7078744b1";
              sha256_unsigned = "c2cf711bab1c51e110c86e8bb9c68da544a8c620cb11b5c911e01db7078744b1";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-netgear_r6100-squashfs-sysupgrade.bin";
              sha256 = "bb26e7735008c5e2ff0dc6aabec4e229cb24efe065606ece39111ecc94bcbabc";
              sha256_unsigned = "8227050fab553ea91f9c507fcef5f8bdf2c67a94c52674cb2bd5b0b5681f8664";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,r6100"
          ];
          titles = [
            {
              model = "R6100";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr3700-v4 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-nand-netgear_wndr3700-v4";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-nand-netgear_wndr3700-v4-initramfs-kernel.bin";
              sha256 = "a73442a380fd3b29cf6d4b91a7a1bae4c4c3281094d4d23c2a350a9454b58639";
              sha256_unsigned = "a73442a380fd3b29cf6d4b91a7a1bae4c4c3281094d4d23c2a350a9454b58639";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-netgear_wndr3700-v4-squashfs-factory.img";
              sha256 = "0e69f40a6624614ff30ec8335978964b00a3a76a9a7fcb6b1f47a29a4f9b2b96";
              sha256_unsigned = "0e69f40a6624614ff30ec8335978964b00a3a76a9a7fcb6b1f47a29a4f9b2b96";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-netgear_wndr3700-v4-squashfs-sysupgrade.bin";
              sha256 = "97478cf418e8c9d43e30b289adecbe9bbc912ab736869e5c8f2c6de476cc761b";
              sha256_unsigned = "d15135032234709513d6d2bb53f4c91774e487bf7a4f9cdb286bdd30f0d906e3";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,wndr3700-v4"
          ];
          titles = [
            {
              model = "WNDR3700";
              variant = "v4";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr4300 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-nand-netgear_wndr4300";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-netgear_wndr4300-squashfs-factory.img";
              sha256 = "cb4d8791991ce3893971f484cbc2390e3e81b3096049886d92aa56998b8be736";
              sha256_unsigned = "cb4d8791991ce3893971f484cbc2390e3e81b3096049886d92aa56998b8be736";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-netgear_wndr4300-squashfs-sysupgrade.bin";
              sha256 = "14ca3014eb7f56e278221025134e78ba0e6571b26e977064697dcae703c1126c";
              sha256_unsigned = "4ff216c6e57d575ed7b389e7370796db99fbde75ff1eea9aeb3502262be6278b";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-nand-netgear_wndr4300-initramfs-kernel.bin";
              sha256 = "c444ba798e946bcbfe1b842a0b4597b3336db9e5f2ea38a0f5ae552f78799efc";
              sha256_unsigned = "c444ba798e946bcbfe1b842a0b4597b3336db9e5f2ea38a0f5ae552f78799efc";
              type = "kernel";
            }
          ];
          supported_devices = [
            "netgear,wndr4300"
          ];
          titles = [
            {
              model = "WNDR4300";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr4300-v2 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-nand-netgear_wndr4300-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-netgear_wndr4300-v2-squashfs-sysupgrade.bin";
              sha256 = "f0714c5d33afb0dbbc97c52b5fff012379d6a8b96e30a45b8bfbcf62078ec348";
              sha256_unsigned = "b4a86690d5b37043d76bb5917664035d8ee89dd0a9e4b46bf2ba80fd1defe558";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-nand-netgear_wndr4300-v2-initramfs-kernel.bin";
              sha256 = "950eb796d7c81d17855227c15b1b072bc3ac098ad9b68822957205535568a093";
              sha256_unsigned = "950eb796d7c81d17855227c15b1b072bc3ac098ad9b68822957205535568a093";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-netgear_wndr4300-v2-squashfs-factory.img";
              sha256 = "8ba3ec367887484ca93d4737dbb278080315eb97d26c10ae854329a64331bc27";
              sha256_unsigned = "8ba3ec367887484ca93d4737dbb278080315eb97d26c10ae854329a64331bc27";
              type = "factory";
            }
          ];
          supported_devices = [
            "netgear,wndr4300-v2"
          ];
          titles = [
            {
              model = "WNDR4300";
              variant = "v2";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr4300sw = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-nand-netgear_wndr4300sw";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-netgear_wndr4300sw-squashfs-sysupgrade.bin";
              sha256 = "23e9852a81b9175a636c277ad089eae8ca909da50959f0cacca32ddbcadacf90";
              sha256_unsigned = "b7ce148bf554789f22a19e2857e6abbab2b9869d97b2dcfa4cbe866222a019b8";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-netgear_wndr4300sw-squashfs-factory.img";
              sha256 = "e53dc3dbc7608f6c11a9b4ac1c185bf05f320c5cb4fee7634ffcdab062e174c7";
              sha256_unsigned = "e53dc3dbc7608f6c11a9b4ac1c185bf05f320c5cb4fee7634ffcdab062e174c7";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-nand-netgear_wndr4300sw-initramfs-kernel.bin";
              sha256 = "54fb6fbf087e39bba9fe7e3d23bf85bc2d9028c82ab79bdb4d9cbc2bb28f12eb";
              sha256_unsigned = "54fb6fbf087e39bba9fe7e3d23bf85bc2d9028c82ab79bdb4d9cbc2bb28f12eb";
              type = "kernel";
            }
          ];
          supported_devices = [
            "netgear,wndr4300sw"
          ];
          titles = [
            {
              model = "WNDR4300SW";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr4300tn = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-nand-netgear_wndr4300tn";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-netgear_wndr4300tn-squashfs-factory.img";
              sha256 = "f60ce6ac189482487b2963d4e98c8093b80a3faffa5f7474e7ae8980eb1ee4d7";
              sha256_unsigned = "f60ce6ac189482487b2963d4e98c8093b80a3faffa5f7474e7ae8980eb1ee4d7";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-nand-netgear_wndr4300tn-initramfs-kernel.bin";
              sha256 = "8d9ca0b2b374210aa7ce39b8d198ed8ac3cf5b4a4a1b6f61e099f80b3fc27d84";
              sha256_unsigned = "8d9ca0b2b374210aa7ce39b8d198ed8ac3cf5b4a4a1b6f61e099f80b3fc27d84";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-netgear_wndr4300tn-squashfs-sysupgrade.bin";
              sha256 = "a084bdf15fd6d7b1d0b97f46007407161cae40209523ad7d340ca5801e4a2226";
              sha256_unsigned = "52eb304f17dd41de886ebf70617daa087b9c6acfd96798263eec5edde959971b";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,wndr4300tn"
          ];
          titles = [
            {
              model = "WNDR4300TN";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr4500-v3 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-nand-netgear_wndr4500-v3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-netgear_wndr4500-v3-squashfs-sysupgrade.bin";
              sha256 = "d566fa0f9710273670a9842be9a8779efe4dfdb051b2ee2d734ce6434df6a669";
              sha256_unsigned = "ad19e9e4cc02cfa1a7db77cb30d53bf01575de68eef12a43df1648f9c83a779e";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-nand-netgear_wndr4500-v3-initramfs-kernel.bin";
              sha256 = "d23b40ac43036a3af806b61d818d67dd5d1076b8baf0d657cac1179f1e41df94";
              sha256_unsigned = "d23b40ac43036a3af806b61d818d67dd5d1076b8baf0d657cac1179f1e41df94";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-netgear_wndr4500-v3-squashfs-factory.img";
              sha256 = "6e2f89eeaacb09667ab6499f400e768da67eeeece146be6266a61cef5f4c7c3e";
              sha256_unsigned = "6e2f89eeaacb09667ab6499f400e768da67eeeece146be6266a61cef5f4c7c3e";
              type = "factory";
            }
          ];
          supported_devices = [
            "netgear,wndr4500-v3"
          ];
          titles = [
            {
              model = "WNDR4500";
              variant = "v3";
              vendor = "NETGEAR";
            }
          ];
        };
        zte_mf281 = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct"
            "kmod-usb-net-rndis"
            "kmod-usb-acm"
            "comgt-ncm"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-nand-zte_mf281";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-zte_mf281-squashfs-sysupgrade.bin";
              sha256 = "fd5478beb1cd24d9e8fc90e17d70ca5a532a3c3e61b3d84a2005ed7f255e43f3";
              sha256_unsigned = "847951bf6f088fe4293dfbe0ae98b3ee6e5139c1906c72c053c4a4e6b9b11945";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-nand-zte_mf281-initramfs-kernel.bin";
              sha256 = "c7ad07acef7866382274c26095cccf1eb259f11e5399e44cfd91e9650e92241c";
              sha256_unsigned = "c7ad07acef7866382274c26095cccf1eb259f11e5399e44cfd91e9650e92241c";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-zte_mf281-squashfs-factory.bin";
              sha256 = "67e7928add986913ad28680c5aabeb0e7bc73ffb1b3dd0f65423701d39f673d6";
              sha256_unsigned = "67e7928add986913ad28680c5aabeb0e7bc73ffb1b3dd0f65423701d39f673d6";
              type = "factory";
            }
          ];
          supported_devices = [
            "zte,mf281"
          ];
          titles = [
            {
              model = "MF281";
              vendor = "ZTE";
            }
          ];
        };
        zte_mf282 = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "uqmi"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-nand-zte_mf282";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-zte_mf282-squashfs-sysupgrade.bin";
              sha256 = "0cabc77d2c07bc0f64e23e2bfd3e703c4b4020edada8f8ca5c37b734b77c13b3";
              sha256_unsigned = "2f812802eb9b15ef64f0468306119bff04d68a63da0073911947aa04713a2dd7";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-nand-zte_mf282-initramfs-kernel.bin";
              sha256 = "adee3fe1653be5f352ba84fb2b90ed88a969c86da889a7989a2fb9b97a94db30";
              sha256_unsigned = "adee3fe1653be5f352ba84fb2b90ed88a969c86da889a7989a2fb9b97a94db30";
              type = "kernel";
            }
          ];
          supported_devices = [
            "zte,mf282"
          ];
          titles = [
            {
              model = "MF282";
              vendor = "ZTE";
            }
          ];
        };
        zte_mf286 = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "ath10k-firmware-qca9888-ct"
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "uqmi"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-nand-zte_mf286";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-nand-zte_mf286-initramfs-kernel.bin";
              sha256 = "0eab0d54028f57ee2e932e2f741f48b5632c32f1e5df6ca64632f966e9784d4e";
              sha256_unsigned = "0eab0d54028f57ee2e932e2f741f48b5632c32f1e5df6ca64632f966e9784d4e";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-zte_mf286-squashfs-sysupgrade.bin";
              sha256 = "d508f82aed7973b709b182d13ef68c8d8199023b01e23c1ff6f77863a245ca98";
              sha256_unsigned = "58399eb4c55ec6848ad0305f9a2c3079da3b0c8062effd563aa1ae4deffe7dc7";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "zte,mf286"
          ];
          titles = [
            {
              model = "MF286";
              vendor = "ZTE";
            }
          ];
        };
        zte_mf286a = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct"
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "uqmi"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-nand-zte_mf286a";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-zte_mf286a-squashfs-sysupgrade.bin";
              sha256 = "bf36671a7850f763a8a1d745b30a788398a896edc750b7ff24f00bcdae98d1d2";
              sha256_unsigned = "01b43719bd424e657cce7d4eb49b4dc055130765217ebbe55e0d2c66d72347bb";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-nand-zte_mf286a-initramfs-kernel.bin";
              sha256 = "a412cb855bc8b3022bac4fd747f813208b549c446126a13845554fc60084eb06";
              sha256_unsigned = "a412cb855bc8b3022bac4fd747f813208b549c446126a13845554fc60084eb06";
              type = "kernel";
            }
          ];
          supported_devices = [
            "zte,mf286a"
          ];
          titles = [
            {
              model = "MF286A";
              vendor = "ZTE";
            }
          ];
        };
        zte_mf286r = {
          device_packages = [
            "kmod-usb2"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca9888-ct"
            "kmod-usb-net-rndis"
            "kmod-usb-acm"
            "comgt-ncm"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-nand-zte_mf286r";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-zte_mf286r-squashfs-sysupgrade.bin";
              sha256 = "cd70506056be05385609620864af74aaccdf9feb8d9f4991f6b48b6d20162a93";
              sha256_unsigned = "09f9f0e808db57ce4f9b1d0ffd5508ed264c28e3b3780707eadc18ec0453c49c";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-nand-zte_mf286r-initramfs-kernel.bin";
              sha256 = "022590d8cbd717aae4b99249ca2005bb23c46b60572bcb88abac2b4c284f86d0";
              sha256_unsigned = "022590d8cbd717aae4b99249ca2005bb23c46b60572bcb88abac2b4c284f86d0";
              type = "kernel";
            }
          ];
          supported_devices = [
            "zte,mf286r"
          ];
          titles = [
            {
              model = "MF286R";
              vendor = "ZTE";
            }
          ];
        };
        zyxel_emg2926_q10a = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-nand-zyxel_emg2926_q10a";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-zyxel_emg2926_q10a-squashfs-sysupgrade-4M-Kernel.bin";
              sha256 = "4e2cec395d7232e367278958cf7dc3fac78f3861a092a1c327022b7667a4a7d5";
              sha256_unsigned = "4e2cec395d7232e367278958cf7dc3fac78f3861a092a1c327022b7667a4a7d5";
              type = "sysupgrade-4M-Kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-zyxel_emg2926_q10a-squashfs-factory.bin";
              sha256 = "9d851e8adc08eb8efe8b51b443ef03896eb327b8ddd8306891f6b8a5ab9cd2ce";
              sha256_unsigned = "9d851e8adc08eb8efe8b51b443ef03896eb327b8ddd8306891f6b8a5ab9cd2ce";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-zyxel_emg2926_q10a-squashfs-sysupgrade.tar";
              sha256 = "af444ede1dba9317f179a6f022f06e20bcd2167091ac473bb4b3323a6432da9b";
              sha256_unsigned = "e6a4da7fddc4fa04b899d6b7096c5e05e88d4e5e992a271680ea35f6422fdc3b";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-nand-zyxel_emg2926_q10a-initramfs-kernel.bin";
              sha256 = "872603456d34a9389283867e6fbd1c1e41e6d4348f6355889115dc9714973163";
              sha256_unsigned = "872603456d34a9389283867e6fbd1c1e41e6d4348f6355889115dc9714973163";
              type = "kernel";
            }
          ];
          supported_devices = [
            "zyxel,emg2926,q10a"
          ];
          titles = [
            {
              model = "EMG2926-Q10A";
              vendor = "Zyxel";
            }
          ];
        };
        zyxel_nbg6716 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-nand-zyxel_nbg6716";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-nand-zyxel_nbg6716-initramfs-kernel.bin";
              sha256 = "29d067a47eb5879e47368d82e09a4e811ea57b9c3dd10dc00f75ca35808b1120";
              sha256_unsigned = "29d067a47eb5879e47368d82e09a4e811ea57b9c3dd10dc00f75ca35808b1120";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-zyxel_nbg6716-squashfs-sysupgrade-4M-Kernel.bin";
              sha256 = "ac10c9595c463e870860858d374119fd077ee224e6f2825edcc018c8caac7485";
              sha256_unsigned = "ac10c9595c463e870860858d374119fd077ee224e6f2825edcc018c8caac7485";
              type = "sysupgrade-4M-Kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-zyxel_nbg6716-squashfs-sysupgrade.tar";
              sha256 = "df17c7a7ed211f2c4c939818c35392207ed8ad1e3279da48678ab2a42c096237";
              sha256_unsigned = "a5159180726dfc5345972e433d0b7adaf9c4c028110aca597ef30f7827a82953";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-nand-zyxel_nbg6716-squashfs-factory.bin";
              sha256 = "3eb8fa7420a8de762dea479f46e71e4589a4ce5611fc8356440ec86b54372b90";
              sha256_unsigned = "3eb8fa7420a8de762dea479f46e71e4589a4ce5611fc8356440ec86b54372b90";
              type = "factory";
            }
          ];
          supported_devices = [
            "zyxel,nbg6716"
          ];
          titles = [
            {
              model = "NBG6716";
              vendor = "Zyxel";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "ath79/nand";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
    tiny = {
      arch_packages = "mips_24kc";
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
        "mtd"
        "netifd"
        "nftables"
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "ppp"
        "ppp-mod-pppoe"
        "swconfig"
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
        "wpad-basic-openssl"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "2134f5766b3798419244fa0a3df73ec1";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        dlink_dap-1720-a1 = {
          device_packages = [
            "-swconfig"
            "ath10k-firmware-qca988x-ct"
            "kmod-ath10k-ct-smallbuffers"
            "rssileds"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-tiny-dlink_dap-1720-a1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-tiny-dlink_dap-1720-a1-squashfs-factory.bin";
              sha256 = "c9e805feeca4736cd4162be9cfd803a20fc59f50c511d4df88d1deba24ff9ed5";
              sha256_unsigned = "c9e805feeca4736cd4162be9cfd803a20fc59f50c511d4df88d1deba24ff9ed5";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-tiny-dlink_dap-1720-a1-squashfs-sysupgrade.bin";
              sha256 = "b3bf5226714e4b29774f5f483c2a5851c8dcff9c54e3c80e6815b9d5afd8e369";
              sha256_unsigned = "7b386a298c7c713791a8d3ec8aafb539c444d2bb7cb415e7440ec7b065409b0c";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-tiny-dlink_dap-1720-a1-initramfs-kernel.bin";
              sha256 = "ed5b9142153e6f77779c31152ee96304ccc034cedacd740c6f4774ba887e52e7";
              sha256_unsigned = "ed5b9142153e6f77779c31152ee96304ccc034cedacd740c6f4774ba887e52e7";
              type = "kernel";
            }
          ];
          supported_devices = [
            "dlink,dap-1720-a1"
          ];
          titles = [
            {
              model = "DAP-1720";
              variant = "A1";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dir-859-a1 = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "kmod-ath10k-ct-smallbuffers"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-tiny-dlink_dir-859-a1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-tiny-dlink_dir-859-a1-squashfs-factory.bin";
              sha256 = "39ac3295739fb42d25022b47257c0e45415a67945a6bbd61d2b80e997ff88d2b";
              sha256_unsigned = "39ac3295739fb42d25022b47257c0e45415a67945a6bbd61d2b80e997ff88d2b";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-tiny-dlink_dir-859-a1-squashfs-sysupgrade.bin";
              sha256 = "b254e1e0b2b3d4ace93143466380fd771dd3c489a158d7ecef64567844cc0891";
              sha256_unsigned = "3967fce2cd007669d88beb1827e82eff65bfc53f91b621ba8c9ec2816b3065a1";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-tiny-dlink_dir-859-a1-initramfs-kernel.bin";
              sha256 = "c3e4014a1881534654b066d7675aa18469f759359deb53d8ed95789275ba3bb9";
              sha256_unsigned = "c3e4014a1881534654b066d7675aa18469f759359deb53d8ed95789275ba3bb9";
              type = "kernel";
            }
          ];
          supported_devices = [
            "dlink,dir-859-a1"
          ];
          titles = [
            {
              model = "DIR-859";
              variant = "A1";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dir-859-a3 = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "kmod-ath10k-ct-smallbuffers"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-tiny-dlink_dir-859-a3";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-tiny-dlink_dir-859-a3-initramfs-kernel.bin";
              sha256 = "f65278c85d63c295df4853318d38807a59fda95928673f1ebb50eaa50418ff74";
              sha256_unsigned = "f65278c85d63c295df4853318d38807a59fda95928673f1ebb50eaa50418ff74";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-tiny-dlink_dir-859-a3-squashfs-factory.bin";
              sha256 = "d81ac2789032eeeaa211d1bfb6ef6c67037a29d60e5b0d97efcc305a281eda84";
              sha256_unsigned = "d81ac2789032eeeaa211d1bfb6ef6c67037a29d60e5b0d97efcc305a281eda84";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-tiny-dlink_dir-859-a3-squashfs-sysupgrade.bin";
              sha256 = "79259bbcacf1713970cf9e5c109617b579c3693079a5e433fd6cc0a752da81bd";
              sha256_unsigned = "643f411d9eae8c0f46c43e5741777d20d7fc8b4ad46e0b95069c43d5a70cc8f8";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "dlink,dir-859-a3"
          ];
          titles = [
            {
              model = "DIR-859";
              variant = "A3";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dir-869-a1 = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "kmod-ath10k-ct-smallbuffers"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-tiny-dlink_dir-869-a1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-tiny-dlink_dir-869-a1-squashfs-factory.bin";
              sha256 = "116db7eca70d8ce4e9c7c4b1c8737c4ac53f5e0e30dc2ca100c476d695820fba";
              sha256_unsigned = "116db7eca70d8ce4e9c7c4b1c8737c4ac53f5e0e30dc2ca100c476d695820fba";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-tiny-dlink_dir-869-a1-squashfs-sysupgrade.bin";
              sha256 = "9a66cf33180444443855fd08885b7068f4c741d9e6a493dae85948579cb7228e";
              sha256_unsigned = "fb1035cadff8bfea05362505ef382958bfec6d539b2071ffa8466ae1078c147e";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-tiny-dlink_dir-869-a1-initramfs-kernel.bin";
              sha256 = "79b1169a72b9aa60b9b954fca566b2ce4430d864368824eb4e6cbed8f4fcaaa9";
              sha256_unsigned = "79b1169a72b9aa60b9b954fca566b2ce4430d864368824eb4e6cbed8f4fcaaa9";
              type = "kernel";
            }
          ];
          supported_devices = [
            "dlink,dir-869-a1"
            "dir-869-a1"
          ];
          titles = [
            {
              model = "DIR-869";
              variant = "A1";
              vendor = "D-Link";
            }
          ];
        };
        nec_wg600hp = {
          device_packages = [
            "kmod-usb2"
            "-uboot-envtools"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-tiny-nec_wg600hp";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-tiny-nec_wg600hp-initramfs-kernel.bin";
              sha256 = "68dd0b8e0e73670649e3ef293b4dbdaa49779a6e9e780dab5c94bc2bb7480296";
              sha256_unsigned = "68dd0b8e0e73670649e3ef293b4dbdaa49779a6e9e780dab5c94bc2bb7480296";
              type = "kernel";
            }
            {
              name = "immortalwrt-24.10.1-ath79-tiny-nec_wg600hp-uboot.bin";
              sha256 = "ef4900411a37e6b1ea7e24ddb023b64870f38e76074439d4bc559326431dadf7";
              sha256_unsigned = "ef4900411a37e6b1ea7e24ddb023b64870f38e76074439d4bc559326431dadf7";
              type = "uboot.bin";
            }
            {
              name = "immortalwrt-24.10.1-ath79-tiny-nec_wg600hp-initramfs-factory.bin";
              sha256 = "860b7a2ca1409c439dd860a53de361bdfe8cf7f76e98981374adf3eacc850884";
              sha256_unsigned = "860b7a2ca1409c439dd860a53de361bdfe8cf7f76e98981374adf3eacc850884";
              type = "initramfs-factory.bin";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-tiny-nec_wg600hp-squashfs-sysupgrade.bin";
              sha256 = "3eec91aa09282fcff52fa7ed5431e03508e3c1d8c7f5d1d7d6381d7e5a075edf";
              sha256_unsigned = "0a9559e3a287430273a56d7c896a6c62d9dded5b922a507b3bf270d05a6e1c8a";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "nec,wg600hp"
          ];
          titles = [
            {
              model = "Aterm WG600HP";
              vendor = "NEC";
            }
          ];
        };
        nec_wr8750n = {
          device_packages = [
            "kmod-usb2"
            "-uboot-envtools"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-tiny-nec_wr8750n";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-tiny-nec_wr8750n-initramfs-kernel.bin";
              sha256 = "5b2ff8f6ffb5e5dfc64ec1c696350b1d41f304698c9719fb8b5af8336c62c909";
              sha256_unsigned = "5b2ff8f6ffb5e5dfc64ec1c696350b1d41f304698c9719fb8b5af8336c62c909";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-tiny-nec_wr8750n-squashfs-sysupgrade.bin";
              sha256 = "fab33f928e05d1e3577b3f6e37fc414b67bbf9308e4dcc2de964e340babdc6f1";
              sha256_unsigned = "1c8aa887e905e6cfe6dd7a3ec72bd45869ed4b2315ef5dcd7ea3b0a605814d47";
              type = "sysupgrade";
            }
            {
              name = "immortalwrt-24.10.1-ath79-tiny-nec_wr8750n-uboot.bin";
              sha256 = "ef4900411a37e6b1ea7e24ddb023b64870f38e76074439d4bc559326431dadf7";
              sha256_unsigned = "ef4900411a37e6b1ea7e24ddb023b64870f38e76074439d4bc559326431dadf7";
              type = "uboot.bin";
            }
            {
              name = "immortalwrt-24.10.1-ath79-tiny-nec_wr8750n-initramfs-factory.bin";
              sha256 = "6771958ba6aa62c0c0865a2423a8df497e5b96b9161fc936ff111005b95fd49c";
              sha256_unsigned = "6771958ba6aa62c0c0865a2423a8df497e5b96b9161fc936ff111005b95fd49c";
              type = "initramfs-factory.bin";
            }
          ];
          supported_devices = [
            "nec,wr8750n"
          ];
          titles = [
            {
              model = "Aterm WR8750N";
              vendor = "NEC";
            }
          ];
        };
        nec_wr9500n = {
          device_packages = [
            "kmod-usb2"
            "-uboot-envtools"
          ];
          image_prefix = "immortalwrt-24.10.1-ath79-tiny-nec_wr9500n";
          images = [
            {
              name = "immortalwrt-24.10.1-ath79-tiny-nec_wr9500n-initramfs-factory.bin";
              sha256 = "50dd99609ef1c55708c2330694a988e42c8b7208547df54982e9a0f1408cbd36";
              sha256_unsigned = "50dd99609ef1c55708c2330694a988e42c8b7208547df54982e9a0f1408cbd36";
              type = "initramfs-factory.bin";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ath79-tiny-nec_wr9500n-initramfs-kernel.bin";
              sha256 = "62653a5f4c5fb06568eaaed1a0e44e545e4d7686eb24766b3598e94a5729bdab";
              sha256_unsigned = "62653a5f4c5fb06568eaaed1a0e44e545e4d7686eb24766b3598e94a5729bdab";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ath79-tiny-nec_wr9500n-squashfs-sysupgrade.bin";
              sha256 = "465bbceb67c42d95b83ff8429ca8cba2c93553d56dbcec9b583d59a51638d061";
              sha256_unsigned = "8131dd5004033c5e908ff1b1e3332dcb8c9c6c780d3a079a19405634284591b6";
              type = "sysupgrade";
            }
            {
              name = "immortalwrt-24.10.1-ath79-tiny-nec_wr9500n-uboot.bin";
              sha256 = "ef4900411a37e6b1ea7e24ddb023b64870f38e76074439d4bc559326431dadf7";
              sha256_unsigned = "ef4900411a37e6b1ea7e24ddb023b64870f38e76074439d4bc559326431dadf7";
              type = "uboot.bin";
            }
          ];
          supported_devices = [
            "nec,wr9500n"
          ];
          titles = [
            {
              model = "Aterm WR9500N";
              vendor = "NEC";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "ath79/tiny";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
  };
  bcm27xx = {
    bcm2708 = {
      arch_packages = "arm_arm1176jzf-s_vfp";
      default_packages = [
        "autocore"
        "automount"
        "base-files"
        "bcm27xx-gpu-fw"
        "bcm27xx-utils"
        "block-mount"
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
        "luci-app-cpufreq"
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
        "uci"
        "uclient-fetch"
        "urandom-seed"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "06d7927ad425a1921a08be64ac1e306a";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        rpi = {
          device_packages = [
            "cypress-firmware-43430-sdio"
            "brcmfmac-nvram-43430-sdio"
            "kmod-brcmfmac"
            "wpad-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm27xx-bcm2708-rpi";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm27xx-bcm2708-rpi-squashfs-factory.img.gz";
              sha256 = "070776cd760fa2683aa137e5f6a4169050c959010b7dd151c59075b72b68490a";
              sha256_unsigned = "070776cd760fa2683aa137e5f6a4169050c959010b7dd151c59075b72b68490a";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-bcm27xx-bcm2708-rpi-ext4-sysupgrade.img.gz";
              sha256 = "217bcea82a5662170ffd269efcb80eb8f9d55762caadfee418b2947c56324743";
              sha256_unsigned = "79958438d98271c2d2a5dc7227222cdffe537b7d647671a85f94079b7aa1c1e9";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm27xx-bcm2708-rpi-squashfs-sysupgrade.img.gz";
              sha256 = "21ce35fb01a2bda1e6a6b7294a5186e148869a806852262cb09f4f13e7117c8c";
              sha256_unsigned = "5919707e77b687eef4173af0b47b4e68bc1e384fd7923262fadc8afc6e808f66";
              type = "sysupgrade";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-bcm27xx-bcm2708-rpi-ext4-factory.img.gz";
              sha256 = "e5a5a96e86e38343664fa7134662d484bb7736dcb3a787d9c4abe29f43ec644e";
              sha256_unsigned = "e5a5a96e86e38343664fa7134662d484bb7736dcb3a787d9c4abe29f43ec644e";
              type = "factory";
            }
          ];
          supported_devices = [
            "rpi-a"
            "rpi-a-plus"
            "rpi-b"
            "rpi-b-plus"
            "rpi-cm"
            "rpi-zero"
            "rpi-zero-w"
            "raspberrypi,model-a"
            "raspberrypi,model-a-plus"
            "raspberrypi,model-b"
            "raspberrypi,model-b-plus"
            "raspberrypi,model-b-rev2"
            "raspberrypi,compute-module"
            "raspberrypi,compute-module-1"
            "raspberrypi,model-zero"
            "raspberrypi,model-zero-w"
          ];
          titles = [
            {
              model = "A/A+/B/B+/CM/Zero/ZeroW";
              vendor = "Raspberry Pi";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "bcm27xx/bcm2708";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
    bcm2709 = {
      arch_packages = "arm_cortex-a7_neon-vfpv4";
      default_packages = [
        "autocore"
        "automount"
        "base-files"
        "bcm27xx-gpu-fw"
        "bcm27xx-utils"
        "block-mount"
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
        "luci-app-cpufreq"
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
        "uci"
        "uclient-fetch"
        "urandom-seed"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "becc4887f147477e48a635bca1911c6c";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        rpi-2 = {
          device_packages = [
            "cypress-firmware-43430-sdio"
            "brcmfmac-nvram-43430-sdio"
            "cypress-firmware-43455-sdio"
            "brcmfmac-nvram-43455-sdio"
            "kmod-brcmfmac"
            "wpad-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm27xx-bcm2709-rpi-2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm27xx-bcm2709-rpi-2-squashfs-factory.img.gz";
              sha256 = "1d92ea6d59af6e7dfa6e2e95a7222bd16b604d11f39d30469dd1e367ad4623ab";
              sha256_unsigned = "1d92ea6d59af6e7dfa6e2e95a7222bd16b604d11f39d30469dd1e367ad4623ab";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-bcm27xx-bcm2709-rpi-2-ext4-factory.img.gz";
              sha256 = "0557029276783223586bf13f4e6d28649ecc3dcc214f54b54678351ecbff77e3";
              sha256_unsigned = "0557029276783223586bf13f4e6d28649ecc3dcc214f54b54678351ecbff77e3";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm27xx-bcm2709-rpi-2-squashfs-sysupgrade.img.gz";
              sha256 = "25be52598da58b5bb8e5c840160e85d4541103db98a5b8b72cb30a705be01f29";
              sha256_unsigned = "294dad3b7f5501dd345d47c09e2de1727a3dc44bb9ef772fc2da4551039574ef";
              type = "sysupgrade";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-bcm27xx-bcm2709-rpi-2-ext4-sysupgrade.img.gz";
              sha256 = "38cd9239ddf3ef68d97436f1fe9191b9e6cf669ed4d90fa37afc3b549151b8cc";
              sha256_unsigned = "caf0fd116ff6c1b4b614e9528fc17a7843deb7dd6e1c88414904940f1b7e622a";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "rpi-2-b"
            "rpi-3-a-plus"
            "rpi-3-b"
            "rpi-3-b-plus"
            "rpi-4-b"
            "rpi-400"
            "rpi-cm"
            "rpi-zero-2"
            "rpi-zero-2-w"
            "raspberrypi,2-model-b"
            "raspberrypi,2-model-b-rev2"
            "raspberrypi,3-model-a-plus"
            "raspberrypi,3-model-b"
            "raspberrypi,3-model-b-plus"
            "raspberrypi,3-compute-module"
            "raspberrypi,compute-module-3"
            "raspberrypi,400"
            "raspberrypi,4-compute-module"
            "raspberrypi,4-model-b"
            "raspberrypi,model-zero-2"
            "raspberrypi,model-zero-2-w"
          ];
          titles = [
            {
              model = "2B/2B 1.2";
              variant = "(32bit)";
              vendor = "Raspberry Pi";
            }
            {
              model = "3A+/3B/3B+/CM3/Zero2/Zero2W";
              variant = "(32bit)";
              vendor = "Raspberry Pi";
            }
            {
              model = "4B/400/CM4";
              variant = "(32bit)";
              vendor = "Raspberry Pi";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "bcm27xx/bcm2709";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
    bcm2710 = {
      arch_packages = "aarch64_cortex-a53";
      default_packages = [
        "autocore"
        "automount"
        "base-files"
        "bcm27xx-gpu-fw"
        "bcm27xx-utils"
        "block-mount"
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
        "luci-app-cpufreq"
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
        "uci"
        "uclient-fetch"
        "urandom-seed"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "83d8fdbc1bfe48d8c3a61bca1ed895a7";
        version = "6.6.86";
      };
      metadata_version = 1;
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
          image_prefix = "immortalwrt-24.10.1-bcm27xx-bcm2710-rpi-3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm27xx-bcm2710-rpi-3-squashfs-factory.img.gz";
              sha256 = "d7ea398212df1be48f6a765005df9f29e7aaf55c20aa7084f5154a06d9a226e7";
              sha256_unsigned = "d7ea398212df1be48f6a765005df9f29e7aaf55c20aa7084f5154a06d9a226e7";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm27xx-bcm2710-rpi-3-squashfs-sysupgrade.img.gz";
              sha256 = "97afd19c94500c2f9052455c325cb429e05a19e431070ced4d7ef17cd718d5b2";
              sha256_unsigned = "111f2b158ac790a7d606bbcc7bf5d46271eea2a5aab7f865b57b5b486f62f0bc";
              type = "sysupgrade";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-bcm27xx-bcm2710-rpi-3-ext4-factory.img.gz";
              sha256 = "77588b0668073c8ec3633fcb553911c68e4653346a6090aa80c28a272b395e3a";
              sha256_unsigned = "77588b0668073c8ec3633fcb553911c68e4653346a6090aa80c28a272b395e3a";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-bcm27xx-bcm2710-rpi-3-ext4-sysupgrade.img.gz";
              sha256 = "30cf391b1b96ba0d72b38ccfd41f12c0ba11223bc7726abe71e45e328a746b67";
              sha256_unsigned = "0ec4cc4e7ff7617d069a25af7703546b8d61e849fd0baf99006c6ebf83710501";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "rpi-3-a-plus"
            "rpi-3-b"
            "rpi-3-b-plus"
            "rpi-zero-2"
            "rpi-zero-2-w"
            "raspberrypi,2-model-b-rev2"
            "raspberrypi,3-model-a-plus"
            "raspberrypi,3-model-b"
            "raspberrypi,3-model-b-plus"
            "raspberrypi,3-compute-module"
            "raspberrypi,compute-module-3"
            "raspberrypi,model-zero-2"
            "raspberrypi,model-zero-2-w"
          ];
          titles = [
            {
              model = "3A+/3B/3B+/CM3/Zero2/Zero2W";
              variant = "(64bit)";
              vendor = "Raspberry Pi";
            }
            {
              model = "2B-1.2";
              variant = "(64bit)";
              vendor = "Raspberry Pi";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "bcm27xx/bcm2710";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
    bcm2711 = {
      arch_packages = "aarch64_cortex-a72";
      default_packages = [
        "autocore"
        "automount"
        "base-files"
        "bcm27xx-gpu-fw"
        "bcm27xx-utils"
        "block-mount"
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
        "luci-app-cpufreq"
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
        "uci"
        "uclient-fetch"
        "urandom-seed"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "268841055a577a9c86c972fb93dc2428";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        rpi-4 = {
          device_packages = [
            "cypress-firmware-43455-sdio"
            "brcmfmac-nvram-43455-sdio"
            "kmod-brcmfmac"
            "wpad-openssl"
            "kmod-usb-net-lan78xx"
            "kmod-r8169"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm27xx-bcm2711-rpi-4";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm27xx-bcm2711-rpi-4-squashfs-sysupgrade.img.gz";
              sha256 = "1cac545bdbf3ac73bcd394f3b7c89f8481834efefcd6dd1deddb21aea74f13df";
              sha256_unsigned = "aeb1e41c3770649f440a7b783bdc571ed25775ce07261a91b836b8636671973c";
              type = "sysupgrade";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-bcm27xx-bcm2711-rpi-4-ext4-sysupgrade.img.gz";
              sha256 = "e3996942ab1fdddeeca6e442bbf6628bbb8d85ee060df1b846da56f355d2c869";
              sha256_unsigned = "a2925f41d50f2e849f4df549c3a4d465f23fd9afc205cff0abd53e67da7a7b72";
              type = "sysupgrade";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-bcm27xx-bcm2711-rpi-4-ext4-factory.img.gz";
              sha256 = "25c0b0334ec0795953a724ef3a924c283606dd5c196b50e5ba0a44597f5c7a35";
              sha256_unsigned = "25c0b0334ec0795953a724ef3a924c283606dd5c196b50e5ba0a44597f5c7a35";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm27xx-bcm2711-rpi-4-squashfs-factory.img.gz";
              sha256 = "b934aacff80dc047db52475c84165698956a2c011d2002c976f5b227ab0ae5ef";
              sha256_unsigned = "b934aacff80dc047db52475c84165698956a2c011d2002c976f5b227ab0ae5ef";
              type = "factory";
            }
          ];
          supported_devices = [
            "raspberrypi,400"
            "raspberrypi,4-compute-module"
            "raspberrypi,4-model-b"
          ];
          titles = [
            {
              model = "4B/400/CM4";
              variant = "(64bit)";
              vendor = "Raspberry Pi";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "bcm27xx/bcm2711";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
    bcm2712 = {
      arch_packages = "aarch64_cortex-a76";
      default_packages = [
        "autocore"
        "automount"
        "base-files"
        "bcm27xx-gpu-fw"
        "bcm27xx-utils"
        "block-mount"
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
        "luci-app-cpufreq"
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
        "uci"
        "uclient-fetch"
        "urandom-seed"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "2504652262b04d41c0a23cca7bdc3c4d";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        rpi-5 = {
          device_packages = [
            "cypress-firmware-43455-sdio"
            "brcmfmac-nvram-43455-sdio"
            "kmod-brcmfmac"
            "wpad-openssl"
            "kmod-hwmon-pwmfan"
            "kmod-thermal"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm27xx-bcm2712-rpi-5";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm27xx-bcm2712-rpi-5-squashfs-factory.img.gz";
              sha256 = "c02c25c9070cad85ae7b5bd3e224b97ca0a5e0c5ac7068eb9ff04dda01a1746e";
              sha256_unsigned = "c02c25c9070cad85ae7b5bd3e224b97ca0a5e0c5ac7068eb9ff04dda01a1746e";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-bcm27xx-bcm2712-rpi-5-ext4-sysupgrade.img.gz";
              sha256 = "32717c916e7c730e4f90c5f9b8bc921a7a39ed693f18e089fe87f0b26a406e65";
              sha256_unsigned = "1dc621ef403581b63cd8bbbed0294379059234a28e84f2e9fbad06eb092bf133";
              type = "sysupgrade";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-bcm27xx-bcm2712-rpi-5-ext4-factory.img.gz";
              sha256 = "c9b46de1ab8b882989ba492b3033552d155d57bff4bd7af8cde2d897570d8c1f";
              sha256_unsigned = "c9b46de1ab8b882989ba492b3033552d155d57bff4bd7af8cde2d897570d8c1f";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm27xx-bcm2712-rpi-5-squashfs-sysupgrade.img.gz";
              sha256 = "c512b78f054a908c293a8fd8d44d31f9bef2992433da05cd35e61dba5743113a";
              sha256_unsigned = "6c9a2240a30f6c64dd111e80957c7048e62e7fb236c161d7dc18546dbcd7e709";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "raspberrypi,5-model-b"
          ];
          titles = [
            {
              model = "5";
              vendor = "Raspberry Pi";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "bcm27xx/bcm2712";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
  };
  bcm47xx = {
    generic = {
      arch_packages = "mipsel_mips32";
      default_packages = [
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
        "procd-ujail"
        "swconfig"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
        "wpad-basic-openssl"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "0e074ecab124f5c6127c90c494d9807c";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        linksys_e3000-v1 = {
          device_packages = [
            "kmod-bgmac"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm47xx-generic-linksys_e3000-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm47xx-generic-linksys_e3000-v1-squashfs.bin";
              sha256 = "dda4fabd1bc8a906cc60154453c5802c6237e28649692f2dc439086de44d60a6";
              sha256_unsigned = "dda4fabd1bc8a906cc60154453c5802c6237e28649692f2dc439086de44d60a6";
              type = "bin";
            }
          ];
          supported_devices = [
            "linksys,e3000-v1"
          ];
          titles = [
            {
              model = "E3000";
              variant = "v1";
              vendor = "Linksys";
            }
          ];
        };
        linksys_wrt610n-v1 = {
          device_packages = [
            "kmod-tg3"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm47xx-generic-linksys_wrt610n-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm47xx-generic-linksys_wrt610n-v1-squashfs.bin";
              sha256 = "8f8e2134d77c3036d466a37891e4079f3a9bb47d916a1fa4b7c11846fe39eb0e";
              sha256_unsigned = "8f8e2134d77c3036d466a37891e4079f3a9bb47d916a1fa4b7c11846fe39eb0e";
              type = "bin";
            }
          ];
          supported_devices = [
            "linksys,wrt610n-v1"
          ];
          titles = [
            {
              model = "WRT610N";
              variant = "v1";
              vendor = "Linksys";
            }
          ];
        };
        linksys_wrt610n-v2 = {
          device_packages = [
            "kmod-bgmac"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm47xx-generic-linksys_wrt610n-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm47xx-generic-linksys_wrt610n-v2-squashfs.bin";
              sha256 = "72631a6a67bf80b821749d648f2dafebc729588f0e72e4c0d722355617084502";
              sha256_unsigned = "72631a6a67bf80b821749d648f2dafebc729588f0e72e4c0d722355617084502";
              type = "bin";
            }
          ];
          supported_devices = [
            "linksys,wrt610n-v2"
          ];
          titles = [
            {
              model = "WRT610N";
              variant = "v2";
              vendor = "Linksys";
            }
          ];
        };
        standard = {
          device_packages = [
            "kmod-b44"
            "kmod-bgmac"
            "kmod-tg3"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm47xx-generic-standard";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm47xx-generic-standard-squashfs.trx";
              sha256 = "7e2dd82229e056201e87af1068a7d91641fe97dbe0c9fc8694704ee63e4a9146";
              sha256_unsigned = "7e2dd82229e056201e87af1068a7d91641fe97dbe0c9fc8694704ee63e4a9146";
              type = "trx";
            }
          ];
          supported_devices = [
            "standard"
          ];
          titles = [
            {
              model = "Image with LZMA loader and LZMA compressed kernel";
              vendor = "Generic";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "bcm47xx/generic";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
    legacy = {
      arch_packages = "mipsel_mips32";
      default_packages = [
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
        "swconfig"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
        "wpad-basic-openssl"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "94cad683728f6ffc2a9ff42165ade70a";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        dlink_dwl-3150 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-bcm47xx-legacy-dlink_dwl-3150";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm47xx-legacy-dlink_dwl-3150-squashfs.bin";
              sha256 = "5f2c4f60d9808b4d12eae962bc61998581d993f12a67c82134f5127353fee2c0";
              sha256_unsigned = "5f2c4f60d9808b4d12eae962bc61998581d993f12a67c82134f5127353fee2c0";
              type = "bin";
            }
          ];
          supported_devices = [
            "dlink,dwl-3150"
          ];
          titles = [
            {
              model = "DWL-3150";
              vendor = "D-Link";
            }
          ];
        };
        standard = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-bcm47xx-legacy-standard";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm47xx-legacy-standard-squashfs.trx";
              sha256 = "c7742235514ff5b4149122bd200267eeca3012292dfc84fb3e5791c4fae63d5a";
              sha256_unsigned = "c7742235514ff5b4149122bd200267eeca3012292dfc84fb3e5791c4fae63d5a";
              type = "trx";
            }
          ];
          supported_devices = [
            "standard"
          ];
          titles = [
            {
              model = "Image with LZMA loader and LZMA compressed kernel";
              vendor = "Generic";
            }
          ];
        };
        standard-noloader-gz = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-bcm47xx-legacy-standard-noloader-gz";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm47xx-legacy-standard-noloader-gz-squashfs.trx";
              sha256 = "d467b50455be6c518d0998aed4d44540b982e758796e5238a3aa447af6cf87eb";
              sha256_unsigned = "d467b50455be6c518d0998aed4d44540b982e758796e5238a3aa447af6cf87eb";
              type = "trx";
            }
          ];
          supported_devices = [
            "standard-noloader-gz"
          ];
          titles = [
            {
              model = "Image with gzipped kernel";
              vendor = "Generic";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "bcm47xx/legacy";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
    mips74k = {
      arch_packages = "mipsel_74kc";
      default_packages = [
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
        "procd-ujail"
        "swconfig"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
        "wpad-basic-openssl"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "1d81f6176820bab734015a7873c1397f";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        asus_rt-ac53u = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm47xx-mips74k-asus_rt-ac53u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm47xx-mips74k-asus_rt-ac53u-squashfs.trx";
              sha256 = "30c1bddea3b879c6e3a1b3c1c4b49beeaf152daa2500a0d10e3ae07f6919479c";
              sha256_unsigned = "30c1bddea3b879c6e3a1b3c1c4b49beeaf152daa2500a0d10e3ae07f6919479c";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-ac53u"
          ];
          titles = [
            {
              model = "RT-AC53U";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-n14uhp = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm47xx-mips74k-asus_rt-n14uhp";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm47xx-mips74k-asus_rt-n14uhp-squashfs.trx";
              sha256 = "e5ff3c9c121943b2aa7a95eb21cd3f55a49368e8e5f77e93bcf926a4026aa7d3";
              sha256_unsigned = "e5ff3c9c121943b2aa7a95eb21cd3f55a49368e8e5f77e93bcf926a4026aa7d3";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-n14uhp"
          ];
          titles = [
            {
              model = "RT-N14UHP";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-n15u = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm47xx-mips74k-asus_rt-n15u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm47xx-mips74k-asus_rt-n15u-squashfs.trx";
              sha256 = "b78a0da89b8a5c9a7a2a525b7f197cde1d209cd6bd4db3f2cb0f2ae6123d88aa";
              sha256_unsigned = "b78a0da89b8a5c9a7a2a525b7f197cde1d209cd6bd4db3f2cb0f2ae6123d88aa";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-n15u"
          ];
          titles = [
            {
              model = "RT-N15U";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-n16 = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm47xx-mips74k-asus_rt-n16";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm47xx-mips74k-asus_rt-n16-squashfs.trx";
              sha256 = "994e5e7b723f230b9c5c887638b1b27444182568458071ef04cef277de24ec8d";
              sha256_unsigned = "994e5e7b723f230b9c5c887638b1b27444182568458071ef04cef277de24ec8d";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-n16"
          ];
          titles = [
            {
              model = "RT-N16";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-n66u = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm47xx-mips74k-asus_rt-n66u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm47xx-mips74k-asus_rt-n66u-squashfs.trx";
              sha256 = "4f791296e54e56cda7ab9e50e859a717df0941bedc4dfe6ba1e5d94b36153ca8";
              sha256_unsigned = "4f791296e54e56cda7ab9e50e859a717df0941bedc4dfe6ba1e5d94b36153ca8";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-n66u"
          ];
          titles = [
            {
              model = "RT-N66U";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-n66w = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm47xx-mips74k-asus_rt-n66w";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm47xx-mips74k-asus_rt-n66w-squashfs.trx";
              sha256 = "4f791296e54e56cda7ab9e50e859a717df0941bedc4dfe6ba1e5d94b36153ca8";
              sha256_unsigned = "4f791296e54e56cda7ab9e50e859a717df0941bedc4dfe6ba1e5d94b36153ca8";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-n66w"
          ];
          titles = [
            {
              model = "RT-N66W";
              vendor = "ASUS";
            }
          ];
        };
        linksys_e1550-v1 = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm47xx-mips74k-linksys_e1550-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm47xx-mips74k-linksys_e1550-v1-squashfs.bin";
              sha256 = "9b92ef2c7e2ea92783b96455a1997426652d084ac49384784acc6ccd35dd0764";
              sha256_unsigned = "9b92ef2c7e2ea92783b96455a1997426652d084ac49384784acc6ccd35dd0764";
              type = "bin";
            }
          ];
          supported_devices = [
            "linksys,e1550-v1"
          ];
          titles = [
            {
              model = "E1550";
              variant = "v1";
              vendor = "Linksys";
            }
          ];
        };
        linksys_e2500-v1 = {
          device_packages = [
            "kmod-b43"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm47xx-mips74k-linksys_e2500-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm47xx-mips74k-linksys_e2500-v1-squashfs.bin";
              sha256 = "6a5220caf8cc53b40900fde61d0affce9fae44d7d3cb2ddcd09d2d141fa1cf09";
              sha256_unsigned = "6a5220caf8cc53b40900fde61d0affce9fae44d7d3cb2ddcd09d2d141fa1cf09";
              type = "bin";
            }
          ];
          supported_devices = [
            "linksys,e2500-v1"
          ];
          titles = [
            {
              model = "E2500";
              variant = "v1";
              vendor = "Linksys";
            }
          ];
        };
        linksys_e2500-v2 = {
          device_packages = [
            "kmod-b43"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm47xx-mips74k-linksys_e2500-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm47xx-mips74k-linksys_e2500-v2-squashfs.bin";
              sha256 = "f33fd9b9b9225f343275b10d73296485873a92d31cb13396ed889911f3efd974";
              sha256_unsigned = "f33fd9b9b9225f343275b10d73296485873a92d31cb13396ed889911f3efd974";
              type = "bin";
            }
          ];
          supported_devices = [
            "linksys,e2500-v2"
          ];
          titles = [
            {
              model = "E2500";
              variant = "v2";
              vendor = "Linksys";
            }
          ];
        };
        "linksys_e2500-v2.1" = {
          device_packages = [
            "kmod-b43"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm47xx-mips74k-linksys_e2500-v2.1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm47xx-mips74k-linksys_e2500-v2.1-squashfs.bin";
              sha256 = "198eee46be940f02ce6561a984053001ec72d6d9041311f173fce628abea9808";
              sha256_unsigned = "198eee46be940f02ce6561a984053001ec72d6d9041311f173fce628abea9808";
              type = "bin";
            }
          ];
          supported_devices = [
            "linksys,e2500-v2.1"
          ];
          titles = [
            {
              model = "E2500";
              variant = "v2.1";
              vendor = "Linksys";
            }
          ];
        };
        linksys_e2500-v3 = {
          device_packages = [
            "kmod-b43"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm47xx-mips74k-linksys_e2500-v3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm47xx-mips74k-linksys_e2500-v3-squashfs.bin";
              sha256 = "924fc4ee99041f653d1b1d4028b922dd4eb9acef5609052bb1e7a7f6f41e3ba0";
              sha256_unsigned = "924fc4ee99041f653d1b1d4028b922dd4eb9acef5609052bb1e7a7f6f41e3ba0";
              type = "bin";
            }
          ];
          supported_devices = [
            "linksys,e2500-v3"
          ];
          titles = [
            {
              model = "E2500";
              variant = "v3";
              vendor = "Linksys";
            }
          ];
        };
        linksys_e3200-v1 = {
          device_packages = [
            "kmod-b43"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm47xx-mips74k-linksys_e3200-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm47xx-mips74k-linksys_e3200-v1-squashfs.bin";
              sha256 = "c52970dde6fda94cd1af57cc143b3e10d8f88be5c3839448f1b5a7e5b30926e3";
              sha256_unsigned = "c52970dde6fda94cd1af57cc143b3e10d8f88be5c3839448f1b5a7e5b30926e3";
              type = "bin";
            }
          ];
          supported_devices = [
            "linksys,e3200-v1"
          ];
          titles = [
            {
              model = "E3200";
              variant = "v1";
              vendor = "Linksys";
            }
          ];
        };
        linksys_e4200-v1 = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm47xx-mips74k-linksys_e4200-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm47xx-mips74k-linksys_e4200-v1-squashfs.bin";
              sha256 = "aa466fd2b82e55cd36434977b2b7b85331ff865119f8dc7355355adb956d25c6";
              sha256_unsigned = "aa466fd2b82e55cd36434977b2b7b85331ff865119f8dc7355355adb956d25c6";
              type = "bin";
            }
          ];
          supported_devices = [
            "linksys,e4200-v1"
          ];
          titles = [
            {
              model = "E4200";
              variant = "v1";
              vendor = "Linksys";
            }
          ];
        };
        netgear_r6200-v1 = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm47xx-mips74k-netgear_r6200-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm47xx-mips74k-netgear_r6200-v1-squashfs.chk";
              sha256 = "309b1baaee32107d60024bb61fc30b504794d2b3e2b4ecc20bf5a1460d0f95be";
              sha256_unsigned = "309b1baaee32107d60024bb61fc30b504794d2b3e2b4ecc20bf5a1460d0f95be";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,r6200-v1"
          ];
          titles = [
            {
              model = "R6200";
              variant = "v1";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wn2500rp-v1 = {
          device_packages = [
            "kmod-b43"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm47xx-mips74k-netgear_wn2500rp-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm47xx-mips74k-netgear_wn2500rp-v1-squashfs.chk";
              sha256 = "7efb7c342e03bb2a319edb4b4f1812d7ddb5feceb9d927089be6261c8d4a50b9";
              sha256_unsigned = "7efb7c342e03bb2a319edb4b4f1812d7ddb5feceb9d927089be6261c8d4a50b9";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,wn2500rp-v1"
          ];
          titles = [
            {
              model = "WN2500RP";
              variant = "v1";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr3400-v1 = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm47xx-mips74k-netgear_wndr3400-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm47xx-mips74k-netgear_wndr3400-v1-squashfs.chk";
              sha256 = "fd585302254276eb9093952813989e243f38a4619f1a0e39337ef79ce668c954";
              sha256_unsigned = "fd585302254276eb9093952813989e243f38a4619f1a0e39337ef79ce668c954";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,wndr3400-v1"
          ];
          titles = [
            {
              model = "WNDR3400";
              variant = "v1";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr3400-v2 = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm47xx-mips74k-netgear_wndr3400-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm47xx-mips74k-netgear_wndr3400-v2-squashfs.chk";
              sha256 = "6d3d3e3b5075db051fcfa111a92f968e35175d7a984dfe925509b6bd9be52b05";
              sha256_unsigned = "6d3d3e3b5075db051fcfa111a92f968e35175d7a984dfe925509b6bd9be52b05";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,wndr3400-v2"
          ];
          titles = [
            {
              model = "WNDR3400";
              variant = "v2";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr3400-v3 = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm47xx-mips74k-netgear_wndr3400-v3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm47xx-mips74k-netgear_wndr3400-v3-squashfs.chk";
              sha256 = "93e8223fecff23d8d1fceead5a3f4eb88b0a3d64a2624f3f9f525baba833941f";
              sha256_unsigned = "93e8223fecff23d8d1fceead5a3f4eb88b0a3d64a2624f3f9f525baba833941f";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,wndr3400-v3"
          ];
          titles = [
            {
              model = "WNDR3400";
              variant = "v3";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr3700-v3 = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm47xx-mips74k-netgear_wndr3700-v3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm47xx-mips74k-netgear_wndr3700-v3-squashfs.chk";
              sha256 = "bc7c9b1db26437a73b30c1069f2d34da7526befd674c8207f2dd0bf5c4e8b1ed";
              sha256_unsigned = "bc7c9b1db26437a73b30c1069f2d34da7526befd674c8207f2dd0bf5c4e8b1ed";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,wndr3700-v3"
          ];
          titles = [
            {
              model = "WNDR3700";
              variant = "v3";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wndr4000 = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm47xx-mips74k-netgear_wndr4000";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm47xx-mips74k-netgear_wndr4000-squashfs.chk";
              sha256 = "9189c3d85e9f4d1bedbfa0b1c439f8109ad800929a045a773abe32203bb9bbe2";
              sha256_unsigned = "9189c3d85e9f4d1bedbfa0b1c439f8109ad800929a045a773abe32203bb9bbe2";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,wndr4000"
          ];
          titles = [
            {
              model = "WNDR4000";
              variant = "v1";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wnr3500l-v1 = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm47xx-mips74k-netgear_wnr3500l-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm47xx-mips74k-netgear_wnr3500l-v1-squashfs.chk";
              sha256 = "3eb75a929221cb4c651b1cb5815828a4cc725a1b1b04d071b952ab5e5e4918bc";
              sha256_unsigned = "3eb75a929221cb4c651b1cb5815828a4cc725a1b1b04d071b952ab5e5e4918bc";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,wnr3500l-v1"
          ];
          titles = [
            {
              model = "WNR3500L";
              variant = "v1 (ROW)";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wnr3500l-v1-na = {
          device_packages = [
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm47xx-mips74k-netgear_wnr3500l-v1-na";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm47xx-mips74k-netgear_wnr3500l-v1-na-squashfs.chk";
              sha256 = "705392cd82cd20e8757152995bd34e6afff80f6bcfcc4038d9a928992074874a";
              sha256_unsigned = "705392cd82cd20e8757152995bd34e6afff80f6bcfcc4038d9a928992074874a";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,wnr3500l-v1-na"
          ];
          titles = [
            {
              model = "WNR3500L";
              variant = "v1 (NA)";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wnr3500l-v2 = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm47xx-mips74k-netgear_wnr3500l-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm47xx-mips74k-netgear_wnr3500l-v2-squashfs.chk";
              sha256 = "1a6be1b8f4e0424b9b1f79c886bd6c453d9654f3f34f1f6a25273a7995d81fb0";
              sha256_unsigned = "1a6be1b8f4e0424b9b1f79c886bd6c453d9654f3f34f1f6a25273a7995d81fb0";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,wnr3500l-v2"
          ];
          titles = [
            {
              model = "WNR3500L";
              variant = "v2";
              vendor = "NETGEAR";
            }
          ];
        };
        standard = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-bcm47xx-mips74k-standard";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm47xx-mips74k-standard-squashfs.trx";
              sha256 = "392e8e4375075452b7c5f871b323018516dc6d45a36d3df3736351fa07846659";
              sha256_unsigned = "392e8e4375075452b7c5f871b323018516dc6d45a36d3df3736351fa07846659";
              type = "trx";
            }
          ];
          supported_devices = [
            "standard"
          ];
          titles = [
            {
              model = "Image with LZMA loader and LZMA compressed kernel";
              vendor = "Generic";
            }
          ];
        };
        standard-noloader-nodictionarylzma = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-bcm47xx-mips74k-standard-noloader-nodictionarylzma";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm47xx-mips74k-standard-noloader-nodictionarylzma-squashfs.trx";
              sha256 = "d5088c73efe1595d9a38b1f24b34e83b10811a13eeb8da71b5dbc75685e0f751";
              sha256_unsigned = "d5088c73efe1595d9a38b1f24b34e83b10811a13eeb8da71b5dbc75685e0f751";
              type = "trx";
            }
          ];
          supported_devices = [
            "standard-noloader-nodictionarylzma"
          ];
          titles = [
            {
              model = "Image with LZMA compressed kernel matching CFE decompressor";
              vendor = "Generic";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "bcm47xx/mips74k";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
  };
  bcm53xx = {
    generic = {
      arch_packages = "arm_cortex-a9";
      default_packages = [
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
        "mtd"
        "netifd"
        "nftables"
        "nvram"
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "osafeloader"
        "oseama"
        "otrx"
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "a347cfc1d86603d7a869934e217179ef";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        asus_rt-ac3100 = {
          device_packages = [
            "wpad-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4366b1-pcie"
            "wpad-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4366c0-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm53xx-generic-asus_rt-ac3100";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-asus_rt-ac3100-squashfs.trx";
              sha256 = "ac4975da5de76a975d7f28ce0ae2c75f5f06b0569803b3b04ebae27afd6435b2";
              sha256_unsigned = "ac4975da5de76a975d7f28ce0ae2c75f5f06b0569803b3b04ebae27afd6435b2";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-ac3100"
          ];
          titles = [
            {
              model = "RT-AC3100";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-ac56u = {
          device_packages = [
            "wpad-openssl"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm53xx-generic-asus_rt-ac56u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-asus_rt-ac56u-squashfs.trx";
              sha256 = "28e43c3e390945f744d33cbc6467e18fc062298c32ab54c1163808e91576cd7a";
              sha256_unsigned = "28e43c3e390945f744d33cbc6467e18fc062298c32ab54c1163808e91576cd7a";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-ac56u"
          ];
          titles = [
            {
              model = "RT-AC56U";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-ac68u = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm53xx-generic-asus_rt-ac68u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-asus_rt-ac68u-squashfs.trx";
              sha256 = "6dd83819e30388fa86ccbfdd0175354f9dd27f37d243d1c5966add384d0dd6e6";
              sha256_unsigned = "6dd83819e30388fa86ccbfdd0175354f9dd27f37d243d1c5966add384d0dd6e6";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-ac68u"
          ];
          titles = [
            {
              model = "RT-AC68U";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-ac87u = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm53xx-generic-asus_rt-ac87u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-asus_rt-ac87u-squashfs.trx";
              sha256 = "c38c14740f91a7e3a11b2271a44263cdbc1156933818ba534ee7d23da8fef28e";
              sha256_unsigned = "c38c14740f91a7e3a11b2271a44263cdbc1156933818ba534ee7d23da8fef28e";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-ac87u"
          ];
          titles = [
            {
              model = "RT-AC87U";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-ac88u = {
          device_packages = [
            "wpad-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4366b1-pcie"
            "wpad-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4366c0-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm53xx-generic-asus_rt-ac88u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-asus_rt-ac88u-squashfs.trx";
              sha256 = "26be4195cff07d3eae7f0cee08288f265f2ee881cd7079c3884032083eef699d";
              sha256_unsigned = "26be4195cff07d3eae7f0cee08288f265f2ee881cd7079c3884032083eef699d";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-ac88u"
          ];
          titles = [
            {
              model = "RT-AC88U";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-n18u = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm53xx-generic-asus_rt-n18u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-asus_rt-n18u-squashfs.trx";
              sha256 = "bb8101f16c43c82d099e794bdb723109158ca5dc7592fe97d00cbd499a0d3867";
              sha256_unsigned = "bb8101f16c43c82d099e794bdb723109158ca5dc7592fe97d00cbd499a0d3867";
              type = "trx";
            }
          ];
          supported_devices = [
            "asus,rt-n18u"
          ];
          titles = [
            {
              model = "RT-N18U";
              vendor = "ASUS";
            }
          ];
        };
        buffalo_wxr-1900dhp = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm53xx-generic-buffalo_wxr-1900dhp";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-buffalo_wxr-1900dhp-squashfs.trx";
              sha256 = "7f90730af5cb6e9ea3608fee44d53439cc48ef462741f34d6cffda78826f94e4";
              sha256_unsigned = "7f90730af5cb6e9ea3608fee44d53439cc48ef462741f34d6cffda78826f94e4";
              type = "trx";
            }
          ];
          supported_devices = [
            "buffalo,wxr-1900dhp"
          ];
          titles = [
            {
              model = "WXR-1900DHP";
              vendor = "Buffalo";
            }
          ];
        };
        buffalo_wzr-1750dhp = {
          device_packages = [
            "wpad-openssl"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm53xx-generic-buffalo_wzr-1750dhp";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-buffalo_wzr-1750dhp-squashfs.trx";
              sha256 = "17cc7c1e8b5f3b97aab90dbf9ee38cce104137e111cd0ce65802c76134a12b4f";
              sha256_unsigned = "17cc7c1e8b5f3b97aab90dbf9ee38cce104137e111cd0ce65802c76134a12b4f";
              type = "trx";
            }
          ];
          supported_devices = [
            "buffalo,wzr-1750dhp"
          ];
          titles = [
            {
              model = "WZR-1750DHP";
              vendor = "Buffalo";
            }
          ];
        };
        buffalo_wzr-600dhp2 = {
          device_packages = [
            "wpad-openssl"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm53xx-generic-buffalo_wzr-600dhp2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-buffalo_wzr-600dhp2-squashfs.trx";
              sha256 = "1933b4d407c690ddb811d61bc31a5d4afd2514ed757af59123aad91399fb3cf7";
              sha256_unsigned = "1933b4d407c690ddb811d61bc31a5d4afd2514ed757af59123aad91399fb3cf7";
              type = "trx";
            }
          ];
          supported_devices = [
            "buffalo,wzr-600dhp2"
          ];
          titles = [
            {
              model = "WZR-600DHP2";
              vendor = "Buffalo";
            }
          ];
        };
        buffalo_wzr-900dhp = {
          device_packages = [
            "wpad-openssl"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm53xx-generic-buffalo_wzr-900dhp";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-buffalo_wzr-900dhp-squashfs.factory-DHP2-JP.bin";
              sha256 = "59104df9d15b053e374d755e0392febf8c92ca6956c1a6bd6c0bc3ab80bce7f1";
              sha256_unsigned = "59104df9d15b053e374d755e0392febf8c92ca6956c1a6bd6c0bc3ab80bce7f1";
              type = "factory-DHP2-JP";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-buffalo_wzr-900dhp-squashfs.trx";
              sha256 = "664e7ff87113c5880d91369e6a0f6aad5c8b3726c5bef108185f0ca33d2da00e";
              sha256_unsigned = "664e7ff87113c5880d91369e6a0f6aad5c8b3726c5bef108185f0ca33d2da00e";
              type = "trx";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-buffalo_wzr-900dhp-squashfs.factory-DHP-EU.bin";
              sha256 = "fc819b0b6d2d548885e4657cb3188298f2a15b0ebc3bba002f010d937f7e55a1";
              sha256_unsigned = "fc819b0b6d2d548885e4657cb3188298f2a15b0ebc3bba002f010d937f7e55a1";
              type = "factory-DHP-EU";
            }
          ];
          supported_devices = [
            "buffalo,wzr-900dhp"
          ];
          titles = [
            {
              model = "WZR-900DHP";
              vendor = "Buffalo";
            }
          ];
        };
        dlink_dir-885l = {
          device_packages = [
            "wpad-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4366b1-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm53xx-generic-dlink_dir-885l";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-dlink_dir-885l-squashfs.bin";
              sha256 = "dc1326e0c59d0e05181f8bc6595c8d4da93aa011a80bd2af6db0d1ebf28d3b4e";
              sha256_unsigned = "dc1326e0c59d0e05181f8bc6595c8d4da93aa011a80bd2af6db0d1ebf28d3b4e";
              type = "bin";
            }
          ];
          supported_devices = [
            "dlink,dir-885l"
          ];
          titles = [
            {
              model = "DIR-885L";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dir-890l = {
          device_packages = [
            "wpad-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-43602a1-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm53xx-generic-dlink_dir-890l";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-dlink_dir-890l-squashfs.bin";
              sha256 = "22f45992e552934dc9443a013c10373556ea184e7a3908f4373b80ebd72f849a";
              sha256_unsigned = "22f45992e552934dc9443a013c10373556ea184e7a3908f4373b80ebd72f849a";
              type = "bin";
            }
          ];
          supported_devices = [
            "dlink,dir-890l"
          ];
          titles = [
            {
              model = "DIR-890L";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dwl-8610ap = {
          device_packages = [
            "wpad-openssl"
            "kmod-b43"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm53xx-generic-dlink_dwl-8610ap";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-dlink_dwl-8610ap-squashfs.factory.tar";
              sha256 = "e8166d38e84ef3b9216a7b82e4cfc794c8a58e56fa6931566b3fdf8bbd82f28a";
              sha256_unsigned = "e8166d38e84ef3b9216a7b82e4cfc794c8a58e56fa6931566b3fdf8bbd82f28a";
              type = "factory";
            }
          ];
          supported_devices = [
            "dlink,dwl-8610ap"
          ];
          titles = [
            {
              model = "DWL-8610AP";
              vendor = "D-Link";
            }
          ];
        };
        linksys_ea6300-v1 = {
          device_packages = [
            "wpad-openssl"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm53xx-generic-linksys_ea6300-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-linksys_ea6300-v1-squashfs.trx";
              sha256 = "2ade0675c44aac52214ec781d4deeb1eead5615c9c6e7966127841e641d9bacf";
              sha256_unsigned = "2ade0675c44aac52214ec781d4deeb1eead5615c9c6e7966127841e641d9bacf";
              type = "trx";
            }
          ];
          supported_devices = [
            "linksys,ea6300-v1"
          ];
          titles = [
            {
              model = "EA6300";
              variant = "v1";
              vendor = "Linksys";
            }
          ];
        };
        linksys_ea6500-v2 = {
          device_packages = [
            "wpad-openssl"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm53xx-generic-linksys_ea6500-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-linksys_ea6500-v2-squashfs.trx";
              sha256 = "1b1987a9a3fc68764a9efe9a01761882047f57529924be82ee1e521ec1077316";
              sha256_unsigned = "1b1987a9a3fc68764a9efe9a01761882047f57529924be82ee1e521ec1077316";
              type = "trx";
            }
          ];
          supported_devices = [
            "linksys,ea6500-v2"
          ];
          titles = [
            {
              model = "EA6500";
              variant = "v2";
              vendor = "Linksys";
            }
          ];
        };
        linksys_ea9200 = {
          device_packages = [
            "wpad-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-43602a1-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm53xx-generic-linksys_ea9200";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-linksys_ea9200-squashfs.trx";
              sha256 = "15a06dc1b2bba431ae634980b4884cacec1ab20df9419c9f52b8c4355eff6178";
              sha256_unsigned = "15a06dc1b2bba431ae634980b4884cacec1ab20df9419c9f52b8c4355eff6178";
              type = "trx";
            }
          ];
          supported_devices = [
            "linksys,ea9200"
          ];
          titles = [
            {
              model = "EA9200";
              variant = "v1";
              vendor = "Linksys";
            }
          ];
        };
        linksys_ea9500 = {
          device_packages = [
            "wpad-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4366c0-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm53xx-generic-linksys_ea9500";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-linksys_ea9500-squashfs.trx";
              sha256 = "c63f53c09d6bdbe83bdebfca3dfdc43170320cb7064c3c11db3127bce36b7de5";
              sha256_unsigned = "c63f53c09d6bdbe83bdebfca3dfdc43170320cb7064c3c11db3127bce36b7de5";
              type = "trx";
            }
          ];
          supported_devices = [
            "linksys,ea9500"
          ];
          titles = [
            {
              model = "EA9500";
              vendor = "Linksys";
            }
          ];
        };
        luxul_abr-4500 = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm53xx-generic-luxul_abr-4500";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-luxul_abr-4500-squashfs.lxl";
              sha256 = "987b0f048cea0090b8c85a3308f433ec06794039eded7ebe099f56d6327afc89";
              sha256_unsigned = "987b0f048cea0090b8c85a3308f433ec06794039eded7ebe099f56d6327afc89";
              type = "lxl";
            }
          ];
          supported_devices = [
            "luxul,abr-4500"
          ];
          titles = [
            {
              model = "ABR-4500";
              vendor = "Luxul";
            }
          ];
        };
        luxul_xap-1610 = {
          device_packages = [
            "wpad-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4366c0-pcie"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm53xx-generic-luxul_xap-1610";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-luxul_xap-1610-squashfs.lxl";
              sha256 = "f7f3ace0814a0c9c822a7987bb91ec775527dbab5924afff457cb9f1debddd2b";
              sha256_unsigned = "f7f3ace0814a0c9c822a7987bb91ec775527dbab5924afff457cb9f1debddd2b";
              type = "lxl";
            }
          ];
          supported_devices = [
            "luxul,xap-1610"
          ];
          titles = [
            {
              model = "XAP-1610";
              vendor = "Luxul";
            }
          ];
        };
        luxul_xbr-4500 = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm53xx-generic-luxul_xbr-4500";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-luxul_xbr-4500-squashfs.lxl";
              sha256 = "d77c22e55486c5c3d53f683f39f1e247a44627470bbea4c3823be47de6ead2cc";
              sha256_unsigned = "d77c22e55486c5c3d53f683f39f1e247a44627470bbea4c3823be47de6ead2cc";
              type = "lxl";
            }
          ];
          supported_devices = [
            "luxul,xbr-4500"
          ];
          titles = [
            {
              model = "XBR-4500";
              vendor = "Luxul";
            }
          ];
        };
        luxul_xwr-3150 = {
          device_packages = [
            "wpad-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4366c0-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm53xx-generic-luxul_xwr-3150";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-luxul_xwr-3150-squashfs.lxl";
              sha256 = "93ee09f843e48f28dcb9d502bd116090d4efc012876cd2add64f669dd8ce8597";
              sha256_unsigned = "93ee09f843e48f28dcb9d502bd116090d4efc012876cd2add64f669dd8ce8597";
              type = "lxl";
            }
          ];
          supported_devices = [
            "luxul,xwr-3150"
          ];
          titles = [
            {
              model = "XWR-3150";
              vendor = "Luxul";
            }
          ];
        };
        meraki_mr26 = {
          device_packages = [
            "wpad-openssl"
            "kmod-b43"
            "kmod-hwmon-ina2xx"
            "kmod-leds-uleds"
            "nu801"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm53xx-generic-meraki_mr26";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-meraki_mr26-squashfs.trx";
              sha256 = "e848c3178b02d9cfd9ef8da4990c6ab392db5a3f2d874b4b43711709f6b2c26c";
              sha256_unsigned = "e848c3178b02d9cfd9ef8da4990c6ab392db5a3f2d874b4b43711709f6b2c26c";
              type = "trx";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-meraki_mr26-squashfs.sysupgrade.bin";
              sha256 = "1151b79ba162af0faea747b6bf5c2eb4b5c95dd589beee1a2a5221f457adf773";
              sha256_unsigned = "dc6a43de37a98f46b3e73666177fc096934f73013802570be7887ca6b0565570";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "meraki,mr26"
          ];
          titles = [
            {
              model = "MR26";
              vendor = "Meraki";
            }
          ];
        };
        meraki_mr32 = {
          device_packages = [
            "wpad-openssl"
            "kmod-b43"
            "kmod-leds-pwm"
            "kmod-hwmon-ina2xx"
            "kmod-bluetooth"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm53xx-generic-meraki_mr32";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-meraki_mr32-squashfs.sysupgrade.bin";
              sha256 = "f5501da8418eb4f47ac6ce0c19161766fc2fd5d9961bdefacd0644df7e4967a9";
              sha256_unsigned = "12bb012ee860b42d9a6d5e5dd90054fe3588e78ee9146111ce94d531f2e94316";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-meraki_mr32-squashfs.trx";
              sha256 = "d094d286c8f7429a544c5dca86296f1ba636cc0eef0dbd6f9744f873e108289e";
              sha256_unsigned = "d094d286c8f7429a544c5dca86296f1ba636cc0eef0dbd6f9744f873e108289e";
              type = "trx";
            }
          ];
          supported_devices = [
            "meraki,mr32"
          ];
          titles = [
            {
              model = "MR32";
              vendor = "Meraki";
            }
          ];
        };
        meraki_mx64 = {
          device_packages = [
            "-oseama"
            "kmod-leds-pwm"
            "kmod-usb-ehci"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm53xx-generic-meraki_mx64";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-meraki_mx64-squashfs.sysupgrade.bin";
              sha256 = "d20fac685eac89715177ec41925421ed5c9591eb7e5e4e9be33b1d787daa3411";
              sha256_unsigned = "78267bd5663f6d8d24cfdec548a9a02007b649631e008413c191b6861919597f";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "meraki,mx64"
          ];
          titles = [
            {
              model = "MX64";
              vendor = "Cisco Meraki";
            }
          ];
        };
        meraki_mx64_a0 = {
          device_packages = [
            "-oseama"
            "kmod-leds-pwm"
            "kmod-usb-ehci"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm53xx-generic-meraki_mx64_a0";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-meraki_mx64_a0-squashfs.sysupgrade.bin";
              sha256 = "5ff6933437e8dbb06ea440d05bd87201bd857fe930f2c990072f4177001a1432";
              sha256_unsigned = "394475f690417f33d6b4ad08ca4b596d6321d1e4f2dd1a319e1e1e8490b08445";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "meraki,mx64,a0"
          ];
          titles = [
            {
              model = "MX64";
              variant = "A0";
              vendor = "Cisco Meraki";
            }
          ];
        };
        meraki_mx65 = {
          device_packages = [
            "-oseama"
            "kmod-leds-pwm"
            "kmod-usb-ehci"
            "kmod-usb-ohci"
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm53xx-generic-meraki_mx65";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-meraki_mx65-squashfs.sysupgrade.bin";
              sha256 = "6073464343dfb20d2442255931fbdd68574e13c0345a18c94eab7f30bbde8a6c";
              sha256_unsigned = "58ce9088036c39f1fdea95497576df6e2ff493c0e5ba4541c25fa36eb2b21527";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "meraki,mx65"
          ];
          titles = [
            {
              model = "MX65";
              vendor = "Cisco Meraki";
            }
          ];
        };
        netgear_r6250 = {
          device_packages = [
            "wpad-openssl"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm53xx-generic-netgear_r6250";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-netgear_r6250-squashfs.chk";
              sha256 = "98c500ce66aa4c532531049dc0ba8a3bfe9c92648159caf8999922a4c5861014";
              sha256_unsigned = "98c500ce66aa4c532531049dc0ba8a3bfe9c92648159caf8999922a4c5861014";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,r6250"
          ];
          titles = [
            {
              model = "R6250";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_r6300-v2 = {
          device_packages = [
            "wpad-openssl"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm53xx-generic-netgear_r6300-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-netgear_r6300-v2-squashfs.chk";
              sha256 = "5da12d38d91be4e0f57ab2d1fb1fac40824320d9f005b275282b460edf76d696";
              sha256_unsigned = "5da12d38d91be4e0f57ab2d1fb1fac40824320d9f005b275282b460edf76d696";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,r6300-v2"
          ];
          titles = [
            {
              model = "R6300";
              variant = "v2";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_r7000 = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm53xx-generic-netgear_r7000";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-netgear_r7000-squashfs.chk";
              sha256 = "1ad8d7424f3a5673eddd45c1bcfb2a2c39f00b74a9481c959133767e0460f5f9";
              sha256_unsigned = "1ad8d7424f3a5673eddd45c1bcfb2a2c39f00b74a9481c959133767e0460f5f9";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,r7000"
          ];
          titles = [
            {
              model = "R7000";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_r7900 = {
          device_packages = [
            "wpad-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-43602a1-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm53xx-generic-netgear_r7900";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-netgear_r7900-squashfs.chk";
              sha256 = "4be72a1dde32a347a9bf381697abd422e0628814e85c5b236f0bc833700bc326";
              sha256_unsigned = "4be72a1dde32a347a9bf381697abd422e0628814e85c5b236f0bc833700bc326";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,r7900"
          ];
          titles = [
            {
              model = "R7900";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_r8000 = {
          device_packages = [
            "wpad-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-43602a1-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm53xx-generic-netgear_r8000";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-netgear_r8000-squashfs.chk";
              sha256 = "4b2618243f3fa6415bcf6a4c5c12c7711c7c70ed9e13364a28eb10d0cf55f275";
              sha256_unsigned = "4b2618243f3fa6415bcf6a4c5c12c7711c7c70ed9e13364a28eb10d0cf55f275";
              type = "chk";
            }
          ];
          supported_devices = [
            "netgear,r8000"
          ];
          titles = [
            {
              model = "R8000";
              vendor = "NETGEAR";
            }
          ];
        };
        phicomm_k3 = {
          device_packages = [
            "wpad-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4366c0-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "-brcmfmac-firmware-4366c0-pcie"
            "brcmfmac-firmware-4366c0-pcie-k3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm53xx-generic-phicomm_k3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-phicomm_k3-squashfs.trx";
              sha256 = "18e123dd9fb766a33c133c82d5650cc772cf8b18bb5213f60ce802f7212d601d";
              sha256_unsigned = "18e123dd9fb766a33c133c82d5650cc772cf8b18bb5213f60ce802f7212d601d";
              type = "trx";
            }
          ];
          supported_devices = [
            "phicomm,k3"
          ];
          titles = [
            {
              model = "K3";
              vendor = "PHICOMM";
            }
            {
              model = "QUANTUM DAX";
              vendor = "Wavlink";
            }
            {
              model = "WL-WN538A8";
              vendor = "Wavlink";
            }
          ];
        };
        smartrg_sr400ac = {
          device_packages = [
            "wpad-openssl"
            "kmod-brcmfmac"
            "brcmfmac-firmware-43602a1-pcie"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb3"
            "kmod-phy-bcm-ns-usb3"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm53xx-generic-smartrg_sr400ac";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-smartrg_sr400ac-squashfs.trx";
              sha256 = "59822ffe7c1fbea6e64e63387e5c9b4e62b12661a5efdef206139bf6080be253";
              sha256_unsigned = "59822ffe7c1fbea6e64e63387e5c9b4e62b12661a5efdef206139bf6080be253";
              type = "trx";
            }
          ];
          supported_devices = [
            "smartrg,sr400ac"
          ];
          titles = [
            {
              model = "SR400ac";
              vendor = "SmartRG";
            }
          ];
        };
        tenda_ac9 = {
          device_packages = [
            "wpad-openssl"
            "kmod-b43"
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-phy-bcm-ns-usb2"
            "kmod-usb-ledtrig-usbport"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bcm53xx-generic-tenda_ac9";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bcm53xx-generic-tenda_ac9-squashfs.trx";
              sha256 = "db94fb3446190f77b1e96ecbf578b08d73473e625a3de44af7952f8c41a9882e";
              sha256_unsigned = "db94fb3446190f77b1e96ecbf578b08d73473e625a3de44af7952f8c41a9882e";
              type = "trx";
            }
          ];
          supported_devices = [
            "tenda,ac9"
          ];
          titles = [
            {
              model = "AC9";
              vendor = "Tenda";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "bcm53xx/generic";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
  };
  bmips = {
    bcm6318 = {
      arch_packages = "mips_mips32";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
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
        "mtd"
        "netifd"
        "nftables"
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "7dd9569abfaafe100451deeacd41dcff";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        comtrend_ar-5315u = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-b43"
            "wpad-basic-openssl"
            "broadcom-43217-sprom"
            "kmod-leds-bcm6328"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bmips-bcm6318-comtrend_ar-5315u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6318-comtrend_ar-5315u-squashfs-cfe.bin";
              sha256 = "b6ec864e21a80dae7838fdf605789927ccc3054696d2dc70a34138f92183ce77";
              sha256_unsigned = "b6ec864e21a80dae7838fdf605789927ccc3054696d2dc70a34138f92183ce77";
              type = "cfe";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6318-comtrend_ar-5315u-squashfs-sysupgrade.bin";
              sha256 = "a1db26e666df7b1ef4b0da6bf9ca3301081a79977ac7f9d634410d875ff2ca30";
              sha256_unsigned = "a9933f7d16abc1fbdaf67b3a9672e01a7ea6f8ccad27ed7d109ad5f00ccbaf31";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "comtrend,ar-5315u"
          ];
          titles = [
            {
              model = "AR-5315u";
              vendor = "Comtrend";
            }
          ];
        };
        tp-link_td-w8968-v3 = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-b43"
            "wpad-basic-openssl"
            "broadcom-43217-sprom"
            "kmod-leds-bcm6328"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bmips-bcm6318-tp-link_td-w8968-v3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6318-tp-link_td-w8968-v3-squashfs-sysupgrade.bin";
              sha256 = "2d54bb21c5c988294306a98abfe0b7390a425e788e5bd50ebfed4cb443db4724";
              sha256_unsigned = "6dd5e442df7bcc9b5e4fc7e981013d6da4f72acfeeefa1f74dbd672c882937fa";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6318-tp-link_td-w8968-v3-squashfs-cfe.bin";
              sha256 = "115f53e756a46144210ca7e9d7bd7b9ba21551220ce235f432235ec2b15a10f3";
              sha256_unsigned = "115f53e756a46144210ca7e9d7bd7b9ba21551220ce235f432235ec2b15a10f3";
              type = "cfe";
            }
          ];
          supported_devices = [
            "tp-link,td-w8968-v3"
          ];
          titles = [
            {
              model = "TD-W8968";
              variant = "V3";
              vendor = "TP-Link";
            }
            {
              model = "TD-W8968";
              variant = "V4";
              vendor = "TP-Link";
            }
            {
              model = "TD-W8960N";
              variant = "V5";
              vendor = "TP-Link";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "bmips/bcm6318";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
    bcm63268 = {
      arch_packages = "mips_mips32";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
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
        "mtd"
        "netifd"
        "nftables"
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "0a0b12fd9b139bf5ebba67e6caac2c30";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        actiontec_t1200h = {
          device_packages = [
            "nand-utils"
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-leds-gpio"
          ];
          image_prefix = "immortalwrt-24.10.1-bmips-bcm63268-actiontec_t1200h";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm63268-actiontec_t1200h-squashfs-sysupgrade.bin";
              sha256 = "f17e02a95f118daa88ddb6bfc2941949843bb9b86fa609b199710b37eda69ba1";
              sha256_unsigned = "77ad479e46ee78b9ce98f81aefb24484bebded277178361eb2e63534fc3053d4";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm63268-actiontec_t1200h-squashfs-cfe.bin";
              sha256 = "a0a4e5941dc07e63701370d168aa163fba9033fef81a3b74a50db5e98ddfad71";
              sha256_unsigned = "a0a4e5941dc07e63701370d168aa163fba9033fef81a3b74a50db5e98ddfad71";
              type = "cfe";
            }
          ];
          supported_devices = [
            "actiontec,t1200h"
          ];
          titles = [
            {
              model = "T1200H";
              vendor = "Actiontec";
            }
          ];
        };
        comtrend_vg-8050 = {
          device_packages = [
            "nand-utils"
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-leds-bcm6328"
          ];
          image_prefix = "immortalwrt-24.10.1-bmips-bcm63268-comtrend_vg-8050";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm63268-comtrend_vg-8050-squashfs-cfe.bin";
              sha256 = "52055fd1aee39e8afce6f73d4644ac5e879e5a7323d6412365c5402bb7ced3f6";
              sha256_unsigned = "52055fd1aee39e8afce6f73d4644ac5e879e5a7323d6412365c5402bb7ced3f6";
              type = "cfe";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm63268-comtrend_vg-8050-squashfs-sysupgrade.bin";
              sha256 = "c76fe7be683245bf49a705d80d31d40fabed314754ac0183ff7aa6c29f89a286";
              sha256_unsigned = "0a492686804cface600e18337a814d886934ed0467db5c24deb6c95aaef918d9";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "comtrend,vg-8050"
          ];
          titles = [
            {
              model = "VG-8050";
              vendor = "Comtrend";
            }
          ];
        };
        comtrend_vr-3032u = {
          device_packages = [
            "nand-utils"
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-leds-bcm6328"
          ];
          image_prefix = "immortalwrt-24.10.1-bmips-bcm63268-comtrend_vr-3032u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm63268-comtrend_vr-3032u-squashfs-cfe.bin";
              sha256 = "a1756a2476d37e600d294897580cc663d3fed02001d8eb82a0d4d99701bb41b5";
              sha256_unsigned = "a1756a2476d37e600d294897580cc663d3fed02001d8eb82a0d4d99701bb41b5";
              type = "cfe";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm63268-comtrend_vr-3032u-squashfs-sysupgrade.bin";
              sha256 = "97c8dee5a5e3402f472fe7f8daffa935c96bf7a42412c0b9224fa5035a68e8c0";
              sha256_unsigned = "5021b491b95082a56f5f461ab8618ee271fe6f42b2c6f6c8c65c4983a89f294f";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "comtrend,vr-3032u"
          ];
          titles = [
            {
              model = "VR-3032u";
              vendor = "Comtrend";
            }
          ];
        };
        sagem_fast-3864-op = {
          device_packages = [
            "nand-utils"
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-leds-bcm6328"
          ];
          image_prefix = "immortalwrt-24.10.1-bmips-bcm63268-sagem_fast-3864-op";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm63268-sagem_fast-3864-op-squashfs-sysupgrade.bin";
              sha256 = "b6b3dfa312c38b8bc20c1962f779800900d6e90ca2e682f1ac264f0e29fcc7ef";
              sha256_unsigned = "ea0b0c19dd57adeafe3c36aeaa16bb268cd680f6e515d3a84aea8e1c19ec8b9d";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm63268-sagem_fast-3864-op-squashfs-cfe.bin";
              sha256 = "410c33817398a6d1c97ec5b2c9315655a30305f1b4355be310a083e8ae0ca548";
              sha256_unsigned = "410c33817398a6d1c97ec5b2c9315655a30305f1b4355be310a083e8ae0ca548";
              type = "cfe";
            }
          ];
          supported_devices = [
            "sagem,fast-3864-op"
          ];
          titles = [
            {
              model = "F@ST 3864";
              variant = "OP";
              vendor = "Sagemcom";
            }
          ];
        };
        sercomm_h500-s-lowi = {
          device_packages = [
            "nand-utils"
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-leds-bcm6328"
          ];
          image_prefix = "immortalwrt-24.10.1-bmips-bcm63268-sercomm_h500-s-lowi";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm63268-sercomm_h500-s-lowi-squashfs-sysupgrade.bin";
              sha256 = "b4c5f7fe795d5c34bfe8f240d8d6aaeeb0ebcccf363913efd93b71653082d779";
              sha256_unsigned = "af78c5ac64720ca966a55556317f9e2e33156621796348aee52e8add09093c8f";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm63268-sercomm_h500-s-lowi-squashfs-factory.img";
              sha256 = "14e0803d2b7881bbcfc0cdcbace4f84149e860d14bc6ff29c3eb2556d57e1cd0";
              sha256_unsigned = "14e0803d2b7881bbcfc0cdcbace4f84149e860d14bc6ff29c3eb2556d57e1cd0";
              type = "factory";
            }
          ];
          supported_devices = [
            "sercomm,h500-s-lowi"
          ];
          titles = [
            {
              model = "H500-s";
              variant = "lowi";
              vendor = "Sercomm";
            }
          ];
        };
        sercomm_h500-s-vfes = {
          device_packages = [
            "nand-utils"
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-leds-bcm6328"
          ];
          image_prefix = "immortalwrt-24.10.1-bmips-bcm63268-sercomm_h500-s-vfes";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm63268-sercomm_h500-s-vfes-squashfs-factory.img";
              sha256 = "f756cf01d751c6c758c430823753c58f7dd6e2c2c0b0add09951f94c07cb74bf";
              sha256_unsigned = "f756cf01d751c6c758c430823753c58f7dd6e2c2c0b0add09951f94c07cb74bf";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm63268-sercomm_h500-s-vfes-squashfs-sysupgrade.bin";
              sha256 = "3aa694e3ae25b7477c8a938763fc93eaf42fccb2c31220c9d4bbbaf23e1d738c";
              sha256_unsigned = "a434f49e8169d01f6d08612bbb90b4d719eff899cd45b35e80634bd6581e9012";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "sercomm,h500-s-vfes"
          ];
          titles = [
            {
              model = "H500-s";
              variant = "vfes";
              vendor = "Sercomm";
            }
          ];
        };
        sercomm_shg2500 = {
          device_packages = [
            "nand-utils"
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "broadcom-4360-sprom"
            "kmod-i2c-gpio"
            "kmod-leds-sercomm-msp430"
          ];
          image_prefix = "immortalwrt-24.10.1-bmips-bcm63268-sercomm_shg2500";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm63268-sercomm_shg2500-squashfs-sysupgrade.bin";
              sha256 = "f43e17f1a830324212b857aaa8f250869aae6ab45446a284dfeb13dc158bc776";
              sha256_unsigned = "3965dd37af694904720f93d2cba8eb86d2a034b1751b769009953c6af5451961";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm63268-sercomm_shg2500-squashfs-factory.img";
              sha256 = "1518b551f4396d4df825a418529b43982b237aefaa0badf621f5d72098d7956c";
              sha256_unsigned = "1518b551f4396d4df825a418529b43982b237aefaa0badf621f5d72098d7956c";
              type = "factory";
            }
          ];
          supported_devices = [
            "sercomm,shg2500"
          ];
          titles = [
            {
              model = "SHG2500";
              vendor = "Sercomm";
            }
          ];
        };
        smartrg_sr505n = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-leds-bcm6328"
          ];
          image_prefix = "immortalwrt-24.10.1-bmips-bcm63268-smartrg_sr505n";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm63268-smartrg_sr505n-squashfs-cfe.bin";
              sha256 = "d21d89231c93c6697cb61ce68d57406cd8376bd3ba78e057958283fb59eb9737";
              sha256_unsigned = "d21d89231c93c6697cb61ce68d57406cd8376bd3ba78e057958283fb59eb9737";
              type = "cfe";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm63268-smartrg_sr505n-squashfs-sysupgrade.bin";
              sha256 = "20efddbd88d05fb8efad9a1fba7a6932734db091c4a9e6e43f873e760de0702d";
              sha256_unsigned = "d0c655731d9d16cc32701d2db6d5da394c1d5b28ffaab3eddc1071583a0fd48f";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "smartrg,sr505n"
          ];
          titles = [
            {
              model = "SR505n";
              vendor = "SmartRG";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "bmips/bcm63268";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
    bcm6328 = {
      arch_packages = "mips_mips32";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
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
        "mtd"
        "netifd"
        "nftables"
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "bd1fb0cb34a5b0068eca742f35fabc32";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        arcadyan_ar7516 = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-b43"
            "wpad-basic-openssl"
            "broadcom-43227-sprom"
            "kmod-leds-bcm6328"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bmips-bcm6328-arcadyan_ar7516";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6328-arcadyan_ar7516-squashfs-cfe.bin";
              sha256 = "cb0c4e0ae9a36271b4f6070f1dd9014e4bc2de58b29bb4ec3e8562ad32593291";
              sha256_unsigned = "cb0c4e0ae9a36271b4f6070f1dd9014e4bc2de58b29bb4ec3e8562ad32593291";
              type = "cfe";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6328-arcadyan_ar7516-squashfs-sysupgrade.bin";
              sha256 = "ee08eb95d11f2d0cd42e2ec771e05cd4e917bf78c5160776af9af81dfe9a781c";
              sha256_unsigned = "ac2efb3451a024416216f6f7f511fe186a3624c41ee61553d468730fbcafcb3d";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "arcadyan,ar7516"
          ];
          titles = [
            {
              model = "AR7516";
              vendor = "Arcadyan";
            }
          ];
        };
        comtrend_ar-5381u = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-b43"
            "wpad-basic-openssl"
            "broadcom-43225-sprom"
            "kmod-leds-bcm6328"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bmips-bcm6328-comtrend_ar-5381u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6328-comtrend_ar-5381u-squashfs-cfe.bin";
              sha256 = "567512eb0c1e72b51a02728b47dcc0a09c5b543f076e8ac48bc9d161ab71d686";
              sha256_unsigned = "567512eb0c1e72b51a02728b47dcc0a09c5b543f076e8ac48bc9d161ab71d686";
              type = "cfe";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6328-comtrend_ar-5381u-squashfs-sysupgrade.bin";
              sha256 = "65f9678f255f5951510e753e6319c5175e3d2130246e72dc4afe829b64078632";
              sha256_unsigned = "6e1212e1e6087f7d8e6aaa2ba07ec4ef028bf04b6bc5dd91596420569f535716";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "comtrend,ar-5381u"
          ];
          titles = [
            {
              model = "AR-5381u";
              vendor = "Comtrend";
            }
          ];
        };
        comtrend_ar-5387un = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-b43"
            "wpad-basic-openssl"
            "broadcom-43225-sprom"
            "kmod-leds-bcm6328"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bmips-bcm6328-comtrend_ar-5387un";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6328-comtrend_ar-5387un-squashfs-sysupgrade.bin";
              sha256 = "7f1edece7a47d981a7e8dc01fb2b5c3fa1573d28caaaa40b25a2d419af642749";
              sha256_unsigned = "bde8831decab29eaa19ce7e0edcd0d7e70d5634f01cdf06d47b88aef889c8bc0";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6328-comtrend_ar-5387un-squashfs-cfe.bin";
              sha256 = "0bec3f4c5e898b524496405e9f5eb08afa1c492737c036c0356f70a22f49d10f";
              sha256_unsigned = "0bec3f4c5e898b524496405e9f5eb08afa1c492737c036c0356f70a22f49d10f";
              type = "cfe";
            }
          ];
          supported_devices = [
            "comtrend,ar-5387un"
          ];
          titles = [
            {
              model = "AR-5387un";
              vendor = "Comtrend";
            }
          ];
        };
        dlink_dsl-2750b-b1 = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-ath9k"
            "kmod-owl-loader"
            "wpad-basic-openssl"
            "kmod-leds-gpio"
            "kmod-leds-bcm6328"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bmips-bcm6328-dlink_dsl-2750b-b1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6328-dlink_dsl-2750b-b1-squashfs-cfe-AU.bin";
              sha256 = "b2a239c189b0d60a065ed372a993d639ec91b8dfc093b7ad9ea077bd6714334e";
              sha256_unsigned = "b2a239c189b0d60a065ed372a993d639ec91b8dfc093b7ad9ea077bd6714334e";
              type = "cfe-AU";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6328-dlink_dsl-2750b-b1-squashfs-cfe-EU.bin";
              sha256 = "1b939505db33737d1c8aca59ebc615186c05a6ef3ba50eb6f85d940e79aa43f7";
              sha256_unsigned = "1b939505db33737d1c8aca59ebc615186c05a6ef3ba50eb6f85d940e79aa43f7";
              type = "cfe-EU";
            }
          ];
          supported_devices = [
            "dlink,dsl-2750b-b1"
          ];
          titles = [
            {
              model = "DSL-2750B";
              variant = "B1";
              vendor = "D-Link";
            }
            {
              model = "DSL-2740B";
              variant = "F1";
              vendor = "D-Link";
            }
            {
              model = "DSL-2741B";
              variant = "F1";
              vendor = "D-Link";
            }
          ];
        };
        innacomm_w3400v6 = {
          device_packages = [
            "kmod-b43"
            "wpad-basic-openssl"
            "broadcom-4318-sprom"
            "kmod-leds-bcm6328"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bmips-bcm6328-innacomm_w3400v6";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6328-innacomm_w3400v6-squashfs-sysupgrade.bin";
              sha256 = "bad0bb09b18dcb80b7ffe2e798d4a12f76f2361e6ade1814dd13d7e2ce359319";
              sha256_unsigned = "9c62919bd25638b325aef064f7cb4ad863fa2fb199f7ddc8adb08b9d47c9b28c";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6328-innacomm_w3400v6-squashfs-cfe.bin";
              sha256 = "2fd77d8e8bb4df79d674c0a582b22e112dd72d99954db363778b558ba85ad92e";
              sha256_unsigned = "2fd77d8e8bb4df79d674c0a582b22e112dd72d99954db363778b558ba85ad92e";
              type = "cfe";
            }
          ];
          supported_devices = [
            "innacomm,w3400v6"
          ];
          titles = [
            {
              model = "W3400V6";
              vendor = "Innacomm";
            }
          ];
        };
        inteno_xg6846 = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-i2c-core"
            "kmod-i2c-gpio"
            "kmod-leds-bcm6328"
            "kmod-dsa-mv88e6xxx"
            "kmod-sfp"
          ];
          image_prefix = "immortalwrt-24.10.1-bmips-bcm6328-inteno_xg6846";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6328-inteno_xg6846-squashfs-sysupgrade.bin";
              sha256 = "69bd20689b1a03d68ce094fef8200078543c63b2bd8991972674648a2451f1a4";
              sha256_unsigned = "239abfe7a072fd75ae54e5a926f3abaf21af8873edb51a868ed65e71b81f84fe";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6328-inteno_xg6846-squashfs-cfe.bin";
              sha256 = "b3f7eeb13ca92864586d6cb4599d9027e90fdf200b038b4b4bbcf89cae50bf5d";
              sha256_unsigned = "b3f7eeb13ca92864586d6cb4599d9027e90fdf200b038b4b4bbcf89cae50bf5d";
              type = "cfe";
            }
          ];
          supported_devices = [
            "inteno,xg6846"
          ];
          titles = [
            {
              model = "XG6846";
              vendor = "Inteno";
            }
          ];
        };
        nucom_r5010unv2 = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-b43"
            "wpad-basic-openssl"
            "broadcom-43217-sprom"
            "kmod-leds-bcm6328"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bmips-bcm6328-nucom_r5010unv2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6328-nucom_r5010unv2-squashfs-sysupgrade.bin";
              sha256 = "1aa595c8d39617eeb44f151f354f22927e51cee5bf5ad3f9b703d68a19574262";
              sha256_unsigned = "88da0849b673460be18743b25780d2336584ba490d227ab9c8b95d0878305f69";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6328-nucom_r5010unv2-squashfs-cfe.bin";
              sha256 = "c4413b684941848eb0b08dd4d1ddef411f54ad11f25dd60eeed4f114080bc9d0";
              sha256_unsigned = "c4413b684941848eb0b08dd4d1ddef411f54ad11f25dd60eeed4f114080bc9d0";
              type = "cfe";
            }
          ];
          supported_devices = [
            "nucom,r5010unv2"
          ];
          titles = [
            {
              model = "R5010UNv2";
              vendor = "NuCom";
            }
          ];
        };
        sercomm_ad1018 = {
          device_packages = [
            "nand-utils"
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-b43"
            "wpad-basic-openssl"
            "broadcom-43217-sprom"
            "kmod-leds-bcm6328"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bmips-bcm6328-sercomm_ad1018";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6328-sercomm_ad1018-squashfs-factory.img";
              sha256 = "6184dc3877915f8ae42fc9d837abf2ba84293858b7183a15ce4c04e056f690a8";
              sha256_unsigned = "6184dc3877915f8ae42fc9d837abf2ba84293858b7183a15ce4c04e056f690a8";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6328-sercomm_ad1018-squashfs-sysupgrade.bin";
              sha256 = "79df3d8351aaae43dfe533b16e0c059b68a4509eb3d3f363e467d4d4fbcdbb33";
              sha256_unsigned = "b5eb9f828c33da1447702560d9bc55863e39529b09da27445ade2f7c75e08af3";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "sercomm,ad1018"
          ];
          titles = [
            {
              model = "AD1018";
              vendor = "Sercomm";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "bmips/bcm6328";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
    bcm6358 = {
      arch_packages = "mips_mips32";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
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
        "mtd"
        "netifd"
        "nftables"
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "68c54381cc5ecb80c7e3140f6e0aeb41";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        huawei_hg556a-b = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-ath9k"
            "kmod-owl-loader"
            "wpad-basic-openssl"
            "kmod-leds-gpio"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bmips-bcm6358-huawei_hg556a-b";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6358-huawei_hg556a-b-squashfs-cfe.bin";
              sha256 = "8c8d5d7edab8cecc586b0eb0029670c721e01d6ac13724fceb15db680b90ebcf";
              sha256_unsigned = "8c8d5d7edab8cecc586b0eb0029670c721e01d6ac13724fceb15db680b90ebcf";
              type = "cfe";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6358-huawei_hg556a-b-squashfs-sysupgrade.bin";
              sha256 = "3de5655bf5612eff7df34f0dac98752c4ce29bd33063a78ab4b9a32c16667f38";
              sha256_unsigned = "82baf1376bc491c18969d384b6c8b582a274f25266d86a748741d20979092aaa";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "huawei,hg556a-b"
          ];
          titles = [
            {
              model = "EchoLife HG556a";
              variant = "B";
              vendor = "Huawei";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "bmips/bcm6358";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
    bcm6362 = {
      arch_packages = "mips_mips32";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
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
        "mtd"
        "netifd"
        "nftables"
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "f6240cc2cbc494a9cf244bc2a7fd7944";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        huawei_hg253s-v2 = {
          device_packages = [
            "nand-utils"
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-leds-bcm6328"
            "kmod-leds-gpio"
          ];
          image_prefix = "immortalwrt-24.10.1-bmips-bcm6362-huawei_hg253s-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6362-huawei_hg253s-v2-squashfs-flash.bin";
              sha256 = "fe0e050ddc4af2a25527341333c2f369340332c420237c657fe0af5bc35e63c4";
              sha256_unsigned = "fe0e050ddc4af2a25527341333c2f369340332c420237c657fe0af5bc35e63c4";
              type = "flash";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6362-huawei_hg253s-v2-squashfs-sysupgrade.bin";
              sha256 = "641cf111c705d05380d2f252a18d1046caf2fc00db2ebfa6d030d10a9f9ef1e7";
              sha256_unsigned = "893297ca51d06a4ac2c13ea1d18dde472752c673e1fd73589fc26885b1b7551e";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "huawei,hg253s-v2"
          ];
          titles = [
            {
              model = "HG253s";
              variant = "v2";
              vendor = "Huawei";
            }
          ];
        };
        netgear_dgnd3700-v2 = {
          device_packages = [
            "nand-utils"
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-b43"
            "wpad-basic-openssl"
            "kmod-leds-bcm6328"
            "kmod-leds-gpio"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bmips-bcm6362-netgear_dgnd3700-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6362-netgear_dgnd3700-v2-squashfs-sysupgrade.bin";
              sha256 = "bcdf030863f43b295cb08de8f10f4f2e50b43524f3054f672407f8097da39262";
              sha256_unsigned = "87b166423593215c09cbf08da3826e06622629c24f9b300ee7f718adce7ec955";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6362-netgear_dgnd3700-v2-squashfs-cfe.bin";
              sha256 = "0410b8bed210591fd9832de152bd7347943694302986f43a1251180b978a06f6";
              sha256_unsigned = "0410b8bed210591fd9832de152bd7347943694302986f43a1251180b978a06f6";
              type = "cfe";
            }
          ];
          supported_devices = [
            "netgear,dgnd3700-v2"
          ];
          titles = [
            {
              model = "DGND3700";
              variant = "v2";
              vendor = "NETGEAR";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "bmips/bcm6362";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
    bcm6368 = {
      arch_packages = "mips_mips32";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
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
        "mtd"
        "netifd"
        "nftables"
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "60a18caf516a58b8830979fe4440dd9b";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        actiontec_r1000h = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-b43"
            "wpad-basic-openssl"
            "kmod-leds-gpio"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bmips-bcm6368-actiontec_r1000h";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6368-actiontec_r1000h-squashfs-sysupgrade.bin";
              sha256 = "2c06b6e446acb459be9d161eb0417ea8380ac6183bfe91a58229571467cdcfed";
              sha256_unsigned = "5a9f36ff0e4ffdc29469ab2b15d23797df16a9ce6e001c0d6b4015f9df1d5b6a";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6368-actiontec_r1000h-squashfs-cfe.bin";
              sha256 = "b50dca35e2845529ebbbfa642251edbe76c2fd8ce728266aca2170e1b16642d7";
              sha256_unsigned = "b50dca35e2845529ebbbfa642251edbe76c2fd8ce728266aca2170e1b16642d7";
              type = "cfe";
            }
          ];
          supported_devices = [
            "actiontec,r1000h"
          ];
          titles = [
            {
              model = "R1000H";
              vendor = "Actiontec";
            }
          ];
        };
        comtrend_vr-3025u = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-b43"
            "wpad-basic-openssl"
            "broadcom-43222-sprom"
            "kmod-leds-gpio"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bmips-bcm6368-comtrend_vr-3025u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6368-comtrend_vr-3025u-squashfs-sysupgrade.bin";
              sha256 = "35b26dc2962ded4ccb62ba456ed462ef167c1ad62939c98ab41f7dd72c2a2f3e";
              sha256_unsigned = "7f95d98d4c0e3dea408506e1f506ef47c9fc52b9a554d22da28b359c15ff6f6d";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6368-comtrend_vr-3025u-squashfs-cfe.bin";
              sha256 = "c3871dfb2056cf5d5d491e2ce15ebd8dbe233d4661a2705167b36d10d7f22b59";
              sha256_unsigned = "c3871dfb2056cf5d5d491e2ce15ebd8dbe233d4661a2705167b36d10d7f22b59";
              type = "cfe";
            }
          ];
          supported_devices = [
            "comtrend,vr-3025u"
          ];
          titles = [
            {
              model = "VR-3025u";
              vendor = "Comtrend";
            }
          ];
        };
        comtrend_vr-3025un = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-b43"
            "wpad-basic-openssl"
            "broadcom-43222-sprom"
            "kmod-leds-gpio"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bmips-bcm6368-comtrend_vr-3025un";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6368-comtrend_vr-3025un-squashfs-sysupgrade.bin";
              sha256 = "96cbd2e58f9d62b6921949b7357d3321a566941da072f5f0eddcf4a19885de37";
              sha256_unsigned = "cbc17b15389bfa13126d1e6188aff479b386b0b67f24f5602c310ac52f1d4937";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6368-comtrend_vr-3025un-squashfs-cfe.bin";
              sha256 = "0ca0309f0b6b858adc188a7e3e579d8d44c3480d7339917d20bbd57865fb8718";
              sha256_unsigned = "0ca0309f0b6b858adc188a7e3e579d8d44c3480d7339917d20bbd57865fb8718";
              type = "cfe";
            }
          ];
          supported_devices = [
            "comtrend,vr-3025un"
          ];
          titles = [
            {
              model = "VR-3025un";
              vendor = "Comtrend";
            }
          ];
        };
        comtrend_wap-5813n = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-b43"
            "wpad-basic-openssl"
            "broadcom-4322-sprom"
            "kmod-leds-gpio"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bmips-bcm6368-comtrend_wap-5813n";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6368-comtrend_wap-5813n-squashfs-cfe.bin";
              sha256 = "1d545df061efd2cc3bef6726da41816c400b52c355f60734723efdeed9089601";
              sha256_unsigned = "1d545df061efd2cc3bef6726da41816c400b52c355f60734723efdeed9089601";
              type = "cfe";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6368-comtrend_wap-5813n-squashfs-sysupgrade.bin";
              sha256 = "43a5c6022d3afccd7d5d11b4a50e7ade35fc19e699a1d7c82aeca469934164e6";
              sha256_unsigned = "0b73a85bd6cfaac30da74a9ed1c830579c1cc5c826d42000db849378170c60fa";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "comtrend,wap-5813n"
          ];
          titles = [
            {
              model = "WAP-5813n";
              vendor = "Comtrend";
            }
          ];
        };
        netgear_dgnd3700-v1 = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-b43"
            "wpad-basic-openssl"
            "kmod-leds-gpio"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bmips-bcm6368-netgear_dgnd3700-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6368-netgear_dgnd3700-v1-squashfs-sysupgrade.bin";
              sha256 = "cafd6368eb1c54ec76466e7a44d94a8ddb1336061657ee70b1b86f25db0302e8";
              sha256_unsigned = "0f67f2efdbfdc31827e23b33007602d98cbaa29154ce0599461c10566b79243a";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6368-netgear_dgnd3700-v1-squashfs-factory.chk";
              sha256 = "8d908afe75aaadce74b1ac004c42f524ace05a16651c153a3c9fd4580069c2b9";
              sha256_unsigned = "8d908afe75aaadce74b1ac004c42f524ace05a16651c153a3c9fd4580069c2b9";
              type = "factory";
            }
          ];
          supported_devices = [
            "netgear,dgnd3700-v1"
          ];
          titles = [
            {
              model = "DGND3700";
              variant = "v1";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_dgnd3800b = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-b43"
            "wpad-basic-openssl"
            "kmod-leds-gpio"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bmips-bcm6368-netgear_dgnd3800b";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6368-netgear_dgnd3800b-squashfs-sysupgrade.bin";
              sha256 = "0047b0d77fdc88e63d262bf41d414fb0f5b7d3e66a4b3471583ee219d2db7ef9";
              sha256_unsigned = "83378b20d67dc8e37d2d8d3c88143463ecd08747f340cf19da57c19e05bab354";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6368-netgear_dgnd3800b-squashfs-factory.chk";
              sha256 = "1cee6678db01dc96e894af5fc55e8c274140eb62287326d73fd64a220dcdb6e5";
              sha256_unsigned = "1cee6678db01dc96e894af5fc55e8c274140eb62287326d73fd64a220dcdb6e5";
              type = "factory";
            }
          ];
          supported_devices = [
            "netgear,dgnd3800b"
          ];
          titles = [
            {
              model = "DGND3800B";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_evg2000 = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-b43"
            "wpad-basic-openssl"
            "broadcom-4322-sprom"
            "kmod-leds-gpio"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bmips-bcm6368-netgear_evg2000";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6368-netgear_evg2000-squashfs-sysupgrade.bin";
              sha256 = "5787c5051e6fa36b89affa66bf16405e88656849ab09995d4b0f16383f5b0217";
              sha256_unsigned = "0f28aca61ba5eb10cf8ea1f061b737e742305961aba4f55442a08e222402cd9b";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6368-netgear_evg2000-squashfs-factory.chk";
              sha256 = "8e817c2116855ab17c2d93844d133aaeb69be419eda101acbe52abc0460b9922";
              sha256_unsigned = "8e817c2116855ab17c2d93844d133aaeb69be419eda101acbe52abc0460b9922";
              type = "factory";
            }
          ];
          supported_devices = [
            "netgear,evg2000"
          ];
          titles = [
            {
              model = "EVG2000";
              vendor = "NETGEAR";
            }
          ];
        };
        observa_vh4032n = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb2"
            "kmod-b43"
            "wpad-basic-openssl"
            "broadcom-43222-sprom"
            "kmod-leds-gpio"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-bmips-bcm6368-observa_vh4032n";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6368-observa_vh4032n-squashfs-sysupgrade.bin";
              sha256 = "461ff1cb08271c8675825442dc70597e58c19da81aa406de6a653c7f8f50e0d3";
              sha256_unsigned = "d3b0aa7dbaa3d241ed085f3bda063154d701be80c71584da7a3a564a01a0eca1";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-bmips-bcm6368-observa_vh4032n-squashfs-cfe.bin";
              sha256 = "01c3e59880972320df11cba1f809c0c4d5b2ffbf9b022cd8ba40693e5bd9378f";
              sha256_unsigned = "01c3e59880972320df11cba1f809c0c4d5b2ffbf9b022cd8ba40693e5bd9378f";
              type = "cfe";
            }
          ];
          supported_devices = [
            "observa,vh4032n"
          ];
          titles = [
            {
              model = "VH4032N";
              vendor = "Observa";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "bmips/bcm6368";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
  };
  d1 = {
    generic = {
      arch_packages = "riscv64_riscv64";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
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
        "mtd"
        "netifd"
        "nftables"
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "42e3dfa825470e42f7d546af54a93633";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        "100ask_dongshan-nezha-stu" = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-d1-generic-100ask_dongshan-nezha-stu";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-d1-generic-100ask_dongshan-nezha-stu-ext4-sdcard.img.gz";
              sha256 = "baa969b4ab4de823d271ffb866ee9db6c840505431225bd811f4366085c3c7d2";
              sha256_unsigned = "a2e6bb123660afc93c5b9f7d7dbe4aaaa14cea5eb25149c90f99c07508cbe23d";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-d1-generic-100ask_dongshan-nezha-stu-squashfs-sdcard.img.gz";
              sha256 = "9a3cc25030162253721859c9d18646ea09574ab971dfe06f9ffb3b882b8467bd";
              sha256_unsigned = "0dd1aeaa7abbe661e016c30c8f1530583d28c6b34316c9e9015964556a2c163c";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "100ask,dongshan-nezha-stu"
            "dongshan_nezha_stu"
          ];
          titles = [
            {
              model = "Nezha STU devkit";
              vendor = "Dongshan";
            }
          ];
        };
        allwinner_d1-nezha = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-d1-generic-allwinner_d1-nezha";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-d1-generic-allwinner_d1-nezha-ext4-sdcard.img.gz";
              sha256 = "a30f80edbcdee596e5762e7805d7495cfa59775ab03593a57f30b98e6fc6b7c2";
              sha256_unsigned = "1d96d556499d9c703dd320cbdfe634ff60e5057a8c1188549fd9438ce573c6bc";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-d1-generic-allwinner_d1-nezha-squashfs-sdcard.img.gz";
              sha256 = "072aa2fd752fc3d95f7dc42ec9b17263fe638c731bff531b040913de8ac0d313";
              sha256_unsigned = "bc365432e1486b58fb30545d9a951c20c75440778f83bd4c53a41c07e5c82b5b";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "allwinner,d1-nezha"
            "nezha"
          ];
          titles = [
            {
              model = "D1";
              vendor = "Nezha";
            }
          ];
        };
        sipeed_lichee-rv-dock = {
          device_packages = [
            "kmod-rtw88-8723ds"
            "wpad-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-d1-generic-sipeed_lichee-rv-dock";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-d1-generic-sipeed_lichee-rv-dock-ext4-sdcard.img.gz";
              sha256 = "543e0108bb8de99f0d5a300d97110b9bb3b1a3273656835df80a9fb208185a27";
              sha256_unsigned = "637de7f5331528c58316e1c83bd10c397ee871d1acf04ac229a0d104f4c0e4d1";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-d1-generic-sipeed_lichee-rv-dock-squashfs-sdcard.img.gz";
              sha256 = "d0360c9ae99f7569caed64b6cf2badda56afb9406128fb3afa2c6db72f5d3043";
              sha256_unsigned = "d7b7fa102706fcd608f0013c274664f0c3de81e0dc622cae984af20d6fb0e398";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "sipeed,lichee-rv-dock"
            "lichee_rv_dock"
          ];
          titles = [
            {
              model = "LicheePi RV (dock)";
              vendor = "Sipeed";
            }
          ];
        };
        widora_mangopi-mq-pro = {
          device_packages = [
            "kmod-rtw88-8723ds"
            "wpad-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-d1-generic-widora_mangopi-mq-pro";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-d1-generic-widora_mangopi-mq-pro-ext4-sdcard.img.gz";
              sha256 = "f7700f4b7fa3f6f034a42657908f4c1efdef13845a894d4c6c438c7d9c642ab2";
              sha256_unsigned = "e8eed077534868f206ae5115dd6478da054a506719dc720bab55e89a54897b08";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-d1-generic-widora_mangopi-mq-pro-squashfs-sdcard.img.gz";
              sha256 = "7657bbfa0b96c372cf2cec14b41eb92d58592fcd4e93352267b57f52c284bba0";
              sha256_unsigned = "a170949d996e3fa44174e45bfd22f1da55594bfd2e9a97f84be951799c4a176c";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "widora,mangopi-mq-pro"
            "mangopi_mq_pro"
          ];
          titles = [
            {
              model = "MQ Pro";
              vendor = "MangoPi";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "d1/generic";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
  };
  gemini = {
    generic = {
      arch_packages = "arm_fa526";
      default_packages = [
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
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-usb-fotg210"
        "kmod-usb-ledtrig-usbport"
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
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "ee46bf11064a2c4709cd5eb196f2aa56";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        dlink_dir-685 = {
          device_packages = [
            "block-mount"
            "fdisk"
            "lsblk"
            "mdadm"
            "kmod-md-mod"
            "kmod-md-linear"
            "kmod-md-multipath"
            "kmod-md-raid0"
            "kmod-md-raid1"
            "kmod-md-raid10"
            "kmod-md-raid456"
            "kmod-fs-btrfs"
            "kmod-fs-cifs"
            "kmod-fs-nfs"
            "kmod-fs-nfsd"
            "kmod-fs-ntfs"
            "kmod-fs-reiserfs"
            "kmod-fs-vfat"
            "kmod-nls-utf8"
            "kmod-usb-storage-extras"
            "kmod-hwmon-drivetemp"
            "cfdisk"
            "e2fsprogs"
            "badblocks"
            "partx-utils"
            "kmod-rt2800-pci"
          ];
          image_prefix = "immortalwrt-24.10.1-gemini-generic-dlink_dir-685";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-gemini-generic-dlink_dir-685-squashfs-sysupgrade.bin";
              sha256 = "e81a6894f5b88e3c6608e07daf906db38b52a3b57fad4074133b71f1394592f8";
              sha256_unsigned = "b03399961b8ddf7365a8514b61935e1342293f4097da61da5c43a9a01c5467c4";
              type = "sysupgrade";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-gemini-generic-dlink_dir-685-ext4-sysupgrade.bin";
              sha256 = "3f4b2c92e6c3d423dc12262a6f9cdaa7684e32105388943bd73a9f737fda8cd6";
              sha256_unsigned = "ee20f203f820eb800f5c216f81922f4c921beb56ab202f41035d91618e886f15";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-gemini-generic-dlink_dir-685-squashfs-factory.bin";
              sha256 = "9a89ac7b0dde3600f2aabb421449fd0c9d290727e4abc54165fa59abdddbf7ae";
              sha256_unsigned = "9a89ac7b0dde3600f2aabb421449fd0c9d290727e4abc54165fa59abdddbf7ae";
              type = "factory";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-gemini-generic-dlink_dir-685-ext4-factory.bin";
              sha256 = "7e9e0ea52da455ed0552efa8ae3045563dc8ce726495dc359ae5693a240a5dd6";
              sha256_unsigned = "7e9e0ea52da455ed0552efa8ae3045563dc8ce726495dc359ae5693a240a5dd6";
              type = "factory";
            }
          ];
          supported_devices = [
            "dlink,dir-685"
          ];
          titles = [
            {
              model = "DIR-685 Xtreme N Storage Router";
              vendor = "D-Link";
            }
          ];
        };
        dlink_dns-313 = {
          device_packages = [
            "block-mount"
            "fdisk"
            "lsblk"
            "mdadm"
            "kmod-md-mod"
            "kmod-md-linear"
            "kmod-md-multipath"
            "kmod-md-raid0"
            "kmod-md-raid1"
            "kmod-md-raid10"
            "kmod-md-raid456"
            "kmod-fs-btrfs"
            "kmod-fs-cifs"
            "kmod-fs-nfs"
            "kmod-fs-nfsd"
            "kmod-fs-ntfs"
            "kmod-fs-reiserfs"
            "kmod-fs-vfat"
            "kmod-nls-utf8"
            "kmod-usb-storage-extras"
            "kmod-hwmon-drivetemp"
            "cfdisk"
            "e2fsprogs"
            "badblocks"
            "partx-utils"
          ];
          image_prefix = "immortalwrt-24.10.1-gemini-generic-dlink_dns-313";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-gemini-generic-dlink_dns-313-ext4-factory.bin.gz";
              sha256 = "edc80c50b8ceb62ea4917ef53a9ebc088552ae4753345b4f240679b189053c8e";
              sha256_unsigned = "edc80c50b8ceb62ea4917ef53a9ebc088552ae4753345b4f240679b189053c8e";
              type = "factory";
            }
          ];
          supported_devices = [
            "dlink,dns-313"
          ];
          titles = [
            {
              model = "DNS-313 1-Bay Network Storage Enclosure";
              vendor = "D-Link";
            }
          ];
        };
        itian_sq201 = {
          device_packages = [
            "block-mount"
            "fdisk"
            "lsblk"
            "mdadm"
            "kmod-md-mod"
            "kmod-md-linear"
            "kmod-md-multipath"
            "kmod-md-raid0"
            "kmod-md-raid1"
            "kmod-md-raid10"
            "kmod-md-raid456"
            "kmod-fs-btrfs"
            "kmod-fs-cifs"
            "kmod-fs-nfs"
            "kmod-fs-nfsd"
            "kmod-fs-ntfs"
            "kmod-fs-reiserfs"
            "kmod-fs-vfat"
            "kmod-nls-utf8"
            "kmod-usb-storage-extras"
            "kmod-hwmon-drivetemp"
            "cfdisk"
            "e2fsprogs"
            "badblocks"
            "partx-utils"
            "kmod-rt61-pci"
            "kmod-usb2-pci"
          ];
          image_prefix = "immortalwrt-24.10.1-gemini-generic-itian_sq201";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-gemini-generic-itian_sq201-squashfs-factory.bin";
              sha256 = "213bcab9ea8416c63fb0664bea4b88adba3989634b519f9630d068f42b86757e";
              sha256_unsigned = "213bcab9ea8416c63fb0664bea4b88adba3989634b519f9630d068f42b86757e";
              type = "factory";
            }
          ];
          supported_devices = [
            "itian,sq201"
          ];
          titles = [
            {
              model = "Square One SQ201";
              vendor = "ITian";
            }
          ];
        };
        raidsonic_ib-4220-b = {
          device_packages = [
            "block-mount"
            "fdisk"
            "lsblk"
            "mdadm"
            "kmod-md-mod"
            "kmod-md-linear"
            "kmod-md-multipath"
            "kmod-md-raid0"
            "kmod-md-raid1"
            "kmod-md-raid10"
            "kmod-md-raid456"
            "kmod-fs-btrfs"
            "kmod-fs-cifs"
            "kmod-fs-nfs"
            "kmod-fs-nfsd"
            "kmod-fs-ntfs"
            "kmod-fs-reiserfs"
            "kmod-fs-vfat"
            "kmod-nls-utf8"
            "kmod-usb-storage-extras"
            "kmod-hwmon-drivetemp"
            "cfdisk"
            "e2fsprogs"
            "badblocks"
            "partx-utils"
          ];
          image_prefix = "immortalwrt-24.10.1-gemini-generic-raidsonic_ib-4220-b";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-gemini-generic-raidsonic_ib-4220-b-squashfs-factory.bin";
              sha256 = "310eb690e367fc78e708819abe2aa620a18a68e46911a239a7db84bfb6164f75";
              sha256_unsigned = "310eb690e367fc78e708819abe2aa620a18a68e46911a239a7db84bfb6164f75";
              type = "factory";
            }
          ];
          supported_devices = [
            "raidsonic,ib-4220-b"
          ];
          titles = [
            {
              model = "NAS IB-4220-B";
              vendor = "Raidsonic";
            }
          ];
        };
        storlink_sl93512r = {
          device_packages = [
            "block-mount"
            "fdisk"
            "lsblk"
            "mdadm"
            "kmod-md-mod"
            "kmod-md-linear"
            "kmod-md-multipath"
            "kmod-md-raid0"
            "kmod-md-raid1"
            "kmod-md-raid10"
            "kmod-md-raid456"
            "kmod-fs-btrfs"
            "kmod-fs-cifs"
            "kmod-fs-nfs"
            "kmod-fs-nfsd"
            "kmod-fs-ntfs"
            "kmod-fs-reiserfs"
            "kmod-fs-vfat"
            "kmod-nls-utf8"
            "kmod-usb-storage-extras"
            "kmod-hwmon-drivetemp"
            "cfdisk"
            "e2fsprogs"
            "badblocks"
            "partx-utils"
          ];
          image_prefix = "immortalwrt-24.10.1-gemini-generic-storlink_sl93512r";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-gemini-generic-storlink_sl93512r-squashfs-factory.bin";
              sha256 = "9e49c29524d991e9b368175247eec472c9b9603626571170846f2f7f19383e0c";
              sha256_unsigned = "9e49c29524d991e9b368175247eec472c9b9603626571170846f2f7f19383e0c";
              type = "factory";
            }
          ];
          supported_devices = [
            "storlink,sl93512r"
          ];
          titles = [
            {
              model = "SL93512r";
              vendor = "StorLink";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "gemini/generic";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
  };
  imx = {
    cortexa53 = {
      arch_packages = "aarch64_cortex-a53";
      default_packages = [
        "base-files"
        "blkid"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "e2fsprogs"
        "firewall4"
        "fstools"
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
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "df57963a48825ee8f56f2ae0a0c72aa9";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        gateworks_venice = {
          device_packages = [
            "kmod-hwmon-gsc"
            "kmod-rtc-ds1672"
            "kmod-eeprom-at24"
            "kmod-gpio-button-hotplug"
            "kmod-leds-gpio"
            "kmod-pps-gpio"
            "kmod-lan743x"
            "kmod-sky2"
            "kmod-iio-st_accel-i2c"
            "kmod-can"
            "kmod-can-flexcan"
            "kmod-can-mcp251x"
          ];
          image_prefix = "immortalwrt-24.10.1-imx-cortexa53-gateworks_venice";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-imx-cortexa53-gateworks_venice-squashfs-img.gz";
              sha256 = "2106e4e45f6ba46afc70f303e9fb7c66348072d182f14e2c47b4a8e43a52d7bf";
              sha256_unsigned = "844dda586f03733a22d6e0c1cd313d75a97dcc33376608055206a14c837b2fb7";
              type = "img";
            }
          ];
          supported_devices = [
            "gw,imx8mm-gw71xx-0x"
            "gw,imx8mm-gw72xx-0x"
            "gw,imx8mp-gw72xx-2x"
            "gw,imx8mm-gw73xx-0x"
            "gw,imx8mp-gw73xx-2x"
            "gw,imx8mm-gw7901"
            "gw,imx8mm-gw7902"
            "gw,imx8mn-gw7902"
            "gw,imx8mm-gw7903"
            "gateworks,imx8mp-gw71xx-2x"
            "gateworks,imx8mp-gw74xx"
            "gateworks,imx8mm-gw7904"
            "gateworks,imx8mm-gw7905-0x"
            "gateworks,imx8mp-gw7905-2x"
          ];
          titles = [
            {
              model = "i.MX8M Venice";
              vendor = "Gateworks";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "imx/cortexa53";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
    cortexa7 = {
      arch_packages = "arm_cortex-a7_neon-vfpv4";
      default_packages = [
        "base-files"
        "blkid"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "e2fsprogs"
        "firewall4"
        "fstools"
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
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "43d55ee9f03745beb0c17fd22980469a";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        technexion_imx7d-pico-pi = {
          device_packages = [
            "kmod-sound-core"
            "kmod-sound-soc-imx"
            "kmod-sound-soc-imx-sgtl5000"
            "kmod-can"
            "kmod-can-flexcan"
            "kmod-can-raw"
            "kmod-leds-gpio"
            "kmod-input-touchscreen-edt-ft5x06"
            "kmod-usb-hid"
            "kmod-btsdio"
            "kmod-brcmfmac"
            "brcmfmac-firmware-4339-sdio"
            "cypress-nvram-4339-sdio"
          ];
          image_prefix = "immortalwrt-24.10.1-imx-cortexa7-technexion_imx7d-pico-pi";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-imx-cortexa7-technexion_imx7d-pico-pi-squashfs-combined.bin";
              sha256 = "56abf6d47f785eeb6215f25cb25ef158adc0085e492145b2448a68500edf5577";
              sha256_unsigned = "56abf6d47f785eeb6215f25cb25ef158adc0085e492145b2448a68500edf5577";
              type = "combined";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-imx-cortexa7-technexion_imx7d-pico-pi-squashfs-sysupgrade.bin";
              sha256 = "8b91908c9ca05b5ad0b28582876f057e2f41bb526bfbc594872e0f8ee40ae46b";
              sha256_unsigned = "fb4e92e2a3dfd00b4e6281531ff3e1d7d1bf8a370c79192c5da1e811d79d177d";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "technexion,imx7d-pico-pi"
          ];
          titles = [
            {
              model = "PICO-PI-IMX7D";
              vendor = "TechNexion";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "imx/cortexa7";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
    cortexa9 = {
      arch_packages = "arm_cortex-a9_neon";
      default_packages = [
        "base-files"
        "blkid"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "e2fsprogs"
        "firewall4"
        "fstools"
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
        "ppp"
        "ppp-mod-pppoe"
        "procd-ujail"
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "3a0384cb0b940df90a230f1854637261";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        solidrun_cubox-i = {
          device_packages = [
            "kmod-drm-imx"
            "kmod-drm-imx-hdmi"
            "kmod-usb-hid"
          ];
          image_prefix = "immortalwrt-24.10.1-imx-cortexa9-solidrun_cubox-i";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-imx-cortexa9-solidrun_cubox-i-squashfs-combined.bin";
              sha256 = "cdbe72ea7a3ec17c030181dbd32f2127c69bbf58234e6eea8f801f1d2865bc57";
              sha256_unsigned = "cdbe72ea7a3ec17c030181dbd32f2127c69bbf58234e6eea8f801f1d2865bc57";
              type = "combined";
            }
          ];
          supported_devices = [
            "solidrun,cubox-i"
          ];
          titles = [
            {
              model = "CuBox-i";
              vendor = "SolidRun";
            }
          ];
        };
        toradex_apalis = {
          device_packages = [
            "kmod-can"
            "kmod-can-flexcan"
            "kmod-can-raw"
            "kmod-leds-gpio"
            "kmod-gpio-button-hotplug"
            "kmod-pps-gpio"
            "kmod-rtc-ds1307"
          ];
          image_prefix = "immortalwrt-24.10.1-imx-cortexa9-toradex_apalis";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-imx-cortexa9-toradex_apalis-squashfs.sysupgrade.bin";
              sha256 = "fad9d018a2ff5ce2378793fc17964eb4c524b7352b6ac5286356ee262185ffc3";
              sha256_unsigned = "aa0b643cb790efb5c5c7ddb55f66a2f2766e28b4dff9443cd8a0ff6f026aa227";
              type = "sysupgrade";
            }
            {
              name = "immortalwrt-24.10.1-imx-cortexa9-toradex_apalis-recovery.scr";
              sha256 = "6d3aa3d20ea2537b9666acc247e8391d03d62775696da4ac3ed9ec966deda551";
              sha256_unsigned = "6d3aa3d20ea2537b9666acc247e8391d03d62775696da4ac3ed9ec966deda551";
              type = "recovery.scr";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-imx-cortexa9-toradex_apalis-squashfs.combined.bin";
              sha256 = "b85a999b512003c93df9be53219a9822bc464cc68085bcac16b5058898504bd9";
              sha256_unsigned = "b85a999b512003c93df9be53219a9822bc464cc68085bcac16b5058898504bd9";
              type = "combined";
            }
          ];
          supported_devices = [
            "apalis,ixora"
            "apalis,eval"
          ];
          titles = [
            {
              model = "Apalis family";
              vendor = "Toradex";
            }
          ];
        };
        ventana = {
          device_packages = [
            "kmod-sky2"
            "kmod-sound-core"
            "kmod-sound-soc-imx"
            "kmod-sound-soc-imx-sgtl5000"
            "kmod-can"
            "kmod-can-flexcan"
            "kmod-can-raw"
            "kmod-hwmon-gsc"
            "kmod-leds-gpio"
            "kmod-pps-gpio"
            "kobs-ng"
            "kmod-gpio-button-hotplug"
          ];
          image_prefix = "immortalwrt-24.10.1-imx-cortexa9-gateworks_ventana";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-imx-cortexa9-gateworks_ventana-squashfs-bootfs.tar.gz";
              sha256 = "17e61554fb735858e3299065df3d5a0e8542ceaa797ef132acdcc8405dbb999f";
              sha256_unsigned = "17e61554fb735858e3299065df3d5a0e8542ceaa797ef132acdcc8405dbb999f";
              type = "bootfs";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-imx-cortexa9-gateworks_ventana-large-squashfs-nand.ubi";
              sha256 = "3835e4d54e62f740646a20e89898a5397b6047a11befb2aee7b081656e1d3c8c";
              sha256_unsigned = "3835e4d54e62f740646a20e89898a5397b6047a11befb2aee7b081656e1d3c8c";
              type = "nand";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-imx-cortexa9-gateworks_ventana-squashfs-img.gz";
              sha256 = "b0e673525222003d6aa3e54d03496ed8457a341e45114949f785b99a1abe65a7";
              sha256_unsigned = "b0e673525222003d6aa3e54d03496ed8457a341e45114949f785b99a1abe65a7";
              type = "img";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-imx-cortexa9-gateworks_ventana-squashfs-nand.ubi";
              sha256 = "0c56dc3e78053f24739e17a7b34f38e1e8a5c7340f7dc0bd48aa3309a8a8377a";
              sha256_unsigned = "0c56dc3e78053f24739e17a7b34f38e1e8a5c7340f7dc0bd48aa3309a8a8377a";
              type = "nand";
            }
          ];
          supported_devices = [
            "gateworks,ventana"
          ];
          titles = [
            {
              model = "Ventana family";
              variant = "normal NAND flash";
              vendor = "Gateworks";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "imx/cortexa9";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
  };
  ipq40xx = {
    chromium = {
      arch_packages = "arm_cortex-a7_neon-vfpv4";
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
      linux_kernel = {
        release = "1";
        vermagic = "5fbd6d0aaefed0394a7556307123a722";
        version = "6.6.86";
      };
      metadata_version = 1;
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
          image_prefix = "immortalwrt-24.10.1-ipq40xx-chromium-google_wifi";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-chromium-google_wifi-squashfs-factory.bin";
              sha256 = "9aec574346ab788c91df6b5a46a802a3ab36d751048e3a8f21c671b3aa1276eb";
              sha256_unsigned = "9aec574346ab788c91df6b5a46a802a3ab36d751048e3a8f21c671b3aa1276eb";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-chromium-google_wifi-squashfs-sysupgrade.bin";
              sha256 = "192c5344199cc74c0540ca46695ecc8734ebd72a9e38a4566ca62984cceed055";
              sha256_unsigned = "8efe2a1210e21bba0027b577709adc5ef34d12b6659ce2eccf0f96dadffcfcbc";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-chromium-google_wifi-initramfs-fit-zImage.itb.vboot";
              sha256 = "47d108c18eda3447c1a191f7455df38ef4548ddd0ad64f37fee3c4f80f0952d4";
              sha256_unsigned = "47d108c18eda3447c1a191f7455df38ef4548ddd0ad64f37fee3c4f80f0952d4";
              type = "kernel";
            }
          ];
          supported_devices = [
            "google,wifi"
          ];
          titles = [
            {
              model = "WiFi (Gale)";
              vendor = "Google";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "ipq40xx/chromium";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
    generic = {
      arch_packages = "arm_cortex-a7_neon-vfpv4";
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
      linux_kernel = {
        release = "1";
        vermagic = "82b18cd82ab1de1eba5fe70eaee29237";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        "8dev_habanero-dvk" = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-8dev_habanero-dvk";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-8dev_habanero-dvk-squashfs-sysupgrade.bin";
              sha256 = "2d2d281ed5dd0ebce30023705a58d233298c481ae39dccf83c9732e670796fc1";
              sha256_unsigned = "372e6c7e9198a97208016610cbb0bf6927d304c97922920eacc38369946682e2";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-8dev_habanero-dvk-initramfs-uImage.itb";
              sha256 = "7597c80471fd334ae89e581b89313d08cb34b529a55a645d3dc5f0b55f75d206";
              sha256_unsigned = "7597c80471fd334ae89e581b89313d08cb34b529a55a645d3dc5f0b55f75d206";
              type = "kernel";
            }
          ];
          supported_devices = [
            "8dev,habanero-dvk"
          ];
          titles = [
            {
              model = "Habanero DVK";
              vendor = "8devices";
            }
          ];
        };
        "8dev_jalapeno" = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-8dev_jalapeno";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-8dev_jalapeno-squashfs-factory.ubi";
              sha256 = "06a6af62157d08366e490a4ac633a3345e502f1db6f3f027f97dc6a5066fdd0b";
              sha256_unsigned = "06a6af62157d08366e490a4ac633a3345e502f1db6f3f027f97dc6a5066fdd0b";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-8dev_jalapeno-squashfs-sysupgrade.bin";
              sha256 = "224f7f7c3f455369c80f84460fc7d1146be3c46f4fd5f52d8cd3e57c0e35dacd";
              sha256_unsigned = "97b57777e08ff10d155676aa3bed49bcc9b0478f207fb8f47bbfc78e7b34144c";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-8dev_jalapeno-initramfs-uImage.itb";
              sha256 = "e9cef43ec3a0c25b35c232b71901c29bbbf01e3b07b70f7eec9e256adcb72f07";
              sha256_unsigned = "e9cef43ec3a0c25b35c232b71901c29bbbf01e3b07b70f7eec9e256adcb72f07";
              type = "kernel";
            }
          ];
          supported_devices = [
            "8dev,jalapeno"
          ];
          titles = [
            {
              model = "Jalapeno";
              vendor = "8devices";
            }
          ];
        };
        alfa-network_ap120c-ac = {
          device_packages = [
            "kmod-usb-acm"
            "kmod-tpm-i2c-atmel"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-alfa-network_ap120c-ac";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-alfa-network_ap120c-ac-initramfs-uImage.itb";
              sha256 = "5f5f17daf2481143816567d3668c508ec67bb1c9543155c26c8aa30bcf4dd051";
              sha256_unsigned = "5f5f17daf2481143816567d3668c508ec67bb1c9543155c26c8aa30bcf4dd051";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-alfa-network_ap120c-ac-squashfs-sysupgrade.bin";
              sha256 = "a261cbfc215d5ea3edf082196328c89f81f6981af218508fb4f2f4e6fc1e385f";
              sha256_unsigned = "61d44b4b41ae77bdf8452e9e99a0b6bafaf1033339fe1065c65c7e4f6f97c930";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-alfa-network_ap120c-ac-squashfs-factory.bin";
              sha256 = "3e7fb1c1e21c573fa33649441a2fe168dd89134acf7d14523d91ffc78c51353c";
              sha256_unsigned = "3e7fb1c1e21c573fa33649441a2fe168dd89134acf7d14523d91ffc78c51353c";
              type = "factory";
            }
          ];
          supported_devices = [
            "alfa-network,ap120c-ac"
          ];
          titles = [
            {
              model = "AP120C-AC";
              vendor = "ALFA Network";
            }
          ];
        };
        aruba_ap-303 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-aruba_ap-303";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-aruba_ap-303-initramfs-uImage.itb";
              sha256 = "ab5540e35f5e7927d1feafcd3d977b16458274acdbd6c25a5c80c82e9fc8c516";
              sha256_unsigned = "ab5540e35f5e7927d1feafcd3d977b16458274acdbd6c25a5c80c82e9fc8c516";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-aruba_ap-303-squashfs-sysupgrade.bin";
              sha256 = "90a9e9424f0ad42b5a2367bf520ce35377b183eccd62a13ba27fa18d741b276f";
              sha256_unsigned = "84f9a04d334f7265e9504eb40d5b89bed4efc8cf79a2d028b346bc3eb055d9fe";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "aruba,ap-303"
          ];
          titles = [
            {
              model = "AP-303";
              vendor = "Aruba";
            }
          ];
        };
        aruba_ap-303h = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-aruba_ap-303h";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-aruba_ap-303h-initramfs-uImage.itb";
              sha256 = "2c4158ab6ee778499107911ae072bc1fa5665a78ef6cd5054693a4b850d2cdc8";
              sha256_unsigned = "2c4158ab6ee778499107911ae072bc1fa5665a78ef6cd5054693a4b850d2cdc8";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-aruba_ap-303h-squashfs-sysupgrade.bin";
              sha256 = "40c351173385addf94e97ead4ebeff1a631e7c085b5c4680b0d532eda96bf356";
              sha256_unsigned = "a7d2782c9b67f4bd498b767c5a90c74a5b35a9703c9ddf5a7a086b67ab51f1a2";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "aruba,ap-303h"
          ];
          titles = [
            {
              model = "AP-303H";
              vendor = "Aruba";
            }
          ];
        };
        aruba_ap-365 = {
          device_packages = [
            "kmod-hwmon-ad7418"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-aruba_ap-365";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-aruba_ap-365-initramfs-uImage.itb";
              sha256 = "a80cc1a91b9c4c1eb8dd5d2510826985cafb8a8ac3f1d3d684cabb0ec3a6c6f6";
              sha256_unsigned = "a80cc1a91b9c4c1eb8dd5d2510826985cafb8a8ac3f1d3d684cabb0ec3a6c6f6";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-aruba_ap-365-squashfs-sysupgrade.bin";
              sha256 = "6aac13e661837808e793860f1d349a5380ba8aa5acc3327c52989b41359c6e00";
              sha256_unsigned = "508b8172f4f86083e63f812b2a1b8ab81e149774b83f0e67ff586e756567076c";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "aruba,ap-365"
          ];
          titles = [
            {
              model = "AP-365";
              vendor = "Aruba";
            }
          ];
        };
        asus_map-ac2200 = {
          device_packages = [
            "ath10k-firmware-qca9888-ct"
            "kmod-ath3k"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-asus_map-ac2200";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-asus_map-ac2200-initramfs-uImage.itb";
              sha256 = "048a8d8869516738c0f5772313f743cfed2a3aaebd7a5e61804d75dfca7efac9";
              sha256_unsigned = "048a8d8869516738c0f5772313f743cfed2a3aaebd7a5e61804d75dfca7efac9";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-asus_map-ac2200-squashfs-sysupgrade.bin";
              sha256 = "225ec0e64ac441489817b084880cd9a8d7e57e009fe0e5f2d676ba1df6203e44";
              sha256_unsigned = "d8b55a6306231ca3eb3aafa118620a4e42d03f2a4346f43e3a5901300075f455";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "asus,map-ac2200"
          ];
          titles = [
            {
              model = "Lyra (MAP-AC2200)";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-ac42u = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-asus_rt-ac42u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-asus_rt-ac42u-squashfs-sysupgrade.bin";
              sha256 = "9ab3a98710311ee396abd30631c54d9b63cd687357c860a1a23b1ead323478a6";
              sha256_unsigned = "a944401258cc087eb8b0755546522b86662aecb972d94363ca522e41b7f96261";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-asus_rt-ac42u-initramfs-uImage.itb";
              sha256 = "f17d9c9a0a2a63ceb03d6094b57823d4d93e744460651562f2f10252d65abccf";
              sha256_unsigned = "f17d9c9a0a2a63ceb03d6094b57823d4d93e744460651562f2f10252d65abccf";
              type = "kernel";
            }
          ];
          supported_devices = [
            "asus,rt-ac42u"
          ];
          titles = [
            {
              model = "RT-AC42U";
              vendor = "ASUS";
            }
            {
              model = "RT-ACRH17";
              vendor = "ASUS";
            }
            {
              model = "RT-AC2200";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-ac58u = {
          device_packages = [
            "-kmod-ath10k-ct"
            "kmod-ath10k-ct-smallbuffers"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-asus_rt-ac58u";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-asus_rt-ac58u-squashfs-sysupgrade.bin";
              sha256 = "230ff2d631c1d8936ed2a8df903f25ba8c3a2c5ffcaf39151ffc1dde7b071a8d";
              sha256_unsigned = "ac5359277c5385eb280c56db4dc8688f75f537f1784c3e7bbfb336f2ad9792e9";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-asus_rt-ac58u-initramfs-uImage.itb";
              sha256 = "cefcf66ba31fde1e02c1793d82130e6c68f258bcacb7f534d2b17e03bdfa7d80";
              sha256_unsigned = "cefcf66ba31fde1e02c1793d82130e6c68f258bcacb7f534d2b17e03bdfa7d80";
              type = "kernel";
            }
          ];
          supported_devices = [
            "asus,rt-ac58u"
          ];
          titles = [
            {
              model = "RT-AC58U";
              vendor = "ASUS";
            }
            {
              model = "RT-ACRH13";
              vendor = "ASUS";
            }
          ];
        };
        avm_fritzbox-4040 = {
          device_packages = [
            "fritz-tffs"
            "fritz-caldata"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-avm_fritzbox-4040";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-avm_fritzbox-4040-squashfs-sysupgrade.bin";
              sha256 = "7353e10b69704b834775ea993b335994d3b8a9f656c598ab0c29e0d7a4c68d43";
              sha256_unsigned = "73a64ff70af2b3299c14b11ac68a324086ac2a36c6bbb0d2007ad60a9bd7d102";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-avm_fritzbox-4040-squashfs-eva.bin";
              sha256 = "a4079b3c520ba3128dab2b591e08f51abd640b28d029c1b70db7439dc4d6f590";
              sha256_unsigned = "a4079b3c520ba3128dab2b591e08f51abd640b28d029c1b70db7439dc4d6f590";
              type = "eva";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-avm_fritzbox-4040-initramfs-uImage.itb";
              sha256 = "b82d3d527413b8218fee0088641e3703d09b4d8aeb89c19a5ea985df62693749";
              sha256_unsigned = "b82d3d527413b8218fee0088641e3703d09b4d8aeb89c19a5ea985df62693749";
              type = "kernel";
            }
          ];
          supported_devices = [
            "avm,fritzbox-4040"
          ];
          titles = [
            {
              model = "FRITZ!Box 4040";
              vendor = "AVM";
            }
          ];
        };
        avm_fritzbox-7530 = {
          device_packages = [
            "fritz-caldata"
            "fritz-tffs-nand"
            "ltq-vdsl-vr11-app"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-avm_fritzbox-7530";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-avm_fritzbox-7530-initramfs-uImage.itb";
              sha256 = "2bdd6cc560651b8747fc78bb99f73753c4db1052ae6cf74b717957ecfea6071c";
              sha256_unsigned = "2bdd6cc560651b8747fc78bb99f73753c4db1052ae6cf74b717957ecfea6071c";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-avm_fritzbox-7530-squashfs-sysupgrade.bin";
              sha256 = "fe68fbda7d45ab6d931fe908a6226dcf91021a45608f34de459490ee4e10cca5";
              sha256_unsigned = "6b265075b9fd84b0041a87ae326f12faeaf1b20709bff85b289880ab45fb4ddc";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "avm,fritzbox-7530"
          ];
          titles = [
            {
              model = "FRITZ!Box 7530";
              vendor = "AVM";
            }
            {
              model = "FRITZ!Box 7520";
              vendor = "AVM";
            }
          ];
        };
        avm_fritzrepeater-1200 = {
          device_packages = [
            "fritz-caldata"
            "fritz-tffs-nand"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-avm_fritzrepeater-1200";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-avm_fritzrepeater-1200-initramfs-uImage.itb";
              sha256 = "52d4da8a64c6d6b857863d8b0bbec1716e8f0a1718a176c7e75f7d9b01406ca1";
              sha256_unsigned = "52d4da8a64c6d6b857863d8b0bbec1716e8f0a1718a176c7e75f7d9b01406ca1";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-avm_fritzrepeater-1200-squashfs-sysupgrade.bin";
              sha256 = "ad705344fe89e0ae8ac1e5ee910fac8fc0c2d3f8dad3fe893459e98b62ea815c";
              sha256_unsigned = "2558ef0c1f240d87b6160f9dee87750736ad2329201a6bbbae37b8184ff51d19";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "avm,fritzrepeater-1200"
          ];
          titles = [
            {
              model = "FRITZ!Repeater 1200";
              vendor = "AVM";
            }
          ];
        };
        avm_fritzrepeater-3000 = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
            "fritz-caldata"
            "fritz-tffs-nand"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-avm_fritzrepeater-3000";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-avm_fritzrepeater-3000-initramfs-uImage.itb";
              sha256 = "91633cdc931ad33844de52054c60808a96c1dd602768a2bbb8dfd033c0d1e115";
              sha256_unsigned = "91633cdc931ad33844de52054c60808a96c1dd602768a2bbb8dfd033c0d1e115";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-avm_fritzrepeater-3000-squashfs-sysupgrade.bin";
              sha256 = "a5ffd553e915bcf84ca1d151f1bc2b4fba48f9c3fbe6e7349ee512e5abefc440";
              sha256_unsigned = "483286b5d7b5aaeba8f96f64160b09f99d156911cc6db4fc6643a353edca5637";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "avm,fritzrepeater-3000"
          ];
          titles = [
            {
              model = "FRITZ!Repeater 3000";
              vendor = "AVM";
            }
          ];
        };
        buffalo_wtr-m2133hp = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-buffalo_wtr-m2133hp";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-buffalo_wtr-m2133hp-initramfs-uImage.itb";
              sha256 = "889d11519ee23152a6b042d55c240d260b8ce4f398123e68a7cb98b67179f2f7";
              sha256_unsigned = "889d11519ee23152a6b042d55c240d260b8ce4f398123e68a7cb98b67179f2f7";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-buffalo_wtr-m2133hp-squashfs-factory.ubi";
              sha256 = "7f52d30b74a309f5c37d3bbfe949ae4490de12fbe15986bbedc91162533b03f1";
              sha256_unsigned = "7f52d30b74a309f5c37d3bbfe949ae4490de12fbe15986bbedc91162533b03f1";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-buffalo_wtr-m2133hp-squashfs-sysupgrade.bin";
              sha256 = "d98c27388c2f0c244c29206323c3e8f57cdfbbbc5c2dd9ff96ee6e9918a5ee0b";
              sha256_unsigned = "9ef85c38356766ee65c694463bcd32dad3f3acdb2be857b4a222fafa0b6abc92";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "buffalo,wtr-m2133hp"
          ];
          titles = [
            {
              model = "WTR-M2133HP";
              vendor = "Buffalo";
            }
          ];
        };
        cellc_rtl30vw = {
          device_packages = [
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "uqmi"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-cellc_rtl30vw";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-cellc_rtl30vw-squashfs-factory.bin";
              sha256 = "4d32c5aeab6cbbd0b0489b1850d610f93003ed27295d9036ca992629756b0538";
              sha256_unsigned = "4d32c5aeab6cbbd0b0489b1850d610f93003ed27295d9036ca992629756b0538";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-cellc_rtl30vw-squashfs-sysupgrade.bin";
              sha256 = "e06380fb8686add3c3fb205ff9488c2a221adc499644fc660869500ec66e43b8";
              sha256_unsigned = "cb8b98ff78f0f79e6b009bc68f3c1c12f36fee036518ad4c153ecc3e1cd8643d";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-cellc_rtl30vw-initramfs-zImage.itb";
              sha256 = "7938856fa42caf9b900cf83885edc86eea7256b4ca96c4396940242ddf02a471";
              sha256_unsigned = "7938856fa42caf9b900cf83885edc86eea7256b4ca96c4396940242ddf02a471";
              type = "kernel";
            }
          ];
          supported_devices = [
            "cellc,rtl30vw"
          ];
          titles = [
            {
              model = "RTL30VW";
              vendor = "Cell C";
            }
          ];
        };
        dlink_dap-2610 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-dlink_dap-2610";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-dlink_dap-2610-squashfs-factory.bin";
              sha256 = "477c3750efba0519f19bb5d3c2a465e4250fc7b0958e3ecb5816431fbe477841";
              sha256_unsigned = "477c3750efba0519f19bb5d3c2a465e4250fc7b0958e3ecb5816431fbe477841";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-dlink_dap-2610-initramfs-uImage.itb";
              sha256 = "1ee9bc7018467bca021b10d5f8fb68880d1184638dba5d9c7ed3cfc69b6fb3c1";
              sha256_unsigned = "1ee9bc7018467bca021b10d5f8fb68880d1184638dba5d9c7ed3cfc69b6fb3c1";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-dlink_dap-2610-squashfs-sysupgrade.bin";
              sha256 = "8caae434be8687c56d37be9037d43bc6072db565624ce2689c516175524a740f";
              sha256_unsigned = "67c4bc9ef8cf8cc0e521706595faf5d5dfadda05422edd38f715a6b7c809606e";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "dlink,dap-2610"
          ];
          titles = [
            {
              model = "DAP-2610";
              vendor = "D-Link";
            }
          ];
        };
        edgecore_ecw5211 = {
          device_packages = [
            "kmod-tpm-i2c-atmel"
            "kmod-usb-acm"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-edgecore_ecw5211";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-edgecore_ecw5211-squashfs-factory.ubi";
              sha256 = "3bb2576c602f813880cc20aa08ec40e136f13e394937544856a63bd7f26d4704";
              sha256_unsigned = "3bb2576c602f813880cc20aa08ec40e136f13e394937544856a63bd7f26d4704";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-edgecore_ecw5211-squashfs-sysupgrade.bin";
              sha256 = "7577f39e8f562cbd547d4d59e9dc2b7f0f7fbc6779072ee43918284da6ef6f93";
              sha256_unsigned = "2c8695382cbf9f7f14e55e4141bc0c675d0d7370f2df325ffdfb9bb8e487b722";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-edgecore_ecw5211-initramfs-uImage.itb";
              sha256 = "c98e3104df3f44ef6fd8b56941a6b12336057eafc76f78707bdd5a8fe3fddfab";
              sha256_unsigned = "c98e3104df3f44ef6fd8b56941a6b12336057eafc76f78707bdd5a8fe3fddfab";
              type = "kernel";
            }
          ];
          supported_devices = [
            "edgecore,ecw5211"
          ];
          titles = [
            {
              model = "ECW5211";
              vendor = "Edgecore";
            }
          ];
        };
        engenius_eap1300 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-engenius_eap1300";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-engenius_eap1300-squashfs-sysupgrade.bin";
              sha256 = "192a37b4bd5ec35a6de7105d438f3dcd8bb8a483c4ec78b7e6037335af167fcb";
              sha256_unsigned = "b56719bc62a6caf9661ab41abdbb2e8fa913607bef57723420c8cbcf3369e8f8";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-engenius_eap1300-initramfs-uImage.itb";
              sha256 = "031b1c2b592839f0f4f5ce3818abca30c1a06261482bad27a4209cb0962598b4";
              sha256_unsigned = "031b1c2b592839f0f4f5ce3818abca30c1a06261482bad27a4209cb0962598b4";
              type = "kernel";
            }
          ];
          supported_devices = [
            "engenius,eap1300"
          ];
          titles = [
            {
              model = "EAP1300";
              vendor = "EnGenius";
            }
            {
              model = "EAP1300EXT";
              vendor = "EnGenius";
            }
          ];
        };
        extreme-networks_ws-ap3915i = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-extreme-networks_ws-ap3915i";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-extreme-networks_ws-ap3915i-squashfs-sysupgrade.bin";
              sha256 = "de0dab4fa99f130cd2bf5722ea680dc7e619e8af13c4ae4815f99838425dab99";
              sha256_unsigned = "7cad0c7fa9a1bf2f44fe49fe84bf33f3710853670902608fa9f065935f606734";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-extreme-networks_ws-ap3915i-initramfs-uImage.itb";
              sha256 = "46c8c9cd1b409147bd4fa7aef19794ebb128492d892458b28bde3283b633236c";
              sha256_unsigned = "46c8c9cd1b409147bd4fa7aef19794ebb128492d892458b28bde3283b633236c";
              type = "kernel";
            }
          ];
          supported_devices = [
            "extreme-networks,ws-ap3915i"
          ];
          titles = [
            {
              model = "WS-AP3915i";
              vendor = "Extreme Networks";
            }
          ];
        };
        extreme-networks_ws-ap391x = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-extreme-networks_ws-ap391x";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-extreme-networks_ws-ap391x-initramfs-uImage.itb";
              sha256 = "8c37501bae64445e79bcc67e0007a4b6c338eecb186a0e74dac9d21663202e1a";
              sha256_unsigned = "8c37501bae64445e79bcc67e0007a4b6c338eecb186a0e74dac9d21663202e1a";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-extreme-networks_ws-ap391x-squashfs-sysupgrade.bin";
              sha256 = "e3614a5826b4debc8ad8184ea9326703a6fcf0547bc663e07f12f5ab80ba2884";
              sha256_unsigned = "e9000b160c8feed8307b14ccdcaed2a8000caf80b870b4ab58d8f251e05681ca";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "extreme-networks,ws-ap391x"
          ];
          titles = [
            {
              model = "WS-AP391x";
              vendor = "Extreme Networks";
            }
          ];
        };
        ezviz_cs-w3-wd1200g-eup = {
          device_packages = [
            "-kmod-ath10k-ct"
            "kmod-ath10k-ct-smallbuffers"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-ezviz_cs-w3-wd1200g-eup";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-ezviz_cs-w3-wd1200g-eup-initramfs-uImage.itb";
              sha256 = "4ead79084c7e74b229730ef8c55f7183e585d8ea2a12e94a9017bcc51507981b";
              sha256_unsigned = "4ead79084c7e74b229730ef8c55f7183e585d8ea2a12e94a9017bcc51507981b";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-ezviz_cs-w3-wd1200g-eup-squashfs-sysupgrade.bin";
              sha256 = "5cb155b6537178ed9a78b0e0b9d3d8e0b0ba48cdf4c3ca191dd8eea1558a52bb";
              sha256_unsigned = "068fb769aa76e9d354fd5a0ce6d1005b23fc4b5685206120ac75c4de68db4a1c";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "ezviz,cs-w3-wd1200g-eup"
          ];
          titles = [
            {
              model = "CS-W3-WD1200G";
              variant = "EUP";
              vendor = "EZVIZ";
            }
          ];
        };
        glinet_gl-a1300 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-glinet_gl-a1300";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-glinet_gl-a1300-initramfs-uImage.itb";
              sha256 = "1e48b5b20de7ddd41767782ff8e64f782cc2bc6f1012e45b0f5392ecb51b4f43";
              sha256_unsigned = "1e48b5b20de7ddd41767782ff8e64f782cc2bc6f1012e45b0f5392ecb51b4f43";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-glinet_gl-a1300-squashfs-factory.ubi";
              sha256 = "bdf8d0f6f90cdde31683ecfbc9210ab8f188a25f15173081a5c871dc1d20979c";
              sha256_unsigned = "bdf8d0f6f90cdde31683ecfbc9210ab8f188a25f15173081a5c871dc1d20979c";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-glinet_gl-a1300-squashfs-sysupgrade.bin";
              sha256 = "5358a538f315d142feb716b5d440bcd67e5272333ec13c04543e4d77e6decdab";
              sha256_unsigned = "62f9894004d5658fa7e8c450c5389fa2486ed09ccce1a525c18c07fa224a322c";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "glinet,gl-a1300"
          ];
          titles = [
            {
              model = "GL-A1300";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-ap1300 = {
          device_packages = [
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "uqmi"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-glinet_gl-ap1300";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-glinet_gl-ap1300-initramfs-uImage.itb";
              sha256 = "b30a6d7f10a3a0d60133f55b80910ea3cdce3a8f06ac34c578f1301a734c9b58";
              sha256_unsigned = "b30a6d7f10a3a0d60133f55b80910ea3cdce3a8f06ac34c578f1301a734c9b58";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-glinet_gl-ap1300-squashfs-sysupgrade.bin";
              sha256 = "a811ffc5457e694f576e172e4c7d6f6440bddfd9bdf02b383c3991e6140c12d4";
              sha256_unsigned = "5e87bf4f2262b728e8bf2ff5121e86a3bc6632f1186f6a5db354931da5993e3f";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-glinet_gl-ap1300-squashfs-factory.ubi";
              sha256 = "ba9c5c00a1138a4dc84148e362dfabcc5b726c028ad5aaf190f0262732bde58a";
              sha256_unsigned = "ba9c5c00a1138a4dc84148e362dfabcc5b726c028ad5aaf190f0262732bde58a";
              type = "factory";
            }
          ];
          supported_devices = [
            "glinet,gl-ap1300"
          ];
          titles = [
            {
              model = "GL-AP1300";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-b1300 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-glinet_gl-b1300";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-glinet_gl-b1300-squashfs-sysupgrade.bin";
              sha256 = "0cf4f0e2f62da4ae38c8667b4f2f93119569bd02532bf1384218173d8ff72e52";
              sha256_unsigned = "63fde7d81333eb6a62d00142948d1198405744722379273c3c5801f3aaf8f637";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-glinet_gl-b1300-initramfs-zImage.itb";
              sha256 = "3ade921a899f22e0445e29fe4f020d14b93c51d6118e6b17cd19c0d23ae1c83e";
              sha256_unsigned = "3ade921a899f22e0445e29fe4f020d14b93c51d6118e6b17cd19c0d23ae1c83e";
              type = "kernel";
            }
          ];
          supported_devices = [
            "glinet,gl-b1300"
          ];
          titles = [
            {
              model = "GL-B1300";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_gl-b2200 = {
          device_packages = [
            "ath10k-firmware-qca9888-ct"
            "kmod-fs-ext4"
            "kmod-mmc"
            "kmod-spi-dev"
            "mkf2fs"
            "e2fsprogs"
            "kmod-fs-f2fs"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-glinet_gl-b2200";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-glinet_gl-b2200-squashfs-emmc.img.gz";
              sha256 = "faf3c0887dbf8f56319d6db649856e31e3e2a357b248d086f858759dccb2c908";
              sha256_unsigned = "9e103b93e87da78a2f72641589cc7f6d9ac52f1c7cdf5c316e0533220e0f8448";
              type = "emmc";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-glinet_gl-b2200-initramfs-recovery.itb";
              sha256 = "29f125a2190750c35e0c8acc430d85dd1ff178201a9c07276638980ddd445941";
              sha256_unsigned = "29f125a2190750c35e0c8acc430d85dd1ff178201a9c07276638980ddd445941";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-glinet_gl-b2200-squashfs-sysupgrade.bin";
              sha256 = "3fde4647c04752f1a3f34a30fcb8725dd7ac6a7d90719e1d920dcec93e1d5d7e";
              sha256_unsigned = "d62705d8694561193da5d8a4c5950923cb22457f59b4764ba9d08bdd277d25d3";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "glinet,gl-b2200"
          ];
          titles = [
            {
              model = "GL-B2200";
              vendor = "GL.iNet";
            }
          ];
        };
        linksys_ea6350v3 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-linksys_ea6350v3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-linksys_ea6350v3-squashfs-sysupgrade.bin";
              sha256 = "f0e23f2ab65042de6b6e409ddb2dbe9def2d1e3e51266c4f5e8f3eb1abaf09ff";
              sha256_unsigned = "2c184f7850c5c7bc283b652b16cac590f915b1596c35e8393bc0ca03098e1b45";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-linksys_ea6350v3-initramfs-zImage.itb";
              sha256 = "0d62086a67c3818d94bff1a138e22707f2855ad53d1897bd01ed2cc29e44f97c";
              sha256_unsigned = "0d62086a67c3818d94bff1a138e22707f2855ad53d1897bd01ed2cc29e44f97c";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-linksys_ea6350v3-squashfs-factory.bin";
              sha256 = "7899b1ee9a5e63b8f493da1dc6418157c22c7b370fe2bfed55b0e551412a92d4";
              sha256_unsigned = "7899b1ee9a5e63b8f493da1dc6418157c22c7b370fe2bfed55b0e551412a92d4";
              type = "factory";
            }
          ];
          supported_devices = [
            "linksys,ea6350v3"
          ];
          titles = [
            {
              model = "EA6350";
              variant = "v3";
              vendor = "Linksys";
            }
          ];
        };
        linksys_ea8300 = {
          device_packages = [
            "ath10k-firmware-qca9888-ct"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-linksys_ea8300";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-linksys_ea8300-squashfs-sysupgrade.bin";
              sha256 = "753ec17bfc3f4bc067c2ec57345153605d83de456ef676d16fcfe23d29ff6e2a";
              sha256_unsigned = "f7b0775ee3979b9c005c1e45b773cbe75330e8a61efc07880184de067fcfca2e";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-linksys_ea8300-initramfs-zImage.itb";
              sha256 = "66c3ab82cdbef2c5abe2072890b9cd1f17af01fd477e5c7da2b9f139ff4c30b9";
              sha256_unsigned = "66c3ab82cdbef2c5abe2072890b9cd1f17af01fd477e5c7da2b9f139ff4c30b9";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-linksys_ea8300-squashfs-factory.bin";
              sha256 = "52fa2d86b8a1e633dd75e6a4171b36c417823e4c9e8f91704a98abe726f8a2f6";
              sha256_unsigned = "52fa2d86b8a1e633dd75e6a4171b36c417823e4c9e8f91704a98abe726f8a2f6";
              type = "factory";
            }
          ];
          supported_devices = [
            "linksys,ea8300"
          ];
          titles = [
            {
              model = "EA8300";
              vendor = "Linksys";
            }
          ];
        };
        linksys_mr8300 = {
          device_packages = [
            "ath10k-firmware-qca9888-ct"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-linksys_mr8300";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-linksys_mr8300-initramfs-zImage.itb";
              sha256 = "0c6cc183ae568af2ddf2cd3f2665b35f81e645badb50be463f82ad125d9e032e";
              sha256_unsigned = "0c6cc183ae568af2ddf2cd3f2665b35f81e645badb50be463f82ad125d9e032e";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-linksys_mr8300-squashfs-factory.bin";
              sha256 = "d8ed06f2d3ad73f90c91ffe7fe93d96db94b332f80a65c16c3857118ada510b3";
              sha256_unsigned = "d8ed06f2d3ad73f90c91ffe7fe93d96db94b332f80a65c16c3857118ada510b3";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-linksys_mr8300-squashfs-sysupgrade.bin";
              sha256 = "b29b5f7d2b5eedf4efa642d3a6301344596855e988dc52c7c5ea72a4304c957e";
              sha256_unsigned = "7c9865f9fa81e32a37aa6c97f017469a51ae212d5a981abb5b6442e5646f5850";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "linksys,mr8300"
          ];
          titles = [
            {
              model = "MR8300";
              vendor = "Linksys";
            }
          ];
        };
        linksys_whw01 = {
          device_packages = [
            "uboot-envtools"
            "kmod-leds-pca963x"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-linksys_whw01";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-linksys_whw01-squashfs-sysupgrade.bin";
              sha256 = "4faaa009c5e9c298b0f9b4e456a9bbcdf9e51fefa9614d5c56af3974d882db1a";
              sha256_unsigned = "f691ee82e9e320febf495c84464e420e8eeab550e92098f4ceb0f835435b5db4";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-linksys_whw01-squashfs-factory.bin";
              sha256 = "31e3e53d49459f080b14f3f7f42b9e7cc4af3646202711a354adf1db8ffc6bbd";
              sha256_unsigned = "31e3e53d49459f080b14f3f7f42b9e7cc4af3646202711a354adf1db8ffc6bbd";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-linksys_whw01-initramfs-zImage.itb";
              sha256 = "8c0d18355d405e8735bf515c77e6b9bfdfbf6c0094d8732f1a458a063c826b92";
              sha256_unsigned = "8c0d18355d405e8735bf515c77e6b9bfdfbf6c0094d8732f1a458a063c826b92";
              type = "kernel";
            }
          ];
          supported_devices = [
            "linksys,whw01"
          ];
          titles = [
            {
              model = "WHW01";
              vendor = "Linksys";
            }
          ];
        };
        linksys_whw03 = {
          device_packages = [
            "ath10k-firmware-qca9888-ct"
            "kmod-leds-pca963x"
            "kmod-spi-dev"
            "kmod-bluetooth"
            "kmod-fs-ext4"
            "e2fsprogs"
            "kmod-fs-f2fs"
            "mkf2fs"
            "losetup"
            "ipq-wifi-linksys_whw03"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-linksys_whw03";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-linksys_whw03-squashfs-factory.bin";
              sha256 = "1019a1738405df0eb39cf2b2acd9096ca4bd347826679e422c0d104f25065f4f";
              sha256_unsigned = "1019a1738405df0eb39cf2b2acd9096ca4bd347826679e422c0d104f25065f4f";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-linksys_whw03-initramfs-zImage.itb";
              sha256 = "3a8a7e8c7f01fa81bf74ff1ea800eac9124e09af5fe947c2a8b2428561ef940a";
              sha256_unsigned = "3a8a7e8c7f01fa81bf74ff1ea800eac9124e09af5fe947c2a8b2428561ef940a";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-linksys_whw03-squashfs-sysupgrade.bin";
              sha256 = "401e74d302285e2e1be25649f46704c08be8aa6244413ec6404b7a4912348df7";
              sha256_unsigned = "e7daa4fd4a40d16e7c95586ff11e61c9fab769f1173e8de7c592e1f8b8c6a1c3";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "linksys,whw03"
          ];
          titles = [
            {
              model = "WHW03";
              vendor = "Linksys";
            }
          ];
        };
        linksys_whw03v2 = {
          device_packages = [
            "ath10k-firmware-qca9888-ct"
            "kmod-leds-pca963x"
            "kmod-spi-dev"
            "kmod-bluetooth"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-linksys_whw03v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-linksys_whw03v2-squashfs-factory.bin";
              sha256 = "f9d1665f93cc82f97a486bc5f5151fbece31c9ff8c54934fe1f017183ff5280e";
              sha256_unsigned = "f9d1665f93cc82f97a486bc5f5151fbece31c9ff8c54934fe1f017183ff5280e";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-linksys_whw03v2-squashfs-sysupgrade.bin";
              sha256 = "3a7f06c5f479cf907168c106afeac917f4f4f0d3bcb223e21f8e0c53d75df1fc";
              sha256_unsigned = "0c900b5666c7f510a45426d9e1a2812a41f823f0c9bb4d1c10ebdb70b7db038c";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-linksys_whw03v2-initramfs-zImage.itb";
              sha256 = "ee586f638e90b4d9f2a8a7d8cffaa9e9b5ab68bbb0a0eeeadeac66605c8c7428";
              sha256_unsigned = "ee586f638e90b4d9f2a8a7d8cffaa9e9b5ab68bbb0a0eeeadeac66605c8c7428";
              type = "kernel";
            }
          ];
          supported_devices = [
            "linksys,whw03v2"
          ];
          titles = [
            {
              model = "WHW03";
              variant = "V2";
              vendor = "Linksys";
            }
          ];
        };
        luma_wrtq-329acn = {
          device_packages = [
            "kmod-ath3k"
            "kmod-eeprom-at24"
            "kmod-i2c-gpio"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-luma_wrtq-329acn";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-luma_wrtq-329acn-initramfs-uImage.itb";
              sha256 = "3d513c1ea1f2d1aef1819af12c984f9f772871180c7f0551fad4db4978025e4e";
              sha256_unsigned = "3d513c1ea1f2d1aef1819af12c984f9f772871180c7f0551fad4db4978025e4e";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-luma_wrtq-329acn-squashfs-sysupgrade.bin";
              sha256 = "a18e576f57be4bd976ccf2564563585a1837ead79070ccb1101229bf527f1f5a";
              sha256_unsigned = "d6bdf49954e833f3dae079a0bf00a6d688db00f680ca6671b4f84daf2e924a8a";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "luma,wrtq-329acn"
          ];
          titles = [
            {
              model = "WRTQ-329ACN";
              vendor = "Luma Home";
            }
          ];
        };
        meraki_mr33 = {
          device_packages = [
            "ath10k-firmware-qca9887-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-meraki_mr33";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-meraki_mr33-initramfs-uImage.itb";
              sha256 = "b113c07304d204c4f07289c938855b66a44985431a620a7c4ec88f1cc9281efd";
              sha256_unsigned = "b113c07304d204c4f07289c938855b66a44985431a620a7c4ec88f1cc9281efd";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-meraki_mr33-squashfs-sysupgrade.bin";
              sha256 = "ed4f55d8762c28ad4ceab523b1349212eac7eea444bdf433d33ea303826aab16";
              sha256_unsigned = "fce03dd3c3d8ea0200757f7b92e1d821f103ae59349bc3126dbdf05ff4cde94f";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "meraki,mr33"
          ];
          titles = [
            {
              model = "MR33";
              vendor = "Cisco Meraki";
            }
          ];
        };
        meraki_mr74 = {
          device_packages = [
            "ath10k-firmware-qca9887-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-meraki_mr74";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-meraki_mr74-squashfs-sysupgrade.bin";
              sha256 = "1ddb6755a2a3fc18a0bdae1afb0120e336b2e4eed7da4f03223c30c31831c0f9";
              sha256_unsigned = "9d7521341b6a14d1d8084d48edf629b59a917c7520df33a9afd8538654269a0a";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-meraki_mr74-initramfs-uImage.itb";
              sha256 = "d7e9c3f98ecdeeaca62b41dc5d225fe4a8f8a8396957f300bd5069e8cefb2471";
              sha256_unsigned = "d7e9c3f98ecdeeaca62b41dc5d225fe4a8f8a8396957f300bd5069e8cefb2471";
              type = "kernel";
            }
          ];
          supported_devices = [
            "meraki,mr74"
          ];
          titles = [
            {
              model = "MR74";
              vendor = "Cisco Meraki";
            }
          ];
        };
        mobipromo_cm520-79f = {
          device_packages = [
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-mobipromo_cm520-79f";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-mobipromo_cm520-79f-squashfs-sysupgrade.bin";
              sha256 = "00cbb3be93eb327bb5173d4e7e35784f1076147f4eae1b944df287495c719ae1";
              sha256_unsigned = "7de684e584a93d5b1f83196b3fde39f2643bbf0d640ec13bade8881075603efb";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-mobipromo_cm520-79f-squashfs-factory.ubi";
              sha256 = "3b82cbb4aee553811bf1441a9e09be39ad1cf48da2a8eedc2d7353aca8d124ed";
              sha256_unsigned = "3b82cbb4aee553811bf1441a9e09be39ad1cf48da2a8eedc2d7353aca8d124ed";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-mobipromo_cm520-79f-initramfs-zImage.itb";
              sha256 = "87ee6071de71e2b484598e5ccee73b3cf4e17c4ddc2921dc53236d0773b10521";
              sha256_unsigned = "87ee6071de71e2b484598e5ccee73b3cf4e17c4ddc2921dc53236d0773b10521";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mobipromo,cm520-79f"
          ];
          titles = [
            {
              model = "CM520-79F";
              vendor = "MobiPromo";
            }
          ];
        };
        netgear_ex6100v2 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-netgear_ex6100v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-netgear_ex6100v2-squashfs-factory.img";
              sha256 = "abfb034d8e26aea75da1c3b7531e89fc37b9737e0d7e72d2156b96720c1be19f";
              sha256_unsigned = "abfb034d8e26aea75da1c3b7531e89fc37b9737e0d7e72d2156b96720c1be19f";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-netgear_ex6100v2-initramfs-zImage.itb";
              sha256 = "d68f6b61ce925cd0674fca884c012159450b4c907bf88f28e0b10de74de850b4";
              sha256_unsigned = "d68f6b61ce925cd0674fca884c012159450b4c907bf88f28e0b10de74de850b4";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-netgear_ex6100v2-squashfs-sysupgrade.bin";
              sha256 = "8aebe6a3dec28d260c2943435bb1d7c477ff4afe2ea54c3c95cb29dd7622358e";
              sha256_unsigned = "c1b93e80297a2ae77e83c8a64f20bf5ceffc764c32c95086d3b127488f831d0f";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,ex6100v2"
          ];
          titles = [
            {
              model = "EX6100";
              variant = "v2";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_ex6150v2 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-netgear_ex6150v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-netgear_ex6150v2-squashfs-factory.img";
              sha256 = "7aa4d605c3b4cad3a8b8b3751a70a77c0c1e86680ec7d621e06388c095ef3c3e";
              sha256_unsigned = "7aa4d605c3b4cad3a8b8b3751a70a77c0c1e86680ec7d621e06388c095ef3c3e";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-netgear_ex6150v2-initramfs-zImage.itb";
              sha256 = "4f9c328898aaef2321c4dfd2f4e4655a63c4fbcd98e27df549f1a9d8c7ca274a";
              sha256_unsigned = "4f9c328898aaef2321c4dfd2f4e4655a63c4fbcd98e27df549f1a9d8c7ca274a";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-netgear_ex6150v2-squashfs-sysupgrade.bin";
              sha256 = "8af0c1971fe4ce53a1414dcdc692f257ea82512d4892a7f1f32253c2b7c69ca4";
              sha256_unsigned = "12397b0cac060b6915cb450bb73cb30c1e486653d8e6f98289d11b722df3960c";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,ex6150v2"
          ];
          titles = [
            {
              model = "EX6150";
              variant = "v2";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_lbr20 = {
          device_packages = [
            "ipq-wifi-netgear_lbr20"
            "ath10k-firmware-qca9888-ct"
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "uqmi"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-netgear_lbr20";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-netgear_lbr20-squashfs-factory.img";
              sha256 = "5862b5820f240d58982aafd10a92288010092329388593e349f0fc030c806576";
              sha256_unsigned = "5862b5820f240d58982aafd10a92288010092329388593e349f0fc030c806576";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-netgear_lbr20-squashfs-sysupgrade.bin";
              sha256 = "c487f4c1e00ca23685f13e5806c37cf3604d13943fb29adc28c67cc3f1e776a5";
              sha256_unsigned = "817bc598eb29ba1731f51ede03bcc2aba372770915d7f0e6c7356e09754daff3";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-netgear_lbr20-initramfs-zImage.itb";
              sha256 = "8a6aa91abb922a7722a1e4eaf680c0fdc6a0b758e8d1e5ef8924e20c7685a7da";
              sha256_unsigned = "8a6aa91abb922a7722a1e4eaf680c0fdc6a0b758e8d1e5ef8924e20c7685a7da";
              type = "kernel";
            }
          ];
          supported_devices = [
            "netgear,lbr20"
          ];
          titles = [
            {
              model = "LBR20";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_rbr40 = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
            "e2fsprogs"
            "kmod-fs-ext4"
            "losetup"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-netgear_rbr40";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-netgear_rbr40-squashfs-sysupgrade.bin";
              sha256 = "caa462d3e0f7c6ac77a09fc511254b5e85748b3a36fe1f0dacdd7d680e5d453e";
              sha256_unsigned = "d6aeb8cd356c08db99cba3c1800095a719aba0ba35541d681c5f6289912ec58a";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-netgear_rbr40-squashfs-factory.img";
              sha256 = "f22d2787fe00c110d7091e41d32509c7242071fe8dc1383633ea68e04b5babf7";
              sha256_unsigned = "f22d2787fe00c110d7091e41d32509c7242071fe8dc1383633ea68e04b5babf7";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-netgear_rbr40-initramfs-zImage.itb";
              sha256 = "cd1e42a76d0d0e2f881a8819321fa7fc8b660002ad64d74053e92ecfd16d09c4";
              sha256_unsigned = "cd1e42a76d0d0e2f881a8819321fa7fc8b660002ad64d74053e92ecfd16d09c4";
              type = "kernel";
            }
          ];
          supported_devices = [
            "netgear,rbr40"
          ];
          titles = [
            {
              model = "RBR40";
              variant = "v1";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_rbr50 = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
            "e2fsprogs"
            "kmod-fs-ext4"
            "losetup"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-netgear_rbr50";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-netgear_rbr50-squashfs-sysupgrade.bin";
              sha256 = "c95589e1af0c6a5f0d6bc4ab4a46865759f76d5317cd27d18162439f3679f9d7";
              sha256_unsigned = "cbea69e9da90bdfd123b892be6ca9fb74bf3898f52f12d06d137d77b9865be3e";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-netgear_rbr50-squashfs-factory.img";
              sha256 = "4b59d0db61f2fc653e81e079192ba3ef5db6b185a0f2f952a0afc177bd906b30";
              sha256_unsigned = "4b59d0db61f2fc653e81e079192ba3ef5db6b185a0f2f952a0afc177bd906b30";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-netgear_rbr50-initramfs-zImage.itb";
              sha256 = "11173c674216877316e01a7f6be2e7458f933cf2494c78e17844e69ec6a0590e";
              sha256_unsigned = "11173c674216877316e01a7f6be2e7458f933cf2494c78e17844e69ec6a0590e";
              type = "kernel";
            }
          ];
          supported_devices = [
            "netgear,rbr50"
          ];
          titles = [
            {
              model = "RBR50";
              variant = "v1";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_rbs40 = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
            "e2fsprogs"
            "kmod-fs-ext4"
            "losetup"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-netgear_rbs40";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-netgear_rbs40-squashfs-factory.img";
              sha256 = "8000156eacf38937c9285f690dd135bda1db9163543a00878e1531d61f487b94";
              sha256_unsigned = "8000156eacf38937c9285f690dd135bda1db9163543a00878e1531d61f487b94";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-netgear_rbs40-initramfs-zImage.itb";
              sha256 = "8e1a134f034ced7e4ae29efdfd284521354ba83713b5d4e74bc2d4b32a523ccd";
              sha256_unsigned = "8e1a134f034ced7e4ae29efdfd284521354ba83713b5d4e74bc2d4b32a523ccd";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-netgear_rbs40-squashfs-sysupgrade.bin";
              sha256 = "9485d10a39d6064e261b1cafbfa2492ddb7da6c33eb6ecf661eeca8363a68f39";
              sha256_unsigned = "b00079916a55fcf6239e0079e0b9c76f2e792979bc4c4c55a7ec5db06f3434ee";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,rbs40"
          ];
          titles = [
            {
              model = "RBS40";
              variant = "v1";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_rbs50 = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
            "e2fsprogs"
            "kmod-fs-ext4"
            "losetup"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-netgear_rbs50";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-netgear_rbs50-initramfs-zImage.itb";
              sha256 = "4ec0c04487480f5bb41bc1fbccc965ce86d28c25346aa6d031a2fc52e614c5c9";
              sha256_unsigned = "4ec0c04487480f5bb41bc1fbccc965ce86d28c25346aa6d031a2fc52e614c5c9";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-netgear_rbs50-squashfs-factory.img";
              sha256 = "165beda8cc878d9073ee4679b18c941c3e4d85572f4a88ad0c94066c139e88fd";
              sha256_unsigned = "165beda8cc878d9073ee4679b18c941c3e4d85572f4a88ad0c94066c139e88fd";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-netgear_rbs50-squashfs-sysupgrade.bin";
              sha256 = "e62a27299f4842cd10bc5e2d7804b8abaa58e306d25afa72b34d7eead87cc47e";
              sha256_unsigned = "58b4596dac145b4e54af552fd96638f0f711c6d70acfe83d1d3a620b66e64030";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,rbs50"
          ];
          titles = [
            {
              model = "RBS50";
              variant = "v1";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_srr60 = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
            "e2fsprogs"
            "kmod-fs-ext4"
            "losetup"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-netgear_srr60";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-netgear_srr60-squashfs-factory.img";
              sha256 = "21c56f931d9818a76b9d650a66ad8e18654384add3ab1990d74299b749924751";
              sha256_unsigned = "21c56f931d9818a76b9d650a66ad8e18654384add3ab1990d74299b749924751";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-netgear_srr60-initramfs-zImage.itb";
              sha256 = "3981b58f77472b18729ac3a02261a2d58352b606dfe6d031b0e2deee045e990c";
              sha256_unsigned = "3981b58f77472b18729ac3a02261a2d58352b606dfe6d031b0e2deee045e990c";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-netgear_srr60-squashfs-sysupgrade.bin";
              sha256 = "e68d7876da36dc8ffa90105a7d3e8c4b97c2c3995efbe0b854bc185cca3fa606";
              sha256_unsigned = "5a7c70c5b12e301dc6c634f6bb24cfc632203d4f562da655dfc2398eb2c6884b";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,srr60"
          ];
          titles = [
            {
              model = "SRR60";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_srs60 = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
            "e2fsprogs"
            "kmod-fs-ext4"
            "losetup"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-netgear_srs60";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-netgear_srs60-squashfs-sysupgrade.bin";
              sha256 = "782c60a67765c18cecab79fe54eb3d1a5372bed62fb798ae1f98ed75f5bb33bc";
              sha256_unsigned = "10217b33e09ff65a01b3624f68ce67090e56afec7b66c638884b02315e7964d6";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-netgear_srs60-squashfs-factory.img";
              sha256 = "24cf01548556ea2b01557315f00359d7efd06bd8fa27065595bacc593447d657";
              sha256_unsigned = "24cf01548556ea2b01557315f00359d7efd06bd8fa27065595bacc593447d657";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-netgear_srs60-initramfs-zImage.itb";
              sha256 = "53415c9ddc4e753caad7fff8bd3efd5bea7fe5625243d36ed301e0c15a4df456";
              sha256_unsigned = "53415c9ddc4e753caad7fff8bd3efd5bea7fe5625243d36ed301e0c15a4df456";
              type = "kernel";
            }
          ];
          supported_devices = [
            "netgear,srs60"
          ];
          titles = [
            {
              model = "SRS60";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_wac510 = {
          device_packages = [
            "uboot-envtools"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-netgear_wac510";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-netgear_wac510-squashfs-factory.tar";
              sha256 = "1ff5b707216cf58ef5ba6e48106003d3f72a3c7929abde907832d507c6c18102";
              sha256_unsigned = "1ff5b707216cf58ef5ba6e48106003d3f72a3c7929abde907832d507c6c18102";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-netgear_wac510-initramfs-uImage.itb";
              sha256 = "8f0b43c0da181da80dd18671771324acedb2bab2acbd810c0baf87f560b081ed";
              sha256_unsigned = "8f0b43c0da181da80dd18671771324acedb2bab2acbd810c0baf87f560b081ed";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-netgear_wac510-squashfs-sysupgrade.bin";
              sha256 = "cd8bb0152014069e0a7de7e29c92d4dd188c3c07e47dcd825f90f0c945ade0d5";
              sha256_unsigned = "2e79949930f59884518e912361f1f132abbd2da00162406242d33a34958c313c";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-netgear_wac510-squashfs-factory.ubi";
              sha256 = "b7ec21461fac5f8aa2f3872591f77cc95244f23a1687fb2f98a94eedcf97b7cb";
              sha256_unsigned = "b7ec21461fac5f8aa2f3872591f77cc95244f23a1687fb2f98a94eedcf97b7cb";
              type = "factory";
            }
          ];
          supported_devices = [
            "netgear,wac510"
          ];
          titles = [
            {
              model = "WAC510";
              vendor = "Netgear";
            }
          ];
        };
        openmesh_a42 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-openmesh_a42";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-openmesh_a42-squashfs-factory.bin";
              sha256 = "22a4fb52b33ceaf5f1fa248214c7df87ac85ff0d707de7f567e4db8fa84338fa";
              sha256_unsigned = "22a4fb52b33ceaf5f1fa248214c7df87ac85ff0d707de7f567e4db8fa84338fa";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-openmesh_a42-squashfs-sysupgrade.bin";
              sha256 = "6ab852bd091ce8bd358f6246772db0733fb67a4ac7fa863c3c1375b30014803b";
              sha256_unsigned = "efc2213089e35517b8d09341509f04550cfed4070302b4e21b8e11357386cd1d";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-openmesh_a42-initramfs-uImage.itb";
              sha256 = "871fb9b50fde88494ee8c2906fb328de9f4e5190e8283bacf0d41d9181d22e78";
              sha256_unsigned = "871fb9b50fde88494ee8c2906fb328de9f4e5190e8283bacf0d41d9181d22e78";
              type = "kernel";
            }
          ];
          supported_devices = [
            "openmesh,a42"
          ];
          titles = [
            {
              model = "A42";
              vendor = "OpenMesh";
            }
          ];
        };
        openmesh_a62 = {
          device_packages = [
            "ath10k-firmware-qca9888-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-openmesh_a62";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-openmesh_a62-squashfs-sysupgrade.bin";
              sha256 = "5e3b2a183e0fbd844ceb20eaefc182296ffab11505cffd587e9550572db6acb5";
              sha256_unsigned = "d821f0d8f689d6ee7ef2e378b0011b3004366244f62529dfb1ef2c295430bf28";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-openmesh_a62-squashfs-factory.bin";
              sha256 = "3af4f69fe7a44c00628cca2ec53f20355d5047cc6b18868804f3d08dd41fe341";
              sha256_unsigned = "3af4f69fe7a44c00628cca2ec53f20355d5047cc6b18868804f3d08dd41fe341";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-openmesh_a62-initramfs-uImage.itb";
              sha256 = "c86b717fa95d0e52b5d9bb3659880c5ad6f51f25b61a267c2dd23f5ee5a4f3d2";
              sha256_unsigned = "c86b717fa95d0e52b5d9bb3659880c5ad6f51f25b61a267c2dd23f5ee5a4f3d2";
              type = "kernel";
            }
          ];
          supported_devices = [
            "openmesh,a62"
          ];
          titles = [
            {
              model = "A62";
              vendor = "OpenMesh";
            }
          ];
        };
        p2w_r619ac-128m = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-p2w_r619ac-128m";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-p2w_r619ac-128m-squashfs-sysupgrade.bin";
              sha256 = "65ab4dafaa68af93afe371940c22f2762de13343057b4e826ab572db2fe6c188";
              sha256_unsigned = "8f301572d1f0d2d042797fed7db3afa439d87c5a0bf6d646bdad67961b4ed763";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-p2w_r619ac-128m-squashfs-factory.ubi";
              sha256 = "beb6a6908dab53981702c232535be98d79e4742d9c097f41b14aa2de74caefac";
              sha256_unsigned = "beb6a6908dab53981702c232535be98d79e4742d9c097f41b14aa2de74caefac";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-p2w_r619ac-128m-initramfs-zImage.itb";
              sha256 = "d6bdee24d819b9cf82246b50dd574a8cab63cdc2f5269f7d8b638075fc9d701f";
              sha256_unsigned = "d6bdee24d819b9cf82246b50dd574a8cab63cdc2f5269f7d8b638075fc9d701f";
              type = "kernel";
            }
          ];
          supported_devices = [
            "p2w,r619ac-128m"
          ];
          titles = [
            {
              model = "R619AC";
              variant = "128M NAND";
              vendor = "P&W";
            }
          ];
        };
        p2w_r619ac-64m = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-p2w_r619ac-64m";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-p2w_r619ac-64m-squashfs-sysupgrade.bin";
              sha256 = "c7057c597aa40be154d06f30aca443f65d6d6accfb9b7b82171fd7ce75074353";
              sha256_unsigned = "f6dc9c58c094a48317e345a4d86e7b029b725d29026d5ae57aca7d9c36ebd184";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-p2w_r619ac-64m-squashfs-factory.bin";
              sha256 = "a3fe8272adb539058ee13d0b5580154a83a3e92c37078c1e505a2512d1d8a3fe";
              sha256_unsigned = "a3fe8272adb539058ee13d0b5580154a83a3e92c37078c1e505a2512d1d8a3fe";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-p2w_r619ac-64m-squashfs-factory.ubi";
              sha256 = "f79c8a6a297d8dbc7bd422565b2ab04bbc1d2b23e494733f1ed1ab8efa5459e4";
              sha256_unsigned = "f79c8a6a297d8dbc7bd422565b2ab04bbc1d2b23e494733f1ed1ab8efa5459e4";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-p2w_r619ac-64m-initramfs-zImage.itb";
              sha256 = "557ae583f08fd306d3694ba4a333c73266391ecd4add6dc4a35efc0d3d7642f2";
              sha256_unsigned = "557ae583f08fd306d3694ba4a333c73266391ecd4add6dc4a35efc0d3d7642f2";
              type = "kernel";
            }
          ];
          supported_devices = [
            "p2w,r619ac-64m"
          ];
          titles = [
            {
              model = "R619AC";
              variant = "64M NAND";
              vendor = "P&W";
            }
          ];
        };
        pakedge_wr-1 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-pakedge_wr-1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-pakedge_wr-1-initramfs-uImage.itb";
              sha256 = "ea32d715d0971a5ecf5ec7a98c6883e76cf36cc859bae20cc6dc16232b2b666e";
              sha256_unsigned = "ea32d715d0971a5ecf5ec7a98c6883e76cf36cc859bae20cc6dc16232b2b666e";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-pakedge_wr-1-squashfs-sysupgrade.bin";
              sha256 = "0a763156e7bf5928bfb1b94d8fe8476f79023d99160783b7e4a6df930f878fc9";
              sha256_unsigned = "a148df01ce39f0be75db67f0d95dbcaba7d299a0e42da34625ef3b3203388aaf";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "pakedge,wr-1"
          ];
          titles = [
            {
              model = "WR-1";
              vendor = "Pakedge";
            }
          ];
        };
        plasmacloud_pa1200 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-plasmacloud_pa1200";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-plasmacloud_pa1200-squashfs-factory.bin";
              sha256 = "0551e622e048fd0763d87bf48a9aa3d68eb53a8834aaa5cf5cce955dc2a25742";
              sha256_unsigned = "0551e622e048fd0763d87bf48a9aa3d68eb53a8834aaa5cf5cce955dc2a25742";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-plasmacloud_pa1200-initramfs-uImage.itb";
              sha256 = "fce6778fd0245662a16aa272e725324c6efe3cd6141e590ea7b499c71cf6469c";
              sha256_unsigned = "fce6778fd0245662a16aa272e725324c6efe3cd6141e590ea7b499c71cf6469c";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-plasmacloud_pa1200-squashfs-sysupgrade.bin";
              sha256 = "4cde451fbbaaca4af3b952b52f9a818061404e48005419af431eb16f681f93e5";
              sha256_unsigned = "91f8cbd042ed14c12c22281c44b455612df6515754dde1d86fcb5aceea222ac9";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "plasmacloud,pa1200"
          ];
          titles = [
            {
              model = "PA1200";
              vendor = "Plasma Cloud";
            }
          ];
        };
        plasmacloud_pa2200 = {
          device_packages = [
            "ath10k-firmware-qca9888-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-plasmacloud_pa2200";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-plasmacloud_pa2200-squashfs-sysupgrade.bin";
              sha256 = "f182de61ca01a7b58b3bdc03b914ea5d14409da1aad1ca5cef2d2403b917e76e";
              sha256_unsigned = "e3f541906acd75f6696490c8bcae195ea807680b7bea9bf19fed138e85c8c5ea";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-plasmacloud_pa2200-squashfs-factory.bin";
              sha256 = "9064c39c9dd5316c0aa1af891705913cc4fcec0ec96653bcb175ac074cd5ab09";
              sha256_unsigned = "9064c39c9dd5316c0aa1af891705913cc4fcec0ec96653bcb175ac074cd5ab09";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-plasmacloud_pa2200-initramfs-uImage.itb";
              sha256 = "fcba98e9ce9b46716d5fa9136c1ff870f4846fc8ff82007b878cf554040cf082";
              sha256_unsigned = "fcba98e9ce9b46716d5fa9136c1ff870f4846fc8ff82007b878cf554040cf082";
              type = "kernel";
            }
          ];
          supported_devices = [
            "plasmacloud,pa2200"
          ];
          titles = [
            {
              model = "PA2200";
              vendor = "Plasma Cloud";
            }
          ];
        };
        qxwlan_e2600ac-c1 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-qxwlan_e2600ac-c1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-qxwlan_e2600ac-c1-squashfs-sysupgrade.bin";
              sha256 = "98b0a31d1b00c4cbc59ff63cf6e5ae3ccdf6feaeb03296f2332b8715c095d5da";
              sha256_unsigned = "b63146f1b970534a7c985d066e98961d9c49589dd8ff8f7ac3fa3663e1f3eddf";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-qxwlan_e2600ac-c1-initramfs-uImage.itb";
              sha256 = "d7ea58952624e2254230e7a1929d26eca490b1c27ce66d9c75743f5f70ac44dd";
              sha256_unsigned = "d7ea58952624e2254230e7a1929d26eca490b1c27ce66d9c75743f5f70ac44dd";
              type = "kernel";
            }
          ];
          supported_devices = [
            "qxwlan,e2600ac-c1"
          ];
          titles = [
            {
              model = "E2600AC";
              variant = "C1";
              vendor = "Qxwlan";
            }
          ];
        };
        qxwlan_e2600ac-c2 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-qxwlan_e2600ac-c2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-qxwlan_e2600ac-c2-squashfs-sysupgrade.bin";
              sha256 = "a23ee6c820e67d1e3052d26b22b9045d30ca6ee2fdf963f26c9b52b4c96e51ec";
              sha256_unsigned = "ed2da955d2db40f7e2c9aa471b0dc541d15bf52e7e6f5b6e677ac64f3740cc7a";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-qxwlan_e2600ac-c2-squashfs-factory.ubi";
              sha256 = "bd1ba46e306023f11f4cc316f09a6c43accfcd2260cc2ac68437f47b6a3c7d48";
              sha256_unsigned = "bd1ba46e306023f11f4cc316f09a6c43accfcd2260cc2ac68437f47b6a3c7d48";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-qxwlan_e2600ac-c2-initramfs-uImage.itb";
              sha256 = "2a665d6fe236ef1458132ad29dd58622f0e773d77a63ef30be0f9919e28e77b3";
              sha256_unsigned = "2a665d6fe236ef1458132ad29dd58622f0e773d77a63ef30be0f9919e28e77b3";
              type = "kernel";
            }
          ];
          supported_devices = [
            "qxwlan,e2600ac-c2"
          ];
          titles = [
            {
              model = "E2600AC";
              variant = "C2";
              vendor = "Qxwlan";
            }
          ];
        };
        skspruce_wia3300-20 = {
          device_packages = [
            "-ath10k-board-qca4019"
            "ipq-wifi-skspruce_wia3300-20"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-skspruce_wia3300-20";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-skspruce_wia3300-20-squashfs-sysupgrade.bin";
              sha256 = "f3c577a9cde781619fd847bbcc2e7d6a95f1e237f0c0e2398d826c9c18ef57a4";
              sha256_unsigned = "507415a98c75622ebf0aefa0585a183d2f31d8a59af69d483593cec0f61dff59";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-skspruce_wia3300-20-initramfs-zImage.itb";
              sha256 = "91505038616a04ce571d2e5314febfd2ffc0cde90f621888876136ca3e0c00e6";
              sha256_unsigned = "91505038616a04ce571d2e5314febfd2ffc0cde90f621888876136ca3e0c00e6";
              type = "kernel";
            }
          ];
          supported_devices = [
            "skspruce,wia3300-20"
          ];
          titles = [
            {
              model = "WIA3300-20";
              vendor = "SKSpruce";
            }
          ];
        };
        sony_ncp-hg100-cellular = {
          device_packages = [
            "e2fsprogs"
            "kmod-fs-ext4"
            "uqmi"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-sony_ncp-hg100-cellular";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-sony_ncp-hg100-cellular-squashfs-sysupgrade.bin";
              sha256 = "9996fd91435510828e10c2fa9b903c815e49a5cf43877d0860b073fa5b924c91";
              sha256_unsigned = "95fe367ef72bbc5974db7908b3063bf4d366b285256aa256c1ab400824334f36";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-sony_ncp-hg100-cellular-initramfs-uImage.itb";
              sha256 = "55d894c5f2f8329c6e3e09751f5de4e48340aa88bd7faa4372e684478369ae40";
              sha256_unsigned = "55d894c5f2f8329c6e3e09751f5de4e48340aa88bd7faa4372e684478369ae40";
              type = "kernel";
            }
          ];
          supported_devices = [
            "sony,ncp-hg100-cellular"
          ];
          titles = [
            {
              model = "NCP-HG100/Cellular";
              vendor = "Sony";
            }
          ];
        };
        teltonika_rutx50 = {
          device_packages = [
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "uqmi"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-teltonika_rutx50";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-teltonika_rutx50-squashfs-sysupgrade.bin";
              sha256 = "8c41f9f2a3bdea528da42c0f7e3879aedbf3fd2afeac6b744cdfe9c4396247cb";
              sha256_unsigned = "ad6dce0654778d3f6960705ea5bf06c5672271b3d214104601392fcb7f79570c";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-teltonika_rutx50-squashfs-factory.ubi";
              sha256 = "9bc955bed1826b74bbef5c6a9c502154e6239eabd5a5eb0389553dfe4d538ca9";
              sha256_unsigned = "9bc955bed1826b74bbef5c6a9c502154e6239eabd5a5eb0389553dfe4d538ca9";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-teltonika_rutx50-initramfs-uImage.itb";
              sha256 = "7c3fdc2a05bf81d4748fa2fbcde1228bc68c87c6a8c8ed659a50fcb8e9ee6b6d";
              sha256_unsigned = "7c3fdc2a05bf81d4748fa2fbcde1228bc68c87c6a8c8ed659a50fcb8e9ee6b6d";
              type = "kernel";
            }
          ];
          supported_devices = [
            "teltonika,rutx50"
          ];
          titles = [
            {
              model = "RUTX50";
              vendor = "Teltonika";
            }
          ];
        };
        wallys_dr40x9 = {
          device_packages = [
            "ipq-wifi-wallys_dr40x9"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-wallys_dr40x9";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-wallys_dr40x9-squashfs-factory.ubi";
              sha256 = "499175a848a754a5eab63103a78337e29f7129874ed2e320a365d4b17dbb0f8b";
              sha256_unsigned = "499175a848a754a5eab63103a78337e29f7129874ed2e320a365d4b17dbb0f8b";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-wallys_dr40x9-initramfs-uImage.itb";
              sha256 = "5fa6dbad50cc32dbddbc43cf5677bce0500559249305d268354adde26427ee6a";
              sha256_unsigned = "5fa6dbad50cc32dbddbc43cf5677bce0500559249305d268354adde26427ee6a";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-wallys_dr40x9-squashfs-sysupgrade.bin";
              sha256 = "c56eb9e707f0e277504aaafc8d802041f80f294c403e3a774f7abd6a99ddbfc9";
              sha256_unsigned = "a09fbfdbbb4f763a12a9423ca35b6519a93c73487b3f1349f97f11e4c80fbf27";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "wallys,dr40x9"
          ];
          titles = [
            {
              model = "DR40X9";
              vendor = "Wallys";
            }
          ];
        };
        yyets_le1 = {
          device_packages = [
            "ipq-wifi-yyets_le1"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-yyets_le1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-yyets_le1-squashfs-factory.bin";
              sha256 = "a9f055f50f0dbb5e13c6b262063d97bb4538c0c26b945d55f098f2dcb1380a1f";
              sha256_unsigned = "a9f055f50f0dbb5e13c6b262063d97bb4538c0c26b945d55f098f2dcb1380a1f";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-yyets_le1-initramfs-zImage.itb";
              sha256 = "e79483add4847619f3461145cc70533386b43dcd2cb316049e56f4ba5b9031f0";
              sha256_unsigned = "e79483add4847619f3461145cc70533386b43dcd2cb316049e56f4ba5b9031f0";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-yyets_le1-squashfs-sysupgrade.bin";
              sha256 = "0681a498cedc481fd370eb49b0ac1f3d7cdb661fcb9c6a4418bd02a328764822";
              sha256_unsigned = "5e28cfc03d69117188d0d9da1860142a7881b2f929d7acfbdd9631ea5ea715be";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "yyets,le1"
          ];
          titles = [
            {
              model = "LE1";
              vendor = "YYeTs";
            }
          ];
        };
        zte_mf18a = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-zte_mf18a";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-zte_mf18a-initramfs-uImage.itb";
              sha256 = "a3a62ee4f23a22500f9fc281f07b3264a3a4900f2c8136042a132591525ca8d3";
              sha256_unsigned = "a3a62ee4f23a22500f9fc281f07b3264a3a4900f2c8136042a132591525ca8d3";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-zte_mf18a-squashfs-sysupgrade.bin";
              sha256 = "69a660c6139348227d8e93a1249cfc4a79b67650608cecccafcf69d3475229e0";
              sha256_unsigned = "ff479db37549294f867f5a1afa616fc63d4c5ef22e2704f40012e66fa05bece1";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "zte,mf18a"
          ];
          titles = [
            {
              model = "MF18A";
              vendor = "ZTE";
            }
          ];
        };
        zte_mf282plus = {
          device_packages = [
            "kmod-usb-acm"
            "kmod-usb-net-rndis"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-zte_mf282plus";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-zte_mf282plus-squashfs-sysupgrade.bin";
              sha256 = "1eedcb2978e5ac2f8bfc0b2e2c22d215cd4cd7a203f5a93a7b0918de3f9c3246";
              sha256_unsigned = "d54ddbd8b09df48c671bd6a3e5ea12cd5790548689568bdc75fd32eec55198c7";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-zte_mf282plus-squashfs-recovery.bin";
              sha256 = "5041a59ea0a48b5b2641a2c4f45c8ba5be35ed0512d22bc20e5ca732b22fd812";
              sha256_unsigned = "ab8d2194f041ac043ebdbbb69b26d4e2222c75795f9cd631ab806291dda3fe86";
              type = "recovery";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-zte_mf282plus-initramfs-zImage.itb";
              sha256 = "4c607ab6a59a4c24f144c671681c0266a8b3f38319ee88dd668610f01b7bfb9d";
              sha256_unsigned = "4c607ab6a59a4c24f144c671681c0266a8b3f38319ee88dd668610f01b7bfb9d";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-zte_mf282plus-squashfs-factory.bin";
              sha256 = "6f1a277e0517220ae45e9560fb0f97e8503de8ded8d402e802041e40dbf67366";
              sha256_unsigned = "6f1a277e0517220ae45e9560fb0f97e8503de8ded8d402e802041e40dbf67366";
              type = "factory";
            }
          ];
          supported_devices = [
            "zte,mf282plus"
          ];
          titles = [
            {
              model = "MF282Plus";
              vendor = "ZTE";
            }
          ];
        };
        zte_mf286d = {
          device_packages = [
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "uqmi"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-zte_mf286d";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-zte_mf286d-initramfs-zImage.itb";
              sha256 = "15960d62ac08884ce7ab6be1c1bbd9a39db361fe3dac0fab88e6b32f7c25815e";
              sha256_unsigned = "15960d62ac08884ce7ab6be1c1bbd9a39db361fe3dac0fab88e6b32f7c25815e";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-zte_mf286d-squashfs-sysupgrade.bin";
              sha256 = "cff7ce23e7750768f2337e093be521513702b55f0eba205aa9fe4780a3e3db3c";
              sha256_unsigned = "0447d1d67b9629cd416fe83f38612e3894dd8c0a4ce78657b68b5ea17df4a010";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "zte,mf286d"
          ];
          titles = [
            {
              model = "MF286D";
              vendor = "ZTE";
            }
          ];
        };
        zte_mf287 = {
          device_packages = [
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "uqmi"
            "ipq-wifi-zte_mf287"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-zte_mf287";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-zte_mf287-squashfs-recovery.bin";
              sha256 = "5cedb33637f4965b2a07b2c25a561b2959bb2d6af3ff6919598bd449a5c46210";
              sha256_unsigned = "9b30f16274fc70ed7401933b4aee6c0791853c52558f20e04ab19ec95fa69cc3";
              type = "recovery";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-zte_mf287-initramfs-zImage.itb";
              sha256 = "97135e0ccb2eca1404e357b4235e99a09954784857d1d2a6335a5cc4b50d8858";
              sha256_unsigned = "97135e0ccb2eca1404e357b4235e99a09954784857d1d2a6335a5cc4b50d8858";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-zte_mf287-squashfs-factory.bin";
              sha256 = "f91dd801181df81a2e665c9c296da39d4dd48d650593b3788651c228544d4cea";
              sha256_unsigned = "f91dd801181df81a2e665c9c296da39d4dd48d650593b3788651c228544d4cea";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-zte_mf287-squashfs-sysupgrade.bin";
              sha256 = "0306c28375594f0894bee11aad1dbce6539b5fc64587fe13fbf8189bd488ab2d";
              sha256_unsigned = "c894f3e97b6c6b3a902bf2525bb6467602684a4cbf8e528408625a6bfcf0221a";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "zte,mf287"
          ];
          titles = [
            {
              model = "MF287";
              vendor = "ZTE";
            }
          ];
        };
        zte_mf287plus = {
          device_packages = [
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "uqmi"
            "ipq-wifi-zte_mf287plus"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-zte_mf287plus";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-zte_mf287plus-initramfs-zImage.itb";
              sha256 = "2db628a1c02890c8a0262735fc5320cee8f4a14418ae8aaa10899a0df9a64061";
              sha256_unsigned = "2db628a1c02890c8a0262735fc5320cee8f4a14418ae8aaa10899a0df9a64061";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-zte_mf287plus-squashfs-sysupgrade.bin";
              sha256 = "d9cba83347a3f84102084f2bb24f400367164bf8b04c7159f4d64b26ebc0d87b";
              sha256_unsigned = "f527c21df3224a0db3cfc26464713c5bc33a8cfadef4c1e9bbbc4695075845ab";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-zte_mf287plus-squashfs-factory.bin";
              sha256 = "f6323e4f7d8d1b911db765d5760981e57f39116878b286a39dc7895916a420d6";
              sha256_unsigned = "f6323e4f7d8d1b911db765d5760981e57f39116878b286a39dc7895916a420d6";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-zte_mf287plus-squashfs-recovery.bin";
              sha256 = "0eb841e5a1c0b02862bf46fccf918a047578f79332c9ef35e66cdfff12838fff";
              sha256_unsigned = "24e754f8ea34793d747e6672d82bbba4dc41a13b880a5633bef69ce6ea189252";
              type = "recovery";
            }
          ];
          supported_devices = [
            "zte,mf287plus"
          ];
          titles = [
            {
              model = "MF287Plus";
              vendor = "ZTE";
            }
          ];
        };
        zte_mf287pro = {
          device_packages = [
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "uqmi"
            "ipq-wifi-zte_mf287plus"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-zte_mf287pro";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-zte_mf287pro-squashfs-recovery.bin";
              sha256 = "03dd559a930ecaefead1f9599daabd82e1a649f7edfe81dc964e877865b1cc4e";
              sha256_unsigned = "854b7e8a5141649539900793b714c1b6a744ed88e5198e960f1a3797bfe99093";
              type = "recovery";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-zte_mf287pro-squashfs-sysupgrade.bin";
              sha256 = "5d7fb4bb031205c0389836ce1a1a92e828135fb574630496a92ff0dafbb50b12";
              sha256_unsigned = "c91060025dd84e7a5f36e93312d55672357eecda3c4d31995e483fdcb95d9cca";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-zte_mf287pro-initramfs-zImage.itb";
              sha256 = "0f2e8441e20b08e1db2e658c73237020d0a4e50c14bb98e6e7512b54b7fbee21";
              sha256_unsigned = "0f2e8441e20b08e1db2e658c73237020d0a4e50c14bb98e6e7512b54b7fbee21";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-zte_mf287pro-squashfs-factory.bin";
              sha256 = "881307d9a1604d8acd26ca7124a2062ffb8d53a8fd93e9ce9d04c960b447c535";
              sha256_unsigned = "881307d9a1604d8acd26ca7124a2062ffb8d53a8fd93e9ce9d04c960b447c535";
              type = "factory";
            }
          ];
          supported_devices = [
            "zte,mf287pro"
          ];
          titles = [
            {
              model = "MF287Pro";
              vendor = "ZTE";
            }
          ];
        };
        zte_mf289f = {
          device_packages = [
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "uqmi"
            "ath10k-firmware-qca9984-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-zte_mf289f";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-zte_mf289f-initramfs-zImage.itb";
              sha256 = "2ed3d25fe4009f1fe8bbbff339fa54e33f7481bf5f4c02578a9babc8ea977981";
              sha256_unsigned = "2ed3d25fe4009f1fe8bbbff339fa54e33f7481bf5f4c02578a9babc8ea977981";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-zte_mf289f-squashfs-sysupgrade.bin";
              sha256 = "9fc80b792966b55ec17061ff06c96a0fa35d2f85e0360103662ac0af047364f6";
              sha256_unsigned = "021179e7a330709d4e2ef4cdbf24942fb344c6046cd765474743e15a07f49211";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "zte,mf289f"
          ];
          titles = [
            {
              model = "MF289F";
              vendor = "ZTE";
            }
          ];
        };
        zyxel_nbg6617 = {
          device_packages = [
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-generic-zyxel_nbg6617";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-zyxel_nbg6617-squashfs-factory.bin";
              sha256 = "06f0ad05b748c41c5e59e2828692dbed260cfc47524cf4ed0c5c383acd1831b1";
              sha256_unsigned = "06f0ad05b748c41c5e59e2828692dbed260cfc47524cf4ed0c5c383acd1831b1";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-zyxel_nbg6617-initramfs-uImage.itb";
              sha256 = "61f2f74694552cb465d94a0f1ac53051710ed227ecd28fd944a8b0e765837fe7";
              sha256_unsigned = "61f2f74694552cb465d94a0f1ac53051710ed227ecd28fd944a8b0e765837fe7";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-generic-zyxel_nbg6617-squashfs-sysupgrade.bin";
              sha256 = "9a03113c2f35e531d94c66a98d32695d4b2adae72ace6adb1c4c3a7181a7b544";
              sha256_unsigned = "aa9d4acc133af51ca8e236038334f1512c070a613952bf3e0382856df4c68a00";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "zyxel,nbg6617"
          ];
          titles = [
            {
              model = "NBG6617";
              vendor = "Zyxel";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "ipq40xx/generic";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
    mikrotik = {
      arch_packages = "arm_cortex-a7_neon-vfpv4";
      default_packages = [
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
      linux_kernel = {
        release = "1";
        vermagic = "4e88bcf34b9ec8834a21e9d0e5b99965";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        mikrotik_cap-ac = {
          device_packages = [
            "-kmod-ath10k-ct"
            "kmod-ath10k-ct-smallbuffers"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-mikrotik-mikrotik_cap-ac";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-mikrotik-mikrotik_cap-ac-squashfs-sysupgrade.bin";
              sha256 = "0dcb8ddf75e2128d33e974a12b0837a620598abff9350fa25d98d26ccf645a2b";
              sha256_unsigned = "85cca5c318c004e4ae225f7e676cd57ffcf411ab3dc450cebe129aba36522eec";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-mikrotik-mikrotik_cap-ac-initramfs-kernel.bin";
              sha256 = "d9465e04809c5ed0f1c82992951cc6176994e6fe7355e700b3ed58f1b6190f54";
              sha256_unsigned = "d9465e04809c5ed0f1c82992951cc6176994e6fe7355e700b3ed58f1b6190f54";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,cap-ac"
          ];
          titles = [
            {
              model = "cAP ac";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_hap-ac2 = {
          device_packages = [
            "-kmod-ath10k-ct"
            "kmod-ath10k-ct-smallbuffers"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-mikrotik-mikrotik_hap-ac2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-mikrotik-mikrotik_hap-ac2-squashfs-sysupgrade.bin";
              sha256 = "288894decac69d2a1d2b95ba5d76e414748d421e61a8d2c968f38c4d62553dee";
              sha256_unsigned = "36a3072dd0699602293a52737000300a10afd02bed6ac34fafd83386a97e568d";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-mikrotik-mikrotik_hap-ac2-initramfs-kernel.bin";
              sha256 = "ca0ed4c5a867b82da663c42cca59b0772b378be9947bcb46476a8879c87f13f6";
              sha256_unsigned = "ca0ed4c5a867b82da663c42cca59b0772b378be9947bcb46476a8879c87f13f6";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,hap-ac2"
          ];
          titles = [
            {
              model = "hAP ac2";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_hap-ac3 = {
          device_packages = [
            "kmod-ledtrig-gpio"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-mikrotik-mikrotik_hap-ac3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-mikrotik-mikrotik_hap-ac3-squashfs-sysupgrade.bin";
              sha256 = "b69875d88805ad6bfd2ead7ca286fa2d64357aceec24421f1279c7c2f83aaac6";
              sha256_unsigned = "e60c17c8de6e59c1bea82a4807823b8d9ab4e9008e7a00a25122ca64f94c783b";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-mikrotik-mikrotik_hap-ac3-initramfs-kernel.bin";
              sha256 = "3051953ecb64cb24106cb1695c35fef5f31c92500441b7fba6ca2397143d90b2";
              sha256_unsigned = "3051953ecb64cb24106cb1695c35fef5f31c92500441b7fba6ca2397143d90b2";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,hap-ac3"
          ];
          titles = [
            {
              model = "hAP ac3";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_hap-ac3-lte6-kit = {
          device_packages = [
            "kmod-ledtrig-gpio"
            "kmod-usb-acm"
            "kmod-usb-net-rndis"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-mikrotik-mikrotik_hap-ac3-lte6-kit";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-mikrotik-mikrotik_hap-ac3-lte6-kit-initramfs-kernel.bin";
              sha256 = "d9d8261c5b20aa264e5ceec7ab843814570a75649eab786d9d3e840f10dab37c";
              sha256_unsigned = "d9d8261c5b20aa264e5ceec7ab843814570a75649eab786d9d3e840f10dab37c";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-mikrotik-mikrotik_hap-ac3-lte6-kit-squashfs-sysupgrade.bin";
              sha256 = "ddc9f6451e6df5e1a1fe7d1defc3b59b3db41d7b185ac85329cee6abf7e2451a";
              sha256_unsigned = "6d2c12541712e52fd2b3e13442be7c0cb1654cc40d275dfc8fcfa3151d595b5d";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,hap-ac3-lte6-kit"
          ];
          titles = [
            {
              model = "hAP ac3 LTE6 kit";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_lhgg-60ad = {
          device_packages = [
            "-kmod-ath10k-ct"
            "-ath10k-firmware-qca4019-ct"
            "kmod-wil6210"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-mikrotik-mikrotik_lhgg-60ad";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-mikrotik-mikrotik_lhgg-60ad-squashfs-sysupgrade.bin";
              sha256 = "305c935c24dda6bd68f436b584ebca0ab51ee45a1139ac33300e5d567e2c581e";
              sha256_unsigned = "c7a31561021ec219160e5c4a652e1e99a89bb9f751b767862281855836a98a51";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-mikrotik-mikrotik_lhgg-60ad-initramfs-kernel.bin";
              sha256 = "0508adc5d211a30c5bf1fb8857886c296dc4d454a5a3fe93ceebea553a9141df";
              sha256_unsigned = "0508adc5d211a30c5bf1fb8857886c296dc4d454a5a3fe93ceebea553a9141df";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,lhgg-60ad"
          ];
          titles = [
            {
              model = "Wireless Wire Dish LHGG-60ad";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_sxtsq-5-ac = {
          device_packages = [
            "rssileds"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-mikrotik-mikrotik_sxtsq-5-ac";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-mikrotik-mikrotik_sxtsq-5-ac-initramfs-kernel.bin";
              sha256 = "4d3c1a09e0b5883e44a8ea296b8e092f65fb150e0302466dc7a8feacd6229382";
              sha256_unsigned = "4d3c1a09e0b5883e44a8ea296b8e092f65fb150e0302466dc7a8feacd6229382";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-mikrotik-mikrotik_sxtsq-5-ac-squashfs-sysupgrade.bin";
              sha256 = "a1b80abc108baac29eed02f1ae412faf846d8ee272829f38f8ef1e94ff927c57";
              sha256_unsigned = "1760afb8d60759880cf482dd5be030b40aab5d74c01f259c5a9361ac099a1982";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,sxtsq-5-ac"
          ];
          titles = [
            {
              model = "SXTsq 5 ac (RBSXTsqG-5acD)";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_wap-ac = {
          device_packages = [
            "-kmod-ath10k-ct"
            "kmod-ath10k-ct-smallbuffers"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-mikrotik-mikrotik_wap-ac";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-mikrotik-mikrotik_wap-ac-squashfs-sysupgrade.bin";
              sha256 = "f02260953cb1e54a827487bcb35cf3985b2ef7c2cdc65cd251d6d89feee72859";
              sha256_unsigned = "14abcc0058f0ca700acb95ec730cb53203e948cc980f8c7a98bcd9af7ea48bb2";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-mikrotik-mikrotik_wap-ac-initramfs-kernel.bin";
              sha256 = "dda9ab2dfadc723c435c3fb46227854be8d7a17ceb2a85381b975dcc50a95c8e";
              sha256_unsigned = "dda9ab2dfadc723c435c3fb46227854be8d7a17ceb2a85381b975dcc50a95c8e";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mikrotik,wap-ac"
          ];
          titles = [
            {
              model = "wAP ac";
              vendor = "MikroTik";
            }
          ];
        };
        mikrotik_wap-ac-lte = {
          device_packages = [
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "uqmi"
            "kmod-usb-acm"
            "kmod-usb-net-rndis"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-mikrotik-mikrotik_wap-ac-lte";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-mikrotik-mikrotik_wap-ac-lte-initramfs-kernel.bin";
              sha256 = "af91d1c871b971e0d1b3f5ce0de87516e755bba2d9789a1e65419400e96b6a86";
              sha256_unsigned = "af91d1c871b971e0d1b3f5ce0de87516e755bba2d9789a1e65419400e96b6a86";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-mikrotik-mikrotik_wap-ac-lte-squashfs-sysupgrade.bin";
              sha256 = "73d61bb3ad6f949d5d80d2bece8a48c748c06b6c1d26c059e424117387f4c0cd";
              sha256_unsigned = "c24817a8b32a7baa51210f75d8a8a6e77702da34a24a5c0cb8f1eeba96a66b32";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,wap-ac-lte"
          ];
          titles = [
            {
              model = "wAP ac LTE";
              vendor = "MikroTik";
            }
            {
              model = "wAP ac LTE6";
              vendor = "Mikrotik";
            }
          ];
        };
        mikrotik_wap-r-ac = {
          device_packages = [
            "kmod-usb-net-qmi-wwan"
            "kmod-usb-serial-option"
            "uqmi"
            "kmod-usb-acm"
            "kmod-usb-net-rndis"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq40xx-mikrotik-mikrotik_wap-r-ac";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq40xx-mikrotik-mikrotik_wap-r-ac-initramfs-kernel.bin";
              sha256 = "10f8a9597f8e773c6bb9d419346b294e0fcf36ea3b833e8b33df1f7c83661e81";
              sha256_unsigned = "10f8a9597f8e773c6bb9d419346b294e0fcf36ea3b833e8b33df1f7c83661e81";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq40xx-mikrotik-mikrotik_wap-r-ac-squashfs-sysupgrade.bin";
              sha256 = "b9b1d36b8f27977084312e70e559e468ae8e6bccad32204c81cee24210af5a48";
              sha256_unsigned = "195fcabdcc6e5e9d7d3101c4e851b8d9d00a2a7179124262453bc85d64846c57";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mikrotik,wap-r-ac"
          ];
          titles = [
            {
              model = "wAP R ac";
              vendor = "MikroTik";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "ipq40xx/mikrotik";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
  };
  ipq806x = {
    chromium = {
      arch_packages = "arm_cortex-a15_neon-vfpv4";
      default_packages = [
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
        "kmod-ata-ahci"
        "kmod-ata-ahci-platform"
        "kmod-ath10k-ct"
        "kmod-gpio-button-hotplug"
        "kmod-leds-gpio"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-phy-qcom-ipq806x-usb"
        "kmod-usb-dwc3-qcom"
        "kmod-usb-ledtrig-usbport"
        "kmod-usb-ohci"
        "kmod-usb2"
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
      linux_kernel = {
        release = "1";
        vermagic = "7da2ff38b1692f2dd56b6d8d11b8e2ee";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        asus_onhub = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "e2fsprogs"
            "kmod-fs-ext4"
            "losetup"
            "partx-utils"
            "mkf2fs"
            "kmod-fs-f2fs"
            "ucode"
            "kmod-google-firmware"
            "kmod-tpm-i2c-infineon"
            "kmod-sound-soc-ipq8064-storm"
            "kmod-usb-storage"
            "kmod-ramoops"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq806x-chromium-asus_onhub";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-chromium-asus_onhub-squashfs-factory.bin";
              sha256 = "77610fa9f1f151ea5c72c896d6e2897e3d1d29e2c3c55d6b02193b7f41aa24e6";
              sha256_unsigned = "77610fa9f1f151ea5c72c896d6e2897e3d1d29e2c3c55d6b02193b7f41aa24e6";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-chromium-asus_onhub-squashfs-sysupgrade.bin";
              sha256 = "625507baeb8cd82188bbaf50dd8f3e5055dbbd618b5d074421d4f9a5db3cd214";
              sha256_unsigned = "06b5f5e177fa152d86ead5df1dd3018c194f25a84c86fb4023fc761dea8b8e86";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq806x-chromium-asus_onhub-initramfs-fit-zImage.itb.vboot";
              sha256 = "0907c50592cca2a1135c6dd6bc7a41a9428b4889e889164c136afa9ecff9e11f";
              sha256_unsigned = "0907c50592cca2a1135c6dd6bc7a41a9428b4889e889164c136afa9ecff9e11f";
              type = "kernel";
            }
          ];
          supported_devices = [
            "asus,onhub"
          ];
          titles = [
            {
              model = "OnHub SRT-AC1900";
              vendor = "ASUS";
            }
          ];
        };
        tplink_onhub = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "e2fsprogs"
            "kmod-fs-ext4"
            "losetup"
            "partx-utils"
            "mkf2fs"
            "kmod-fs-f2fs"
            "ucode"
            "kmod-google-firmware"
            "kmod-tpm-i2c-infineon"
            "kmod-sound-soc-ipq8064-storm"
            "kmod-usb-storage"
            "kmod-ramoops"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq806x-chromium-tplink_onhub";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq806x-chromium-tplink_onhub-initramfs-fit-zImage.itb.vboot";
              sha256 = "534c127a9fe86a34e3c3a59d79f7fabae2f694d7a560950ec63a83147650bc9d";
              sha256_unsigned = "534c127a9fe86a34e3c3a59d79f7fabae2f694d7a560950ec63a83147650bc9d";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-chromium-tplink_onhub-squashfs-sysupgrade.bin";
              sha256 = "083ba955eb3da6ce54ac0a254604c8ef34769dc9dc244be3650df2c9676e6636";
              sha256_unsigned = "96b4b3103913d282ab9f4148b0bae47d7a448c205dd6ec955a465415340d0665";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-chromium-tplink_onhub-squashfs-factory.bin";
              sha256 = "9a98fc2e5e4957f17f80dc3ee8f906ec0f2be3f68cb50f640d9c348fe78a0b5a";
              sha256_unsigned = "9a98fc2e5e4957f17f80dc3ee8f906ec0f2be3f68cb50f640d9c348fe78a0b5a";
              type = "factory";
            }
          ];
          supported_devices = [
            "tplink,onhub"
          ];
          titles = [
            {
              model = "OnHub AC1900 Cloud Router";
              vendor = "TP-Link";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "ipq806x/chromium";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
    generic = {
      arch_packages = "arm_cortex-a15_neon-vfpv4";
      default_packages = [
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
        "kmod-ata-ahci"
        "kmod-ata-ahci-platform"
        "kmod-ath10k-ct"
        "kmod-gpio-button-hotplug"
        "kmod-leds-gpio"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-phy-qcom-ipq806x-usb"
        "kmod-usb-dwc3-qcom"
        "kmod-usb-ledtrig-usbport"
        "kmod-usb-ohci"
        "kmod-usb2"
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
      linux_kernel = {
        release = "1";
        vermagic = "0ec89e5bbad066cb2ec320e7527c9576";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        arris_tr4400-v2 = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq806x-generic-arris_tr4400-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-arris_tr4400-v2-squashfs-sysupgrade.bin";
              sha256 = "5ccb051fd34d0dd2e3b4748ab482756edd0119454a7be95530d118cff5e84aba";
              sha256_unsigned = "b9df4687d929de3e19a8c106ca820006dd801b622f20fa770c0be3e2e0a144e8";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-arris_tr4400-v2-initramfs-uImage";
              sha256 = "f84719bbcd5da1bd939d8b82c6c1bd7fea6ab237442e8fe7c06b88301e239e36";
              sha256_unsigned = "f84719bbcd5da1bd939d8b82c6c1bd7fea6ab237442e8fe7c06b88301e239e36";
              type = "kernel";
            }
          ];
          supported_devices = [
            "arris,tr4400-v2"
          ];
          titles = [
            {
              model = "TR4400";
              variant = "v2";
              vendor = "Arris";
            }
          ];
        };
        askey_rt4230w-rev6 = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq806x-generic-askey_rt4230w-rev6";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-askey_rt4230w-rev6-initramfs-uImage";
              sha256 = "a380335773f5c2746248f7eeb7115e35720a8555b70850582b16c40b31440679";
              sha256_unsigned = "a380335773f5c2746248f7eeb7115e35720a8555b70850582b16c40b31440679";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-askey_rt4230w-rev6-squashfs-sysupgrade.bin";
              sha256 = "d0c8040e7dabc264a6c470f2bfe864daf3b6ce08fc50e7d1cecce0dc8f2df5df";
              sha256_unsigned = "eb7d1ed80bfac927ca4e1d8738ba146591909587783b85d04ae22bc583fbf3c7";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "askey,rt4230w-rev6"
          ];
          titles = [
            {
              model = "RT4230W";
              variant = "REV6";
              vendor = "Askey";
            }
          ];
        };
        asrock_g10 = {
          device_packages = [
            "kmod-i2c-gpio"
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq806x-generic-asrock_g10";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-asrock_g10-initramfs-fit-uImage.itb";
              sha256 = "10b5ef7c52772b32e1b81a0827c090cfbf081d68398a9c1e5e35536505f0901b";
              sha256_unsigned = "10b5ef7c52772b32e1b81a0827c090cfbf081d68398a9c1e5e35536505f0901b";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-asrock_g10-squashfs-nand-factory.bin";
              sha256 = "6bf8935d6e049fa4fd0fca800df27d0834b2d4fb7e9a212d216325362d737af8";
              sha256_unsigned = "6bf8935d6e049fa4fd0fca800df27d0834b2d4fb7e9a212d216325362d737af8";
              type = "nand-factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-asrock_g10-squashfs-nand-sysupgrade.bin";
              sha256 = "23375293391195a7e1de21845316f69211ae36937042d4998ebe8f8bf61548d3";
              sha256_unsigned = "da197e9eeaabbfeb52a1adfe08296d64b43269d717d4c68db3805ebd910eaa3c";
              type = "nand-sysupgrade";
            }
          ];
          supported_devices = [
            "asrock,g10"
          ];
          titles = [
            {
              model = "G10";
              vendor = "ASRock";
            }
          ];
        };
        buffalo_wxr-2533dhp = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq806x-generic-buffalo_wxr-2533dhp";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-buffalo_wxr-2533dhp-initramfs-uImage";
              sha256 = "6615180f1aa0ed4e88eee4b6573c94b32125e8bc1f9d2edc87ea56ce673bd6dc";
              sha256_unsigned = "6615180f1aa0ed4e88eee4b6573c94b32125e8bc1f9d2edc87ea56ce673bd6dc";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-buffalo_wxr-2533dhp-squashfs-sysupgrade.bin";
              sha256 = "21d5fa6295c50731303f0934ca5254bd167fe02668c9ade15830cfe921e38f85";
              sha256_unsigned = "9e1572d69f81567467ea807eecedba5123befa265c8af487742b3282e3dc4f31";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "buffalo,wxr-2533dhp"
          ];
          titles = [
            {
              model = "WXR-2533DHP";
              vendor = "Buffalo";
            }
          ];
        };
        compex_wpq864 = {
          device_packages = [
            "kmod-gpio-beeper"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq806x-generic-compex_wpq864";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-compex_wpq864-squashfs-nand-sysupgrade.bin";
              sha256 = "ae1b986c588f2a3a65f5dffbda90c1c89e93d37dbff29a1aca0ba37afd6b8e60";
              sha256_unsigned = "f17b68c4968ee493c214b25cdfe34fc89d194d757e973a547d45af843a40916e";
              type = "nand-sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-compex_wpq864-squashfs-nand-factory.bin";
              sha256 = "45374f076d6e296dbfc1c64904cab97108db29a9ddb8de5d55fb988e7ba18041";
              sha256_unsigned = "45374f076d6e296dbfc1c64904cab97108db29a9ddb8de5d55fb988e7ba18041";
              type = "nand-factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-compex_wpq864-initramfs-fit-uImage.itb";
              sha256 = "4ea067ba67d3bfe2a7d9e99e6f577d1de0f6662e751f16bef15f7677934d0ed3";
              sha256_unsigned = "4ea067ba67d3bfe2a7d9e99e6f577d1de0f6662e751f16bef15f7677934d0ed3";
              type = "kernel";
            }
          ];
          supported_devices = [
            "compex,wpq864"
          ];
          titles = [
            {
              model = "WPQ864";
              vendor = "Compex";
            }
          ];
        };
        edgecore_ecw5410 = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq806x-generic-edgecore_ecw5410";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-edgecore_ecw5410-squashfs-nand-sysupgrade.bin";
              sha256 = "c99d4a91abff95f51299e393c71ab892ea1146db10996890856ae08535e00108";
              sha256_unsigned = "d56d3cb768a0f2e2c721c36735fcc62ee03f411530e79b26a724f52e6388937e";
              type = "nand-sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-edgecore_ecw5410-initramfs-fit-uImage.itb";
              sha256 = "d907f963b552369b673f5f7a31b2aa5ada25074af6315a28bd30a2976c12ac45";
              sha256_unsigned = "d907f963b552369b673f5f7a31b2aa5ada25074af6315a28bd30a2976c12ac45";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-edgecore_ecw5410-squashfs-nand-factory.bin";
              sha256 = "87541642b51b2c349057ed5b0e2e20e1e0063e7a0f988be6bb4c7d75b52e9b40";
              sha256_unsigned = "87541642b51b2c349057ed5b0e2e20e1e0063e7a0f988be6bb4c7d75b52e9b40";
              type = "nand-factory";
            }
          ];
          supported_devices = [
            "edgecore,ecw5410"
          ];
          titles = [
            {
              model = "ECW5410";
              vendor = "Edgecore";
            }
          ];
        };
        extreme_ap3935 = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq806x-generic-extreme_ap3935";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-extreme_ap3935-initramfs-uImage";
              sha256 = "04bb032bb600712fdd2269a72b30a1bbefd793cc6eb4f8d1fd2132566060a956";
              sha256_unsigned = "04bb032bb600712fdd2269a72b30a1bbefd793cc6eb4f8d1fd2132566060a956";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-extreme_ap3935-squashfs-nand-sysupgrade.bin";
              sha256 = "5044a4e8dfaa4972df7c8967f79f8a85496ca2281167e5eae4fe5d5e66f4d560";
              sha256_unsigned = "1232841abba1175ce971372724d6e49bfad8efd78f52a18d5f248352b365eb5b";
              type = "nand-sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-extreme_ap3935-squashfs-nand-factory.bin";
              sha256 = "c0ac305b2d30682ff30d7148cdb21de64d0e983d3b4eab9f13b732836a6c0f8e";
              sha256_unsigned = "c0ac305b2d30682ff30d7148cdb21de64d0e983d3b4eab9f13b732836a6c0f8e";
              type = "nand-factory";
            }
          ];
          supported_devices = [
            "extreme,ap3935"
          ];
          titles = [
            {
              model = "AP3935";
              vendor = "Extreme Networks";
            }
          ];
        };
        fortinet_fap-421e = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq806x-generic-fortinet_fap-421e";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-fortinet_fap-421e-initramfs-fit-uImage.itb";
              sha256 = "9de6598ae03b161eca19e35377c77f65cc5b63f86f14f12a90df51a9a9fabdf8";
              sha256_unsigned = "9de6598ae03b161eca19e35377c77f65cc5b63f86f14f12a90df51a9a9fabdf8";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-fortinet_fap-421e-squashfs-sysupgrade.bin";
              sha256 = "1e8c9466d54f32171b4d73a3a985c03005a0b5a6c1904f15e3fc04feba1d72d1";
              sha256_unsigned = "347b5f54d869235c9978097057877ecfccf6c48c4b9b13c090af6f94318074af";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "fortinet,fap-421e"
          ];
          titles = [
            {
              model = "FAP-421E";
              vendor = "Fortinet";
            }
          ];
        };
        linksys_e8350-v1 = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq806x-generic-linksys_e8350-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-linksys_e8350-v1-initramfs-uImage";
              sha256 = "2d1f653057e8b74a483b83f3ff7b4d48797e92eca4af2cfa8f2f7631d45ffc1a";
              sha256_unsigned = "2d1f653057e8b74a483b83f3ff7b4d48797e92eca4af2cfa8f2f7631d45ffc1a";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-linksys_e8350-v1-squashfs-sysupgrade.bin";
              sha256 = "5462d4013028cf3cbf645351b054132021752cd699b5a1ec17daddc9d3b92d55";
              sha256_unsigned = "d1ebfa663690edbd7ce0339baa06680122594cb1f21b59eb331f4bc613e8a27f";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-linksys_e8350-v1-squashfs-factory.bin";
              sha256 = "febd6727d4c64e760aecd3b7f3f335d0b5973b0132a81fb859d4612fe5108021";
              sha256_unsigned = "febd6727d4c64e760aecd3b7f3f335d0b5973b0132a81fb859d4612fe5108021";
              type = "factory";
            }
          ];
          supported_devices = [
            "linksys,e8350-v1"
          ];
          titles = [
            {
              model = "E8350";
              variant = "v1";
              vendor = "Linksys";
            }
          ];
        };
        linksys_ea7500-v1 = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq806x-generic-linksys_ea7500-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-linksys_ea7500-v1-initramfs-uImage";
              sha256 = "80d12a574725f81109155396718b71d84acb778688b0caa5d31be74a8ba3c49e";
              sha256_unsigned = "80d12a574725f81109155396718b71d84acb778688b0caa5d31be74a8ba3c49e";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-linksys_ea7500-v1-squashfs-sysupgrade.bin";
              sha256 = "e183ffebc3b87f06b0911c059d13a229a75467a70bdd7400398e5c787bfe5628";
              sha256_unsigned = "47f81c5dcbb8d9f40c62ef7ae75ca6892764b2c817451a2dbb156d00d9f179f3";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-linksys_ea7500-v1-squashfs-factory.bin";
              sha256 = "fad3aefb524f4311269b9df8d49bec4cf1089914733389e330ec46b6b2d8ffac";
              sha256_unsigned = "fad3aefb524f4311269b9df8d49bec4cf1089914733389e330ec46b6b2d8ffac";
              type = "factory";
            }
          ];
          supported_devices = [
            "linksys,ea7500-v1"
          ];
          titles = [
            {
              model = "EA7500";
              variant = "v1";
              vendor = "Linksys";
            }
          ];
        };
        linksys_ea8500 = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq806x-generic-linksys_ea8500";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-linksys_ea8500-squashfs-sysupgrade.bin";
              sha256 = "a071c87eba26d81832ed991a47159fd512b71d7845ff54525c1cc6c1161f9f18";
              sha256_unsigned = "2763055e15186e3857fabacc27ec26c7b6746254a9f6eaf1e5edf466d51bb570";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-linksys_ea8500-squashfs-factory.bin";
              sha256 = "2939342d62fb082e80b9a6285e72bc93ff8e19a3812972259bc3e1d22c2bb8a5";
              sha256_unsigned = "2939342d62fb082e80b9a6285e72bc93ff8e19a3812972259bc3e1d22c2bb8a5";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-linksys_ea8500-initramfs-uImage";
              sha256 = "ddffbbc96b41381d4c44805e0a48dcd33d1ff72befed52c872c9e4f9658ec2fa";
              sha256_unsigned = "ddffbbc96b41381d4c44805e0a48dcd33d1ff72befed52c872c9e4f9658ec2fa";
              type = "kernel";
            }
          ];
          supported_devices = [
            "linksys,ea8500"
            "ea8500"
          ];
          titles = [
            {
              model = "EA8500";
              vendor = "Linksys";
            }
          ];
        };
        meraki_mr42 = {
          device_packages = [
            "-kmod-ata-ahci"
            "-kmod-ata-ahci-platform"
            "-kmod-usb-ohci"
            "-kmod-usb2"
            "-kmod-usb-ledtrig-usbport"
            "-kmod-phy-qcom-ipq806x-usb"
            "-kmod-usb3"
            "-kmod-usb-dwc3-qcom"
            "-uboot-envtools"
            "ath10k-firmware-qca9887-ct"
            "ath10k-firmware-qca99x0-ct"
            "kmod-eeprom-at24"
            "kmod-hwmon-ina2xx"
            "kmod-leds-tlc591xx"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq806x-generic-meraki_mr42";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-meraki_mr42-squashfs-sysupgrade.bin";
              sha256 = "3445651c2d25b847decb806e414eb99c6bb71e1f1492fe826760f991b9a3dc81";
              sha256_unsigned = "1fbc7043bb000e34df4df8f3aeb4e0e17ba4441204e49ac1455cece87bfd75a4";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-meraki_mr42-initramfs-fit-uImage.itb";
              sha256 = "3c8565c45cfe21fa508edaaa44d7fdb2051b5935790cfbb0124531f0ff197b4f";
              sha256_unsigned = "3c8565c45cfe21fa508edaaa44d7fdb2051b5935790cfbb0124531f0ff197b4f";
              type = "kernel";
            }
          ];
          supported_devices = [
            "meraki,mr42"
          ];
          titles = [
            {
              model = "MR42";
              vendor = "Cisco Meraki";
            }
          ];
        };
        meraki_mr52 = {
          device_packages = [
            "-kmod-ata-ahci"
            "-kmod-ata-ahci-platform"
            "-kmod-usb-ohci"
            "-kmod-usb2"
            "-kmod-usb-ledtrig-usbport"
            "-kmod-phy-qcom-ipq806x-usb"
            "-kmod-usb3"
            "-kmod-usb-dwc3-qcom"
            "-uboot-envtools"
            "ath10k-firmware-qca9887-ct"
            "ath10k-firmware-qca9984-ct"
            "kmod-eeprom-at24"
            "kmod-hwmon-ina2xx"
            "kmod-leds-tlc591xx"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq806x-generic-meraki_mr52";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-meraki_mr52-squashfs-sysupgrade.bin";
              sha256 = "c519f0d35c7ec0efc43dca7d1891a371257e351724b7a4420d1b15fac53ec375";
              sha256_unsigned = "d9351b84b98646d93e6bd2930bb8c1115e76f1e51cad70d30774a8b5bdae8a81";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-meraki_mr52-initramfs-fit-uImage.itb";
              sha256 = "f51a8176c8f8766b9fcda2326c1677e4c2985676bc60074c7686dc79dd37a252";
              sha256_unsigned = "f51a8176c8f8766b9fcda2326c1677e4c2985676bc60074c7686dc79dd37a252";
              type = "kernel";
            }
          ];
          supported_devices = [
            "meraki,mr52"
          ];
          titles = [
            {
              model = "MR52";
              vendor = "Cisco Meraki";
            }
          ];
        };
        nec_wg2600hp = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq806x-generic-nec_wg2600hp";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-nec_wg2600hp-squashfs-sysupgrade.bin";
              sha256 = "190a8b0daadacd19690c62f3a6e281c6e2ab3ed07158b9bccd1b7aec84cb820b";
              sha256_unsigned = "7577254fa882428c7a3bfdd3ef99c3f57117c0de1db36e4097a18529efc45326";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-nec_wg2600hp-initramfs-uImage";
              sha256 = "4f2c9a30e6732abfa347ce64fdae45ab47f8263fea72d4f9d9e285b78c24c0af";
              sha256_unsigned = "4f2c9a30e6732abfa347ce64fdae45ab47f8263fea72d4f9d9e285b78c24c0af";
              type = "kernel";
            }
          ];
          supported_devices = [
            "nec,wg2600hp"
          ];
          titles = [
            {
              model = "Aterm WG2600HP";
              vendor = "NEC";
            }
          ];
        };
        nec_wg2600hp3 = {
          device_packages = [
            "-kmod-ata-ahci"
            "-kmod-ata-ahci-platform"
            "-kmod-usb-ohci"
            "-kmod-usb2"
            "-kmod-usb-ledtrig-usbport"
            "-kmod-phy-qcom-ipq806x-usb"
            "-kmod-usb3"
            "-kmod-usb-dwc3-qcom"
            "ath10k-firmware-qca9984-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq806x-generic-nec_wg2600hp3";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-nec_wg2600hp3-initramfs-uImage";
              sha256 = "78f692465166c3ded9f814ec9386e7e96933f9b0dc050105aa9420e5b9c1e674";
              sha256_unsigned = "78f692465166c3ded9f814ec9386e7e96933f9b0dc050105aa9420e5b9c1e674";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-nec_wg2600hp3-squashfs-sysupgrade.bin";
              sha256 = "3fb998251630441a7b2d149766e657a801ebc65065a1709f6c5a91246649c293";
              sha256_unsigned = "493ee752fa1d9bbbe8c862749b5e8d583ee9980a06f491d09eebf7438cf8ff3b";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "nec,wg2600hp3"
          ];
          titles = [
            {
              model = "Aterm WG2600HP3";
              vendor = "NEC Platforms";
            }
          ];
        };
        netgear_d7800 = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq806x-generic-netgear_d7800";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-netgear_d7800-squashfs-factory.img";
              sha256 = "4e6dcad77d63cbf7bc14ef71e72d77e3a2579c24db466fae43257423eb378ca5";
              sha256_unsigned = "4e6dcad77d63cbf7bc14ef71e72d77e3a2579c24db466fae43257423eb378ca5";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-netgear_d7800-initramfs-uImage";
              sha256 = "de3687a1e1779570cf4b5e8cfd912a0f0e7ff32822ddb18123077d54488db20b";
              sha256_unsigned = "de3687a1e1779570cf4b5e8cfd912a0f0e7ff32822ddb18123077d54488db20b";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-netgear_d7800-squashfs-sysupgrade.bin";
              sha256 = "cf795d86f1e47a767224f0dc060bb25741c215d5600f5e95efe2f25ae876a00a";
              sha256_unsigned = "0f074c9b08eb4d9593f5a5c55087e2216794584a47ef9405d5bf7d9207638480";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,d7800"
            "d7800"
          ];
          titles = [
            {
              model = "Nighthawk X4 D7800";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_r7500 = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq806x-generic-netgear_r7500";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-netgear_r7500-squashfs-factory.img";
              sha256 = "dbfdfd212fa630533101159532dc983df4628a4dbda14056349be85e9a9577f0";
              sha256_unsigned = "dbfdfd212fa630533101159532dc983df4628a4dbda14056349be85e9a9577f0";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-netgear_r7500-squashfs-sysupgrade.bin";
              sha256 = "3246c33f1a47527ddabbb323cdcc74e526996019b0e5163519f783b64013dbe7";
              sha256_unsigned = "bf30e2643552f5c2c433dede83dbc7d668cec5e9c023ba500f13fd2c9e731b43";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-netgear_r7500-initramfs-uImage";
              sha256 = "8f42dcd0bc7d11c31c080ad7a0fca418b304d7c49a823123c9ac410be5ea3006";
              sha256_unsigned = "8f42dcd0bc7d11c31c080ad7a0fca418b304d7c49a823123c9ac410be5ea3006";
              type = "kernel";
            }
          ];
          supported_devices = [
            "netgear,r7500"
            "r7500"
          ];
          titles = [
            {
              model = "Nighthawk X4 R7500";
              variant = "v1";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_r7500v2 = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
            "ath10k-firmware-qca988x-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq806x-generic-netgear_r7500v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-netgear_r7500v2-squashfs-factory.img";
              sha256 = "691262870e30eef7b88db16d2721e9c6259f5b3dfd90bb0e14283abbf246b5ed";
              sha256_unsigned = "691262870e30eef7b88db16d2721e9c6259f5b3dfd90bb0e14283abbf246b5ed";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-netgear_r7500v2-initramfs-uImage";
              sha256 = "9149714431132a5cba23f20f419fe7a97c9227dc3027820875cd2ea65cef42d9";
              sha256_unsigned = "9149714431132a5cba23f20f419fe7a97c9227dc3027820875cd2ea65cef42d9";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-netgear_r7500v2-squashfs-sysupgrade.bin";
              sha256 = "cda7ae3af5d2ac611da6abab36dfec3f42286c7bd0c60a36157fc0aa96119750";
              sha256_unsigned = "7e5e8ca655587c821e13e79d8977ebd4757db83185c8d369c60f2f389fe4b499";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,r7500v2"
            "r7500v2"
          ];
          titles = [
            {
              model = "Nighthawk X4 R7500";
              variant = "v2";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_r7800 = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
            "kmod-ramoops"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq806x-generic-netgear_r7800";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-netgear_r7800-squashfs-sysupgrade.bin";
              sha256 = "b0a27f21a10e641128d418b0a25fc7b7d2c663b375b6f5a1f0c6dde3cdc6b586";
              sha256_unsigned = "fae635aec67b954f5f94f668105383bedb8fd1a23ac08aaebb94e430f1c74a2d";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-netgear_r7800-initramfs-uImage";
              sha256 = "569d1a678e142750255125bc098469d74ec5a9bfbc4cb97652870a3cac2833d9";
              sha256_unsigned = "569d1a678e142750255125bc098469d74ec5a9bfbc4cb97652870a3cac2833d9";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-netgear_r7800-squashfs-factory.img";
              sha256 = "6f10ed325dba0e7176670cbc8564131693fa843b120d8829c5c86d114a1030b8";
              sha256_unsigned = "6f10ed325dba0e7176670cbc8564131693fa843b120d8829c5c86d114a1030b8";
              type = "factory";
            }
          ];
          supported_devices = [
            "netgear,r7800"
            "r7800"
          ];
          titles = [
            {
              model = "Nighthawk X4S R7800";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_xr450 = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
            "kmod-ramoops"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq806x-generic-netgear_xr450";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-netgear_xr450-squashfs-factory.img";
              sha256 = "f93fc26620ec8cf420612e8ca2e01ba26b8dfafd9dc87b051725298d233324fd";
              sha256_unsigned = "f93fc26620ec8cf420612e8ca2e01ba26b8dfafd9dc87b051725298d233324fd";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-netgear_xr450-initramfs-uImage";
              sha256 = "36ffbadd6bec6f6b29b3aea15e10f5f73427143b448811f74128a31fe50d1a43";
              sha256_unsigned = "36ffbadd6bec6f6b29b3aea15e10f5f73427143b448811f74128a31fe50d1a43";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-netgear_xr450-squashfs-sysupgrade.bin";
              sha256 = "c57ce94f547dfd10247b9de49d83f54565693d77dfdd230d77e8ee0c2682e2ab";
              sha256_unsigned = "4e273d39e630c281f17e07df69641946bb7be32dc1201ff72b75972ddcec039e";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,xr450"
          ];
          titles = [
            {
              model = "Nighthawk XR450";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_xr500 = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
            "kmod-ramoops"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq806x-generic-netgear_xr500";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-netgear_xr500-squashfs-factory.img";
              sha256 = "f5f8640f705208c6c2dc4914798403788c22008fc57688011aa5ba6fa75f5ed0";
              sha256_unsigned = "f5f8640f705208c6c2dc4914798403788c22008fc57688011aa5ba6fa75f5ed0";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-netgear_xr500-initramfs-uImage";
              sha256 = "cfd246cb2c48225e0425b58b4ef3df8f8dd542e00c7e6d7d08576be602092628";
              sha256_unsigned = "cfd246cb2c48225e0425b58b4ef3df8f8dd542e00c7e6d7d08576be602092628";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-netgear_xr500-squashfs-sysupgrade.bin";
              sha256 = "8b8bfa499c9f51daea059c78bcdb3daa3530cfa24d20cececc2e463c4fb83367";
              sha256_unsigned = "a6527c1ccb54db93c73ef6eed729f0235395d8758d610e404f27c840a5af913d";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,xr500"
          ];
          titles = [
            {
              model = "Nighthawk XR500";
              vendor = "NETGEAR";
            }
          ];
        };
        nokia_ac400i = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq806x-generic-nokia_ac400i";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-nokia_ac400i-squashfs-nand-factory.bin";
              sha256 = "e6a39fae64dd8ab49b0276ddc5fdbbb74d06a5e4ee91216c30d625cab1aace0e";
              sha256_unsigned = "e6a39fae64dd8ab49b0276ddc5fdbbb74d06a5e4ee91216c30d625cab1aace0e";
              type = "nand-factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-nokia_ac400i-initramfs-fit-uImage.itb";
              sha256 = "606d0ea70d85765e2b56c29b931245bf7807138907d7eb3ac5fdea48fd0eb60f";
              sha256_unsigned = "606d0ea70d85765e2b56c29b931245bf7807138907d7eb3ac5fdea48fd0eb60f";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-nokia_ac400i-squashfs-nand-sysupgrade.bin";
              sha256 = "2ef6fbe71a5578461acadb74e109c6a37d38a69fc831a46691d16f909dfe9efe";
              sha256_unsigned = "b97c0fbe6c8ac72f2ef26f5d0f6aa6fbab50be8c7348bfdce3d3c7309f34099d";
              type = "nand-sysupgrade";
            }
          ];
          supported_devices = [
            "nokia,ac400i"
          ];
          titles = [
            {
              model = "AC400i";
              vendor = "Nokia";
            }
          ];
        };
        qcom_ipq8064-ap148 = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq806x-generic-qcom_ipq8064-ap148";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-qcom_ipq8064-ap148-initramfs-fit-uImage.itb";
              sha256 = "84ac07fe30d4b52430d968c9b619123d6cf8c746b4e57febbc545e21beb490ec";
              sha256_unsigned = "84ac07fe30d4b52430d968c9b619123d6cf8c746b4e57febbc545e21beb490ec";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-qcom_ipq8064-ap148-squashfs-nand-sysupgrade.bin";
              sha256 = "b2cd45a2b4e783e273a23b62d5818feb9ee19cbdc5dee98a7897416243350900";
              sha256_unsigned = "e9c689d0778bbc53aac672ca21e7d1e06c6963b2a1657edd8dd67de79fc7b025";
              type = "nand-sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-qcom_ipq8064-ap148-squashfs-nand-factory.bin";
              sha256 = "4600b3bc2571d3901ba6670fa83798f509885e60d971cd90989edb656c5c2d5e";
              sha256_unsigned = "4600b3bc2571d3901ba6670fa83798f509885e60d971cd90989edb656c5c2d5e";
              type = "nand-factory";
            }
          ];
          supported_devices = [
            "qcom,ipq8064-ap148"
            "ap148"
          ];
          titles = [
            {
              model = "AP148";
              variant = "standard";
              vendor = "Qualcomm";
            }
          ];
        };
        qcom_ipq8064-ap148-legacy = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq806x-generic-qcom_ipq8064-ap148-legacy";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-qcom_ipq8064-ap148-legacy-initramfs-uImage";
              sha256 = "2f784706db7c09997aaed4a26328b8ba0ffa7315891dbdb57cb788fc5e1cfbd0";
              sha256_unsigned = "2f784706db7c09997aaed4a26328b8ba0ffa7315891dbdb57cb788fc5e1cfbd0";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-qcom_ipq8064-ap148-legacy-squashfs-nand-sysupgrade.bin";
              sha256 = "a09886e53cab373cc82d05edc318a4c3d2bc643731984e22b047c1e5c84752ad";
              sha256_unsigned = "0f832cf4e8a4aecb7526b5f5bf87b8faaa792d2dfa0efa521ee803d733c2f6f3";
              type = "nand-sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-qcom_ipq8064-ap148-legacy-squashfs-nand-factory.bin";
              sha256 = "1d78b37418c325b09e723780af6baa8dba8616c29ce787030f911d7a49c06908";
              sha256_unsigned = "1d78b37418c325b09e723780af6baa8dba8616c29ce787030f911d7a49c06908";
              type = "nand-factory";
            }
          ];
          supported_devices = [
            "qcom,ipq8064-ap148"
            "ap148"
          ];
          titles = [
            {
              model = "AP148";
              variant = "legacy";
              vendor = "Qualcomm";
            }
          ];
        };
        qcom_ipq8064-ap161 = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq806x-generic-qcom_ipq8064-ap161";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-qcom_ipq8064-ap161-squashfs-nand-sysupgrade.bin";
              sha256 = "7ac9e584cf1c04afac26845483e2aeca6ca91306bd89d082743add0278fff606";
              sha256_unsigned = "d57072410a2b30fd8467bff8939232fab312c3160c1f36899ed5d95b441b26ba";
              type = "nand-sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-qcom_ipq8064-ap161-squashfs-nand-factory.bin";
              sha256 = "49655ad3c23d16655888c217e8170495d05c8151bc297838a1964e93bae63a16";
              sha256_unsigned = "49655ad3c23d16655888c217e8170495d05c8151bc297838a1964e93bae63a16";
              type = "nand-factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-qcom_ipq8064-ap161-initramfs-fit-uImage.itb";
              sha256 = "8252acbbec9ae169068f7a3d56e162beaf798d23505047ab9259451691fcd8f9";
              sha256_unsigned = "8252acbbec9ae169068f7a3d56e162beaf798d23505047ab9259451691fcd8f9";
              type = "kernel";
            }
          ];
          supported_devices = [
            "qcom,ipq8064-ap161"
          ];
          titles = [
            {
              model = "AP161";
              vendor = "Qualcomm";
            }
          ];
        };
        qcom_ipq8064-db149 = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq806x-generic-qcom_ipq8064-db149";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-qcom_ipq8064-db149-squashfs-sysupgrade.bin";
              sha256 = "967f0ce242e1a403ac71bc7a05fef82186803e18894c022662b521306c54595d";
              sha256_unsigned = "151a2c7edbc95cb22a161735a9ba8fd6cfd13f798f31b2d3ca7f05d6857fd2b5";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-qcom_ipq8064-db149-initramfs-fit-uImage.itb";
              sha256 = "8266e8256b94aca6da2ccfb4e15f36431fa3252e437a301faff1adf30b75cd98";
              sha256_unsigned = "8266e8256b94aca6da2ccfb4e15f36431fa3252e437a301faff1adf30b75cd98";
              type = "kernel";
            }
          ];
          supported_devices = [
            "qcom,ipq8064-db149"
          ];
          titles = [
            {
              model = "DB149";
              vendor = "Qualcomm";
            }
          ];
        };
        ruijie_rg-mtfi-m520 = {
          device_packages = [
            "ath10k-firmware-qca988x-ct"
            "kmod-hwmon-lm75"
            "kmod-rtc-pcf8563"
            "kmod-fs-f2fs"
            "losetup"
            "mkf2fs"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq806x-generic-ruijie_rg-mtfi-m520";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-ruijie_rg-mtfi-m520-initramfs-uImage";
              sha256 = "dd75307a26cb9fd3a22f034046b7b0c5820845453d30ded1cce1d40890c868d1";
              sha256_unsigned = "dd75307a26cb9fd3a22f034046b7b0c5820845453d30ded1cce1d40890c868d1";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-ruijie_rg-mtfi-m520-squashfs-sysupgrade.bin";
              sha256 = "5eb68c22257e19fdfc42c478f8b5ea440b4f50119509ca0fcd3ffc552aa86250";
              sha256_unsigned = "0e743c75d93b66659fd3943941a8917cb4d00e9644de48313da9b8aeb463465d";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-ruijie_rg-mtfi-m520-squashfs-factory.bin";
              sha256 = "64868df5642ca63d6ae93a6514b290c1b6595d042fd883f0073ff675b2457aa4";
              sha256_unsigned = "64868df5642ca63d6ae93a6514b290c1b6595d042fd883f0073ff675b2457aa4";
              type = "factory";
            }
          ];
          supported_devices = [
            "ruijie,rg-mtfi-m520"
          ];
          titles = [
            {
              model = "RG-MTFi-M520";
              vendor = "Ruijie";
            }
          ];
        };
        tplink_ad7200 = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
            "kmod-ramoops"
            "kmod-wil6210"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq806x-generic-tplink_ad7200";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-tplink_ad7200-initramfs-uImage";
              sha256 = "8d07995d23e626ae4a3ae72a36cdf945778bb5a1277e50677fe933d43f211bc3";
              sha256_unsigned = "8d07995d23e626ae4a3ae72a36cdf945778bb5a1277e50677fe933d43f211bc3";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-tplink_ad7200-squashfs-sysupgrade.bin";
              sha256 = "1b6f397554eebcba17b1c452efd4e33f784f1656de2830027b2d572e178ce6e2";
              sha256_unsigned = "e6206cd04b5ad64b15c1122e5aaca093ca79b13e841ae476b3e7324e365466f0";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-tplink_ad7200-squashfs-factory.bin";
              sha256 = "398fcad870fd5d428fa7a851fb96a07802b8f2ceb25716d117d85767fa7ac5bc";
              sha256_unsigned = "398fcad870fd5d428fa7a851fb96a07802b8f2ceb25716d117d85767fa7ac5bc";
              type = "factory";
            }
          ];
          supported_devices = [
            "tplink,ad7200"
          ];
          titles = [
            {
              model = "AD7200";
              variant = "v1/v2";
              vendor = "TP-Link";
            }
            {
              model = "Talon AD7200";
              variant = "v1/v2";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_c2600 = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
            "kmod-ramoops"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq806x-generic-tplink_c2600";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-tplink_c2600-initramfs-uImage";
              sha256 = "4ff312eba347c6d2ba71285f8038c15e6ef6633a5b1da868e63df39e6ceb9e8c";
              sha256_unsigned = "4ff312eba347c6d2ba71285f8038c15e6ef6633a5b1da868e63df39e6ceb9e8c";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-tplink_c2600-squashfs-factory.bin";
              sha256 = "23d5098859c779f38a51cb85dd7091468b25b607119af9a6aa88198a40a42842";
              sha256_unsigned = "23d5098859c779f38a51cb85dd7091468b25b607119af9a6aa88198a40a42842";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-tplink_c2600-squashfs-sysupgrade.bin";
              sha256 = "8cea84533cd310ca8740fabe23eae4f2aee7cae1b3d9e9838b917ac0296ff352";
              sha256_unsigned = "275a94c24981c779694a0c0be21aef478379111304696fbcce056dcf03512b11";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "tplink,c2600"
            "c2600"
          ];
          titles = [
            {
              model = "Archer C2600";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_vr2600v = {
          device_packages = [
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq806x-generic-tplink_vr2600v";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-tplink_vr2600v-squashfs-sysupgrade.bin";
              sha256 = "73c470a52ee006b35b541e7d180826d4223dcd8e4ade8db8a5c4c9a32e1de589";
              sha256_unsigned = "9680330ad5711a191c68c900a5f8e83cdf54fb0dcba6bac587a32479bbf721f0";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-tplink_vr2600v-initramfs-uImage";
              sha256 = "f46ce28769f6a2c4b0e26aeb948bb1c2de639a9a30296e656af07d1871da63ea";
              sha256_unsigned = "f46ce28769f6a2c4b0e26aeb948bb1c2de639a9a30296e656af07d1871da63ea";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,vr2600v"
            "vr2600v"
          ];
          titles = [
            {
              model = "Archer VR2600v";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        ubnt_unifi-ac-hd = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq806x-generic-ubnt_unifi-ac-hd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-ubnt_unifi-ac-hd-squashfs-sysupgrade.bin";
              sha256 = "f45a8a2049c516d518bbdadbad5103aae6122ceff9df30580e7c999c3fb89066";
              sha256_unsigned = "edc421cce37ed10c4b370546f261004c6f8cdc609c936877004051398930871a";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-ubnt_unifi-ac-hd-initramfs-fit-uImage.itb";
              sha256 = "b76b70f9b2c16b67b9428270a956c43265c81df4cee7d7a5cee5f3e2e8e96694";
              sha256_unsigned = "b76b70f9b2c16b67b9428270a956c43265c81df4cee7d7a5cee5f3e2e8e96694";
              type = "kernel";
            }
          ];
          supported_devices = [
            "ubnt,unifi-ac-hd"
          ];
          titles = [
            {
              model = "UniFi AC HD";
              vendor = "Ubiquiti";
            }
          ];
        };
        xiaomi_mi-router-hd = {
          device_packages = [
            "kmod-i2c-gpio"
            "kmod-hwmon-emc2305"
            "kmod-hwmon-lm75"
            "kmod-hwmon-drivetemp"
            "ath10k-firmware-qca9984-ct"
            "ath10k-firmware-qca99x0-ct"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq806x-generic-xiaomi_mi-router-hd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-xiaomi_mi-router-hd-squashfs-sysupgrade.bin";
              sha256 = "7a9e3b266bfc9cf0997d733715f2da5b4b2ceda866828e6af741d7ff39324f74";
              sha256_unsigned = "0c4d2515aab8ad9ff55676837cca443d89147e766bc4ae65f6003fffdb3a909f";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-xiaomi_mi-router-hd-squashfs-factory.bin";
              sha256 = "283736ebe67d1390a3d4de3466e87058c61d5f66e9631d202c8723b0b70e40c8";
              sha256_unsigned = "283736ebe67d1390a3d4de3466e87058c61d5f66e9631d202c8723b0b70e40c8";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-xiaomi_mi-router-hd-initramfs-uImage";
              sha256 = "f39b20fd80639e9130df3411017ed77211ac189df7f6f99e6f33dadf114d377e";
              sha256_unsigned = "f39b20fd80639e9130df3411017ed77211ac189df7f6f99e6f33dadf114d377e";
              type = "kernel";
            }
          ];
          supported_devices = [
            "xiaomi,mi-router-hd"
          ];
          titles = [
            {
              model = "Mi Router HD";
              vendor = "Xiaomi";
            }
          ];
        };
        zyxel_nbg6817 = {
          device_packages = [
            "ath10k-firmware-qca9984-ct"
            "e2fsprogs"
            "kmod-fs-ext4"
            "losetup"
          ];
          image_prefix = "immortalwrt-24.10.1-ipq806x-generic-zyxel_nbg6817";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-zyxel_nbg6817-initramfs-uImage";
              sha256 = "1b880cfd205a79fa8bb9fc8b51371e13106503ce8c1a0973d825934d86186f4d";
              sha256_unsigned = "1b880cfd205a79fa8bb9fc8b51371e13106503ce8c1a0973d825934d86186f4d";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-zyxel_nbg6817-squashfs-sysupgrade.bin";
              sha256 = "c4e084e50d5c26b2ad8f4c12d4df164d4db42df5356ea9a8d92d1a510c1e4220";
              sha256_unsigned = "844ab9172f79fb9ee440b6ebd81271ffe70439d7f9392ec40fea8a10ed8778c8";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ipq806x-generic-zyxel_nbg6817-squashfs-factory.bin";
              sha256 = "6cd525e169f3b67b6b420548849cbc966b8b30f7f808dae66fa1dced240bc6a2";
              sha256_unsigned = "6cd525e169f3b67b6b420548849cbc966b8b30f7f808dae66fa1dced240bc6a2";
              type = "factory";
            }
          ];
          supported_devices = [
            "zyxel,nbg6817"
            "nbg6817"
          ];
          titles = [
            {
              model = "NBG6817";
              vendor = "Zyxel";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "ipq806x/generic";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
  };
  ixp4xx = {
    generic = {
      arch_packages = "armeb_xscale";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "fconfig"
        "firewall4"
        "fstools"
        "kmod-crypto-hw-ixp4xx"
        "kmod-leds-gpio"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-usb-ledtrig-usbport"
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
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "6c9fe788587feb2841ac74309e14cf42";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        dlink_dsm_g600_a = {
          device_packages = [
            "ixp4xx-microcode-ethernet"
            "kmod-rtc-pcf8563"
            "kmod-via-velocity"
            "kmod-ata-artop"
            "kmod-ath5k"
            "wpad-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-ixp4xx-generic-dlink_dsm_g600_a";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ixp4xx-generic-dlink_dsm_g600_a-squashfs-kernel.bin";
              sha256 = "cc7926b42b985a977d7ea972e4002a7548b549bfdeec4cbf66d47b63f2152f64";
              sha256_unsigned = "cc7926b42b985a977d7ea972e4002a7548b549bfdeec4cbf66d47b63f2152f64";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ixp4xx-generic-dlink_dsm_g600_a-squashfs-rootfs.bin";
              sha256 = "874ac00e2147f8c9f978497add471c582a15cc3376bb7bfa412a60206d0edcd9";
              sha256_unsigned = "874ac00e2147f8c9f978497add471c582a15cc3376bb7bfa412a60206d0edcd9";
              type = "rootfs";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-ixp4xx-generic-dlink_dsm_g600_a-ext4-rootfs.bin";
              sha256 = "ac4ab8a264e2ef8a2645aebce678400a4f150bed2a9101354f747bbb89fe6aae";
              sha256_unsigned = "ac4ab8a264e2ef8a2645aebce678400a4f150bed2a9101354f747bbb89fe6aae";
              type = "rootfs";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-ixp4xx-generic-dlink_dsm_g600_a-ext4-kernel.bin";
              sha256 = "cc7926b42b985a977d7ea972e4002a7548b549bfdeec4cbf66d47b63f2152f64";
              sha256_unsigned = "cc7926b42b985a977d7ea972e4002a7548b549bfdeec4cbf66d47b63f2152f64";
              type = "kernel";
            }
          ];
          supported_devices = [
            "dlink,dsm,g600,a"
          ];
          titles = [
            {
              model = "DSM G600 A";
              vendor = "D-Link";
            }
          ];
        };
        gateworks_avila = {
          device_packages = [
            "ixp4xx-microcode-ethernet"
            "kmod-rtc-ds1672"
            "kmod-eeprom-at24"
            "kmod-hwmon-ad7418"
          ];
          image_prefix = "immortalwrt-24.10.1-ixp4xx-generic-gateworks_avila";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ixp4xx-generic-gateworks_avila-squashfs-kernel.bin";
              sha256 = "2c37746c55839aabb695ce12cf302130a619f9eb061b7c93bb708e2d6ceaecd7";
              sha256_unsigned = "2c37746c55839aabb695ce12cf302130a619f9eb061b7c93bb708e2d6ceaecd7";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ixp4xx-generic-gateworks_avila-squashfs-rootfs.bin";
              sha256 = "f3c9eee8f4023c3b100bea728211c67d4f2e8412522c9ace223fef3d907b7403";
              sha256_unsigned = "f3c9eee8f4023c3b100bea728211c67d4f2e8412522c9ace223fef3d907b7403";
              type = "rootfs";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-ixp4xx-generic-gateworks_avila-ext4-kernel.bin";
              sha256 = "2c37746c55839aabb695ce12cf302130a619f9eb061b7c93bb708e2d6ceaecd7";
              sha256_unsigned = "2c37746c55839aabb695ce12cf302130a619f9eb061b7c93bb708e2d6ceaecd7";
              type = "kernel";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-ixp4xx-generic-gateworks_avila-ext4-rootfs.bin";
              sha256 = "8015ce9287f3f34aa6d224a97ae39522ad28eb0b76dc688aa24dbe3cadb42ad5";
              sha256_unsigned = "8015ce9287f3f34aa6d224a97ae39522ad28eb0b76dc688aa24dbe3cadb42ad5";
              type = "rootfs";
            }
          ];
          supported_devices = [
            "gateworks,avila"
          ];
          titles = [
            {
              model = "Avila GW2348-4";
              vendor = "Gateworks";
            }
          ];
        };
        gateworks_cambria = {
          device_packages = [
            "ixp4xx-microcode-ethernet"
            "kmod-rtc-ds1672"
            "kmod-eeprom-at24"
            "kmod-hwmon-ad7418"
          ];
          image_prefix = "immortalwrt-24.10.1-ixp4xx-generic-gateworks_cambria";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-ixp4xx-generic-gateworks_cambria-ext4-kernel.bin";
              sha256 = "4c54df26b9ffd52522c606b0f7f33eedc3cec06429e59275f30fdec004dbc367";
              sha256_unsigned = "4c54df26b9ffd52522c606b0f7f33eedc3cec06429e59275f30fdec004dbc367";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ixp4xx-generic-gateworks_cambria-squashfs-kernel.bin";
              sha256 = "4c54df26b9ffd52522c606b0f7f33eedc3cec06429e59275f30fdec004dbc367";
              sha256_unsigned = "4c54df26b9ffd52522c606b0f7f33eedc3cec06429e59275f30fdec004dbc367";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ixp4xx-generic-gateworks_cambria-squashfs-rootfs.bin";
              sha256 = "f3c9eee8f4023c3b100bea728211c67d4f2e8412522c9ace223fef3d907b7403";
              sha256_unsigned = "f3c9eee8f4023c3b100bea728211c67d4f2e8412522c9ace223fef3d907b7403";
              type = "rootfs";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-ixp4xx-generic-gateworks_cambria-ext4-rootfs.bin";
              sha256 = "8015ce9287f3f34aa6d224a97ae39522ad28eb0b76dc688aa24dbe3cadb42ad5";
              sha256_unsigned = "8015ce9287f3f34aa6d224a97ae39522ad28eb0b76dc688aa24dbe3cadb42ad5";
              type = "rootfs";
            }
          ];
          supported_devices = [
            "gateworks,cambria"
          ];
          titles = [
            {
              model = "Cambria GW2358-4";
              vendor = "Gateworks";
            }
          ];
        };
        iomega_nas100d = {
          device_packages = [
            "ixp4xx-microcode-ethernet"
            "kmod-rtc-pcf8563"
          ];
          image_prefix = "immortalwrt-24.10.1-ixp4xx-generic-iomega_nas100d";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-ixp4xx-generic-iomega_nas100d-ext4-factory.bin";
              sha256 = "c9309349143fdbf6e746d6d64e9b6ea37c3690e880360513f31b5c5fd5afc17d";
              sha256_unsigned = "c9309349143fdbf6e746d6d64e9b6ea37c3690e880360513f31b5c5fd5afc17d";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ixp4xx-generic-iomega_nas100d-squashfs-factory.bin";
              sha256 = "c9309349143fdbf6e746d6d64e9b6ea37c3690e880360513f31b5c5fd5afc17d";
              sha256_unsigned = "c9309349143fdbf6e746d6d64e9b6ea37c3690e880360513f31b5c5fd5afc17d";
              type = "factory";
            }
          ];
          supported_devices = [
            "iomega,nas100d"
          ];
          titles = [
            {
              model = "NAS100d";
              vendor = "Iomega";
            }
          ];
        };
        usrobotics_usr8200 = {
          device_packages = [
            "ixp4xx-microcode-ethernet"
            "kmod-rtc-r7301"
            "kmod-firewire"
            "kmod-firewire-ohci"
            "kmod-dsa-mv88e6060"
          ];
          image_prefix = "immortalwrt-24.10.1-ixp4xx-generic-usrobotics_usr8200";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-ixp4xx-generic-usrobotics_usr8200-ext4-kernel.bin";
              sha256 = "bd0d23bfee1e86d92d76b89680a39492162e3a641e7df551c4ee22e9ce5dc9c6";
              sha256_unsigned = "bd0d23bfee1e86d92d76b89680a39492162e3a641e7df551c4ee22e9ce5dc9c6";
              type = "kernel";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-ixp4xx-generic-usrobotics_usr8200-ext4-rootfs.bin";
              sha256 = "c793dbe2d95583ce8c6e695d1b962810527db3ac14b05e959e79116475b552a1";
              sha256_unsigned = "c793dbe2d95583ce8c6e695d1b962810527db3ac14b05e959e79116475b552a1";
              type = "rootfs";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ixp4xx-generic-usrobotics_usr8200-squashfs-rootfs.bin";
              sha256 = "09a1fd430f8ba964e5da09db813382deca54fe98c5f8e802ab8525f07fbc71c9";
              sha256_unsigned = "09a1fd430f8ba964e5da09db813382deca54fe98c5f8e802ab8525f07fbc71c9";
              type = "rootfs";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ixp4xx-generic-usrobotics_usr8200-squashfs-kernel.bin";
              sha256 = "bd0d23bfee1e86d92d76b89680a39492162e3a641e7df551c4ee22e9ce5dc9c6";
              sha256_unsigned = "bd0d23bfee1e86d92d76b89680a39492162e3a641e7df551c4ee22e9ce5dc9c6";
              type = "kernel";
            }
          ];
          supported_devices = [
            "usrobotics,usr8200"
          ];
          titles = [
            {
              model = "USR8200";
              vendor = "USRobotics";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "ixp4xx/generic";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
  };
  kirkwood = {
    generic = {
      arch_packages = "arm_xscale";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "firewall4"
        "fstools"
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
        "uboot-envtools"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "69fd7e3766745d38354d62a5d3f2f715";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        checkpoint_l-50 = {
          device_packages = [
            "kmod-ath9k"
            "kmod-gpio-button-hotplug"
            "kmod-mvsdio"
            "kmod-rtc-s35390a"
            "kmod-usb-ledtrig-usbport"
            "wpad-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-kirkwood-generic-checkpoint_l-50";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-checkpoint_l-50-squashfs-sysupgrade.bin";
              sha256 = "a92098e7e76bdfdd1300f0f51751c7cfcc0c8e8d82634a9be836aee9a2504bbf";
              sha256_unsigned = "1d204d24a3f25bfd9aceb80136281ea64c699b6a3c212dd35bf29e1815724df7";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-checkpoint_l-50-initramfs-uImage";
              sha256 = "23f35b953258f20f7ff10b974a0fd91d081a390aa33549728d93ffa208bd21d9";
              sha256_unsigned = "23f35b953258f20f7ff10b974a0fd91d081a390aa33549728d93ffa208bd21d9";
              type = "kernel";
            }
          ];
          supported_devices = [
            "checkpoint,l-50"
          ];
          titles = [
            {
              model = "L-50";
              vendor = "Check Point";
            }
          ];
        };
        cisco_on100 = {
          device_packages = [
            "kmod-mvsdio"
            "kmod-rtc-mv"
          ];
          image_prefix = "immortalwrt-24.10.1-kirkwood-generic-cisco_on100";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-cisco_on100-squashfs-factory.bin";
              sha256 = "0c02adfa88650666f989e5f77c1f812ad195bb8801f46cb692a16a43d73dce11";
              sha256_unsigned = "0c02adfa88650666f989e5f77c1f812ad195bb8801f46cb692a16a43d73dce11";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-cisco_on100-initramfs-uImage";
              sha256 = "2ae1d1e71ee1d8151fe004d206bad0ad06620f6d5dd0283b86a6a2f21995c36a";
              sha256_unsigned = "2ae1d1e71ee1d8151fe004d206bad0ad06620f6d5dd0283b86a6a2f21995c36a";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-cisco_on100-squashfs-sysupgrade.bin";
              sha256 = "2af61718d5f7cc25ff575dcf9ccbcf4c84d8aa7ac3c55ed2081d4cf31eb16428";
              sha256_unsigned = "63f72f41f88737ecce9beca442aea4ce18bcc6ca750dd52deb12b3465ad94724";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "cisco,on100"
            "on100"
          ];
          titles = [
            {
              model = "ON100";
              vendor = "Cisco Systems";
            }
          ];
        };
        cloudengines_pogoe02 = {
          device_packages = [
            "kmod-rtc-mv"
          ];
          image_prefix = "immortalwrt-24.10.1-kirkwood-generic-cloudengines_pogoe02";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-cloudengines_pogoe02-initramfs-uImage";
              sha256 = "436d57fcaac8c5cd974189d6db14c7508bce30f296985c2f7a7a1d6659ba22d4";
              sha256_unsigned = "436d57fcaac8c5cd974189d6db14c7508bce30f296985c2f7a7a1d6659ba22d4";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-cloudengines_pogoe02-squashfs-factory.bin";
              sha256 = "e007b97d15ea732dd0ecd0dc5248915db5eeeb80c8701fc60e091c5e3f76377a";
              sha256_unsigned = "e007b97d15ea732dd0ecd0dc5248915db5eeeb80c8701fc60e091c5e3f76377a";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-cloudengines_pogoe02-squashfs-sysupgrade.bin";
              sha256 = "d5d88d4e80d2ddecf62bdd7220859415509bf3cc23e41e2b047c45490e1af545";
              sha256_unsigned = "0f069e2536ca64027b7d0c9321335de1af6587ea23297250138691d0aaa8b9a2";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "cloudengines,pogoe02"
            "pogo_e02"
          ];
          titles = [
            {
              model = "Pogoplug E02";
              vendor = "Cloud Engines";
            }
          ];
        };
        cloudengines_pogoplugv4 = {
          device_packages = [
            "kmod-ata-marvell-sata"
            "kmod-fs-ext4"
            "kmod-mvsdio"
            "kmod-usb3"
            "kmod-gpio-button-hotplug"
            "kmod-rtc-mv"
          ];
          image_prefix = "immortalwrt-24.10.1-kirkwood-generic-cloudengines_pogoplugv4";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-cloudengines_pogoplugv4-squashfs-factory.bin";
              sha256 = "fea856b880cd15c099000dba32ae426f43723a04744d23b4e0cf9fb3c421e5d9";
              sha256_unsigned = "fea856b880cd15c099000dba32ae426f43723a04744d23b4e0cf9fb3c421e5d9";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-cloudengines_pogoplugv4-initramfs-uImage";
              sha256 = "b8ad298f623eb8dea0aecc919d86bbfbd85275b869436ace0156ba7642756b1d";
              sha256_unsigned = "b8ad298f623eb8dea0aecc919d86bbfbd85275b869436ace0156ba7642756b1d";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-cloudengines_pogoplugv4-squashfs-sysupgrade.bin";
              sha256 = "bedad9e0ebbd5ae347b283a3bd43f4719aeb0066d03f15d955acd10a310b0121";
              sha256_unsigned = "c3d39f7124a11f2522f6f24982136c0c4c240cfd20463e1c87ba0c6d13f5ed83";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "cloudengines,pogoplugv4"
          ];
          titles = [
            {
              model = "Pogoplug V4";
              vendor = "Cloud Engines";
            }
          ];
        };
        ctera_c200-v1 = {
          device_packages = [
            "kmod-ata-marvell-sata"
            "kmod-gpio-button-hotplug"
            "kmod-hwmon-lm63"
            "kmod-rtc-s35390a"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.1-kirkwood-generic-ctera_c200-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-ctera_c200-v1-squashfs-sysupgrade.bin";
              sha256 = "f20d93ef302cca341e99249c2f25d8b74407c21c0ab002d9cd9292efe2d0f40a";
              sha256_unsigned = "042a349289fabd67409cf773c6b232b6e6c502251bfaf0db95a900181d9df7d0";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-ctera_c200-v1-initramfs-factory.firm";
              sha256 = "04ab925a142288f2f1c431f6a9fa1636ce2ee1e514b5d798aead31d169087996";
              sha256_unsigned = "04ab925a142288f2f1c431f6a9fa1636ce2ee1e514b5d798aead31d169087996";
              type = "kernel";
            }
          ];
          supported_devices = [
            "ctera,c200-v1"
          ];
          titles = [
            {
              model = "C200";
              variant = "V1";
              vendor = "Ctera";
            }
          ];
        };
        dlink_dns320l = {
          device_packages = [
            "kmod-ata-marvell-sata"
            "kmod-fs-ext4"
            "kmod-gpio-button-hotplug"
            "kmod-usb-storage"
            "kmod-usb-ledtrig-usbport"
            "dns320l-mcu"
            "kmod-rtc-mv"
          ];
          image_prefix = "immortalwrt-24.10.1-kirkwood-generic-dlink_dns320l";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-dlink_dns320l-squashfs-factory.bin";
              sha256 = "3d71aabe8a70092a9a14236e42fbe9380da94285b380b54e5e6484fbab2c5aa6";
              sha256_unsigned = "3d71aabe8a70092a9a14236e42fbe9380da94285b380b54e5e6484fbab2c5aa6";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-dlink_dns320l-initramfs-uImage";
              sha256 = "09dbc72a240b7e11f2404e1fa1bf4a9277b974113be3f668373112f06791e505";
              sha256_unsigned = "09dbc72a240b7e11f2404e1fa1bf4a9277b974113be3f668373112f06791e505";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-dlink_dns320l-squashfs-sysupgrade.bin";
              sha256 = "0cb7dd1b28b5334c048f39d35adcb673a16b7f974fdf73417f5207ddba73db8e";
              sha256_unsigned = "82aa49afc8621edf088a8956dcd1f2a10643e94f9a78f1dc4fac9beef3fb1434";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "dlink,dns320l"
          ];
          titles = [
            {
              model = "DNS-320L";
              vendor = "D-Link";
            }
          ];
        };
        endian_4i-edge-200 = {
          device_packages = [
            "kmod-ath9k"
            "kmod-mvsdio"
            "wpad-openssl"
            "kmod-rtc-mv"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-kirkwood-generic-endian_4i-edge-200";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-endian_4i-edge-200-squashfs-sysupgrade.bin";
              sha256 = "1f7380d314a9fa9ce201e9b8d30f02c7c1ffc30ec85c55638e1cac508ee5f56f";
              sha256_unsigned = "0adaacbab24bb19046b61f03b4da58d713b697810b503a82839305d26f568244";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-endian_4i-edge-200-initramfs-uImage";
              sha256 = "bb83d14867ea5a0e9afca00ca492a9bca6d691946f9b7e6563a58587be74fd16";
              sha256_unsigned = "bb83d14867ea5a0e9afca00ca492a9bca6d691946f9b7e6563a58587be74fd16";
              type = "kernel";
            }
          ];
          supported_devices = [
            "endian,4i-edge-200"
          ];
          titles = [
            {
              model = "4i Edge 200";
              vendor = "Endian";
            }
            {
              model = "UTM Mini Firewall";
              vendor = "Endian";
            }
          ];
        };
        globalscale_sheevaplug = {
          device_packages = [
            "kmod-mvsdio"
            "kmod-rtc-mv"
          ];
          image_prefix = "immortalwrt-24.10.1-kirkwood-generic-globalscale_sheevaplug";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-globalscale_sheevaplug-initramfs-uImage";
              sha256 = "3cb94dabcb265bb9dc81d167b58acbed0f8daead1f978c173f626ace3f40e453";
              sha256_unsigned = "3cb94dabcb265bb9dc81d167b58acbed0f8daead1f978c173f626ace3f40e453";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-globalscale_sheevaplug-squashfs-sysupgrade.bin";
              sha256 = "e6525d55a75fdef038ff72947f71a0d3bfda0c9240901e14d37c9a51355486f2";
              sha256_unsigned = "ff9b77b69db166fac6e92bdc0ae4fe8c7017602cf50840549fc804c1e5e246ad";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-globalscale_sheevaplug-squashfs-factory.bin";
              sha256 = "9ff4267479ff9e5c5e124010471ff5584cd7165371d10f003c5e9ab9ddc13134";
              sha256_unsigned = "9ff4267479ff9e5c5e124010471ff5584cd7165371d10f003c5e9ab9ddc13134";
              type = "factory";
            }
          ];
          supported_devices = [
            "globalscale,sheevaplug"
          ];
          titles = [
            {
              model = "Sheevaplug";
              vendor = "Globalscale";
            }
          ];
        };
        "iom_iconnect-1.1" = {
          device_packages = [
            "kmod-rtc-mv"
          ];
          image_prefix = "immortalwrt-24.10.1-kirkwood-generic-iom_iconnect-1.1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-iom_iconnect-1.1-squashfs-sysupgrade.bin";
              sha256 = "e9c2ba6168e2b3d3d3fac7bfe63a01480088c18ffdcce6ef651affb1e28329a1";
              sha256_unsigned = "4eb0d191e535738e116a47b9dab13a6ef52f85dcad233293a63e54f4dbffa007";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-iom_iconnect-1.1-squashfs-factory.bin";
              sha256 = "fc1b813354ffed720525b01abcf4e995928eae11cdcf548356e118e7ea3d9b7c";
              sha256_unsigned = "fc1b813354ffed720525b01abcf4e995928eae11cdcf548356e118e7ea3d9b7c";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-iom_iconnect-1.1-initramfs-uImage";
              sha256 = "bd2451083368caeb086e3cc9c27138666a7375691c1086f4f13ea7e35c6a8ba5";
              sha256_unsigned = "bd2451083368caeb086e3cc9c27138666a7375691c1086f4f13ea7e35c6a8ba5";
              type = "kernel";
            }
          ];
          supported_devices = [
            "iom,iconnect-1.1"
            "iconnect"
          ];
          titles = [
            {
              model = "Iconnect";
              vendor = "Iomega";
            }
          ];
        };
        iom_ix2-200 = {
          device_packages = [
            "kmod-ata-marvell-sata"
            "kmod-fs-ext4"
            "kmod-gpio-button-hotplug"
            "kmod-hwmon-lm63"
            "kmod-rtc-mv"
          ];
          image_prefix = "immortalwrt-24.10.1-kirkwood-generic-iom_ix2-200";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-iom_ix2-200-initramfs-uImage";
              sha256 = "41dc4c35bfddb154d271abae7380dfa7a7915846da8411e0581b9b910468fafb";
              sha256_unsigned = "41dc4c35bfddb154d271abae7380dfa7a7915846da8411e0581b9b910468fafb";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-iom_ix2-200-squashfs-sysupgrade.bin";
              sha256 = "42bab000494d4cc297f04c57620a692fbbc1284b5b47710ad492ee3741795ebd";
              sha256_unsigned = "9e769fab8439e1e43e843518a37226d1229717e23b563475603d59d0e18fea7b";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-iom_ix2-200-squashfs-factory.bin";
              sha256 = "ac7fa5f85e482217453a6d4ef6aaba4ddabe41568ae45ca55dccfd64484637bc";
              sha256_unsigned = "ac7fa5f85e482217453a6d4ef6aaba4ddabe41568ae45ca55dccfd64484637bc";
              type = "factory";
            }
          ];
          supported_devices = [
            "iom,ix2-200"
          ];
          titles = [
            {
              model = "StorCenter ix2-200";
              vendor = "Iomega";
            }
          ];
        };
        iom_ix4-200d = {
          device_packages = [
            "kmod-ata-marvell-sata"
            "kmod-fs-ext4"
            "kmod-gpio-button-hotplug"
            "kmod-gpio-nxp-74hc164"
            "kmod-hwmon-adt7475"
            "kmod-mvsdio"
            "kmod-spi-gpio"
            "kmod-rtc-mv"
          ];
          image_prefix = "immortalwrt-24.10.1-kirkwood-generic-iom_ix4-200d";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-iom_ix4-200d-squashfs-sysupgrade.bin";
              sha256 = "e35670a462767580c45e3e0818cd0a63b296d8161092832a407373d9ba125718";
              sha256_unsigned = "2227a75b743816cbd6f0649e9403765c2256a84551e12c660084e59754657a07";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-iom_ix4-200d-squashfs-factory.bin";
              sha256 = "0bd1a63b5d28b233eb2a6311c210f35d131ef9cfd488e694816de561f4f34032";
              sha256_unsigned = "0bd1a63b5d28b233eb2a6311c210f35d131ef9cfd488e694816de561f4f34032";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-iom_ix4-200d-initramfs-uImage";
              sha256 = "89de4b802912d5c39a1be70e9af2e9472a112632c1c65a9aadffdadbbfa2de48";
              sha256_unsigned = "89de4b802912d5c39a1be70e9af2e9472a112632c1c65a9aadffdadbbfa2de48";
              type = "kernel";
            }
          ];
          supported_devices = [
            "iom,ix4-200d"
          ];
          titles = [
            {
              model = "StorCenter ix4-200d";
              vendor = "Iomega";
            }
          ];
        };
        iptime_nas1 = {
          device_packages = [
            "kmod-ata-marvell-sata"
            "kmod-fs-ext4"
            "kmod-gpio-button-hotplug"
            "kmod-gpio-pca953x"
            "kmod-hwmon-drivetemp"
            "kmod-hwmon-gpiofan"
            "kmod-usb-ledtrig-usbport"
            "kmod-rtc-mv"
            "kmod-thermal"
            "-uboot-envtools"
          ];
          image_prefix = "immortalwrt-24.10.1-kirkwood-generic-iptime_nas1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-iptime_nas1-initramfs-uImage";
              sha256 = "d2266c27eb31c1798c36dbd41ee6546a7737c5097942e56dce40dcca0297cfb2";
              sha256_unsigned = "d2266c27eb31c1798c36dbd41ee6546a7737c5097942e56dce40dcca0297cfb2";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-iptime_nas1-squashfs-sysupgrade.bin";
              sha256 = "098757ca843928ed08d8251fcc4ca76831e6794374e2a0d12b6e150d0489af82";
              sha256_unsigned = "01772e5362d9da260256de9d4ec02ed4244a432ef2bab104c00f05a1892622c0";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "iptime,nas1"
          ];
          titles = [
            {
              model = "NAS1";
              vendor = "ipTIME";
            }
          ];
        };
        linksys_e4200-v2 = {
          device_packages = [
            "kmod-mwl8k"
            "wpad-openssl"
            "kmod-gpio-button-hotplug"
            "kmod-rtc-mv"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-kirkwood-generic-linksys_e4200-v2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-linksys_e4200-v2-initramfs-uImage";
              sha256 = "a3a3837bc8c0eee3c67c2100c613218a8d31483396bb91943cc992bd66edd448";
              sha256_unsigned = "a3a3837bc8c0eee3c67c2100c613218a8d31483396bb91943cc992bd66edd448";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-linksys_e4200-v2-squashfs-sysupgrade.bin";
              sha256 = "1acd9336acb3d5309189b627eb3a8c1f7b1c1c7599abaaa17843c7635f3dfc35";
              sha256_unsigned = "86a94cad16848aed39799b3ccce0512d165a2dd7b8bc619948acef1c69397501";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-linksys_e4200-v2-squashfs-factory.bin";
              sha256 = "a7832d79fcaf714f12afc432e8ad70a94caba31431737bedaa560e590c2a7317";
              sha256_unsigned = "a7832d79fcaf714f12afc432e8ad70a94caba31431737bedaa560e590c2a7317";
              type = "factory";
            }
          ];
          supported_devices = [
            "linksys,e4200-v2"
            "linksys,viper"
            "linksys-viper"
          ];
          titles = [
            {
              model = "E4200";
              variant = "v2";
              vendor = "Linksys";
            }
          ];
        };
        linksys_ea3500 = {
          device_packages = [
            "kmod-mwl8k"
            "wpad-openssl"
            "kmod-gpio-button-hotplug"
            "kmod-rtc-mv"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-kirkwood-generic-linksys_ea3500";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-linksys_ea3500-squashfs-sysupgrade.bin";
              sha256 = "2fc544030d3f5c6f588d8150c67e0d6ab69f40ae04b3edd526893835480246b4";
              sha256_unsigned = "ec47a537e275c84271ee1c83e8d91a4a55b58ce66ac38218a71b897178fa43f6";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-linksys_ea3500-initramfs-uImage";
              sha256 = "e6fcb262ce42c162794e326f1747bfcf1ec26ee50bc6157f224e5e4751661b4d";
              sha256_unsigned = "e6fcb262ce42c162794e326f1747bfcf1ec26ee50bc6157f224e5e4751661b4d";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-linksys_ea3500-squashfs-factory.bin";
              sha256 = "caf026f5c8fd67b1c36010ef7caf8d6652a56505765cfa80c1623c0ed051c377";
              sha256_unsigned = "caf026f5c8fd67b1c36010ef7caf8d6652a56505765cfa80c1623c0ed051c377";
              type = "factory";
            }
          ];
          supported_devices = [
            "linksys,ea3500"
            "linksys,audi"
            "linksys-audi"
          ];
          titles = [
            {
              model = "EA3500";
              vendor = "Linksys";
            }
          ];
        };
        linksys_ea4500 = {
          device_packages = [
            "kmod-mwl8k"
            "wpad-openssl"
            "kmod-gpio-button-hotplug"
            "kmod-rtc-mv"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-kirkwood-generic-linksys_ea4500";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-linksys_ea4500-squashfs-factory.bin";
              sha256 = "dd0157eb466aa33619bd0698866f6fe02f24da68e58710e640b685406a040ff7";
              sha256_unsigned = "dd0157eb466aa33619bd0698866f6fe02f24da68e58710e640b685406a040ff7";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-linksys_ea4500-initramfs-uImage";
              sha256 = "e202d19f20c905b9cdbdad16199657fbb9dacc42ef0dc66fb7b86dce0f6717e2";
              sha256_unsigned = "e202d19f20c905b9cdbdad16199657fbb9dacc42ef0dc66fb7b86dce0f6717e2";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-linksys_ea4500-squashfs-sysupgrade.bin";
              sha256 = "4377f7d025c2d2a5cd9b3eec7d62db76bc72a182f75a360b9dc45e083603ed12";
              sha256_unsigned = "061fa76b648f61b8f4a4da0f2998f1aa3fe0c2089a2e5f962ff4865d0553ca9f";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "linksys,ea4500"
            "linksys,viper"
            "linksys-viper"
          ];
          titles = [
            {
              model = "EA4500";
              vendor = "Linksys";
            }
          ];
        };
        netgear_readynas-duo-v2 = {
          device_packages = [
            "kmod-ata-marvell-sata"
            "kmod-fs-ext4"
            "kmod-gpio-button-hotplug"
            "kmod-hwmon-g762"
            "kmod-rtc-rs5c372a"
            "kmod-usb3"
          ];
          image_prefix = "immortalwrt-24.10.1-kirkwood-generic-netgear_readynas-duo-v2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-netgear_readynas-duo-v2-initramfs-uImage";
              sha256 = "b6e8ae63f981381231b95ad2945a2b5e64b1a1ea8d739c4e123e2c4d4fa45a85";
              sha256_unsigned = "b6e8ae63f981381231b95ad2945a2b5e64b1a1ea8d739c4e123e2c4d4fa45a85";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-netgear_readynas-duo-v2-squashfs-sysupgrade.bin";
              sha256 = "415751006bf84c417eb335243b05f84bec4cddde044c37b2e3961320eb1f3f53";
              sha256_unsigned = "25392e4d5980a763fd3c2431356668ce66e4b9178e1bef1076866f4a045a5433";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,readynas-duo-v2"
          ];
          titles = [
            {
              model = "ReadyNAS Duo";
              variant = "v2";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_stora = {
          device_packages = [
            "kmod-ata-marvell-sata"
            "kmod-fs-ext4"
            "kmod-rtc-pcf8563"
            "kmod-hwmon-lm75"
            "kmod-hwmon-tc654"
            "kmod-gpio-button-hotplug"
          ];
          image_prefix = "immortalwrt-24.10.1-kirkwood-generic-netgear_stora";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-netgear_stora-initramfs-uImage";
              sha256 = "4e38770c1d0d26b53ada9601e3fa30412391996b8d8e2e4be35afeaa7bad5da6";
              sha256_unsigned = "4e38770c1d0d26b53ada9601e3fa30412391996b8d8e2e4be35afeaa7bad5da6";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-netgear_stora-squashfs-factory.bin";
              sha256 = "f135f7a2e2566bbcc16c604246fb83c444e0d12a9043764dc22cd493cbe71e69";
              sha256_unsigned = "f135f7a2e2566bbcc16c604246fb83c444e0d12a9043764dc22cd493cbe71e69";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-netgear_stora-squashfs-sysupgrade.bin";
              sha256 = "b77e5c08919853e2855fbee374bde9256a0829553b5640785cea826b44c08305";
              sha256_unsigned = "7e66c85bd7f2c4dd5aa473622dadc46a844df2c1753586eead38074682402e9d";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,stora"
          ];
          titles = [
            {
              model = "Stora (MS2000/2110)";
              vendor = "Netgear";
            }
          ];
        };
        raidsonic_ib-nas62x0 = {
          device_packages = [
            "kmod-ata-marvell-sata"
            "kmod-fs-ext4"
            "kmod-rtc-mv"
          ];
          image_prefix = "immortalwrt-24.10.1-kirkwood-generic-raidsonic_ib-nas62x0";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-raidsonic_ib-nas62x0-initramfs-uImage";
              sha256 = "190aa063a96627d5f99575399be7c812f056b3334f06ec83dabc59fed6162dfe";
              sha256_unsigned = "190aa063a96627d5f99575399be7c812f056b3334f06ec83dabc59fed6162dfe";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-raidsonic_ib-nas62x0-squashfs-sysupgrade.bin";
              sha256 = "e92a87f0b32e86745c4837f5cdbc75fa5d9784bed2d53440ddf99c21b4d81f7d";
              sha256_unsigned = "dd57fb907761a31ee93c61d4e289975238ba4f998d6caa102d853d3267a1ae90";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-raidsonic_ib-nas62x0-squashfs-factory.bin";
              sha256 = "05816f9a589538a06cc7c8c2fb13618bfb44c7f5888ed906b3753bbfcc62f8c7";
              sha256_unsigned = "05816f9a589538a06cc7c8c2fb13618bfb44c7f5888ed906b3753bbfcc62f8c7";
              type = "factory";
            }
          ];
          supported_devices = [
            "raidsonic,ib-nas62x0"
            "ib62x0"
          ];
          titles = [
            {
              model = "ICY BOX IB-NAS62x0";
              vendor = "RaidSonic";
            }
          ];
        };
        seagate_blackarmor-nas220 = {
          device_packages = [
            "kmod-hwmon-adt7475"
            "kmod-fs-ext4"
            "kmod-ata-marvell-sata"
            "mdadm"
            "kmod-gpio-button-hotplug"
            "kmod-rtc-mv"
          ];
          image_prefix = "immortalwrt-24.10.1-kirkwood-generic-seagate_blackarmor-nas220";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-seagate_blackarmor-nas220-squashfs-factory.bin";
              sha256 = "5235b8a655098397969ef549a0595d0087c03d331f95321f4a9193bdeec3f5df";
              sha256_unsigned = "5235b8a655098397969ef549a0595d0087c03d331f95321f4a9193bdeec3f5df";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-seagate_blackarmor-nas220-initramfs-uImage";
              sha256 = "7306107d4dd89b920da794e0eeebc704e6a039533389b680988b3e7d532d5cc2";
              sha256_unsigned = "7306107d4dd89b920da794e0eeebc704e6a039533389b680988b3e7d532d5cc2";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-seagate_blackarmor-nas220-squashfs-sysupgrade.bin";
              sha256 = "09e818add01c8c7fc7ffbe363f863cba9451f653b98f7ca539e904101b1404ff";
              sha256_unsigned = "237dc9889de2a8fb4e585f1a6feccddaaa5cd6e956807bd7a767cb8936a0ffd1";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "seagate,blackarmor-nas220"
          ];
          titles = [
            {
              model = "Blackarmor NAS220";
              vendor = "Seagate";
            }
          ];
        };
        seagate_dockstar = {
          device_packages = [
            "kmod-rtc-mv"
          ];
          image_prefix = "immortalwrt-24.10.1-kirkwood-generic-seagate_dockstar";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-seagate_dockstar-initramfs-uImage";
              sha256 = "72f2c144d372014eae4ded9de94ef4ec79c344e82f8dcfcfa5043fb81de9af29";
              sha256_unsigned = "72f2c144d372014eae4ded9de94ef4ec79c344e82f8dcfcfa5043fb81de9af29";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-seagate_dockstar-squashfs-sysupgrade.bin";
              sha256 = "b48641b31f5bfc9c6b28a46304947e828d2d047e9c824b4c5cdffb27d319838f";
              sha256_unsigned = "7f96cd2307d4dfff10ecb49221c255cb83dd8780277988c831e3b9e001d1bced";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-seagate_dockstar-squashfs-factory.bin";
              sha256 = "e53e31e9d0b8bfdbb3e0c2aef093d45d0114477bc2fe865ffeced71e7f459e97";
              sha256_unsigned = "e53e31e9d0b8bfdbb3e0c2aef093d45d0114477bc2fe865ffeced71e7f459e97";
              type = "factory";
            }
          ];
          supported_devices = [
            "seagate,dockstar"
            "dockstar"
          ];
          titles = [
            {
              model = "FreeAgent Dockstar";
              vendor = "Seagate";
            }
          ];
        };
        seagate_goflexhome = {
          device_packages = [
            "kmod-ata-marvell-sata"
            "kmod-fs-ext4"
            "kmod-rtc-mv"
          ];
          image_prefix = "immortalwrt-24.10.1-kirkwood-generic-seagate_goflexhome";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-seagate_goflexhome-squashfs-sysupgrade.bin";
              sha256 = "893f000df1ce9af2881d9a7870e8935b26536d0c4fec8ac1bb527bd2d9c14f8c";
              sha256_unsigned = "dc326275fafc4ca29ce9268b429a44dd65f8517ea3aee053ed17eb793de0c210";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-seagate_goflexhome-initramfs-uImage";
              sha256 = "8c1a525b059ce56841683f8bebd6e99f6bfe465d45bfdcc1afa0b8eb2954f7da";
              sha256_unsigned = "8c1a525b059ce56841683f8bebd6e99f6bfe465d45bfdcc1afa0b8eb2954f7da";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-seagate_goflexhome-squashfs-factory.bin";
              sha256 = "73c117c75cdd0a68b6820282f0952ed6c366cfb01bd6c19766f2e576f217a20a";
              sha256_unsigned = "73c117c75cdd0a68b6820282f0952ed6c366cfb01bd6c19766f2e576f217a20a";
              type = "factory";
            }
          ];
          supported_devices = [
            "seagate,goflexhome"
            "goflexhome"
          ];
          titles = [
            {
              model = "GoFlexHome";
              vendor = "Seagate";
            }
          ];
        };
        seagate_goflexnet = {
          device_packages = [
            "kmod-ata-marvell-sata"
            "kmod-fs-ext4"
            "kmod-rtc-mv"
          ];
          image_prefix = "immortalwrt-24.10.1-kirkwood-generic-seagate_goflexnet";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-seagate_goflexnet-squashfs-sysupgrade.bin";
              sha256 = "bd830d6fc7420d4a01fd4a2c1aac10bc0bbec3c5919d40f0b64f753afdb729a4";
              sha256_unsigned = "d865b9530057ef6305bdafde7ccf63f40c2962211d652c28cab023486b22f678";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-seagate_goflexnet-squashfs-factory.bin";
              sha256 = "7b9cc0b3a13465e8ca4becfdd9e70a20cee6878b82a683e2c2e1382cf44baaa8";
              sha256_unsigned = "7b9cc0b3a13465e8ca4becfdd9e70a20cee6878b82a683e2c2e1382cf44baaa8";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-seagate_goflexnet-initramfs-uImage";
              sha256 = "537f0408408fc13151bae29e1b538a14ede32a8d059a5fe13b33e71f5aa5a463";
              sha256_unsigned = "537f0408408fc13151bae29e1b538a14ede32a8d059a5fe13b33e71f5aa5a463";
              type = "kernel";
            }
          ];
          supported_devices = [
            "seagate,goflexnet"
            "goflexnet"
          ];
          titles = [
            {
              model = "GoFlexNet";
              vendor = "Seagate";
            }
          ];
        };
        zyxel_nsa310b = {
          device_packages = [
            "kmod-ata-marvell-sata"
            "kmod-r8169"
            "kmod-fs-ext4"
            "kmod-gpio-button-hotplug"
            "kmod-hwmon-lm85"
            "kmod-rtc-mv"
          ];
          image_prefix = "immortalwrt-24.10.1-kirkwood-generic-zyxel_nsa310b";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-zyxel_nsa310b-squashfs-sysupgrade.bin";
              sha256 = "edc358fc739e5e5c92a5e82f576b974e8c2804f7367025488dad5ea51bf5beab";
              sha256_unsigned = "0a99466e47c2913dfb42fb73dad8d95201ad74204cfeeb08bf28be80b9623105";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-zyxel_nsa310b-initramfs-uImage";
              sha256 = "68d241f512d5aec5bcb69a0a7dde0c6044817333c4ff3ee14a863552bcfb0198";
              sha256_unsigned = "68d241f512d5aec5bcb69a0a7dde0c6044817333c4ff3ee14a863552bcfb0198";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-zyxel_nsa310b-squashfs-factory.bin";
              sha256 = "8574b6a7bfc5c419de1377a1f200dcdd43617b8d6dac2d5afc405abd84ecfb53";
              sha256_unsigned = "8574b6a7bfc5c419de1377a1f200dcdd43617b8d6dac2d5afc405abd84ecfb53";
              type = "factory";
            }
          ];
          supported_devices = [
            "zyxel,nsa310b"
            "nsa310b"
          ];
          titles = [
            {
              model = "NSA310b";
              vendor = "Zyxel";
            }
          ];
        };
        zyxel_nsa310s = {
          device_packages = [
            "kmod-ata-marvell-sata"
            "kmod-fs-ext4"
            "kmod-gpio-button-hotplug"
            "kmod-rtc-mv"
          ];
          image_prefix = "immortalwrt-24.10.1-kirkwood-generic-zyxel_nsa310s";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-zyxel_nsa310s-squashfs-sysupgrade.bin";
              sha256 = "0e0eb3da89fad4aea048a02876d3c082cf4318e473231c039a6937d10512a2b4";
              sha256_unsigned = "8a12cab780be17043c261369a1584e8347083ad8de4ebab6a95e3d3ded8d190b";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-zyxel_nsa310s-squashfs-factory.bin";
              sha256 = "f51aa129c7c67ed46a1c9e54ca28bc19890dfe4467fda502d568c0bf302eace8";
              sha256_unsigned = "f51aa129c7c67ed46a1c9e54ca28bc19890dfe4467fda502d568c0bf302eace8";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-zyxel_nsa310s-initramfs-uImage";
              sha256 = "928c5a53e76f20d29b292dd3a71dad27ecd8a4b6d6a2b0a57d24699856fe910a";
              sha256_unsigned = "928c5a53e76f20d29b292dd3a71dad27ecd8a4b6d6a2b0a57d24699856fe910a";
              type = "kernel";
            }
          ];
          supported_devices = [
            "zyxel,nsa310s"
          ];
          titles = [
            {
              model = "NSA310S";
              vendor = "Zyxel";
            }
          ];
        };
        zyxel_nsa325 = {
          device_packages = [
            "kmod-ata-marvell-sata"
            "kmod-fs-ext4"
            "kmod-gpio-button-hotplug"
            "kmod-rtc-pcf8563"
            "kmod-usb3"
          ];
          image_prefix = "immortalwrt-24.10.1-kirkwood-generic-zyxel_nsa325";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-zyxel_nsa325-initramfs-uImage";
              sha256 = "f50288b1bcd640c6e996713a9627da52cc7de910e070e2d83fec6140a8283dc1";
              sha256_unsigned = "f50288b1bcd640c6e996713a9627da52cc7de910e070e2d83fec6140a8283dc1";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-zyxel_nsa325-squashfs-factory.bin";
              sha256 = "1a82755cee89dcbbedc2198c73da1c054b121724e82a4605326269daa09a5633";
              sha256_unsigned = "1a82755cee89dcbbedc2198c73da1c054b121724e82a4605326269daa09a5633";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-kirkwood-generic-zyxel_nsa325-squashfs-sysupgrade.bin";
              sha256 = "adedabb507470ade65e2abc7a7054888fd493089e9edddcc2851ce0a24317681";
              sha256_unsigned = "076565ad06976140d5aa981a10e269665e800e8771db16d1c5552ae3ec161029";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "zyxel,nsa325"
            "nsa325"
          ];
          titles = [
            {
              model = "NSA325";
              variant = "v1/v2";
              vendor = "Zyxel";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "kirkwood/generic";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
  };
  lantiq = {
    xrx200 = {
      arch_packages = "mips_24kc";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "dsl-vrx200-firmware-xdsl-a"
        "dsl-vrx200-firmware-xdsl-b-patch"
        "firewall4"
        "fstools"
        "kmod-gpio-button-hotplug"
        "kmod-leds-gpio"
        "kmod-ltq-atm-vr9"
        "kmod-ltq-deu-vr9"
        "kmod-ltq-ptm-vr9"
        "kmod-ltq-vdsl-vr9"
        "kmod-ltq-vdsl-vr9-mei"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
        "ltq-vdsl-vr9-app"
        "ltq-vdsl-vr9-vectoring-fw-installer"
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
        "ppp-mod-pppoa"
        "ppp-mod-pppoe"
        "procd-ujail"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "a76a4e10d1f93b959535ff51c6955ec6";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        arcadyan_vgv7510kw22-brn = {
          device_packages = [
            "kmod-rt2800-pci"
            "wpad-basic-openssl"
            "kmod-usb-dwc2"
            "kmod-ltq-tapi"
            "kmod-ltq-vmmc"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xrx200-arcadyan_vgv7510kw22-brn";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-arcadyan_vgv7510kw22-brn-initramfs-kernel.bin";
              sha256 = "1f04f821b27e71a24ac7d7cf1807f3603f36f34bea17495e89b7a5a90ee21012";
              sha256_unsigned = "1f04f821b27e71a24ac7d7cf1807f3603f36f34bea17495e89b7a5a90ee21012";
              type = "kernel";
            }
          ];
          supported_devices = [
            "arcadyan,vgv7510kw22-brn"
            "VGV7510KW22BRN"
          ];
          titles = [
            {
              model = "VGV7510KW22";
              variant = "BRN";
              vendor = "Arcadyan";
            }
            {
              model = "Box 6431";
              variant = "BRN";
              vendor = "o2";
            }
          ];
        };
        arcadyan_vgv7510kw22-nor = {
          device_packages = [
            "kmod-rt2800-pci"
            "wpad-openssl"
            "kmod-usb-dwc2"
            "kmod-ltq-tapi"
            "kmod-ltq-vmmc"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xrx200-arcadyan_vgv7510kw22-nor";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-arcadyan_vgv7510kw22-nor-squashfs-sysupgrade.bin";
              sha256 = "969024fc67646de4d55f9ef454f88f544f6ba8ee8a2e88202e80a66311b84b09";
              sha256_unsigned = "54291355fd67a917ac81da2588a37de26e37b10a189fcd6192be8f76b25347d2";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-arcadyan_vgv7510kw22-nor-initramfs-kernel.bin";
              sha256 = "c907fd8e8635bdad23315310a1f67733dbc6b3183c14ebbea82b7d6129123e16";
              sha256_unsigned = "c907fd8e8635bdad23315310a1f67733dbc6b3183c14ebbea82b7d6129123e16";
              type = "kernel";
            }
          ];
          supported_devices = [
            "arcadyan,vgv7510kw22-nor"
            "VGV7510KW22NOR"
          ];
          titles = [
            {
              model = "VGV7510KW22";
              variant = "NOR";
              vendor = "Arcadyan";
            }
            {
              model = "Box 6431";
              variant = "NOR";
              vendor = "o2";
            }
          ];
        };
        arcadyan_vgv7519-brn = {
          device_packages = [
            "kmod-rt2800-pci"
            "wpad-basic-openssl"
            "kmod-usb-dwc2"
            "kmod-ltq-tapi"
            "kmod-ltq-vmmc"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xrx200-arcadyan_vgv7519-brn";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-arcadyan_vgv7519-brn-initramfs-kernel.bin";
              sha256 = "fc9b009d9c92d3f5a8e4f2a790e92cf7281cbdf4c2610f9fc9f4c286a7e06732";
              sha256_unsigned = "fc9b009d9c92d3f5a8e4f2a790e92cf7281cbdf4c2610f9fc9f4c286a7e06732";
              type = "kernel";
            }
          ];
          supported_devices = [
            "arcadyan,vgv7519-brn"
            "VGV7519BRN"
          ];
          titles = [
            {
              model = "VGV7519";
              variant = "BRN";
              vendor = "Arcadyan";
            }
            {
              model = "Experiabox 8";
              variant = "BRN";
              vendor = "KPN";
            }
          ];
        };
        arcadyan_vgv7519-nor = {
          device_packages = [
            "kmod-rt2800-pci"
            "wpad-openssl"
            "kmod-usb-dwc2"
            "kmod-ltq-tapi"
            "kmod-ltq-vmmc"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xrx200-arcadyan_vgv7519-nor";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-arcadyan_vgv7519-nor-initramfs-kernel.bin";
              sha256 = "18d1100baac578e78ed9235f31fcd09c4f99fac4041b27f65feba28a4afea8a9";
              sha256_unsigned = "18d1100baac578e78ed9235f31fcd09c4f99fac4041b27f65feba28a4afea8a9";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-arcadyan_vgv7519-nor-squashfs-sysupgrade.bin";
              sha256 = "53ebac806f3fd89b8452ad8783c4e8bdfd2058e32fcbe96a3e66b90c783cb9ca";
              sha256_unsigned = "dd7a194c9766942885a237099040dccab866c004a3606001910b9d69eed423e1";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "arcadyan,vgv7519-nor"
            "VGV7519NOR"
          ];
          titles = [
            {
              model = "VGV7519";
              variant = "NOR";
              vendor = "Arcadyan";
            }
            {
              model = "Experiabox 8";
              variant = "NOR";
              vendor = "KPN";
            }
          ];
        };
        arcadyan_vrv9510kwac23 = {
          device_packages = [
            "kmod-b43"
            "wpad-basic-openssl"
            "broadcom-43222-sprom"
            "broadcom-4360-sprom"
            "kmod-usb-dwc2"
            "kmod-ltq-tapi"
            "kmod-ltq-vmmc"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xrx200-arcadyan_vrv9510kwac23";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-arcadyan_vrv9510kwac23-initramfs-kernel.bin";
              sha256 = "fc004561a7074c569556d36167515a41427cf08a0d5a0d4f6946f785a674d32c";
              sha256_unsigned = "fc004561a7074c569556d36167515a41427cf08a0d5a0d4f6946f785a674d32c";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-arcadyan_vrv9510kwac23-squashfs-sysupgrade.bin";
              sha256 = "993da693a87fcc5244d0a0c0f59d4ef21b97ab33adeaa65f9e57ffa0f34a3d1d";
              sha256_unsigned = "9028201d8ba2355628a8e45d831cfabe7bcd0cca4973e3685ef62e6d7e4ec1e5";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "arcadyan,vrv9510kwac23"
            "arcadyan_vrv9510kwac23"
          ];
          titles = [
            {
              model = "VRV9510KWAC23";
              vendor = "Arcadyan";
            }
            {
              model = "Next";
              vendor = "Livebox";
            }
          ];
        };
        avm_fritz3370-rev2-hynix = {
          device_packages = [
            "kmod-ath9k"
            "wpad-basic-openssl"
            "kmod-usb-dwc2"
            "fritz-tffs"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz3370-rev2-hynix";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz3370-rev2-hynix-squashfs-eva-filesystem.bin";
              sha256 = "88a9327e783bf1917b315bff89856057becfae1c5aff5a8fe6f3c877486b1657";
              sha256_unsigned = "88a9327e783bf1917b315bff89856057becfae1c5aff5a8fe6f3c877486b1657";
              type = "eva-filesystem";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz3370-rev2-hynix-squashfs-eva-kernel.bin";
              sha256 = "7dc600f4d7d593c88d524f37804efd9e634799688dfe9f88653913d466fa07d4";
              sha256_unsigned = "7dc600f4d7d593c88d524f37804efd9e634799688dfe9f88653913d466fa07d4";
              type = "eva-kernel";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz3370-rev2-hynix-initramfs-kernel.bin";
              sha256 = "ad486f5af0a1b9e7102aeeef91e1962cfd353e68de288a18f7ee3244fa2919b1";
              sha256_unsigned = "ad486f5af0a1b9e7102aeeef91e1962cfd353e68de288a18f7ee3244fa2919b1";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz3370-rev2-hynix-squashfs-sysupgrade.bin";
              sha256 = "237d1f96ef6be92a9fd082625154bfa7fa04afc81ca8a8b1b6f8658547156142";
              sha256_unsigned = "52b809305511e6174bd8151146bcec810d44c4e7d4cbaa930eaa4f74f9c156a7";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "avm,fritz3370-rev2-hynix"
          ];
          titles = [
            {
              model = "FRITZ!Box 3370";
              variant = "Rev. 2 (Hynix NAND)";
              vendor = "AVM";
            }
          ];
        };
        avm_fritz3370-rev2-micron = {
          device_packages = [
            "kmod-ath9k"
            "wpad-basic-openssl"
            "kmod-usb-dwc2"
            "fritz-tffs"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz3370-rev2-micron";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz3370-rev2-micron-squashfs-eva-kernel.bin";
              sha256 = "2b44af414de53cd3e577fa977cba3c6e502ad86b1ccddfba58e04be82cbcb515";
              sha256_unsigned = "2b44af414de53cd3e577fa977cba3c6e502ad86b1ccddfba58e04be82cbcb515";
              type = "eva-kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz3370-rev2-micron-squashfs-sysupgrade.bin";
              sha256 = "aa77e5a27bde0e72850995d0c6b47cfde49984fd4c67572ba51876dc2712bc80";
              sha256_unsigned = "d7cb960f8cafecba69c51adafe0e54a0bc5efd2cc3cd70bab26ab18e8c4bcbee";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz3370-rev2-micron-initramfs-kernel.bin";
              sha256 = "db4d87e3519cfc3054ef5ab02e2bb820bfe6e11b9ffce0565ff218f2c6aab4cf";
              sha256_unsigned = "db4d87e3519cfc3054ef5ab02e2bb820bfe6e11b9ffce0565ff218f2c6aab4cf";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz3370-rev2-micron-squashfs-eva-filesystem.bin";
              sha256 = "88a9327e783bf1917b315bff89856057becfae1c5aff5a8fe6f3c877486b1657";
              sha256_unsigned = "88a9327e783bf1917b315bff89856057becfae1c5aff5a8fe6f3c877486b1657";
              type = "eva-filesystem";
            }
          ];
          supported_devices = [
            "avm,fritz3370-rev2-micron"
          ];
          titles = [
            {
              model = "FRITZ!Box 3370";
              variant = "Rev. 2 (Micron NAND)";
              vendor = "AVM";
            }
          ];
        };
        avm_fritz3390 = {
          device_packages = [
            "kmod-ath9k"
            "kmod-owl-loader"
            "wpad-openssl"
            "kmod-usb-dwc2"
            "fritz-tffs"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz3390";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz3390-squashfs-sysupgrade.bin";
              sha256 = "5b810d7ad528086997afffaf5c516eeba8e4993d4b6fa37deb458efd025fa8dc";
              sha256_unsigned = "6c05f37625c0ffb35ad146af33e4a7bfeeccd22a503a4c946729afc7138b5e4d";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz3390-initramfs-kernel.bin";
              sha256 = "df5138de204b12d24079e3e57fe4b43305b0dfa4dd1b4729ee0349fa7a7e414c";
              sha256_unsigned = "df5138de204b12d24079e3e57fe4b43305b0dfa4dd1b4729ee0349fa7a7e414c";
              type = "kernel";
            }
          ];
          supported_devices = [
            "avm,fritz3390"
          ];
          titles = [
            {
              model = "FRITZ!Box 3390";
              vendor = "AVM";
            }
          ];
        };
        avm_fritz3490 = {
          device_packages = [
            "kmod-usb3"
            "fritz-tffs"
            "-kmod-owl-loader"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz3490";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz3490-squashfs-sysupgrade.bin";
              sha256 = "62c4781d6053aa1de491cad76c56a533aa3044cef6fb9488ffd0503e98291efe";
              sha256_unsigned = "dcf501548d685725bfa7dcd55d9ecbde17548e755e08425c8a0607a5303e1925";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz3490-initramfs-kernel.bin";
              sha256 = "13941d8f082d2eff97167932d93c1c9883d4091876e8f4102055f4e8da5e9fae";
              sha256_unsigned = "13941d8f082d2eff97167932d93c1c9883d4091876e8f4102055f4e8da5e9fae";
              type = "kernel";
            }
          ];
          supported_devices = [
            "avm,fritz3490"
          ];
          titles = [
            {
              model = "FRITZ!Box 3490";
              variant = "Other NAND";
              vendor = "AVM";
            }
          ];
        };
        avm_fritz3490-micron = {
          device_packages = [
            "kmod-usb3"
            "fritz-tffs"
            "-kmod-owl-loader"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz3490-micron";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz3490-micron-initramfs-kernel.bin";
              sha256 = "5ef0e6acb0e4c2a93e14e3289a2d239a6fad30668475ecbb783b287e6b889307";
              sha256_unsigned = "5ef0e6acb0e4c2a93e14e3289a2d239a6fad30668475ecbb783b287e6b889307";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz3490-micron-squashfs-sysupgrade.bin";
              sha256 = "9906913c38d7d7fece2ce145807e7d2b513d7698a354a3c0e41d909c9b8fa471";
              sha256_unsigned = "17cc75d3a0fbcf64313dad9426a1cd7ac54d5fa7f1caab3a532c6f8f76e05522";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "avm,fritz3490-micron"
          ];
          titles = [
            {
              model = "FRITZ!Box 3490";
              variant = "Micron NAND";
              vendor = "AVM";
            }
          ];
        };
        avm_fritz5490 = {
          device_packages = [
            "kmod-dsa-qca8k"
            "kmod-phy-qca83xx"
            "kmod-usb3"
            "fritz-tffs"
            "-ltq-vdsl-vr9-vectoring-fw-installer"
            "-kmod-ltq-vdsl-vr9-mei"
            "-kmod-ltq-vdsl-vr9"
            "-kmod-ltq-atm-vr9"
            "-kmod-ltq-ptm-vr9"
            "-ltq-vdsl-vr9-app"
            "-kmod-owl-loader"
            "-dsl-vrx200-firmware-xdsl-a"
            "-dsl-vrx200-firmware-xdsl-b-patch"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz5490";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz5490-initramfs-kernel.bin";
              sha256 = "a1fcdf36db6dd79175375eddbb5e72c3118241e74311149c58d15d9e209e7435";
              sha256_unsigned = "a1fcdf36db6dd79175375eddbb5e72c3118241e74311149c58d15d9e209e7435";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz5490-squashfs-sysupgrade.bin";
              sha256 = "46296d515c2be73907edde4a9a62cc7ff15524614b0dbc7bc11bd246c6482338";
              sha256_unsigned = "fa49c6b6da309a3345ebafd660398f1a1a7ddfff15d20bc97ab44e2694591dcd";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "avm,fritz5490"
          ];
          titles = [
            {
              model = "FRITZ!Box 5490";
              variant = "Other NAND";
              vendor = "AVM";
            }
            {
              model = "FRITZ!Box 5491";
              vendor = "AVM";
            }
          ];
        };
        avm_fritz5490-micron = {
          device_packages = [
            "kmod-dsa-qca8k"
            "kmod-phy-qca83xx"
            "kmod-usb3"
            "fritz-tffs"
            "-ltq-vdsl-vr9-vectoring-fw-installer"
            "-kmod-ltq-vdsl-vr9-mei"
            "-kmod-ltq-vdsl-vr9"
            "-kmod-ltq-atm-vr9"
            "-kmod-ltq-ptm-vr9"
            "-ltq-vdsl-vr9-app"
            "-kmod-owl-loader"
            "-dsl-vrx200-firmware-xdsl-a"
            "-dsl-vrx200-firmware-xdsl-b-patch"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz5490-micron";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz5490-micron-initramfs-kernel.bin";
              sha256 = "91d280f0e3774c9eb7c81dc3258e6675b9311af951af8f33083687e0e22e216c";
              sha256_unsigned = "91d280f0e3774c9eb7c81dc3258e6675b9311af951af8f33083687e0e22e216c";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz5490-micron-squashfs-sysupgrade.bin";
              sha256 = "e92341bb4707c530171ef0cf2b341c92b0411f6d3bf6beb192a1467523076469";
              sha256_unsigned = "21a496bfbac5117fa710dd4079f71005de1cc1d7c377171d942b6ab0520fd0aa";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "avm,fritz5490-micron"
          ];
          titles = [
            {
              model = "FRITZ!Box 5490";
              variant = "Micron NAND";
              vendor = "AVM";
            }
            {
              model = "FRITZ!Box 5491";
              vendor = "AVM";
            }
          ];
        };
        avm_fritz7360-v2 = {
          device_packages = [
            "kmod-ath9k"
            "kmod-owl-loader"
            "wpad-openssl"
            "kmod-usb-dwc2"
            "fritz-tffs"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz7360-v2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz7360-v2-initramfs-kernel.bin";
              sha256 = "a480c0966b0b7972a153b77ce26ae64cd0a51413c58a93b10a59ee14dd510096";
              sha256_unsigned = "a480c0966b0b7972a153b77ce26ae64cd0a51413c58a93b10a59ee14dd510096";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz7360-v2-squashfs-sysupgrade.bin";
              sha256 = "af445a96bee808ecaa297183f3fcff94701789753b560139f653fe04b90b743f";
              sha256_unsigned = "6b4a59e9889ecc6b9a91b0daec9920b96d88edfa90418bccaa8860d4aa1e88b9";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "avm,fritz7360-v2"
          ];
          titles = [
            {
              model = "FRITZ!Box 7360";
              variant = "v2";
              vendor = "AVM";
            }
          ];
        };
        avm_fritz7360sl = {
          device_packages = [
            "kmod-ath9k"
            "kmod-owl-loader"
            "wpad-openssl"
            "kmod-usb-dwc2"
            "fritz-tffs"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz7360sl";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz7360sl-initramfs-kernel.bin";
              sha256 = "1c02f086067c504fd7217faf246436bb097cc2164077476a6f26b2e783ea71e2";
              sha256_unsigned = "1c02f086067c504fd7217faf246436bb097cc2164077476a6f26b2e783ea71e2";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz7360sl-squashfs-sysupgrade.bin";
              sha256 = "95d19f997e0e10fe7e6e34ef6fe13bde0085c00461b84677f2115d9581109f50";
              sha256_unsigned = "887b4f2f5d2ebfd0f1d42894f1ecc9d886b1f42d004e76c220e09b67de940ddd";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "avm,fritz7360sl"
            "FRITZ7360SL"
          ];
          titles = [
            {
              model = "FRITZ!Box 7360 SL";
              vendor = "AVM";
            }
          ];
        };
        avm_fritz7362sl = {
          device_packages = [
            "kmod-ath9k"
            "kmod-owl-loader"
            "wpad-openssl"
            "kmod-usb-dwc2"
            "fritz-tffs"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz7362sl";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz7362sl-squashfs-sysupgrade.bin";
              sha256 = "d4ed38e545173c7e04888cd20f64d67e84453f21b0b4111b872c7d2a70a988de";
              sha256_unsigned = "fd665c49abb852dc746d155dc5d5d296ecc522ab63ad9f983254e6d309814b63";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz7362sl-initramfs-kernel.bin";
              sha256 = "a56dcd52a7b625277ac214f31e3bae8e8f3ec67742230a3f21b153ea7370e70e";
              sha256_unsigned = "a56dcd52a7b625277ac214f31e3bae8e8f3ec67742230a3f21b153ea7370e70e";
              type = "kernel";
            }
          ];
          supported_devices = [
            "avm,fritz7362sl"
          ];
          titles = [
            {
              model = "FRITZ!Box 7362 SL";
              vendor = "AVM";
            }
          ];
        };
        avm_fritz7412 = {
          device_packages = [
            "kmod-ath9k"
            "kmod-owl-loader"
            "wpad-openssl"
            "fritz-tffs-nand"
            "fritz-caldata"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz7412";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz7412-initramfs-kernel.bin";
              sha256 = "6ad584b5aabc3cbfb6b3dfdd30cdad27bfcc329abc9ff79928f6c8cc57f1117b";
              sha256_unsigned = "6ad584b5aabc3cbfb6b3dfdd30cdad27bfcc329abc9ff79928f6c8cc57f1117b";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz7412-squashfs-sysupgrade.bin";
              sha256 = "7b613cd35336391b758688bca7722d2a41a21de741929c1890ab50243ac06c1f";
              sha256_unsigned = "65e0085af33d2b8fa9e44370edb506bbde15397df5a21991676bf642e9324f6a";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "avm,fritz7412"
          ];
          titles = [
            {
              model = "FRITZ!Box 7412";
              vendor = "AVM";
            }
          ];
        };
        avm_fritz7430 = {
          device_packages = [
            "kmod-ath9k"
            "kmod-owl-loader"
            "wpad-openssl"
            "kmod-usb-dwc2"
            "fritz-tffs-nand"
            "fritz-caldata"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz7430";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz7430-squashfs-sysupgrade.bin";
              sha256 = "66e2ff72bb29027816f4f1df36f879a63aae9de14edf22df271dada2c5e379d8";
              sha256_unsigned = "bd6763ea8443005c988b5f0ac9815cf0af95a9a4367315c2a194fe0111b4dd15";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz7430-initramfs-kernel.bin";
              sha256 = "fb3a728e375d35d2442294b57f101c0c32b983a162fcf39f9a54fab78f341604";
              sha256_unsigned = "fb3a728e375d35d2442294b57f101c0c32b983a162fcf39f9a54fab78f341604";
              type = "kernel";
            }
          ];
          supported_devices = [
            "avm,fritz7430"
          ];
          titles = [
            {
              model = "FRITZ!Box 7430";
              vendor = "AVM";
            }
          ];
        };
        avm_fritz7490 = {
          device_packages = [
            "kmod-usb3"
            "fritz-tffs"
            "-kmod-owl-loader"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz7490";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz7490-squashfs-sysupgrade.bin";
              sha256 = "9bd1797224a2d87b47eb69a329ab92003b13bf76da7576f793a04b001ca016e5";
              sha256_unsigned = "a4c00b7cb3c99601848966a9796f0174195edf65adced5e46e178138b595ec0c";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz7490-initramfs-kernel.bin";
              sha256 = "fa040f4e20f5a5a808dc7e0e24c586ddb1aa34b102822be591bde9b67733fec9";
              sha256_unsigned = "fa040f4e20f5a5a808dc7e0e24c586ddb1aa34b102822be591bde9b67733fec9";
              type = "kernel";
            }
          ];
          supported_devices = [
            "avm,fritz7490"
          ];
          titles = [
            {
              model = "FRITZ!Box 7490";
              variant = "Other NAND";
              vendor = "AVM";
            }
          ];
        };
        avm_fritz7490-micron = {
          device_packages = [
            "kmod-usb3"
            "fritz-tffs"
            "-kmod-owl-loader"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz7490-micron";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz7490-micron-initramfs-kernel.bin";
              sha256 = "50f2f6b7eb6eb249274bb7fed1d5ec552c404fbacd0b54d0f015cdd3d546778b";
              sha256_unsigned = "50f2f6b7eb6eb249274bb7fed1d5ec552c404fbacd0b54d0f015cdd3d546778b";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-avm_fritz7490-micron-squashfs-sysupgrade.bin";
              sha256 = "8b77b27481b55a3e920a81fdb669364c5932002aaf2a9e8b5f41d93f94c6ef34";
              sha256_unsigned = "32e1278389b835cb1fd52b33113a933e682ce73279a93afaf624d6590fd66ef9";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "avm,fritz7490-micron"
          ];
          titles = [
            {
              model = "FRITZ!Box 7490";
              variant = "Micron NAND";
              vendor = "AVM";
            }
          ];
        };
        bt_homehub-v5a = {
          device_packages = [
            "kmod-ath9k"
            "kmod-owl-loader"
            "kmod-ath10k-ct"
            "ath10k-firmware-qca988x-ct"
            "wpad-openssl"
            "kmod-usb-dwc2"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xrx200-bt_homehub-v5a";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-bt_homehub-v5a-initramfs-kernel.bin";
              sha256 = "b141f65b3c9b760c7bf85c14a014e2d8b27d112ad3f6f35e85c522b6fef04fb9";
              sha256_unsigned = "b141f65b3c9b760c7bf85c14a014e2d8b27d112ad3f6f35e85c522b6fef04fb9";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-bt_homehub-v5a-squashfs-sysupgrade.bin";
              sha256 = "0b48a75089d7bffc2adbd40d026f95503b5758040e12328d4039afd1b612eb8b";
              sha256_unsigned = "fd561d602a97c7df49ddac29805e48d51b09a48392909b1f2858987101706ce2";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "bt,homehub-v5a"
            "BTHOMEHUBV5A"
          ];
          titles = [
            {
              model = "Home Hub 5";
              variant = "Type A";
              vendor = "British Telecom (BT)";
            }
            {
              model = "Business Hub 5";
              variant = "Type A";
              vendor = "British Telecom (BT)";
            }
            {
              model = "Hub One";
              vendor = "Plusnet";
            }
          ];
        };
        buffalo_wbmr-300hpd = {
          device_packages = [
            "kmod-mt7603"
            "wpad-openssl"
            "kmod-usb-dwc2"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xrx200-buffalo_wbmr-300hpd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-buffalo_wbmr-300hpd-squashfs-sysupgrade.bin";
              sha256 = "96aeb00a8c2f20fab7ffaf1c97a96023c5f9a932e9fdc6abc6b1181ccccece7e";
              sha256_unsigned = "db6805b4d3d525237fcb3b41a8d582f528f22811bd8365375288f753e5a74dd7";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-buffalo_wbmr-300hpd-initramfs-kernel.bin";
              sha256 = "fea1acdd34c6bbed5b1aacb237da159c64704d5c2e5a385872ae66b33b75d881";
              sha256_unsigned = "fea1acdd34c6bbed5b1aacb237da159c64704d5c2e5a385872ae66b33b75d881";
              type = "kernel";
            }
          ];
          supported_devices = [
            "buffalo,wbmr-300hpd"
            "WBMR300"
          ];
          titles = [
            {
              model = "WBMR-300HPD";
              vendor = "Buffalo";
            }
          ];
        };
        lantiq_easy80920-nand = {
          device_packages = [
            "kmod-ath9k"
            "kmod-owl-loader"
            "wpad-openssl"
            "kmod-usb-dwc2"
            "kmod-usb-ledtrig-usbport"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xrx200-lantiq_easy80920-nand";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-lantiq_easy80920-nand-squashfs-sysupgrade.bin";
              sha256 = "6de0a26feeff06a9c20dcce0fe5bf840d1b7685a49002c65483e86883f41e4d6";
              sha256_unsigned = "4eac9d3d3d6ffbb6bf06b67ca8a4b23e7bec2b4015e4984513ba31ed38a78258";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-lantiq_easy80920-nand-initramfs-kernel.bin";
              sha256 = "f6e1f9905483ce05d9bf749b6dcec4e8e9289db8f7b0eef297780d93ab06dc61";
              sha256_unsigned = "f6e1f9905483ce05d9bf749b6dcec4e8e9289db8f7b0eef297780d93ab06dc61";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-lantiq_easy80920-nand-squashfs-fullimage.bin";
              sha256 = "925bb72da13ed3d893c946b273b5db34f229e75982c46f1d83bf8233f9025525";
              sha256_unsigned = "925bb72da13ed3d893c946b273b5db34f229e75982c46f1d83bf8233f9025525";
              type = "fullimage";
            }
          ];
          supported_devices = [
            "lantiq,easy80920-nand"
          ];
          titles = [
            {
              model = "VR9 EASY80920";
              variant = "NAND";
              vendor = "Lantiq";
            }
          ];
        };
        lantiq_easy80920-nor = {
          device_packages = [
            "kmod-ath9k"
            "kmod-owl-loader"
            "wpad-basic-openssl"
            "kmod-usb-dwc2"
            "kmod-usb-ledtrig-usbport"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xrx200-lantiq_easy80920-nor";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-lantiq_easy80920-nor-initramfs-kernel.bin";
              sha256 = "619d61cd5691e419aa05138b3375e825d4cb9acbcfb19c563236766d017e41db";
              sha256_unsigned = "619d61cd5691e419aa05138b3375e825d4cb9acbcfb19c563236766d017e41db";
              type = "kernel";
            }
          ];
          supported_devices = [
            "lantiq,easy80920-nor"
          ];
          titles = [
            {
              model = "VR9 EASY80920";
              variant = "NOR";
              vendor = "Lantiq";
            }
          ];
        };
        tplink_vr200 = {
          device_packages = [
            "kmod-mt76x0e"
            "wpad-openssl"
            "kmod-usb-dwc2"
            "kmod-usb-ledtrig-usbport"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xrx200-tplink_vr200";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-tplink_vr200-squashfs-sysupgrade.bin";
              sha256 = "7a34b3b0764dde3d7e3c4fe71c1a97ea013b1d4e6ff301413c810a24c46efbe1";
              sha256_unsigned = "7ead9bd059adba9854171fe7fb972ebc56cb7d063a7dd23bf20147b606fa41b1";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-tplink_vr200-initramfs-kernel.bin";
              sha256 = "0c679312cea59c489af43850598330a2e275011deb74ce97324eaae0a0941ca7";
              sha256_unsigned = "0c679312cea59c489af43850598330a2e275011deb74ce97324eaae0a0941ca7";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,vr200"
            "VR200"
          ];
          titles = [
            {
              model = "Archer VR200";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_vr200v = {
          device_packages = [
            "kmod-mt76x0e"
            "wpad-openssl"
            "kmod-usb-dwc2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ltq-tapi"
            "kmod-ltq-vmmc"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xrx200-tplink_vr200v";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-tplink_vr200v-squashfs-sysupgrade.bin";
              sha256 = "ffd8d438ec6b16d57a1415de3301b06a474742c41a54ac8ce691977ffd78ddea";
              sha256_unsigned = "e2302a26b9ad37bce1da2d9d6d35c86551ea9cb192baa69c8977ae6ef5774e4f";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-tplink_vr200v-initramfs-kernel.bin";
              sha256 = "b7f59507608b9898960d9b5de06d806cc3d2856277414ba1ec4bb9a00a91e0b7";
              sha256_unsigned = "b7f59507608b9898960d9b5de06d806cc3d2856277414ba1ec4bb9a00a91e0b7";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,vr200v"
            "VR200v"
          ];
          titles = [
            {
              model = "Archer VR200v";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        zyxel_p-2812hnu-f1 = {
          device_packages = [
            "kmod-rt2800-pci"
            "wpad-openssl"
            "kmod-usb-dwc2"
            "kmod-usb-ledtrig-usbport"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xrx200-zyxel_p-2812hnu-f1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-zyxel_p-2812hnu-f1-initramfs-kernel.bin";
              sha256 = "38f4724184e5b8c020172577b23f486902b99dc04f34396c4d5620ac29c6d93a";
              sha256_unsigned = "38f4724184e5b8c020172577b23f486902b99dc04f34396c4d5620ac29c6d93a";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200-zyxel_p-2812hnu-f1-squashfs-sysupgrade.bin";
              sha256 = "57d62957d01290a3a7ada893858c8b42734b916ed68daa78051e22ae22718697";
              sha256_unsigned = "30ca9ca46e7343bbf0b4d38c77dc601b281f01c032b5a71c8c1f10100c90ee02";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "zyxel,p-2812hnu-f1"
            "P2812HNUF1"
          ];
          titles = [
            {
              model = "P-2812HNU";
              variant = "F1";
              vendor = "Zyxel";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "lantiq/xrx200";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
    xrx200_legacy = {
      arch_packages = "mips_24kc";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "dsl-vrx200-firmware-xdsl-a"
        "dsl-vrx200-firmware-xdsl-b-patch"
        "firewall4"
        "fstools"
        "kmod-gpio-button-hotplug"
        "kmod-leds-gpio"
        "kmod-ltq-atm-vr9"
        "kmod-ltq-deu-vr9"
        "kmod-ltq-ptm-vr9"
        "kmod-ltq-vdsl-vr9"
        "kmod-ltq-vdsl-vr9-mei"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "libc"
        "libgcc"
        "libustream-openssl"
        "logd"
        "ltq-vdsl-vr9-app"
        "ltq-vdsl-vr9-vectoring-fw-installer"
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
        "ppp-mod-pppoa"
        "ppp-mod-pppoe"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "0e711d22bee4403b1d62de26bee87c87";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        netgear_dm200 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xrx200_legacy-netgear_dm200";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200_legacy-netgear_dm200-squashfs-sysupgrade.bin";
              sha256 = "ad50604610ffed60bfeb67e94d3e16e1d19a2f145fadb32ea53678ef8e83093b";
              sha256_unsigned = "dff50236033f2389c582bf5064d6c0985292f8f5e49380a6b27c397a6b4ef45b";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200_legacy-netgear_dm200-squashfs-factory.img";
              sha256 = "f3cf92da3ed4cb61a286902033497488c00864548e2b87b1f507ae27e762c1d5";
              sha256_unsigned = "dff50236033f2389c582bf5064d6c0985292f8f5e49380a6b27c397a6b4ef45b";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xrx200_legacy-netgear_dm200-initramfs-kernel.bin";
              sha256 = "b43f6aa3d561f14415a8968a99baea787c40726f725acab4d1e20313a54ccefb";
              sha256_unsigned = "b43f6aa3d561f14415a8968a99baea787c40726f725acab4d1e20313a54ccefb";
              type = "kernel";
            }
          ];
          supported_devices = [
            "netgear,dm200"
          ];
          titles = [
            {
              model = "DM200";
              vendor = "NETGEAR";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "lantiq/xrx200_legacy";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
    xway = {
      arch_packages = "mips_24kc";
      default_packages = [
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
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "6a9bd7e4e147620970fb05d0c1b690da";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        arcadyan_arv7506pw11 = {
          device_packages = [
            "kmod-ltq-adsl-danube-mei"
            "kmod-ltq-adsl-danube"
            "kmod-ltq-adsl-danube-fw-b"
            "kmod-ltq-atm-danube"
            "ltq-adsl-app"
            "ppp-mod-pppoa"
            "kmod-rt2800-pci"
            "wpad-basic-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xway-arcadyan_arv7506pw11";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xway-arcadyan_arv7506pw11-initramfs-kernel.bin";
              sha256 = "254e2e266ca15b8233f380e8f78629e1a0d6549b177a9ab7454c420250707e2f";
              sha256_unsigned = "254e2e266ca15b8233f380e8f78629e1a0d6549b177a9ab7454c420250707e2f";
              type = "kernel";
            }
          ];
          supported_devices = [
            "arcadyan,arv7506pw11"
            "ARV7506PW11"
          ];
          titles = [
            {
              model = "ARV7506PW11";
              vendor = "Arcadyan";
            }
            {
              model = "IAD 4421";
              vendor = "Alice/O2";
            }
          ];
        };
        arcadyan_arv7510pw22 = {
          device_packages = [
            "kmod-usb-dwc2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ltq-adsl-danube-mei"
            "kmod-ltq-adsl-danube"
            "kmod-ltq-adsl-danube-fw-a"
            "kmod-ltq-atm-danube"
            "ltq-adsl-app"
            "ppp-mod-pppoa"
            "kmod-ltq-tapi"
            "kmod-ltq-vmmc"
            "kmod-rt2800-pci"
            "wpad-openssl"
            "kmod-usb-uhci"
            "kmod-usb2"
            "kmod-usb2-pci"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xway-arcadyan_arv7510pw22";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xway-arcadyan_arv7510pw22-initramfs-kernel.bin";
              sha256 = "e61f92207c80f30eb049b7a0d028d194c2fbda0967cf9505e3810156de0686b3";
              sha256_unsigned = "e61f92207c80f30eb049b7a0d028d194c2fbda0967cf9505e3810156de0686b3";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xway-arcadyan_arv7510pw22-squashfs-sysupgrade.bin";
              sha256 = "3267d0db3a12d2972e7aa3acb6be21627effcf99305c498de7877a24d4055cf7";
              sha256_unsigned = "cc889f73dd2eed50fbcfe42eddc9a4a260b4402aacbbd2285c991ac15ceae285";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "arcadyan,arv7510pw22"
            "ARV7510PW22"
          ];
          titles = [
            {
              model = "ARV7510PW22";
              vendor = "Arcadyan";
            }
            {
              model = "ARV7510PW22";
              vendor = "Astoria Networks";
            }
          ];
        };
        arcadyan_arv7518pw = {
          device_packages = [
            "kmod-usb-dwc2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ltq-adsl-danube-mei"
            "kmod-ltq-adsl-danube"
            "kmod-ltq-adsl-danube-fw-a"
            "kmod-ltq-atm-danube"
            "ltq-adsl-app"
            "ppp-mod-pppoa"
            "kmod-ath9k"
            "kmod-owl-loader"
            "wpad-basic-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xway-arcadyan_arv7518pw";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xway-arcadyan_arv7518pw-initramfs-kernel.bin";
              sha256 = "29330ad8067ed4d1ee2da2a3a9b5f8265d873f04f7d7be1d062559959200c8de";
              sha256_unsigned = "29330ad8067ed4d1ee2da2a3a9b5f8265d873f04f7d7be1d062559959200c8de";
              type = "kernel";
            }
          ];
          supported_devices = [
            "arcadyan,arv7518pw"
            "ARV7518PW"
          ];
          titles = [
            {
              model = "ARV7518PW";
              vendor = "Arcadyan";
            }
            {
              model = "ARV7518PW";
              vendor = "Astoria Networks";
            }
          ];
        };
        arcadyan_arv7519pw = {
          device_packages = [
            "kmod-usb-dwc2"
            "kmod-ltq-adsl-danube-mei"
            "kmod-ltq-adsl-danube"
            "kmod-ltq-adsl-danube-fw-a"
            "kmod-ltq-atm-danube"
            "ltq-adsl-app"
            "ppp-mod-pppoa"
            "kmod-rt2800-pci"
            "wpad-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xway-arcadyan_arv7519pw";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xway-arcadyan_arv7519pw-initramfs-kernel.bin";
              sha256 = "90b7c55e09ac67e63367dea4966261188e0742491c4cf9c667981e80205dc2ac";
              sha256_unsigned = "90b7c55e09ac67e63367dea4966261188e0742491c4cf9c667981e80205dc2ac";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xway-arcadyan_arv7519pw-squashfs-sysupgrade.bin";
              sha256 = "4fcd582d78a5f0f241ac12e003a00a1d1f30e217731e36fd41ee2179c7c2fb0d";
              sha256_unsigned = "f07264d808c3734af60fe5b8f67bb4f1ed571a9ba619e1b343a346d322db8d8f";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "arcadyan,arv7519pw"
            "ARV7519PW"
          ];
          titles = [
            {
              model = "ARV7519PW";
              vendor = "Arcadyan";
            }
            {
              model = "ARV7519PW";
              vendor = "Astoria Networks";
            }
          ];
        };
        arcadyan_arv752dpw = {
          device_packages = [
            "kmod-usb-dwc2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ltq-adsl-danube-mei"
            "kmod-ltq-adsl-danube"
            "kmod-ltq-adsl-danube-fw-b"
            "kmod-ltq-atm-danube"
            "ltq-adsl-app"
            "ppp-mod-pppoa"
            "kmod-ltq-tapi"
            "kmod-ltq-vmmc"
            "kmod-rt2800-pci"
            "wpad-basic-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xway-arcadyan_arv752dpw";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xway-arcadyan_arv752dpw-initramfs-kernel.bin";
              sha256 = "ee171f042d383def07190a093a26e3090ecd411f6a4bc7eca5d6effcb79e29e8";
              sha256_unsigned = "ee171f042d383def07190a093a26e3090ecd411f6a4bc7eca5d6effcb79e29e8";
              type = "kernel";
            }
          ];
          supported_devices = [
            "arcadyan,arv752dpw"
            "ARV752DPW"
          ];
          titles = [
            {
              model = "ARV752DPW";
              vendor = "Arcadyan";
            }
            {
              model = "Easybox 802";
              vendor = "Vodafone";
            }
          ];
        };
        arcadyan_arv752dpw22 = {
          device_packages = [
            "kmod-usb2-pci"
            "kmod-usb-uhci"
            "kmod-usb-dwc2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ltq-adsl-danube-mei"
            "kmod-ltq-adsl-danube"
            "kmod-ltq-adsl-danube-fw-b"
            "kmod-ltq-atm-danube"
            "ltq-adsl-app"
            "ppp-mod-pppoa"
            "kmod-ltq-tapi"
            "kmod-ltq-vmmc"
            "kmod-rt2800-pci"
            "wpad-basic-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xway-arcadyan_arv752dpw22";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xway-arcadyan_arv752dpw22-initramfs-kernel.bin";
              sha256 = "ef0f6cf4a1e60528ad71e8efab188fcd174d9432cd9461a1c4f5778627ea08a9";
              sha256_unsigned = "ef0f6cf4a1e60528ad71e8efab188fcd174d9432cd9461a1c4f5778627ea08a9";
              type = "kernel";
            }
          ];
          supported_devices = [
            "arcadyan,arv752dpw22"
            "ARV752DPW22"
          ];
          titles = [
            {
              model = "ARV752DPW22";
              vendor = "Arcadyan";
            }
            {
              model = "Easybox 803";
              vendor = "Vodafone";
            }
          ];
        };
        arcadyan_arv8539pw22 = {
          device_packages = [
            "kmod-usb-dwc2"
            "kmod-ltq-adsl-danube-mei"
            "kmod-ltq-adsl-danube"
            "kmod-ltq-adsl-danube-fw-b"
            "kmod-ltq-atm-danube"
            "ltq-adsl-app"
            "ppp-mod-pppoa"
            "kmod-ath9k"
            "kmod-owl-loader"
            "wpad-basic-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xway-arcadyan_arv8539pw22";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xway-arcadyan_arv8539pw22-initramfs-kernel.bin";
              sha256 = "be6d04c8670086289270157c1c1d9125305f8fe786e2d635370dfe59b987029e";
              sha256_unsigned = "be6d04c8670086289270157c1c1d9125305f8fe786e2d635370dfe59b987029e";
              type = "kernel";
            }
          ];
          supported_devices = [
            "arcadyan,arv8539pw22"
            "ARV8539PW22"
          ];
          titles = [
            {
              model = "ARV8539PW22";
              vendor = "Arcadyan";
            }
            {
              model = "Speedport W504V Typ A";
              vendor = "Telekom";
            }
          ];
        };
        audiocodes_mp-252 = {
          device_packages = [
            "kmod-ltq-adsl-danube-mei"
            "kmod-ltq-adsl-danube"
            "kmod-ltq-adsl-danube-fw-a"
            "kmod-ltq-atm-danube"
            "kmod-ltq-tapi"
            "kmod-ltq-vmmc"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb-dwc2"
            "kmod-rt2800-pci"
            "ltq-adsl-app"
            "ppp-mod-pppoa"
            "wpad-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xway-audiocodes_mp-252";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xway-audiocodes_mp-252-squashfs-sysupgrade.bin";
              sha256 = "1540fb6ad503fd6271aacd231da5dbb883b391b2645bf314715c9467cb1444a4";
              sha256_unsigned = "c06d771e4ceb6cc380c0975e67ca526d0a3dd5b3b848066c60054bfda3ca2131";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xway-audiocodes_mp-252-initramfs-kernel.bin";
              sha256 = "4c3b89332ade9f44d100b3574617b70ae17b28a8270ba49301807d98bda82efa";
              sha256_unsigned = "4c3b89332ade9f44d100b3574617b70ae17b28a8270ba49301807d98bda82efa";
              type = "kernel";
            }
          ];
          supported_devices = [
            "audiocodes,mp-252"
            "ACMP252"
          ];
          titles = [
            {
              model = "MediaPack MP-252";
              vendor = "AudioCodes";
            }
          ];
        };
        avm_fritz7312 = {
          device_packages = [
            "kmod-ath9k"
            "kmod-owl-loader"
            "wpad-openssl"
            "kmod-ltq-adsl-ar9-mei"
            "kmod-ltq-adsl-ar9"
            "kmod-ltq-adsl-ar9-fw-b"
            "kmod-ltq-atm-ar9"
            "ltq-adsl-app"
            "ppp-mod-pppoa"
            "kmod-ltq-deu-ar9"
            "fritz-tffs"
            "-swconfig"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xway-avm_fritz7312";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xway-avm_fritz7312-initramfs-kernel.bin";
              sha256 = "d766e2e2ea1cf9464dd10d7ddbf1deed6e2ec6d5aa14e840314dd89d7daf6104";
              sha256_unsigned = "d766e2e2ea1cf9464dd10d7ddbf1deed6e2ec6d5aa14e840314dd89d7daf6104";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xway-avm_fritz7312-squashfs-sysupgrade.bin";
              sha256 = "3f485a77af4b09f85dd080c75b2ce5a08601f4ce29173a9c6fc27650193b5406";
              sha256_unsigned = "20280e948b737bb1169085bc549fe6a9eae5cbb4f90a335c73a8b047cdab69e4";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "avm,fritz7312"
          ];
          titles = [
            {
              model = "FRITZ!Box 7312";
              vendor = "AVM";
            }
          ];
        };
        avm_fritz7320 = {
          device_packages = [
            "kmod-ath9k"
            "kmod-owl-loader"
            "wpad-openssl"
            "kmod-ltq-adsl-ar9-mei"
            "kmod-ltq-adsl-ar9"
            "kmod-ltq-adsl-ar9-fw-b"
            "kmod-ltq-atm-ar9"
            "ltq-adsl-app"
            "ppp-mod-pppoa"
            "kmod-ltq-deu-ar9"
            "kmod-usb-dwc2"
            "fritz-tffs"
            "-swconfig"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xway-avm_fritz7320";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xway-avm_fritz7320-initramfs-kernel.bin";
              sha256 = "12679e77b7d1b684632027d90d7abeb53e8909de236bece8ddf0e79e2e836084";
              sha256_unsigned = "12679e77b7d1b684632027d90d7abeb53e8909de236bece8ddf0e79e2e836084";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xway-avm_fritz7320-squashfs-sysupgrade.bin";
              sha256 = "529656811596a5be2be7297f9a6554ba22f3fded4f8e0a672c721128db616922";
              sha256_unsigned = "d0e679f2821c29d40914962ac43680f0d7aa7fd221463c9e3a481fd4f96d18eb";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "avm,fritz7320"
            "FRITZ7320"
          ];
          titles = [
            {
              model = "FRITZ!Box 7320";
              vendor = "AVM";
            }
            {
              model = "HomeServer";
              vendor = "1&1";
            }
            {
              model = "Fritz!Box 7330";
              vendor = "AVM";
            }
          ];
        };
        buffalo_wbmr-hp-g300h-a = {
          device_packages = [
            "kmod-usb-dwc2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ltq-adsl-ar9-mei"
            "kmod-ltq-adsl-ar9"
            "kmod-ltq-adsl-ar9-fw-a"
            "kmod-ltq-atm-ar9"
            "ltq-adsl-app"
            "ppp-mod-pppoa"
            "kmod-ath9k"
            "kmod-owl-loader"
            "wpad-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xway-buffalo_wbmr-hp-g300h-a";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xway-buffalo_wbmr-hp-g300h-a-initramfs-kernel.bin";
              sha256 = "aecd2cf4cb2fc7fe5fb3f9f9aeb15e139d17cb234b8661e346f398a942cb7694";
              sha256_unsigned = "aecd2cf4cb2fc7fe5fb3f9f9aeb15e139d17cb234b8661e346f398a942cb7694";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xway-buffalo_wbmr-hp-g300h-a-squashfs-sysupgrade.bin";
              sha256 = "d2be5e0e530fed49685e58633d9c7d96792c07e24030a1e07d0fba844a8f246b";
              sha256_unsigned = "ef36de31417ecf26f9ae8ae9c334a7f9f49fee608cb357ee04293a666d6c8db7";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "WBMR"
            "buffalo,wbmr-hp-g300h"
          ];
          titles = [
            {
              model = "WBMR-HP-G300H";
              variant = "A";
              vendor = "Buffalo";
            }
          ];
        };
        buffalo_wbmr-hp-g300h-b = {
          device_packages = [
            "kmod-usb-dwc2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ltq-adsl-ar9-mei"
            "kmod-ltq-adsl-ar9"
            "kmod-ltq-adsl-ar9-fw-b"
            "kmod-ltq-atm-ar9"
            "ltq-adsl-app"
            "ppp-mod-pppoa"
            "kmod-ath9k"
            "kmod-owl-loader"
            "wpad-openssl"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xway-buffalo_wbmr-hp-g300h-b";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xway-buffalo_wbmr-hp-g300h-b-initramfs-kernel.bin";
              sha256 = "7572aed54269742dd7f95be1d0a0b20fd36e48ea147b2e752e40968f7c3bc9bc";
              sha256_unsigned = "7572aed54269742dd7f95be1d0a0b20fd36e48ea147b2e752e40968f7c3bc9bc";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xway-buffalo_wbmr-hp-g300h-b-squashfs-sysupgrade.bin";
              sha256 = "4328f09cac4c7c8803057a318f27ec8dea43f3288586c2ee3b46e3bee47cb39e";
              sha256_unsigned = "be54b86f189c717b85b5709839becf81df97c1bcc3fd741e1353b3b2d38f9d3f";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "WBMR"
            "buffalo,wbmr-hp-g300h"
          ];
          titles = [
            {
              model = "WBMR-HP-G300H";
              variant = "B";
              vendor = "Buffalo";
            }
          ];
        };
        netgear_dgn3500 = {
          device_packages = [
            "kmod-usb-dwc2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ath9k"
            "kmod-owl-loader"
            "wpad-openssl"
            "kmod-ltq-adsl-ar9-mei"
            "kmod-ltq-adsl-ar9"
            "kmod-ltq-adsl-ar9-fw-a"
            "kmod-ltq-atm-ar9"
            "kmod-ltq-deu-ar9"
            "ltq-adsl-app"
            "ppp-mod-pppoa"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xway-netgear_dgn3500";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xway-netgear_dgn3500-squashfs-sysupgrade.bin";
              sha256 = "a3715818e3c338c16eff9e1003543a2372df6bf45097ee26e216f340a4d97386";
              sha256_unsigned = "362067236c1f2f5b564029951861291e70f11203ffbfe1e1ec40bedcb9bcf6ed";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xway-netgear_dgn3500-initramfs-kernel.bin";
              sha256 = "0c046fffae51da64d81d715434f5109d32cd264f9afecc28c1aba8532d8c46cd";
              sha256_unsigned = "0c046fffae51da64d81d715434f5109d32cd264f9afecc28c1aba8532d8c46cd";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xway-netgear_dgn3500-squashfs-factory-na.img";
              sha256 = "7e1653345f59615426954cd70511484ca7d478b7e0ca6daec00f2551209ba85f";
              sha256_unsigned = "7e1653345f59615426954cd70511484ca7d478b7e0ca6daec00f2551209ba85f";
              type = "factory-na";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xway-netgear_dgn3500-squashfs-sysupgrade-na.bin";
              sha256 = "1b9783d356d0deac64646b48fd311840b1fe3abc5c3916d9eebfc72eaa3e2871";
              sha256_unsigned = "f4bc05ea892497de5befe1edcb0df719eaa47e5ade17017fcc29ef3bb243c6d7";
              type = "sysupgrade-na";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xway-netgear_dgn3500-squashfs-factory.img";
              sha256 = "013f02a0dbb361be89554fcefcc8fb70e615e1d99875c2c15aff0c12857025b0";
              sha256_unsigned = "013f02a0dbb361be89554fcefcc8fb70e615e1d99875c2c15aff0c12857025b0";
              type = "factory";
            }
          ];
          supported_devices = [
            "netgear,dgn3500"
            "DGN3500"
          ];
          titles = [
            {
              model = "DGN3500";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_dgn3500b = {
          device_packages = [
            "kmod-usb-dwc2"
            "kmod-usb-ledtrig-usbport"
            "kmod-ath9k"
            "kmod-owl-loader"
            "wpad-openssl"
            "kmod-ltq-adsl-ar9-mei"
            "kmod-ltq-adsl-ar9"
            "kmod-ltq-adsl-ar9-fw-b"
            "kmod-ltq-atm-ar9"
            "kmod-ltq-deu-ar9"
            "ltq-adsl-app"
            "ppp-mod-pppoa"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xway-netgear_dgn3500b";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xway-netgear_dgn3500b-initramfs-kernel.bin";
              sha256 = "8a805006df696d61510648e595bd435f1a3a9cc5a6872c57735dbc72aa8c3711";
              sha256_unsigned = "8a805006df696d61510648e595bd435f1a3a9cc5a6872c57735dbc72aa8c3711";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xway-netgear_dgn3500b-squashfs-factory.img";
              sha256 = "8f667104daa67251146d21437426dcb13ba2a24f9962514c3c3cd6f5bd0d5ec0";
              sha256_unsigned = "8f667104daa67251146d21437426dcb13ba2a24f9962514c3c3cd6f5bd0d5ec0";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xway-netgear_dgn3500b-squashfs-sysupgrade.bin";
              sha256 = "3d82f4e8ffe0a9d541910e8f2de6af156b84ccb0a920f9fa7063083cc4b353b8";
              sha256_unsigned = "9f6d673a57d31149fc449564c11c1240babf514e7f63f63c5a1cf53df48d4f5a";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "netgear,dgn3500b"
            "DGN3500B"
          ];
          titles = [
            {
              model = "DGN3500B";
              vendor = "NETGEAR";
            }
          ];
        };
        zyxel_p-2601hn = {
          device_packages = [
            "kmod-rt2800-usb"
            "wpad-openssl"
            "kmod-ltq-adsl-ar9-mei"
            "kmod-ltq-adsl-ar9"
            "kmod-ltq-adsl-ar9-fw-b"
            "kmod-ltq-atm-ar9"
            "kmod-ltq-deu-ar9"
            "ltq-adsl-app"
            "ppp-mod-pppoe"
            "kmod-usb-dwc2"
            "iwinfo"
          ];
          image_prefix = "immortalwrt-24.10.1-lantiq-xway-zyxel_p-2601hn";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-lantiq-xway-zyxel_p-2601hn-initramfs-kernel.bin";
              sha256 = "c344dffbee58e2cd53e80f23fcaa448a5cccd6d20190ffa2ed6051d9fc3ebb7c";
              sha256_unsigned = "c344dffbee58e2cd53e80f23fcaa448a5cccd6d20190ffa2ed6051d9fc3ebb7c";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-lantiq-xway-zyxel_p-2601hn-squashfs-sysupgrade.bin";
              sha256 = "ebfce9ce75202bf9689d434432ff4570e646a2684eae47f5644d3ecd59d65718";
              sha256_unsigned = "8b4b072eea7966e65c5f8e67484ec4a943db0dbfa344e5b81911a9db47dfcade";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "zyxel,p-2601hn"
            "P2601HNFX"
          ];
          titles = [
            {
              model = "P-2601HN";
              variant = "F1/F3";
              vendor = "Zyxel";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "lantiq/xway";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
  };
  layerscape = {
    armv7 = {
      arch_packages = "arm_cortex-a7_neon-vfpv4";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "e2fsprogs"
        "firewall4"
        "fstools"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-usb-dwc3"
        "kmod-usb-storage"
        "kmod-usb3"
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
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "402b6b0c88e542159de686be3c422acd";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        fsl_ls1021a-iot-sdboot = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-layerscape-armv7-fsl_ls1021a-iot-sdboot";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv7-fsl_ls1021a-iot-sdboot-squashfs-sysupgrade.bin";
              sha256 = "95844621cabe90af3f906cfb95eec14c7328d6a02e7d4fd26a904907787a5b0d";
              sha256_unsigned = "fd593495ab8b156f0b6ebc38fb136884e275fa12febe22dc20ab0f90bf759d5f";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv7-fsl_ls1021a-iot-sdboot-squashfs-sdcard.img.gz";
              sha256 = "59c507e6fcc9a6f9e01b3280c42378f1a7103cbea399d5bed8c5d61a08cbeff5";
              sha256_unsigned = "59c507e6fcc9a6f9e01b3280c42378f1a7103cbea399d5bed8c5d61a08cbeff5";
              type = "sdcard";
            }
          ];
          supported_devices = [ ];
          titles = [
            {
              model = "LS1021A-IoT";
              variant = "SD Card Boot";
              vendor = "NXP";
            }
          ];
        };
        fsl_ls1021a-twr = {
          device_packages = [
            "~layerscape-rcw"
          ];
          image_prefix = "immortalwrt-24.10.1-layerscape-armv7-fsl_ls1021a-twr";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv7-fsl_ls1021a-twr-squashfs-sysupgrade.bin";
              sha256 = "0cb01fee6a9f32c63f81b8cc40cb12ef6d83035879955c61f013ff2d3c4ec16e";
              sha256_unsigned = "c1a09ac1d1fc651d1cf05cae43a96187dffde7e1f43f82af31c21e562ba23304";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv7-fsl_ls1021a-twr-squashfs-firmware.bin";
              sha256 = "67496c399f9fa207125c08cea7766af3b2fcd72ee79e59eaf70bc0d1050b94d1";
              sha256_unsigned = "67496c399f9fa207125c08cea7766af3b2fcd72ee79e59eaf70bc0d1050b94d1";
              type = "firmware";
            }
          ];
          supported_devices = [
            "fsl,ls1021a-twr"
          ];
          titles = [
            {
              model = "TWR-LS1021A";
              variant = "Default";
              vendor = "NXP";
            }
          ];
        };
        fsl_ls1021a-twr-sdboot = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-layerscape-armv7-fsl_ls1021a-twr-sdboot";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv7-fsl_ls1021a-twr-sdboot-squashfs-sdcard.img.gz";
              sha256 = "3f6bbee0555f255bde3ed35690099cb0bbfdcce9ec785ee167f3ca622659bc62";
              sha256_unsigned = "3f6bbee0555f255bde3ed35690099cb0bbfdcce9ec785ee167f3ca622659bc62";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv7-fsl_ls1021a-twr-sdboot-squashfs-sysupgrade.bin";
              sha256 = "0156d716c7426038bd6cfc8e9f6a587de62f51b440338533f3533fed06a96637";
              sha256_unsigned = "56bde141318d7e8cded581f856b758978006bae710c19c39b306401fd2a96281";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "fsl,ls1021a-twr-sdboot"
          ];
          titles = [
            {
              model = "TWR-LS1021A";
              variant = "SD Card Boot";
              vendor = "NXP";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "layerscape/armv7";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
    armv8_64b = {
      arch_packages = "aarch64_generic";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "e2fsprogs"
        "firewall4"
        "fstools"
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-usb-dwc3"
        "kmod-usb-storage"
        "kmod-usb3"
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
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "39401862829c4e95dd387c6fde92eaeb";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        fsl_ls1012a-frdm = {
          device_packages = [
            "layerscape-ppfe"
            "~trusted-firmware-a-ls1012a-frdm"
            "kmod-ppfe"
          ];
          image_prefix = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1012a-frdm";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1012a-frdm-squashfs-sysupgrade.bin";
              sha256 = "ac1c73367d764653f7929632e419f981deb2a414f5ed153d7497f08a941b5522";
              sha256_unsigned = "19583d6627dbf97c728624375817b7db04682ebe6d80171ec569f5b94243e121";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1012a-frdm-squashfs-firmware.bin";
              sha256 = "a823614841d582b7ac0d7d48af9f68e70b0b01eacfe07a662ae21e8b8c33d397";
              sha256_unsigned = "a823614841d582b7ac0d7d48af9f68e70b0b01eacfe07a662ae21e8b8c33d397";
              type = "firmware";
            }
          ];
          supported_devices = [
            "fsl,ls1012a-frdm"
          ];
          titles = [
            {
              model = "FRDM-LS1012A";
              vendor = "NXP";
            }
          ];
        };
        fsl_ls1012a-frwy-sdboot = {
          device_packages = [
            "layerscape-ppfe"
            "~trusted-firmware-a-ls1012a-frwy-sdboot"
            "kmod-ppfe"
          ];
          image_prefix = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1012a-frwy-sdboot";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1012a-frwy-sdboot-squashfs-firmware.bin";
              sha256 = "8528911935e45de773835499bd62759fdc08511c8fb893ea9ca12c488b9dc976";
              sha256_unsigned = "8528911935e45de773835499bd62759fdc08511c8fb893ea9ca12c488b9dc976";
              type = "firmware";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1012a-frwy-sdboot-squashfs-sdcard.img.gz";
              sha256 = "5ffb664f76bd9a85485c04bfd2873e627e202abecca4eadfb42170fdbf457cc1";
              sha256_unsigned = "5ffb664f76bd9a85485c04bfd2873e627e202abecca4eadfb42170fdbf457cc1";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1012a-frwy-sdboot-squashfs-sysupgrade.bin";
              sha256 = "b14c673689ad8900b34316e1b4653e4e0b5b51954c5a985a087a36d6bb22b63e";
              sha256_unsigned = "0a2d7d25850b365b4b15a65a84012de1bb878a777a732de433180185bfb16bc4";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "fsl,ls1012a-frwy-sdboot"
          ];
          titles = [
            {
              model = "FRWY-LS1012A";
              vendor = "NXP";
            }
          ];
        };
        fsl_ls1012a-rdb = {
          device_packages = [
            "layerscape-ppfe"
            "~trusted-firmware-a-ls1012a-rdb"
            "kmod-hwmon-ina2xx"
            "kmod-iio-fxas21002c-i2c"
            "kmod-iio-fxos8700-i2c"
            "kmod-ppfe"
          ];
          image_prefix = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1012a-rdb";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1012a-rdb-squashfs-sysupgrade.bin";
              sha256 = "c51faeaed6d905347d848d2cc45cd63c747b492b6a8c99912b72bae62e73e4d8";
              sha256_unsigned = "99988861fc0777f7fd975470e96edf5553d3d4948185ddbf705113ac28ce6b20";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1012a-rdb-squashfs-firmware.bin";
              sha256 = "49e0f38d9af1970376d70190e6403506ffad7c877d83c59b86f453455e3fc55c";
              sha256_unsigned = "49e0f38d9af1970376d70190e6403506ffad7c877d83c59b86f453455e3fc55c";
              type = "firmware";
            }
          ];
          supported_devices = [
            "fsl,ls1012a-rdb"
          ];
          titles = [
            {
              model = "LS1012A-RDB";
              vendor = "NXP";
            }
          ];
        };
        fsl_ls1028a-rdb = {
          device_packages = [
            "~trusted-firmware-a-ls1028a-rdb"
            "kmod-hwmon-ina2xx"
            "kmod-hwmon-lm90"
            "kmod-rtc-pcf2127"
          ];
          image_prefix = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1028a-rdb";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1028a-rdb-squashfs-sysupgrade.bin";
              sha256 = "ca542e0a2b62014fbd52f3f2508c936f1857bdeac208cf7c416146520af33853";
              sha256_unsigned = "980da39e60aaa9d0cd775dbad09ee0bb481dd906fe2e28dfb585f4246b44b30e";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1028a-rdb-squashfs-firmware.bin";
              sha256 = "fcb929b5e89576747b5bcb45b3297f929612a9fd057cc772f097a938831caba1";
              sha256_unsigned = "fcb929b5e89576747b5bcb45b3297f929612a9fd057cc772f097a938831caba1";
              type = "firmware";
            }
          ];
          supported_devices = [
            "fsl,ls1028a-rdb"
          ];
          titles = [
            {
              model = "LS1028A-RDB";
              variant = "Default";
              vendor = "NXP";
            }
          ];
        };
        fsl_ls1028a-rdb-sdboot = {
          device_packages = [
            "~trusted-firmware-a-ls1028a-rdb-sdboot"
            "kmod-hwmon-ina2xx"
            "kmod-hwmon-lm90"
            "kmod-rtc-pcf2127"
          ];
          image_prefix = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1028a-rdb-sdboot";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1028a-rdb-sdboot-squashfs-sysupgrade.bin";
              sha256 = "287e034a1995b6c6bb79621cf976ab72353d5e6cc8fa321188523833f9fcd215";
              sha256_unsigned = "4513f662cd0267f0b76b0ef5b880d878d10305443ef34412aafbd70ebc6d1057";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1028a-rdb-sdboot-squashfs-sdcard.img.gz";
              sha256 = "ad066e0e355d0c29b8416c9eba14936ec5d4f5ffc50cb7401d0288e870f4cdcd";
              sha256_unsigned = "ad066e0e355d0c29b8416c9eba14936ec5d4f5ffc50cb7401d0288e870f4cdcd";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "fsl,ls1028a-rdb-sdboot"
          ];
          titles = [
            {
              model = "LS1028A-RDB";
              variant = "SD Card Boot";
              vendor = "NXP";
            }
          ];
        };
        fsl_ls1043a-rdb = {
          device_packages = [
            "~layerscape-fman"
            "~trusted-firmware-a-ls1043a-rdb"
            "kmod-ahci-qoriq"
            "kmod-hwmon-ina2xx"
            "kmod-hwmon-lm90"
          ];
          image_prefix = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1043a-rdb";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1043a-rdb-squashfs-firmware.bin";
              sha256 = "ea30b1a8237f0ee6ecff3555dcce97c4cbfdcedaffdd9b5d2d369a62b1ac3e1e";
              sha256_unsigned = "ea30b1a8237f0ee6ecff3555dcce97c4cbfdcedaffdd9b5d2d369a62b1ac3e1e";
              type = "firmware";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1043a-rdb-squashfs-sysupgrade.bin";
              sha256 = "8b9eb6d50c738dfe3bbd6f40b372e9435f307f1bc5324b494f82ffb23e1d5914";
              sha256_unsigned = "e03e5afd492980a523f0c8269f5b2075ea67e1136055fcd32d1c356b82637713";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "fsl,ls1043a-rdb"
          ];
          titles = [
            {
              model = "LS1043A-RDB";
              variant = "Default";
              vendor = "NXP";
            }
          ];
        };
        fsl_ls1043a-rdb-sdboot = {
          device_packages = [
            "~layerscape-fman"
            "~trusted-firmware-a-ls1043a-rdb-sdboot"
            "kmod-ahci-qoriq"
            "kmod-hwmon-ina2xx"
            "kmod-hwmon-lm90"
          ];
          image_prefix = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1043a-rdb-sdboot";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1043a-rdb-sdboot-squashfs-sysupgrade.bin";
              sha256 = "dd79a5f04b80f35631a64b3e229baf2ebec20700417b37aba08efc55b9ad72f4";
              sha256_unsigned = "102516d862309489c4e4ae08f2347b40635295c57fb2883828d9d8bcadf41916";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1043a-rdb-sdboot-squashfs-sdcard.img.gz";
              sha256 = "603e9bbc5eeb3db3aa52cee360f25051ae20c9655afc2462062d9a71b9bf784a";
              sha256_unsigned = "603e9bbc5eeb3db3aa52cee360f25051ae20c9655afc2462062d9a71b9bf784a";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "fsl,ls1043a-rdb-sdboot"
          ];
          titles = [
            {
              model = "LS1043A-RDB";
              variant = "SD Card Boot";
              vendor = "NXP";
            }
          ];
        };
        fsl_ls1046a-frwy = {
          device_packages = [
            "~layerscape-fman"
            "~trusted-firmware-a-ls1046a-frwy"
          ];
          image_prefix = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1046a-frwy";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1046a-frwy-squashfs-sysupgrade.bin";
              sha256 = "191947e9883d2caf0cec5a168bc714b3f973286c3cd295c0424a20cc056af4a0";
              sha256_unsigned = "4ec12f872d50e1461e188aa8eebea9a2ec1fbefe0b17f5fda93ddf6ca484422f";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1046a-frwy-squashfs-firmware.bin";
              sha256 = "c21019b9d47e6496c4f80ca8cf5ed8f19e4cbf5416d92b8ec3c56673bca4f455";
              sha256_unsigned = "c21019b9d47e6496c4f80ca8cf5ed8f19e4cbf5416d92b8ec3c56673bca4f455";
              type = "firmware";
            }
          ];
          supported_devices = [
            "fsl,ls1046a-frwy"
          ];
          titles = [
            {
              model = "FRWY-LS1046A";
              variant = "Default";
              vendor = "NXP";
            }
          ];
        };
        fsl_ls1046a-frwy-sdboot = {
          device_packages = [
            "~layerscape-fman"
            "~trusted-firmware-a-ls1046a-frwy-sdboot"
          ];
          image_prefix = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1046a-frwy-sdboot";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1046a-frwy-sdboot-squashfs-sysupgrade.bin";
              sha256 = "833a5ff1eada3fee89ba75a0cd811caf6bd2034fd4b1dfe48b5e72dbaa004dc4";
              sha256_unsigned = "798f4edff19ce2bbae25bcc63995ebc59f857adc49193ebcaff712553446eec4";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1046a-frwy-sdboot-squashfs-sdcard.img.gz";
              sha256 = "3c87770cbe891efb52b5d8f5d712dea8e1ff06b952b049a5b2a54cab37ba8237";
              sha256_unsigned = "3c87770cbe891efb52b5d8f5d712dea8e1ff06b952b049a5b2a54cab37ba8237";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "fsl,ls1046a-frwy-sdboot"
          ];
          titles = [
            {
              model = "FRWY-LS1046A";
              variant = "SD Card Boot";
              vendor = "NXP";
            }
          ];
        };
        fsl_ls1046a-rdb = {
          device_packages = [
            "~layerscape-fman"
            "~trusted-firmware-a-ls1046a-rdb"
            "kmod-ahci-qoriq"
            "kmod-hwmon-ina2xx"
            "kmod-hwmon-lm90"
          ];
          image_prefix = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1046a-rdb";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1046a-rdb-squashfs-firmware.bin";
              sha256 = "41fe4978a9b99c4768bd6cc200184fd0ddcfc99c5204277f4aea22ebd4a300d6";
              sha256_unsigned = "41fe4978a9b99c4768bd6cc200184fd0ddcfc99c5204277f4aea22ebd4a300d6";
              type = "firmware";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1046a-rdb-squashfs-sysupgrade.bin";
              sha256 = "99cf29de4fc14f4bee5b012c3149076ba373e5d1f4ded3d5cc4d860146a8e614";
              sha256_unsigned = "b929e4877becc3357379087d7768203204740abe0c52e7541b8f9331822c4ed9";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "fsl,ls1046a-rdb"
          ];
          titles = [
            {
              model = "LS1046A-RDB";
              variant = "Default";
              vendor = "NXP";
            }
          ];
        };
        fsl_ls1046a-rdb-sdboot = {
          device_packages = [
            "~layerscape-fman"
            "~trusted-firmware-a-ls1046a-rdb-sdboot"
            "kmod-ahci-qoriq"
            "kmod-hwmon-ina2xx"
            "kmod-hwmon-lm90"
          ];
          image_prefix = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1046a-rdb-sdboot";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1046a-rdb-sdboot-squashfs-sysupgrade.bin";
              sha256 = "3f1c65281d8ab174a4aca333937a45c6ad8ba3830a21c2bdea7563067e649115";
              sha256_unsigned = "4ebfb0d2b510878ca67f6183f0cea5ac4ed5178af8b18679ca0d555ef8a253cd";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1046a-rdb-sdboot-squashfs-sdcard.img.gz";
              sha256 = "d92e4fd75eb65adcc5818f779ec2fccf9440419916c13197db0d89ec411f9cc0";
              sha256_unsigned = "d92e4fd75eb65adcc5818f779ec2fccf9440419916c13197db0d89ec411f9cc0";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "fsl,ls1046a-rdb-sdboot"
          ];
          titles = [
            {
              model = "LS1046A-RDB";
              variant = "SD Card Boot";
              vendor = "NXP";
            }
          ];
        };
        fsl_ls1088a-rdb = {
          device_packages = [
            "~layerscape-mc"
            "~layerscape-dpl"
            "~trusted-firmware-a-ls1088a-rdb"
            "restool"
            "kmod-ahci-qoriq"
            "kmod-hwmon-ina2xx"
            "kmod-hwmon-lm90"
          ];
          image_prefix = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1088a-rdb";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1088a-rdb-squashfs-sysupgrade.bin";
              sha256 = "2284057bb1cc0399070bd33120427bea8e32729b09fbfa63fc2f46fa25d01de6";
              sha256_unsigned = "3ef7b72a4eca2e109e0ec3abd404e510c578ff0961f390cf7f4a4a0053046b49";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1088a-rdb-squashfs-firmware.bin";
              sha256 = "a116cfebd86aa24213b6580ed2649e73fe651b9c305ac1b78fbf1eed7aa4007e";
              sha256_unsigned = "a116cfebd86aa24213b6580ed2649e73fe651b9c305ac1b78fbf1eed7aa4007e";
              type = "firmware";
            }
          ];
          supported_devices = [
            "fsl,ls1088a-rdb"
          ];
          titles = [
            {
              model = "LS1088A-RDB";
              variant = "Default";
              vendor = "NXP";
            }
          ];
        };
        fsl_ls1088a-rdb-sdboot = {
          device_packages = [
            "~layerscape-mc"
            "~layerscape-dpl"
            "~trusted-firmware-a-ls1088a-rdb-sdboot"
            "restool"
            "kmod-ahci-qoriq"
            "kmod-hwmon-ina2xx"
            "kmod-hwmon-lm90"
          ];
          image_prefix = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1088a-rdb-sdboot";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1088a-rdb-sdboot-squashfs-sysupgrade.bin";
              sha256 = "6e43cacf43c6c6cc417a81c679f490a47608e4b4461fa3deba920c07f0e0416c";
              sha256_unsigned = "62ce9b18052f40e6d13360c90a7d8323372ba4257aa34f85ca3dbfa3dcb3dc3c";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls1088a-rdb-sdboot-squashfs-sdcard.img.gz";
              sha256 = "b7de3de04177541f06e48179397e3dd668f51310bb626f0ea05061ed77ef20ad";
              sha256_unsigned = "b7de3de04177541f06e48179397e3dd668f51310bb626f0ea05061ed77ef20ad";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "fsl,ls1088a-rdb-sdboot"
          ];
          titles = [
            {
              model = "LS1088A-RDB";
              variant = "SD Card Boot";
              vendor = "NXP";
            }
          ];
        };
        fsl_ls2088a-rdb = {
          device_packages = [
            "~layerscape-mc"
            "~layerscape-dpl"
            "~trusted-firmware-a-ls2088a-rdb"
            "restool"
            "kmod-ahci-qoriq"
          ];
          image_prefix = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls2088a-rdb";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls2088a-rdb-squashfs-sysupgrade.bin";
              sha256 = "ee537b06e4e8a6a90b7464ae8d9d217bdbd74de45e9ab2a68e2f7c9d9cc64f7e";
              sha256_unsigned = "7e9c96c2a5dde0287988b219bd45adae80fe55269d5941be4dd749cd3a4e5892";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_ls2088a-rdb-squashfs-firmware.bin";
              sha256 = "d3396c7e6eb9f8ad487572713fe8f47794af989783870ecc77cb6ed9dcf68a25";
              sha256_unsigned = "d3396c7e6eb9f8ad487572713fe8f47794af989783870ecc77cb6ed9dcf68a25";
              type = "firmware";
            }
          ];
          supported_devices = [
            "fsl,ls2088a-rdb"
          ];
          titles = [
            {
              model = "LS2088ARDB";
              vendor = "NXP";
            }
          ];
        };
        fsl_lx2160a-rdb = {
          device_packages = [
            "~layerscape-mc"
            "~layerscape-dpl"
            "~layerscape-ddr-phy"
            "~trusted-firmware-a-lx2160a-rdb"
            "restool"
          ];
          image_prefix = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_lx2160a-rdb";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_lx2160a-rdb-squashfs-firmware.bin";
              sha256 = "17066e55c4d55e597742a86cc6bb5f3a941d7a16a2b275564af1922ba8bd92a1";
              sha256_unsigned = "17066e55c4d55e597742a86cc6bb5f3a941d7a16a2b275564af1922ba8bd92a1";
              type = "firmware";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_lx2160a-rdb-squashfs-sysupgrade.bin";
              sha256 = "453fc86d4fb964d445699134cf8ea09f556f6d175b215bab395359ee96332a67";
              sha256_unsigned = "60a038cf5b1f7da6200d74853c117df3e012c1f410ead96cd477818d38f4361e";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "fsl,lx2160a-rdb"
          ];
          titles = [
            {
              model = "LX2160A-RDB";
              variant = "Rev2.0 silicon";
              vendor = "NXP";
            }
          ];
        };
        fsl_lx2160a-rdb-sdboot = {
          device_packages = [
            "~layerscape-mc"
            "~layerscape-dpl"
            "~layerscape-ddr-phy"
            "~trusted-firmware-a-lx2160a-rdb-sdboot"
            "restool"
          ];
          image_prefix = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_lx2160a-rdb-sdboot";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_lx2160a-rdb-sdboot-squashfs-sysupgrade.bin";
              sha256 = "bd8823f7ac5801f1242f8ebd448f3e1dc6bc2977dbedc5f590baa1e2d8bb8ce9";
              sha256_unsigned = "1ced2a6bf9247f9b05df361e662f9d26c21736e945dfeab2a795ae5bea18fb43";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv8_64b-fsl_lx2160a-rdb-sdboot-squashfs-sdcard.img.gz";
              sha256 = "2e89cdc2081f2ccabe0bd89c07bb66fbea8de8c09515a357d997110967cebec6";
              sha256_unsigned = "2e89cdc2081f2ccabe0bd89c07bb66fbea8de8c09515a357d997110967cebec6";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "fsl,lx2160a-rdb-sdboot"
          ];
          titles = [
            {
              model = "LX2160A-RDB";
              variant = "Rev2.0 silicon SD Card Boot";
              vendor = "NXP";
            }
          ];
        };
        ten64-mtd = {
          device_packages = [
            "uboot-envtools"
            "kmod-rtc-rx8025"
            "kmod-sfp"
            "kmod-i2c-mux-pca954x"
            "restool"
          ];
          image_prefix = "immortalwrt-24.10.1-layerscape-armv8_64b-traverse_ten64_mtd";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv8_64b-traverse_ten64_mtd-squashfs-nand.ubi";
              sha256 = "557dd6a9f4bf91954a6b6e53eb3a9dda9dcf83a9e6337e1f9fcc1f8dfe190545";
              sha256_unsigned = "557dd6a9f4bf91954a6b6e53eb3a9dda9dcf83a9e6337e1f9fcc1f8dfe190545";
              type = "nand";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-layerscape-armv8_64b-traverse_ten64_mtd-squashfs-sysupgrade.bin";
              sha256 = "9cabc75455204d2348db8cf766aaf65a776136af0adc2ea7bcc695d212de6207";
              sha256_unsigned = "bd586bce40873e27f4c031c5763d0cd8dccfc27bd8c2806f930f92a24f054fc7";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "traverse,ten64"
          ];
          titles = [
            {
              model = "Ten64 (NAND boot)";
              vendor = "Traverse";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "layerscape/armv8_64b";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
  };
  loongarch64 = {
    generic = {
      arch_packages = "loongarch64_generic";
      default_packages = [
        "automount"
        "base-files"
        "blkid"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "fdisk"
        "firewall4"
        "fstools"
        "grub2-efi-loongarch64"
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
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "82ab3717934f03532ea3b7fccd67f592";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        generic = {
          device_packages = [
            "kmod-r8169"
            "kmod-drm-amdgpu"
          ];
          image_prefix = "immortalwrt-24.10.1-loongarch64-generic-generic";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-loongarch64-generic-generic-ext4-combined-efi.img.gz";
              sha256 = "6bc02094ddc840d93421c089047955fee9ff55b9d8c75242936a7802c307ee5a";
              sha256_unsigned = "a1977fcc76cdb1d3423465e34f551cbcf079c38a712aee8bffdfa9088008f76d";
              type = "combined-efi";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-loongarch64-generic-generic-ext4-rootfs.img.gz";
              sha256 = "0223a56d2b68956fcb1c9a737555c0e539078f37168fec2826c256c81995a7d0";
              sha256_unsigned = "0223a56d2b68956fcb1c9a737555c0e539078f37168fec2826c256c81995a7d0";
              type = "rootfs";
            }
          ];
          supported_devices = [ ];
          titles = [
            {
              model = "LoongArch64";
              vendor = "Generic";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "loongarch64/generic";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
  };
  malta = { };
  omap = {
    generic = {
      arch_packages = "arm_cortex-a8_vfpv3";
      default_packages = [
        "base-files"
        "block-mount"
        "ca-bundle"
        "default-settings-chn"
        "dnsmasq-full"
        "dropbear"
        "e2fsprogs"
        "firewall4"
        "fstools"
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
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "dda9cbf02d73cd0a7b6ca94089e6dbc6";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        ti_am335x-bone-black = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-omap-generic-ti_am335x-bone-black";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-omap-generic-ti_am335x-bone-black-ext4-sdcard.img.gz";
              sha256 = "3df1ae40dbdb51e20dec7d4f09ae7a6ba045497f75bc936af84fb5fea23408c2";
              sha256_unsigned = "c7b96b34d0267acb9896de7fd5be2ba226174214185f291bf3612198ed3f697b";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-omap-generic-ti_am335x-bone-black-squashfs-sdcard.img.gz";
              sha256 = "c88de3b6c0202ac65028846b16f945964a0c535e724a450f92515d1e73c607d5";
              sha256_unsigned = "12fa0907d5d2d0b38ca9644dd09fc08c9504c232aaa104df157621df1b0ca037";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "ti,am335x-bone-black"
          ];
          titles = [
            {
              model = "AM335x BeagleBone Black";
              vendor = "Texas Instruments";
            }
          ];
        };
        ti_am335x-evm = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-omap-generic-ti_am335x-evm";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-omap-generic-ti_am335x-evm-squashfs-sdcard.img.gz";
              sha256 = "00f250a1032a16caa9f000bcfd34460f6acf0ff936b481e720367fe59a70df5d";
              sha256_unsigned = "563305ab2d13bf72b064df02d21b4bb3d8a157cd643f4d8429c5bf82dbfd76a9";
              type = "sdcard";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-omap-generic-ti_am335x-evm-ext4-sdcard.img.gz";
              sha256 = "ace96b058ca8b7245a9c5496f5ae36071587e36056744dba93f0f4c2c443243b";
              sha256_unsigned = "127d05b0b0621c73652e5495b8ebef4bf788a04edbd2506d9fd87eea170a0a8f";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "ti,am335x-evm"
          ];
          titles = [
            {
              model = "AM335x EVM";
              vendor = "Texas Instruments";
            }
          ];
        };
        ti_omap3-beagle = {
          device_packages = [
            "kmod-usb-net-asix"
            "kmod-usb-net-asix-ax88179"
            "kmod-usb-net-hso"
            "kmod-usb-net-kaweth"
            "kmod-usb-net-pegasus"
            "kmod-usb-net-mcs7830"
            "kmod-usb-net-smsc95xx"
            "kmod-usb-net-dm9601-ether"
          ];
          image_prefix = "immortalwrt-24.10.1-omap-generic-ti_omap3-beagle";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-omap-generic-ti_omap3-beagle-ext4-sdcard.img.gz";
              sha256 = "165928c049790f22515f570b675aab6d488e50c6bb9a5c479489e9d792a56ecc";
              sha256_unsigned = "dc4f36585ddd5b61ba777d5aa16835c13b4e9e85e36e3f5ee632ffd041b9a366";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-omap-generic-ti_omap3-beagle-squashfs-sdcard.img.gz";
              sha256 = "32d48865995713f48f6dd63637df682bdc405e5f52320daa4d04a4d89551d252";
              sha256_unsigned = "f355f11b828b363a157cc18463b881608d42bcfa8fef82f48a0e507c4f00461d";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "ti,omap3-beagle"
          ];
          titles = [
            {
              model = "OMAP3 TI beagleboard";
              vendor = "BeagleBoard.org";
            }
          ];
        };
        ti_omap4-panda = {
          device_packages = [
            "kmod-usb-net-smsc95xx"
          ];
          image_prefix = "immortalwrt-24.10.1-omap-generic-ti_omap4-panda";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-omap-generic-ti_omap4-panda-squashfs-sdcard.img.gz";
              sha256 = "97d3236cca9e406aec6704056874eaa4315947c86e51be4699cb62f1d333d0df";
              sha256_unsigned = "526f06f5bae87f064f5294b6d5eaf3eb5bc1c534b0a2617fc950ea577d0b7df9";
              type = "sdcard";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-omap-generic-ti_omap4-panda-ext4-sdcard.img.gz";
              sha256 = "7d31ea713b33d6363a3b96d260ff05faa647957bd6ed0343b9eeb7787542b85d";
              sha256_unsigned = "5f4b5af5eecbcd205164593787178ecb975c66cf621c56fa92cc9a7d5fec751c";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "ti,omap4-panda"
          ];
          titles = [
            {
              model = "OMAP4 TI pandaboard";
              vendor = "PandaBoard.org";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "omap/generic";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
  };
  ramips = {
    mt76x8 = {
      arch_packages = "mipsel_24kc";
      default_packages = [
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
        "kmod-mt7603"
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
        "mtd"
        "netifd"
        "nftables"
        "odhcp6c"
        "odhcpd-ipv6only"
        "opkg"
        "ppp"
        "ppp-mod-pppoe"
        "swconfig"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
        "wpad-basic-openssl"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "f9a93d50e742ef0e984b799be9b755bc";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        "7links_wlr-1230" = {
          device_packages = [
            "kmod-mt7615e"
            "kmod-mt7663-firmware-ap"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-7links_wlr-1230";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-7links_wlr-1230-squashfs-sysupgrade.bin";
              sha256 = "998038a8ea24a890e8b7ca5100a3bdff6c98b94d814348e484a92e2bb9dd9345";
              sha256_unsigned = "47a23aea0e066ec23049a52ebd4764fc60a96ee8683435e29f03d9f2b19fb798";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-7links_wlr-1230-initramfs-kernel.bin";
              sha256 = "c47fb90820cf8f163d8bea054f896f22097cd5dec87875c08319b5d4f09179e8";
              sha256_unsigned = "c47fb90820cf8f163d8bea054f896f22097cd5dec87875c08319b5d4f09179e8";
              type = "kernel";
            }
          ];
          supported_devices = [
            "7links,wlr-1230"
          ];
          titles = [
            {
              model = "WLR-1230";
              vendor = "7Links";
            }
          ];
        };
        "7links_wlr-1240" = {
          device_packages = [
            "kmod-mt7615e"
            "kmod-mt7663-firmware-ap"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-7links_wlr-1240";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-7links_wlr-1240-squashfs-sysupgrade.bin";
              sha256 = "c2a1119c03fbea17d18deb40374eebc0c64c6c7f4674d8b1e811555dea16510d";
              sha256_unsigned = "116a540e504b86b067aadd3264ac63e53b46f5ecbcef6ce280245bd7303f0ec9";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-7links_wlr-1240-initramfs-kernel.bin";
              sha256 = "85832e2c13c418d8bcbd91bfa281feb17b35835db58f878814e612fb10dbfae4";
              sha256_unsigned = "85832e2c13c418d8bcbd91bfa281feb17b35835db58f878814e612fb10dbfae4";
              type = "kernel";
            }
          ];
          supported_devices = [
            "7links,wlr-1240"
          ];
          titles = [
            {
              model = "WLR-1240";
              vendor = "7Links";
            }
          ];
        };
        alfa-network_awusfree1 = {
          device_packages = [
            "uboot-envtools"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-alfa-network_awusfree1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-alfa-network_awusfree1-initramfs-kernel.bin";
              sha256 = "7ff9e94a64884edc56a4f12d8a0b96a1a572c8e7c5c7fd143081e41fe90f3fc4";
              sha256_unsigned = "7ff9e94a64884edc56a4f12d8a0b96a1a572c8e7c5c7fd143081e41fe90f3fc4";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-alfa-network_awusfree1-squashfs-sysupgrade.bin";
              sha256 = "a8d20f124fec0a87eeda410f5834b05990659d54e476a40278c687e636dd1a90";
              sha256_unsigned = "e9771862ba70d4bc24406ba57288e21ce04154381ca6be57022c1717d2c39a5a";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "alfa-network,awusfree1"
            "awusfree1"
          ];
          titles = [
            {
              model = "AWUSFREE1";
              vendor = "ALFA Network";
            }
          ];
        };
        asus_rt-ac1200 = {
          device_packages = [
            "kmod-mt76x2"
            "kmod-usb2"
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-asus_rt-ac1200";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-asus_rt-ac1200-squashfs-sysupgrade.bin";
              sha256 = "4a4d43b77dcc02f98af8f4bc457e59b0128a5fd3eb2a6350e539cb5570c17b3d";
              sha256_unsigned = "103b1da0375d1fb0989958320eadde2241ac5d165885998622fb095578c3bf3e";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-asus_rt-ac1200-initramfs-kernel.bin";
              sha256 = "92d6f72b7a7db2437bb65a01d5614e7b418627f7b5f8ac3032d36c8afb0a95a2";
              sha256_unsigned = "92d6f72b7a7db2437bb65a01d5614e7b418627f7b5f8ac3032d36c8afb0a95a2";
              type = "kernel";
            }
          ];
          supported_devices = [
            "asus,rt-ac1200"
          ];
          titles = [
            {
              model = "RT-AC1200";
              vendor = "ASUS";
            }
            {
              model = "RT-N600";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-ac1200-v2 = {
          device_packages = [
            "kmod-mt7615e"
            "kmod-mt7663-firmware-ap"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-asus_rt-ac1200-v2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-asus_rt-ac1200-v2-initramfs-kernel.bin";
              sha256 = "84fdbd649d5246ec412d47fd23eb89127a98d699b0b1ddcceb821111b695df0e";
              sha256_unsigned = "84fdbd649d5246ec412d47fd23eb89127a98d699b0b1ddcceb821111b695df0e";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-asus_rt-ac1200-v2-squashfs-sysupgrade.bin";
              sha256 = "a51236ba522f0fe84a7c5b3e3e9c5c816e8f27457609033a81a7b332424a3425";
              sha256_unsigned = "8bef04bd9fa8842422c59b8bae70c8754b8f00b5e1b0565250eec74e12ce9dc8";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-asus_rt-ac1200-v2-squashfs-factory.bin";
              sha256 = "322044e5b9aef191d12b7e7daf7d5b48b18de73ab7db110037e3ce77f053d262";
              sha256_unsigned = "322044e5b9aef191d12b7e7daf7d5b48b18de73ab7db110037e3ce77f053d262";
              type = "factory";
            }
          ];
          supported_devices = [
            "asus,rt-ac1200-v2"
          ];
          titles = [
            {
              model = "RT-AC1200";
              variant = "V2";
              vendor = "ASUS";
            }
            {
              model = "RT-AC750L";
              vendor = "ASUS";
            }
          ];
        };
        asus_rt-n12-vp-b1 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-asus_rt-n12-vp-b1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-asus_rt-n12-vp-b1-squashfs-sysupgrade.bin";
              sha256 = "e5a15df6252c9f092bdf01a09290c0b55b6c1327a5bb290a95b8324c3bb30cec";
              sha256_unsigned = "2a5c51554ed18f1f9a5f7cc37c25e38f17be6a3aceb06d959eb429f937bb3b60";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-asus_rt-n12-vp-b1-initramfs-kernel.bin";
              sha256 = "9bb34279ea327e3154dcfd65b2584defbd5970b3e1d26e1d56a92fbca487151b";
              sha256_unsigned = "9bb34279ea327e3154dcfd65b2584defbd5970b3e1d26e1d56a92fbca487151b";
              type = "kernel";
            }
          ];
          supported_devices = [
            "asus,rt-n12-vp-b1"
          ];
          titles = [
            {
              model = "RT-N12 VP";
              variant = "B1";
              vendor = "ASUS";
            }
          ];
        };
        buffalo_wcr-1166ds = {
          device_packages = [
            "kmod-mt76x2"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-buffalo_wcr-1166ds";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-buffalo_wcr-1166ds-squashfs-sysupgrade.bin";
              sha256 = "94c300eebfce961ed4572eca69b4c7626211b6c824a2be383679f6ce9a73463a";
              sha256_unsigned = "628aa75850f0033907e609d1667535899f931325f0b286355d015c490ff54f7c";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-buffalo_wcr-1166ds-initramfs-kernel.bin";
              sha256 = "c9995a9efe456b1fa929423b60d25a25e892f503f4589a152e560055e49ba597";
              sha256_unsigned = "c9995a9efe456b1fa929423b60d25a25e892f503f4589a152e560055e49ba597";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-buffalo_wcr-1166ds-squashfs-factory.bin";
              sha256 = "309eb0732794b076e59cb89470f07fe51f01253a9785ec3d539a2eba64915895";
              sha256_unsigned = "628aa75850f0033907e609d1667535899f931325f0b286355d015c490ff54f7c";
              type = "factory";
            }
          ];
          supported_devices = [
            "buffalo,wcr-1166ds"
            "wcr-1166ds"
          ];
          titles = [
            {
              model = "WCR-1166DS";
              vendor = "Buffalo";
            }
          ];
        };
        comfast_cf-wr617ac = {
          device_packages = [
            "kmod-mt76x2"
            "kmod-rt2800-pci"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-comfast_cf-wr617ac";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-comfast_cf-wr617ac-initramfs-kernel.bin";
              sha256 = "5e7924b84a7bb9423cefc7ef7f5de8f60b3f0166988e7a5d4924bd2f9bddb3b7";
              sha256_unsigned = "5e7924b84a7bb9423cefc7ef7f5de8f60b3f0166988e7a5d4924bd2f9bddb3b7";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-comfast_cf-wr617ac-squashfs-sysupgrade.bin";
              sha256 = "fe9d53f6ee078e247068df9975cf39594d5c1971a93b0c5a8d319105394f2eee";
              sha256_unsigned = "d7f95cd5e6f62b2be9f1dff9b3abb8c6d7c8c8eedbd0f48675c3c62dac363d28";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "comfast,cf-wr617ac"
          ];
          titles = [
            {
              model = "CF-WR617AC";
              vendor = "COMFAST";
            }
          ];
        };
        comfast_cf-wr758ac-v1 = {
          device_packages = [
            "kmod-mt76x2"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-comfast_cf-wr758ac-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-comfast_cf-wr758ac-v1-squashfs-sysupgrade.bin";
              sha256 = "8da4063b3e5514d8e9e1cd70eacd5ff90cff7e484fb1c8ef94089386c389fb12";
              sha256_unsigned = "ad57cc6dc61057f1994285f7ff9c303649aaf78dd5c53cbaf6592281d1a46d28";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-comfast_cf-wr758ac-v1-initramfs-kernel.bin";
              sha256 = "e03f53394ef850d46491c611be612aaf0378712b49df02dfb95a39927ddd46db";
              sha256_unsigned = "e03f53394ef850d46491c611be612aaf0378712b49df02dfb95a39927ddd46db";
              type = "kernel";
            }
          ];
          supported_devices = [
            "comfast,cf-wr758ac-v1"
            "joowin,jw-wr758ac-v1"
          ];
          titles = [
            {
              model = "CF-WR758AC";
              variant = "V1";
              vendor = "COMFAST";
            }
            {
              model = "JW-WR758AC";
              variant = "V1";
              vendor = "Joowin";
            }
          ];
        };
        comfast_cf-wr758ac-v2 = {
          device_packages = [
            "kmod-mt7615e"
            "kmod-mt7663-firmware-ap"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-comfast_cf-wr758ac-v2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-comfast_cf-wr758ac-v2-initramfs-kernel.bin";
              sha256 = "620486f4a2992a03300791ba076d599db1f04d866d8d9a29b42d359a17c7e6ae";
              sha256_unsigned = "620486f4a2992a03300791ba076d599db1f04d866d8d9a29b42d359a17c7e6ae";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-comfast_cf-wr758ac-v2-squashfs-sysupgrade.bin";
              sha256 = "5db33b4eea4a246011d62ea3c29f9bee4ca8d819ca853b3d76ff44e95420871e";
              sha256_unsigned = "b6623f349836bce56d6baaf02b05f3779a6459f3f37c39c9e68a667f5584f573";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "comfast,cf-wr758ac-v2"
            "joowin,jw-wr758ac-v2"
          ];
          titles = [
            {
              model = "CF-WR758AC";
              variant = "V2";
              vendor = "COMFAST";
            }
            {
              model = "JW-WR758AC";
              variant = "V2";
              vendor = "Joowin";
            }
          ];
        };
        cudy_m1200-v1 = {
          device_packages = [
            "kmod-mt7615e"
            "kmod-mt7663-firmware-ap"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-cudy_m1200-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-cudy_m1200-v1-initramfs-kernel.bin";
              sha256 = "06869920eaabf3967c36955740e356299853f5e3bd894e7168a296d5a38b5e86";
              sha256_unsigned = "06869920eaabf3967c36955740e356299853f5e3bd894e7168a296d5a38b5e86";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-cudy_m1200-v1-squashfs-sysupgrade.bin";
              sha256 = "ed92dfeef3e2e3289af91dc18396d719665583797d00784d082b15d15a58a9e1";
              sha256_unsigned = "5618e092d58fb89d1982e1eba4feaea3fc3ea764fa45025d8b577dfb99f38a06";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "cudy,m1200-v1"
            "R22"
          ];
          titles = [
            {
              model = "M1200";
              variant = "v1";
              vendor = "Cudy";
            }
          ];
        };
        cudy_tr1200-v1 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-mt7615e"
            "kmod-mt7663-firmware-ap"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-cudy_tr1200-v1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-cudy_tr1200-v1-squashfs-sysupgrade.bin";
              sha256 = "a7d920d17ea842614bf2a8006b74f0d5b3309177ab9cba2d977fbfdcfe335922";
              sha256_unsigned = "8c76c60022705f040059349d7427e47b898aa72b0d8154c7473b38ddab22d1c6";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-cudy_tr1200-v1-initramfs-kernel.bin";
              sha256 = "b3a2701ba6652accb4fe874b775aab22b1f80e1fd109d189d541d2f21a9aaa4c";
              sha256_unsigned = "b3a2701ba6652accb4fe874b775aab22b1f80e1fd109d189d541d2f21a9aaa4c";
              type = "kernel";
            }
          ];
          supported_devices = [
            "cudy,tr1200-v1"
            "R46"
          ];
          titles = [
            {
              model = "TR1200";
              variant = "v1";
              vendor = "Cudy";
            }
          ];
        };
        cudy_wr1000 = {
          device_packages = [
            "kmod-mt76x2"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-cudy_wr1000";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-cudy_wr1000-squashfs-sysupgrade.bin";
              sha256 = "da880b2f5745968fd5fdff859866c152a4ac3d4619d54f473f9a37b1e0a054a4";
              sha256_unsigned = "1b01b655aa4cc072c1b2117bd00d5b26da71b10773ea3984dc8419226c02121a";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-cudy_wr1000-squashfs-factory.bin";
              sha256 = "abbbccd67873f7a620b20d0fe5d84bdd3bc5e228bb0f4fc2a41eca98ccd017cb";
              sha256_unsigned = "abbbccd67873f7a620b20d0fe5d84bdd3bc5e228bb0f4fc2a41eca98ccd017cb";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-cudy_wr1000-initramfs-kernel.bin";
              sha256 = "0fa60bd8031009cc19e8d781cd122e219edd2079f19892a368fe2bdc71c478b0";
              sha256_unsigned = "0fa60bd8031009cc19e8d781cd122e219edd2079f19892a368fe2bdc71c478b0";
              type = "kernel";
            }
          ];
          supported_devices = [
            "cudy,wr1000"
            "wr1000"
          ];
          titles = [
            {
              model = "WR1000";
              vendor = "Cudy";
            }
          ];
        };
        d-team_pbr-d1 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ohci"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-d-team_pbr-d1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-d-team_pbr-d1-squashfs-sysupgrade.bin";
              sha256 = "8612345706e2e5dadf13a0c99d1ff710c59242432831b01d4c8dc7840b460655";
              sha256_unsigned = "8861ace271001e996830da649774cc8cfe1031e11360f0bf96e3ca72c3b77d87";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-d-team_pbr-d1-initramfs-kernel.bin";
              sha256 = "4d73800d8f335bddde2777f2da895306fbe8a117244fdec38a4e26cc40af4cee";
              sha256_unsigned = "4d73800d8f335bddde2777f2da895306fbe8a117244fdec38a4e26cc40af4cee";
              type = "kernel";
            }
          ];
          supported_devices = [
            "d-team,pbr-d1"
            "pbr-d1"
          ];
          titles = [
            {
              model = "PBR-D1";
              vendor = "PandoraBox";
            }
          ];
        };
        dlink_dap-1325-a1 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-dlink_dap-1325-a1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-dlink_dap-1325-a1-squashfs-sysupgrade.bin";
              sha256 = "869da99c81e98303514af951c86136896c55368b3e404c576f961e29d4b2ef45";
              sha256_unsigned = "9c129159fe7f1546de461daf241018075a61f9dbf09ccf8d4684e8d838d7f957";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-dlink_dap-1325-a1-initramfs-kernel.bin";
              sha256 = "98c77969ca5e0cebdafa29f1eab9e6958e913d9bf812c2ea02b336cd4481760b";
              sha256_unsigned = "98c77969ca5e0cebdafa29f1eab9e6958e913d9bf812c2ea02b336cd4481760b";
              type = "kernel";
            }
          ];
          supported_devices = [
            "dlink,dap-1325-a1"
          ];
          titles = [
            {
              model = "DAP-1325 A1";
              vendor = "D-Link";
            }
          ];
        };
        duzun_dm06 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-duzun_dm06";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-duzun_dm06-initramfs-kernel.bin";
              sha256 = "cdd4c734aea1ecbcec103434112530ba2868b5769fa123a3674c8efbd6f8ea66";
              sha256_unsigned = "cdd4c734aea1ecbcec103434112530ba2868b5769fa123a3674c8efbd6f8ea66";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-duzun_dm06-squashfs-sysupgrade.bin";
              sha256 = "685decc457fedb77742ddfee32cd7498a8afc308569024def3ae8a8b03c372f5";
              sha256_unsigned = "fe27096bc1ec0a26f17bfb2a494f3cfad49bf5eb02be20eda6b5fc680aea31a3";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "duzun,dm06"
            "duzun-dm06"
          ];
          titles = [
            {
              model = "DM06";
              vendor = "DuZun";
            }
          ];
        };
        glinet_gl-mt300n-v2 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ohci"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-glinet_gl-mt300n-v2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-glinet_gl-mt300n-v2-initramfs-kernel.bin";
              sha256 = "7c7106663b3782b06882af22b8a3732edc00e4fbec172b80aadad37fa98f85e6";
              sha256_unsigned = "7c7106663b3782b06882af22b8a3732edc00e4fbec172b80aadad37fa98f85e6";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-glinet_gl-mt300n-v2-squashfs-sysupgrade.bin";
              sha256 = "6dcac38aea73a46213598dc1f225da9eefb770faa20616e4401cccca637b3037";
              sha256_unsigned = "1fcaa4f590a7db34bef0930d6f3c252e8e1180e883674b5653b9ef4d0295d8e3";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "glinet,gl-mt300n-v2"
            "gl-mt300n-v2"
          ];
          titles = [
            {
              model = "GL-MT300N";
              variant = "V2";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_microuter-n300 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-glinet_microuter-n300";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-glinet_microuter-n300-initramfs-kernel.bin";
              sha256 = "525e27b1e325bfee3c9c70562dacb2b87f9e39b6a99824dd9688c9aa64d5f499";
              sha256_unsigned = "525e27b1e325bfee3c9c70562dacb2b87f9e39b6a99824dd9688c9aa64d5f499";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-glinet_microuter-n300-squashfs-sysupgrade.bin";
              sha256 = "52ec28ae4afc15d73b6a84ef1e6cb7f31b565e5ccad534467e926d1c89fc00e9";
              sha256_unsigned = "aa8eb2be1873efa5ca9268d6e8343d2233d6dc801843fb36e68e03abc9698dce";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "glinet,microuter-n300"
            "microuter-n300"
          ];
          titles = [
            {
              model = "microuter-N300";
              vendor = "GL.iNet";
            }
          ];
        };
        glinet_vixmini = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-glinet_vixmini";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-glinet_vixmini-squashfs-sysupgrade.bin";
              sha256 = "d60a2aa4354b144cc961f1dc4456c2d57141fc1ae49b2c297fe04497c2c38b70";
              sha256_unsigned = "9e800232d9a49aec81adfdac240045dda5ef18d85388fff5086ef050e32ee542";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-glinet_vixmini-initramfs-kernel.bin";
              sha256 = "b81eeccb74d1bc536a5bb2709c48eb0beeac933e2c8c54214bd0c13e1affdba6";
              sha256_unsigned = "b81eeccb74d1bc536a5bb2709c48eb0beeac933e2c8c54214bd0c13e1affdba6";
              type = "kernel";
            }
          ];
          supported_devices = [
            "glinet,vixmini"
            "vixmini"
          ];
          titles = [
            {
              model = "VIXMINI";
              vendor = "GL.iNet";
            }
          ];
        };
        hak5_wifi-pineapple-mk7 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ohci"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-hak5_wifi-pineapple-mk7";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-hak5_wifi-pineapple-mk7-initramfs-kernel.bin";
              sha256 = "8e8f4da4dbe4a016a9881d1517cd98fa46dfbe960f2b1688c55f90956f3ef750";
              sha256_unsigned = "8e8f4da4dbe4a016a9881d1517cd98fa46dfbe960f2b1688c55f90956f3ef750";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-hak5_wifi-pineapple-mk7-squashfs-sysupgrade.bin";
              sha256 = "90d19b4cd77c623f9474c63eb9671dbdcf98131259df5aa1efd611b552400605";
              sha256_unsigned = "923dcca63bf11ae0bcb32e916d7ce67fec13cc98c7becd295819fc2bdc9101c0";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "hak5,wifi-pineapple-mk7"
            "wifi-pineapple-mk7"
          ];
          titles = [
            {
              model = "WiFi Pineapple Mark 7";
              vendor = "Hak5";
            }
          ];
        };
        hilink_hlk-7628n = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-hilink_hlk-7628n";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-hilink_hlk-7628n-squashfs-sysupgrade.bin";
              sha256 = "026d6ccf1e7783264e8441ccf44940cd7f6ebd5a3d8451f150bb269697e057a6";
              sha256_unsigned = "1d01c32354b795be37fb7d136df18d8bea27e7a61ae88bf8521ab45fcbe82503";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-hilink_hlk-7628n-initramfs-kernel.bin";
              sha256 = "a031b213220b3ad623fbfbc0576edadf9648e041ca8a7fa67ecfa7cc23b3c357";
              sha256_unsigned = "a031b213220b3ad623fbfbc0576edadf9648e041ca8a7fa67ecfa7cc23b3c357";
              type = "kernel";
            }
          ];
          supported_devices = [
            "hilink,hlk-7628n"
          ];
          titles = [
            {
              model = "HLK-7628N";
              vendor = "HILINK";
            }
          ];
        };
        hilink_hlk-7688a = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-hilink_hlk-7688a";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-hilink_hlk-7688a-initramfs-kernel.bin";
              sha256 = "05b919a5eacbfd65efa698586a8cbf1a8003a53cb20224dce55b71ed48656cfe";
              sha256_unsigned = "05b919a5eacbfd65efa698586a8cbf1a8003a53cb20224dce55b71ed48656cfe";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-hilink_hlk-7688a-squashfs-sysupgrade.bin";
              sha256 = "14b38fdc366fdcd329fbfc202613190262bcd42e296d86130f1cc200eace314c";
              sha256_unsigned = "bd8f97f88f9050b57c0e685c062a8be6728aee4eb35631694daf9517bb9fb542";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "hilink,hlk-7688a"
          ];
          titles = [
            {
              model = "HLK-7688A";
              vendor = "Hi-Link";
            }
          ];
        };
        hiwifi_hc5611 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ohci"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-hiwifi_hc5611";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-hiwifi_hc5611-initramfs-kernel.bin";
              sha256 = "a0d3c4a016b4e177f846f23af6a658645b6e0f84908ec49454b8bf26280b9563";
              sha256_unsigned = "a0d3c4a016b4e177f846f23af6a658645b6e0f84908ec49454b8bf26280b9563";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-hiwifi_hc5611-squashfs-sysupgrade.bin";
              sha256 = "20dc52607f928dfd0300e5647e173704f2649c6b5b27d7b3ab81716f7016891a";
              sha256_unsigned = "2ce2c6012cce67f53abc96874286604996623a387be4a792ca37810f44bed05b";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "hiwifi,hc5611"
          ];
          titles = [
            {
              model = "HC5611";
              vendor = "HiWiFi";
            }
          ];
        };
        hiwifi_hc5661a = {
          device_packages = [
            "kmod-mmc-mtk"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-hiwifi_hc5661a";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-hiwifi_hc5661a-squashfs-sysupgrade.bin";
              sha256 = "4f9e0ed1c4fca368511ff24588f21a4c0182dc054cf0eaceccc959d0de98421f";
              sha256_unsigned = "899a26f59f162362cf64b3113af0ab7e0392daefa71b12fa02ed068e6c452add";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-hiwifi_hc5661a-initramfs-kernel.bin";
              sha256 = "135f0072c67a528fa5379f7a36681c495d21b60cebc2faeb99062b0389c396bb";
              sha256_unsigned = "135f0072c67a528fa5379f7a36681c495d21b60cebc2faeb99062b0389c396bb";
              type = "kernel";
            }
          ];
          supported_devices = [
            "hiwifi,hc5661a"
            "hc5661a"
          ];
          titles = [
            {
              model = "HC5661A";
              vendor = "HiWiFi";
            }
          ];
        };
        hiwifi_hc5761a = {
          device_packages = [
            "kmod-mmc-mtk"
            "kmod-mt76x0e"
            "kmod-usb2"
            "kmod-usb-ohci"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-hiwifi_hc5761a";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-hiwifi_hc5761a-initramfs-kernel.bin";
              sha256 = "655609b14742da2922d4ef51a4334231d07b16a5626a29082103fa15232c8663";
              sha256_unsigned = "655609b14742da2922d4ef51a4334231d07b16a5626a29082103fa15232c8663";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-hiwifi_hc5761a-squashfs-sysupgrade.bin";
              sha256 = "b342c02bd690011ed920ea8f02d2be737b08718121dcc9dfffb32e2d1d4df7f3";
              sha256_unsigned = "258e4c2b53b44e4f904941cf7d3c02cbbd75a45f1c6ba0e3e6f09d474f11a90a";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "hiwifi,hc5761a"
          ];
          titles = [
            {
              model = "HC5761A";
              vendor = "HiWiFi";
            }
          ];
        };
        hiwifi_hc5861b = {
          device_packages = [
            "kmod-mt76x2"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-hiwifi_hc5861b";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-hiwifi_hc5861b-squashfs-sysupgrade.bin";
              sha256 = "892957b35ecf4ec2655781f56cd041d319ba2caf07cc1a0eb30dcac306e4fd53";
              sha256_unsigned = "86b4bd9b7507a25b47655cf83b63a1a34ab18f05da044335ec89918e4309c94f";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-hiwifi_hc5861b-initramfs-kernel.bin";
              sha256 = "1051670ddf68a1517b04a3ac8409193857d6363cc39844f61ad92324e67eb08b";
              sha256_unsigned = "1051670ddf68a1517b04a3ac8409193857d6363cc39844f61ad92324e67eb08b";
              type = "kernel";
            }
          ];
          supported_devices = [
            "hiwifi,hc5861b"
          ];
          titles = [
            {
              model = "HC5861B";
              vendor = "HiWiFi";
            }
          ];
        };
        iptime_a3 = {
          device_packages = [
            "kmod-mt76x2"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-iptime_a3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-iptime_a3-squashfs-sysupgrade.bin";
              sha256 = "2b4a59d9d02732f7be641fbd3f5edef71d5b3e48551e71d704c6ef7315ec4653";
              sha256_unsigned = "b748aa935ae034d547b78b073464dd0a79a20916c51f11d755cd6cf3609ec6fd";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-iptime_a3-initramfs-kernel.bin";
              sha256 = "b29cc97c24c1d996f95c26e4724b1adb43fa6664b0682841347bf335c13cb3a8";
              sha256_unsigned = "b29cc97c24c1d996f95c26e4724b1adb43fa6664b0682841347bf335c13cb3a8";
              type = "kernel";
            }
          ];
          supported_devices = [
            "iptime,a3"
          ];
          titles = [
            {
              model = "A3";
              vendor = "ipTIME";
            }
          ];
        };
        iptime_a604m = {
          device_packages = [
            "kmod-mt76x2"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-iptime_a604m";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-iptime_a604m-initramfs-kernel.bin";
              sha256 = "e28caff38fdbf8cd2f28cdd0c4f235a20a2a2ae532f92c6acbdcbec7d0afb308";
              sha256_unsigned = "e28caff38fdbf8cd2f28cdd0c4f235a20a2a2ae532f92c6acbdcbec7d0afb308";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-iptime_a604m-squashfs-sysupgrade.bin";
              sha256 = "a10d2054e2f3787b8b007c38248598d8048959f8237d5239fc1ed5eb132c3959";
              sha256_unsigned = "6c8f7bd3c29c14555761c77b44cde9bd007ce1701ea71aff6efbb2e767d59a16";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "iptime,a604m"
          ];
          titles = [
            {
              model = "A604M";
              vendor = "ipTIME";
            }
          ];
        };
        jotale_js76x8-16m = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ohci"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-jotale_js76x8-16m";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-jotale_js76x8-16m-squashfs-sysupgrade.bin";
              sha256 = "5ec28d725d5eff1857045df5478276706f55e2b15cc7ca36afa690036f263b34";
              sha256_unsigned = "0c4793b72f42df9b75ad8414e10c92458b17e262326180e8489345673e3e5d7f";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-jotale_js76x8-16m-initramfs-kernel.bin";
              sha256 = "f0bca0e1667eed7b139b768f84d82a393ce4cf9458fbad43a1ce7d893154ebb6";
              sha256_unsigned = "f0bca0e1667eed7b139b768f84d82a393ce4cf9458fbad43a1ce7d893154ebb6";
              type = "kernel";
            }
          ];
          supported_devices = [
            "jotale,js76x8-16m"
          ];
          titles = [
            {
              model = "JS76x8";
              variant = "16M";
              vendor = "Jotale";
            }
          ];
        };
        jotale_js76x8-32m = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ohci"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-jotale_js76x8-32m";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-jotale_js76x8-32m-squashfs-sysupgrade.bin";
              sha256 = "1a8d9a4483a67456576112add5cff95904378d0a4e49be8f3a70abec8b3a7fc8";
              sha256_unsigned = "4e1ddc1bdb4544579483c5185239382b4329030997d0a9c8c9fabf257c12ea02";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-jotale_js76x8-32m-initramfs-kernel.bin";
              sha256 = "ae03038a4baa9aac6e39dd762f1b58e59dff8cb66a620ef8c00742b5cf795b2b";
              sha256_unsigned = "ae03038a4baa9aac6e39dd762f1b58e59dff8cb66a620ef8c00742b5cf795b2b";
              type = "kernel";
            }
          ];
          supported_devices = [
            "jotale,js76x8-32m"
          ];
          titles = [
            {
              model = "JS76x8";
              variant = "32M";
              vendor = "Jotale";
            }
          ];
        };
        jotale_js76x8-8m = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ohci"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-jotale_js76x8-8m";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-jotale_js76x8-8m-squashfs-sysupgrade.bin";
              sha256 = "555a198436b64c14a94898211e5dd22a50f219bc55097e1f705a8ea9b34b9f7b";
              sha256_unsigned = "7a80a0099a820668b95f7ca85732b85030138a53d04c286dd78c9269e58c4bda";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-jotale_js76x8-8m-initramfs-kernel.bin";
              sha256 = "e5d1e51d02147b871a9beca4429aaf2937f0f7223425dfa257e9629cd8141f52";
              sha256_unsigned = "e5d1e51d02147b871a9beca4429aaf2937f0f7223425dfa257e9629cd8141f52";
              type = "kernel";
            }
          ];
          supported_devices = [
            "jotale,js76x8-8m"
          ];
          titles = [
            {
              model = "JS76x8";
              variant = "8M";
              vendor = "Jotale";
            }
          ];
        };
        keenetic_kn-1613 = {
          device_packages = [
            "kmod-mt7615e"
            "kmod-mt7663-firmware-ap"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-keenetic_kn-1613";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-keenetic_kn-1613-initramfs-kernel.bin";
              sha256 = "d0030ac841f61d6f9c148d75d7ab0b8a5e052c92d23cc911874c1d014337de34";
              sha256_unsigned = "d0030ac841f61d6f9c148d75d7ab0b8a5e052c92d23cc911874c1d014337de34";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-keenetic_kn-1613-squashfs-sysupgrade.bin";
              sha256 = "1c96a21e8426337956886884e028d9fbb9360d95f7a4946d3cc8a6141aa20db3";
              sha256_unsigned = "45068579c08865d4239ff15361bef7a0a19b39281400301159e5d1702ba4e5bc";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-keenetic_kn-1613-squashfs-factory.bin";
              sha256 = "30e222c2db4f506a8adf281962ab44556b93f2fd093fa8097ac0051689b333ed";
              sha256_unsigned = "30e222c2db4f506a8adf281962ab44556b93f2fd093fa8097ac0051689b333ed";
              type = "factory";
            }
          ];
          supported_devices = [
            "keenetic,kn-1613"
          ];
          titles = [
            {
              model = "KN-1613";
              vendor = "Keenetic";
            }
          ];
        };
        kroks_kndrt31r16 = {
          device_packages = [
            "kmod-usb2"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-kroks_kndrt31r16";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-kroks_kndrt31r16-initramfs-kernel.bin";
              sha256 = "d440d0cbf44e9cbdbd94e687ba7b3931c37ceb18cd0c0e3737fc8a348a2332ff";
              sha256_unsigned = "d440d0cbf44e9cbdbd94e687ba7b3931c37ceb18cd0c0e3737fc8a348a2332ff";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-kroks_kndrt31r16-squashfs-sysupgrade.bin";
              sha256 = "4d63fc9ad80874f4659b0c6ab1dd980c8eb885397811dac3ace6ac04343173fe";
              sha256_unsigned = "cc47161fac9c1733f3815269fa97b39082f4f3560835e9dd7ce8fcb8fe88cd92";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "kroks,kndrt31r16"
            "kndrt31r16"
          ];
          titles = [
            {
              model = "Rt-Cse5 UW DRSIM";
              vendor = "Kroks";
            }
            {
              model = "KNdRt31R16";
              vendor = "Kroks";
            }
          ];
        };
        kroks_kndrt31r19 = {
          device_packages = [
            "kmod-usb2"
            "uqmi"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-kroks_kndrt31r19";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-kroks_kndrt31r19-initramfs-kernel.bin";
              sha256 = "49d149fb67262ccf1f66da098f56be17cb959a6c6c85dd0f8cf22dcf39765ab0";
              sha256_unsigned = "49d149fb67262ccf1f66da098f56be17cb959a6c6c85dd0f8cf22dcf39765ab0";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-kroks_kndrt31r19-squashfs-sysupgrade.bin";
              sha256 = "1394aa4102698ad7ba7aca91916c2fc0867adb7d5746e147297c67ad70f2f0a8";
              sha256_unsigned = "b5a1f7841b433b4451cc774e8b1b64966d5bfce1fe57a522b018e967b6dd35d5";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "kroks,kndrt31r19"
            "kndrt31r19"
          ];
          titles = [
            {
              model = "Rt-Pot mXw DS RSIM";
              vendor = "Kroks";
            }
            {
              model = "KNdRt31R19";
              vendor = "Kroks";
            }
          ];
        };
        linksys_e5400 = {
          device_packages = [
            "kmod-mt76x2"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-linksys_e5400";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-linksys_e5400-initramfs-kernel.bin";
              sha256 = "4af9bed0e930be31d073ad20e168ad10b0f14d630ac29b7ced7a0e742beff2d0";
              sha256_unsigned = "4af9bed0e930be31d073ad20e168ad10b0f14d630ac29b7ced7a0e742beff2d0";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-linksys_e5400-squashfs-sysupgrade.bin";
              sha256 = "5869918055b3c636ab5ec729c75681e89f7d254b2fd39bbe41bf12229a360c42";
              sha256_unsigned = "1773f9385257c0cdbb768e66fdb50ecf03347b596267d3dd51ddf0ad9357f6e9";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "linksys,e5400"
          ];
          titles = [
            {
              model = "E5400";
              vendor = "Linksys";
            }
            {
              model = "E2500";
              variant = "v4";
              vendor = "Linksys";
            }
            {
              model = "E5300";
              vendor = "Linksys";
            }
            {
              model = "E5350";
              vendor = "Linksys";
            }
          ];
        };
        mediatek_linkit-smart-7688 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ohci"
            "uboot-envtools"
            "kmod-mmc-mtk"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-mediatek_linkit-smart-7688";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-mediatek_linkit-smart-7688-initramfs-kernel.bin";
              sha256 = "c57f5f4aac70e580a9312e902206e7983e029220513a102c7f35f7720daa5d10";
              sha256_unsigned = "c57f5f4aac70e580a9312e902206e7983e029220513a102c7f35f7720daa5d10";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-mediatek_linkit-smart-7688-squashfs-sysupgrade.bin";
              sha256 = "2b72bb4deef3fde4a7681717860f61d8abbdb5560e950494870dc800328d3c87";
              sha256_unsigned = "dd831d038dce34a819d2a54e7ec52f9d4d11df9fbbea4b09af5e43a97da0dac0";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "mediatek,linkit-smart-7688"
            "linkits7688"
            "linkits7688d"
          ];
          titles = [
            {
              model = "LinkIt Smart 7688";
              vendor = "MediaTek";
            }
          ];
        };
        mediatek_mt7628an-eval-board = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-mediatek_mt7628an-eval-board";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-mediatek_mt7628an-eval-board-squashfs-sysupgrade.bin";
              sha256 = "18ddee5b26cf87cfea928c92ae56e3f52abc887202165602d05e66404b2b9d29";
              sha256_unsigned = "755177135ec223cdd2ca063f5f9ab5758e1f39d13325d437441c53d3da62d739";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-mediatek_mt7628an-eval-board-initramfs-kernel.bin";
              sha256 = "229d8aea54abb58ced07f653fd3b79ada582010d26204aae4daf28a0567f47fe";
              sha256_unsigned = "229d8aea54abb58ced07f653fd3b79ada582010d26204aae4daf28a0567f47fe";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mediatek,mt7628an-eval-board"
            "mt7628"
          ];
          titles = [
            {
              model = "MT7628 EVB";
              vendor = "MediaTek";
            }
          ];
        };
        mercury_mac1200r-v2 = {
          device_packages = [
            "kmod-mt76x2"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-mercury_mac1200r-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-mercury_mac1200r-v2-squashfs-sysupgrade.bin";
              sha256 = "5a3c4f7eef30d35985fdeb554506a6d865e4fa4531e9931fdeee119ff01ffe70";
              sha256_unsigned = "01615ed6acaa92939c660529c48700e82008dec83353b55c09c12c0eacb0442d";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-mercury_mac1200r-v2-initramfs-kernel.bin";
              sha256 = "b9c0825a401ff9a46a24bd87f5aa0a4003d6ef845949b1dbe2333bdff00a4fde";
              sha256_unsigned = "b9c0825a401ff9a46a24bd87f5aa0a4003d6ef845949b1dbe2333bdff00a4fde";
              type = "kernel";
            }
          ];
          supported_devices = [
            "mercury,mac1200r-v2"
            "mac1200rv2"
          ];
          titles = [
            {
              model = "MAC1200R";
              variant = "v2.0";
              vendor = "Mercury";
            }
          ];
        };
        minew_g1-c = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb-serial-cp210x"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-minew_g1-c";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-minew_g1-c-initramfs-kernel.bin";
              sha256 = "03dedba6eafd485470de9b8fdd1c5115cd5b36ecccb8eb1ef7e4ba88991e797f";
              sha256_unsigned = "03dedba6eafd485470de9b8fdd1c5115cd5b36ecccb8eb1ef7e4ba88991e797f";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-minew_g1-c-squashfs-sysupgrade.bin";
              sha256 = "abf1d3037e833f4c4343614485954801a840257817a2c4f99fc06b9cffca45d2";
              sha256_unsigned = "9785baeb8b51a7021117a48b99a30d964a77807f908baee69341dc99c5730ef5";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "minew,g1-c"
            "minew-g1c"
          ];
          titles = [
            {
              model = "G1-C";
              vendor = "Minew";
            }
          ];
        };
        motorola_mwr03 = {
          device_packages = [
            "kmod-mt76x2"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-motorola_mwr03";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-motorola_mwr03-squashfs-sysupgrade.bin";
              sha256 = "1801ce682ed7d65004ddd9277f7b727536d0668ebe6fe0e22a31832896a32f00";
              sha256_unsigned = "7159dac4f1634a2729edf92b185986c3bd11dde0e64533cb51e1f6558fb94e76";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-motorola_mwr03-initramfs-kernel.bin";
              sha256 = "7c4ab31223f22843a72a0dee29f627901b7bfed905c880652d1a2a7c30d36b91";
              sha256_unsigned = "7c4ab31223f22843a72a0dee29f627901b7bfed905c880652d1a2a7c30d36b91";
              type = "kernel";
            }
          ];
          supported_devices = [
            "motorola,mwr03"
          ];
          titles = [
            {
              model = "MWR03";
              vendor = "Motorola";
            }
          ];
        };
        netgear_r6020 = {
          device_packages = [
            "kmod-mt76x2"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-netgear_r6020";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-netgear_r6020-initramfs-kernel.bin";
              sha256 = "e2fe51f617fe483186b86a0d567ccfb77ea8d677e27ac7a3664e4816209e9d7c";
              sha256_unsigned = "e2fe51f617fe483186b86a0d567ccfb77ea8d677e27ac7a3664e4816209e9d7c";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-netgear_r6020-squashfs-factory.img";
              sha256 = "af683ecd30dbbc399d70074cbc41f8bf39c3e5c044d6e442656c851972e218ac";
              sha256_unsigned = "af683ecd30dbbc399d70074cbc41f8bf39c3e5c044d6e442656c851972e218ac";
              type = "factory";
            }
          ];
          supported_devices = [
            "netgear,r6020"
          ];
          titles = [
            {
              model = "R6020";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_r6080 = {
          device_packages = [
            "kmod-mt76x2"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-netgear_r6080";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-netgear_r6080-squashfs-sysupgrade.bin";
              sha256 = "ded5eca1174a3db3d45c3d3d3b89ddc50e6f02392047ae8bfda9e3b1e288fb33";
              sha256_unsigned = "c8ceffc1db72b1cf78f29625b4fe681a82468483b1e55ad15f9d4c15ea631cd8";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-netgear_r6080-initramfs-kernel.bin";
              sha256 = "aac197a1227abf274fa3cef8badb59512be5fc269821c1bd1eca52b69d377d48";
              sha256_unsigned = "aac197a1227abf274fa3cef8badb59512be5fc269821c1bd1eca52b69d377d48";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-netgear_r6080-squashfs-factory.img";
              sha256 = "2d0722ab27902e0a98b34b3086746125439a83d8843b3cc8486b02e688ed49be";
              sha256_unsigned = "2d0722ab27902e0a98b34b3086746125439a83d8843b3cc8486b02e688ed49be";
              type = "factory";
            }
          ];
          supported_devices = [
            "netgear,r6080"
          ];
          titles = [
            {
              model = "R6080";
              vendor = "NETGEAR";
            }
          ];
        };
        netgear_r6120 = {
          device_packages = [
            "kmod-mt76x2"
            "kmod-usb2"
            "kmod-usb-ohci"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-netgear_r6120";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-netgear_r6120-squashfs-sysupgrade.bin";
              sha256 = "bc45a1c82c4adef9d66c36876501c13f2af3e55d1970c692ee32d6e886a7559f";
              sha256_unsigned = "2e3c384cb9dc65243744d7de13f74d604933531975e2ee5a1769292a34637c0b";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-netgear_r6120-squashfs-factory.img";
              sha256 = "8a72681d2fe0be551e1ade32cb1de85eb816323df7ce7722df9ee1d62870db61";
              sha256_unsigned = "8a72681d2fe0be551e1ade32cb1de85eb816323df7ce7722df9ee1d62870db61";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-netgear_r6120-initramfs-kernel.bin";
              sha256 = "d2fd1cf70ec6cd9cb586f9d811b22dcf3deea756b5d9aa2da527c3b5b1173d83";
              sha256_unsigned = "d2fd1cf70ec6cd9cb586f9d811b22dcf3deea756b5d9aa2da527c3b5b1173d83";
              type = "kernel";
            }
          ];
          supported_devices = [
            "netgear,r6120"
          ];
          titles = [
            {
              model = "R6120";
              vendor = "NETGEAR";
            }
          ];
        };
        onion_omega2 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ohci"
            "uboot-envtools"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-onion_omega2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-onion_omega2-initramfs-kernel.bin";
              sha256 = "fe08369b4d31e81a50ea231d02674f279f1b0edebd9dd85660d7ef9e03e9c8b9";
              sha256_unsigned = "fe08369b4d31e81a50ea231d02674f279f1b0edebd9dd85660d7ef9e03e9c8b9";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-onion_omega2-squashfs-sysupgrade.bin";
              sha256 = "b9e07a0023550449ad895e19fbbe37114a2cd8c67e2b58b5beeec52f2cb569c0";
              sha256_unsigned = "fda3da5718adf9351fa49f69ce326cec5bfac0473e5f4e5a16784e9115d2dded";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "onion,omega2"
            "omega2"
          ];
          titles = [
            {
              model = "Omega2";
              vendor = "Onion";
            }
          ];
        };
        onion_omega2p = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ohci"
            "uboot-envtools"
            "kmod-mmc-mtk"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-onion_omega2p";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-onion_omega2p-initramfs-kernel.bin";
              sha256 = "d73be9814f64718b59140518a9ef27c3e670f4d092e2c98bd01dd03e6eb7dc84";
              sha256_unsigned = "d73be9814f64718b59140518a9ef27c3e670f4d092e2c98bd01dd03e6eb7dc84";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-onion_omega2p-squashfs-sysupgrade.bin";
              sha256 = "f5bacb6fa366059c0d0ef3baa27f04af050b9af078460b14e876f2211e615acd";
              sha256_unsigned = "34f85f39266b0b3fe20c0fae0a1f138351cecdd3c799debacc0f6bbb2333d1c7";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "onion,omega2p"
            "omega2p"
          ];
          titles = [
            {
              model = "Omega2+";
              vendor = "Onion";
            }
          ];
        };
        oraybox_x1 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ohci"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-oraybox_x1";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-oraybox_x1-squashfs-sysupgrade.bin";
              sha256 = "469958da0bc7b15d81db9f60d7c7935ba4884c5573db4290fd3d8f4c62f68b6f";
              sha256_unsigned = "97cbfc1f686d4cc07428ec3551e9a1dd2d44e93e7f7b19e0b870dc0d27f8ca90";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-oraybox_x1-initramfs-kernel.bin";
              sha256 = "93be00d51c78592beb5f24a21473d451bb0341cac4ca6f6ab8820b0654ca9ed0";
              sha256_unsigned = "93be00d51c78592beb5f24a21473d451bb0341cac4ca6f6ab8820b0654ca9ed0";
              type = "kernel";
            }
          ];
          supported_devices = [
            "oraybox,x1"
          ];
          titles = [
            {
              model = "X1";
              vendor = "OrayBox";
            }
          ];
        };
        rakwireless_rak633 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ohci"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-rakwireless_rak633";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-rakwireless_rak633-squashfs-sysupgrade.bin";
              sha256 = "3c68429d7b32241d8664343ad051ff8bad3a943efe1a162a363fc9c1434caf4d";
              sha256_unsigned = "78145948ec668d1041d138360dc04df4ed3af89ef2f80dd495c977844e1e7a7a";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-rakwireless_rak633-initramfs-kernel.bin";
              sha256 = "83f78f507c15cc6d5f38cb4f3a50f3049b7d6c5b8a8edde6e54452f08eb6b49b";
              sha256_unsigned = "83f78f507c15cc6d5f38cb4f3a50f3049b7d6c5b8a8edde6e54452f08eb6b49b";
              type = "kernel";
            }
          ];
          supported_devices = [
            "rakwireless,rak633"
          ];
          titles = [
            {
              model = "RAK633";
              vendor = "Rakwireless";
            }
          ];
        };
        ravpower_rp-wd009 = {
          device_packages = [
            "kmod-mt76x0e"
            "kmod-usb2"
            "kmod-usb-ohci"
            "kmod-mmc-mtk"
            "kmod-i2c-mt7628"
            "ravpower-mcu"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-ravpower_rp-wd009";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-ravpower_rp-wd009-initramfs-kernel.bin";
              sha256 = "702ab6a1770fd0798a1bdb2534a693acc75fa20a01162871855349197c0ae482";
              sha256_unsigned = "702ab6a1770fd0798a1bdb2534a693acc75fa20a01162871855349197c0ae482";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-ravpower_rp-wd009-squashfs-sysupgrade.bin";
              sha256 = "f8b0273086e63e62f02d1742e4a826823adf6632edf96ef01d32c6290c9e5dbe";
              sha256_unsigned = "0bdc804830db7b9dcc325f02675b8bddc598ab336599347158c4c59abba8a53d";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-ravpower_rp-wd009-squashfs-factory.bin";
              sha256 = "8a9c99ac0ca4d3cb93a161ed41732ae6288db575f3e6984deccae492b91d522d";
              sha256_unsigned = "8a9c99ac0ca4d3cb93a161ed41732ae6288db575f3e6984deccae492b91d522d";
              type = "factory";
            }
          ];
          supported_devices = [
            "ravpower,rp-wd009"
          ];
          titles = [
            {
              model = "RP-WD009";
              vendor = "RAVPower";
            }
          ];
        };
        skylab_skw92a = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ohci"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-skylab_skw92a";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-skylab_skw92a-squashfs-sysupgrade.bin";
              sha256 = "f5e7473c9eb8f2521bc3049dbaed9780e948f2dead2850e562facd43196c79b7";
              sha256_unsigned = "c1c0614f80479ff77011c3ebee86b8a54005c41a847ea21029f903a7222e645d";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-skylab_skw92a-initramfs-kernel.bin";
              sha256 = "b3ddfb9e87ca1a882a6b26eb22506fe1e6cd56849d7ea542610b1dbf9c5135c7";
              sha256_unsigned = "b3ddfb9e87ca1a882a6b26eb22506fe1e6cd56849d7ea542610b1dbf9c5135c7";
              type = "kernel";
            }
          ];
          supported_devices = [
            "skylab,skw92a"
          ];
          titles = [
            {
              model = "SKW92A";
              vendor = "Skylab";
            }
          ];
        };
        tama_w06 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ohci"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-tama_w06";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tama_w06-initramfs-kernel.bin";
              sha256 = "6e8f94cb1edba7dbf8d6b27c97f3c78ef38e7ab223429d8721056956b940ca4b";
              sha256_unsigned = "6e8f94cb1edba7dbf8d6b27c97f3c78ef38e7ab223429d8721056956b940ca4b";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tama_w06-squashfs-sysupgrade.bin";
              sha256 = "9be54b6f8e5665e5c180b7b79eee11ba723f58e9330a383e8bbb2e6d4c933aae";
              sha256_unsigned = "facd49218dc018ec7cc47a633a202544cce629f8703cfb7128af2f99bdc6fbbf";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "tama,w06"
          ];
          titles = [
            {
              model = "W06";
              vendor = "Tama";
            }
          ];
        };
        totolink_a3 = {
          device_packages = [
            "kmod-mt76x2"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-totolink_a3";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-totolink_a3-initramfs-kernel.bin";
              sha256 = "87b7d6a0b0449a759a3e39c8d71730ba0af4b2486a247d03514236bda7e6d2fe";
              sha256_unsigned = "87b7d6a0b0449a759a3e39c8d71730ba0af4b2486a247d03514236bda7e6d2fe";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-totolink_a3-squashfs-sysupgrade.bin";
              sha256 = "0e974812815621a948728cfab6cac4ad3552be17d620816270a03ef8a7f3dbeb";
              sha256_unsigned = "a05146a419d97c131336c67f4c7afe23d23f176dabb327675898deb500fe7fec";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "totolink,a3"
          ];
          titles = [
            {
              model = "A3";
              vendor = "TOTOLINK";
            }
          ];
        };
        totolink_lr1200 = {
          device_packages = [
            "kmod-mt76x2"
            "kmod-usb2"
            "uqmi"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-totolink_lr1200";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-totolink_lr1200-initramfs-kernel.bin";
              sha256 = "a9f4a25028df8a5b8750574d5dacacae05f0e933828f3820b84fe488a39f7100";
              sha256_unsigned = "a9f4a25028df8a5b8750574d5dacacae05f0e933828f3820b84fe488a39f7100";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-totolink_lr1200-squashfs-sysupgrade.bin";
              sha256 = "2574fea20ec26beb88f8d74d35366d83fea7e76d191b0e4a462a5d005343ab62";
              sha256_unsigned = "0d44b145cb19d32b85f9424d1b6f70bbc21f721019d54b14d8e9ba56995af728";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "totolink,lr1200"
          ];
          titles = [
            {
              model = "LR1200";
              vendor = "TOTOLINK";
            }
          ];
        };
        tplink_archer-c20-v4 = {
          device_packages = [
            "kmod-mt76x0e"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-tplink_archer-c20-v4";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_archer-c20-v4-squashfs-sysupgrade.bin";
              sha256 = "8aab861eb1085d65977f2cbff235515f025e33b5fc46580eb457ad176eb907a6";
              sha256_unsigned = "6c20e5b1d8e3e984e39ecbadc01ccbcfa9fc01a38c0ead8c0885b4d0179c2ee9";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_archer-c20-v4-squashfs-tftp-recovery.bin";
              sha256 = "700eabaed99cc32d8362d1b8b25f11bf5bc037675750b95670328b7b9085b9b2";
              sha256_unsigned = "700eabaed99cc32d8362d1b8b25f11bf5bc037675750b95670328b7b9085b9b2";
              type = "tftp-recovery";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_archer-c20-v4-initramfs-kernel.bin";
              sha256 = "bf1ffbcfb86a6700c6b7493ef490810bf8f42bec67d38f4731e0fce24fdcf5a8";
              sha256_unsigned = "bf1ffbcfb86a6700c6b7493ef490810bf8f42bec67d38f4731e0fce24fdcf5a8";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,archer-c20-v4"
            "tplink,c20-v4"
          ];
          titles = [
            {
              model = "Archer C20";
              variant = "v4";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_archer-c50-v3 = {
          device_packages = [
            "kmod-mt76x2"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-tplink_archer-c50-v3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_archer-c50-v3-squashfs-tftp-recovery.bin";
              sha256 = "a10d30fa341bba152fb8a57657a3e3a8c37ac6d0c02969636a5c69c3424b0a77";
              sha256_unsigned = "a10d30fa341bba152fb8a57657a3e3a8c37ac6d0c02969636a5c69c3424b0a77";
              type = "tftp-recovery";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_archer-c50-v3-initramfs-kernel.bin";
              sha256 = "11c1b9b536ed7023d77651fe6b61669a49f0b124bd68a4daf49a4c21f063fe73";
              sha256_unsigned = "11c1b9b536ed7023d77651fe6b61669a49f0b124bd68a4daf49a4c21f063fe73";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_archer-c50-v3-squashfs-sysupgrade.bin";
              sha256 = "17f1c923770660bc567e26b6fbf8e02df7372ba7dcbf4b5510e440f92904dc50";
              sha256_unsigned = "4a9ca29c9c307ced1b2631dd70f249eb2cec46d22867f99b50a698bffa73b8e4";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "tplink,archer-c50-v3"
            "tplink,c50-v3"
          ];
          titles = [
            {
              model = "Archer C50";
              variant = "v3";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_archer-mr200-v5 = {
          device_packages = [
            "kmod-mt76x0e"
            "uqmi"
            "kmod-usb2"
            "kmod-usb-serial-option"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-tplink_archer-mr200-v5";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_archer-mr200-v5-initramfs-kernel.bin";
              sha256 = "f41af69b3523fdd0b4f3b6f7887cd7c0401d34ec40b4839458813567d0c8d514";
              sha256_unsigned = "f41af69b3523fdd0b4f3b6f7887cd7c0401d34ec40b4839458813567d0c8d514";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_archer-mr200-v5-squashfs-sysupgrade.bin";
              sha256 = "e6bde2600e8ec99d7dcea4168c5a3080c23e9ad2dc8af1256fd4604ed55b613a";
              sha256_unsigned = "019a378c40fe34b321afdd91337a50b23277c2a8bc0a9da49de27bb634efc686";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_archer-mr200-v5-squashfs-tftp-recovery.bin";
              sha256 = "3e89cbef50479be15a6132a747f953e8d097ebcb10c70304d6d24397aca7985a";
              sha256_unsigned = "3e89cbef50479be15a6132a747f953e8d097ebcb10c70304d6d24397aca7985a";
              type = "tftp-recovery";
            }
          ];
          supported_devices = [
            "tplink,archer-mr200-v5"
          ];
          titles = [
            {
              model = "Archer MR200";
              variant = "v5";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_re200-v2 = {
          device_packages = [
            "kmod-mt76x0e"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-tplink_re200-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_re200-v2-squashfs-sysupgrade.bin";
              sha256 = "f12ed3a9390eb101add196b804486cbcd7ab1e79251a53f4d4d4f47fe06fa768";
              sha256_unsigned = "75e24293436ecd566a75e1203163e5b24f632117d4b745e951fea6f97fece795";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_re200-v2-squashfs-factory.bin";
              sha256 = "4f8a982ef1bbf7b6eaee3b2e0a5db99b3abd8d388f2314dc5e5cc4313e46c00e";
              sha256_unsigned = "4f8a982ef1bbf7b6eaee3b2e0a5db99b3abd8d388f2314dc5e5cc4313e46c00e";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_re200-v2-initramfs-kernel.bin";
              sha256 = "d415994daf4585f4cf131168a60aacfe3b82dff5b4856f2b9b5b9d084ea7dc34";
              sha256_unsigned = "d415994daf4585f4cf131168a60aacfe3b82dff5b4856f2b9b5b9d084ea7dc34";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,re200-v2"
          ];
          titles = [
            {
              model = "RE200";
              variant = "v2";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_re200-v3 = {
          device_packages = [
            "kmod-mt76x0e"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-tplink_re200-v3";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_re200-v3-initramfs-kernel.bin";
              sha256 = "8323da1790744e5d85b0fe030b081cb5c77a113c20c024d7f99813807de82135";
              sha256_unsigned = "8323da1790744e5d85b0fe030b081cb5c77a113c20c024d7f99813807de82135";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_re200-v3-squashfs-factory.bin";
              sha256 = "fcffddfac5a132e1a01155928b36a60b09400675993798cb02a65977b8a466f0";
              sha256_unsigned = "fcffddfac5a132e1a01155928b36a60b09400675993798cb02a65977b8a466f0";
              type = "factory";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_re200-v3-squashfs-sysupgrade.bin";
              sha256 = "85a8c56cbb14b6d150f7e03eb3e340cab566302ce6dd90d0869696aae8432b48";
              sha256_unsigned = "a20e90f7ca1bef7e7dc7fab206fa40cb8d1a3d71ff7bea64b039f8151801e902";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "tplink,re200-v3"
          ];
          titles = [
            {
              model = "RE200";
              variant = "v3";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_re200-v4 = {
          device_packages = [
            "kmod-mt76x0e"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-tplink_re200-v4";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_re200-v4-squashfs-sysupgrade.bin";
              sha256 = "2a7eedf2208b419a31cfc513f05e07bbc921b10858fccb55e34817c7106039ad";
              sha256_unsigned = "7ba048820aa295889fbb44ce52fefe144e24e62a8f27a3113bb1d7bf7bad8ba0";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_re200-v4-squashfs-factory.bin";
              sha256 = "9a57ea8aa6486433afbc5fc08d895bd82a38cdee8d870d454e571f7ca10b2b85";
              sha256_unsigned = "9a57ea8aa6486433afbc5fc08d895bd82a38cdee8d870d454e571f7ca10b2b85";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_re200-v4-initramfs-kernel.bin";
              sha256 = "149444b7b15c147a6c423c933f2cbf334c9fd63a064c660f74d629aa5715f29f";
              sha256_unsigned = "149444b7b15c147a6c423c933f2cbf334c9fd63a064c660f74d629aa5715f29f";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,re200-v4"
          ];
          titles = [
            {
              model = "RE200";
              variant = "v4";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_re205-v3 = {
          device_packages = [
            "kmod-mt76x0e"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-tplink_re205-v3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_re205-v3-squashfs-sysupgrade.bin";
              sha256 = "64a5846b926212d2a0635fcbc344e74fa9ad57c90f5772c077867e6478b514b3";
              sha256_unsigned = "89d872e14ef167cd81fc00e86a9ed9f7bc625eeae95467f8b099eb0cde5e300e";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_re205-v3-initramfs-kernel.bin";
              sha256 = "87be67cfd16533d2266f7d828d3dbe87ef7fa16fac46b992653205ad74bd84c0";
              sha256_unsigned = "87be67cfd16533d2266f7d828d3dbe87ef7fa16fac46b992653205ad74bd84c0";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_re205-v3-squashfs-factory.bin";
              sha256 = "b9c7885a23b2154977969bf5015b38b6b511e6f85e80a68efe4fec86b1793fa9";
              sha256_unsigned = "b9c7885a23b2154977969bf5015b38b6b511e6f85e80a68efe4fec86b1793fa9";
              type = "factory";
            }
          ];
          supported_devices = [
            "tplink,re205-v3"
          ];
          titles = [
            {
              model = "RE205";
              variant = "v3";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_re220-v2 = {
          device_packages = [
            "kmod-mt76x0e"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-tplink_re220-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_re220-v2-squashfs-sysupgrade.bin";
              sha256 = "d196094177934b66c5e97c93671ac971f57b5067e01c731fac1cfc84762d6577";
              sha256_unsigned = "d6db322365a0f6dfef2185f529810ad23f317bda2b5bc3e728845f7563c42be2";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_re220-v2-initramfs-kernel.bin";
              sha256 = "9fa6dda1727233d375f54678f939cc9f8c9d21b8a3fb002a261747037ace90f6";
              sha256_unsigned = "9fa6dda1727233d375f54678f939cc9f8c9d21b8a3fb002a261747037ace90f6";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_re220-v2-squashfs-factory.bin";
              sha256 = "faa0c6cdd43c9f3ff44cbba2abe103bffe5d9bcb880bd7bbc231daace2af822d";
              sha256_unsigned = "faa0c6cdd43c9f3ff44cbba2abe103bffe5d9bcb880bd7bbc231daace2af822d";
              type = "factory";
            }
          ];
          supported_devices = [
            "tplink,re220-v2"
          ];
          titles = [
            {
              model = "RE220";
              variant = "v2";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_re305-v1 = {
          device_packages = [
            "kmod-mt76x2"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-tplink_re305-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_re305-v1-initramfs-kernel.bin";
              sha256 = "e5ce016e4b5824338f990cb48ed02a22a9f7ec64864e11529f6fd98202b8c1d0";
              sha256_unsigned = "e5ce016e4b5824338f990cb48ed02a22a9f7ec64864e11529f6fd98202b8c1d0";
              type = "kernel";
            }
          ];
          supported_devices = [
            "tplink,re305-v1"
          ];
          titles = [
            {
              model = "RE305";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_re305-v3 = {
          device_packages = [
            "kmod-mt76x2"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-tplink_re305-v3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_re305-v3-squashfs-factory.bin";
              sha256 = "7a973a2820f5783842cae7f174ee7897dc7b12eb7214f9a25f9c1e097cc7bd54";
              sha256_unsigned = "7a973a2820f5783842cae7f174ee7897dc7b12eb7214f9a25f9c1e097cc7bd54";
              type = "factory";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_re305-v3-initramfs-kernel.bin";
              sha256 = "8c3f2e5156938cc1327445363c81ca97fa8509ec1c75e64371f0f7d1eb79269c";
              sha256_unsigned = "8c3f2e5156938cc1327445363c81ca97fa8509ec1c75e64371f0f7d1eb79269c";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_re305-v3-squashfs-sysupgrade.bin";
              sha256 = "9a67e0c83a34caead426125c503f1f203a55ca4feb9b8b71ebe544c26e8806e6";
              sha256_unsigned = "9638a28d795ccb7554b83172d23678d67a67765acacc3a0d43a099d5f880be57";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "tplink,re305-v3"
          ];
          titles = [
            {
              model = "RE305";
              variant = "v3";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_re365-v1 = {
          device_packages = [
            "kmod-mt76x2"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-tplink_re365-v1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_re365-v1-initramfs-kernel.bin";
              sha256 = "1ddcf1ffa46d0bbef9cff7ac71ff672a830dcdc837a8e4f1eb08e4b7a1597ddb";
              sha256_unsigned = "1ddcf1ffa46d0bbef9cff7ac71ff672a830dcdc837a8e4f1eb08e4b7a1597ddb";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_re365-v1-squashfs-sysupgrade.bin";
              sha256 = "dc6b307ab5a39890172c86122175eaaff116ffcecefeb704eb56abceb8f2970e";
              sha256_unsigned = "2f9ecf653999b7596c8cdfb4f4fbb9eda500dbe9c8ba1470d9a138948304d7a0";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "tplink,re365-v1"
          ];
          titles = [
            {
              model = "RE365";
              variant = "v1";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_tl-mr3020-v3 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-mr3020-v3";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-mr3020-v3-initramfs-kernel.bin";
              sha256 = "ef9166b3c4b1dd25fbe0eecaf985b14688ee05e3da5150af08a4e96d1b56caf9";
              sha256_unsigned = "ef9166b3c4b1dd25fbe0eecaf985b14688ee05e3da5150af08a4e96d1b56caf9";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-mr3020-v3-squashfs-sysupgrade.bin";
              sha256 = "4768d6b54588d2337e3bf8abb8290e65eb62138c2fdf609c4d919831f835d13b";
              sha256_unsigned = "6c2e32a3361216887a73c2242621b3e1d98f36470331c7a0d3f4f7408c477227";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-mr3020-v3-squashfs-tftp-recovery.bin";
              sha256 = "17c074dd6b80bb0acda03eb4fc6ec4290ea5b36d93b152e7c084ae933472cac3";
              sha256_unsigned = "17c074dd6b80bb0acda03eb4fc6ec4290ea5b36d93b152e7c084ae933472cac3";
              type = "tftp-recovery";
            }
          ];
          supported_devices = [
            "tplink,tl-mr3020-v3"
          ];
          titles = [
            {
              model = "TL-MR3020";
              variant = "v3";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_tl-mr3420-v5 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-mr3420-v5";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-mr3420-v5-squashfs-tftp-recovery.bin";
              sha256 = "67aa7fca9575c6945a061c778ecff72f68b93e128973958e3d60a0ca55b7a628";
              sha256_unsigned = "67aa7fca9575c6945a061c778ecff72f68b93e128973958e3d60a0ca55b7a628";
              type = "tftp-recovery";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-mr3420-v5-initramfs-kernel.bin";
              sha256 = "d3b90e174266d4981e9bfdbedae5c075fbf09f1cf96cd21e5b2fc918718d030b";
              sha256_unsigned = "d3b90e174266d4981e9bfdbedae5c075fbf09f1cf96cd21e5b2fc918718d030b";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-mr3420-v5-squashfs-sysupgrade.bin";
              sha256 = "1ceaa41b83b78c0e378927d9bde130de5a1e91dce871a632ac262dab1ca3db0b";
              sha256_unsigned = "702699fd84e9fa5c3c5a4e6957175a98ea12ec6c5d7f0704d36b7be49c9830c8";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "tplink,tl-mr3420-v5"
          ];
          titles = [
            {
              model = "TL-MR3420";
              variant = "v5";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_tl-mr6400-v4 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb-serial-option"
            "kmod-usb-net-qmi-wwan"
            "uqmi"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-mr6400-v4";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-mr6400-v4-squashfs-sysupgrade.bin";
              sha256 = "c7982b083399a85ab4b185770e1f05ac1966863141ac8dca8dc9ea02768d0d93";
              sha256_unsigned = "ef7143a552e42688ca8a34bca23ff7cfbc5a8473e168c798c8fbc258d0af94f8";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-mr6400-v4-initramfs-kernel.bin";
              sha256 = "465a3993514dce508e1a108942d2d7794976e5fae12beafb2feeccc0f81ace8c";
              sha256_unsigned = "465a3993514dce508e1a108942d2d7794976e5fae12beafb2feeccc0f81ace8c";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-mr6400-v4-squashfs-tftp-recovery.bin";
              sha256 = "538df3edba4f4ea1afdfda4df11ac2d52f55fc50d8510864b033a7050721889b";
              sha256_unsigned = "538df3edba4f4ea1afdfda4df11ac2d52f55fc50d8510864b033a7050721889b";
              type = "tftp-recovery";
            }
          ];
          supported_devices = [
            "tplink,tl-mr6400-v4"
          ];
          titles = [
            {
              model = "TL-MR6400";
              variant = "v4";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_tl-mr6400-v5 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-usb-serial-option"
            "kmod-usb-net-qmi-wwan"
            "uqmi"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-mr6400-v5";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-mr6400-v5-squashfs-sysupgrade.bin";
              sha256 = "79a08d6345430a8f91d21a14da0b3376cf3e05707223e88e1afba297293ffac7";
              sha256_unsigned = "c3642f3d36881807d2d3813eb55736934f305d0cef164a9541099c27c565f541";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-mr6400-v5-initramfs-kernel.bin";
              sha256 = "379451f806a6055373b35150ce595aa959903c883aa04d32983331fd991d8004";
              sha256_unsigned = "379451f806a6055373b35150ce595aa959903c883aa04d32983331fd991d8004";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-mr6400-v5-squashfs-tftp-recovery.bin";
              sha256 = "e4441a3891eaa3ccda08d6bed9423c04673c7a52c4e43c2c9862f11c54b3b58b";
              sha256_unsigned = "e4441a3891eaa3ccda08d6bed9423c04673c7a52c4e43c2c9862f11c54b3b58b";
              type = "tftp-recovery";
            }
          ];
          supported_devices = [
            "tplink,tl-mr6400-v5"
          ];
          titles = [
            {
              model = "TL-MR6400";
              variant = "v5";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_tl-wa801nd-v5 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-wa801nd-v5";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-wa801nd-v5-initramfs-kernel.bin";
              sha256 = "abd4ca70d3fc6dd96670b0c5204a384d61b283d2699d4a00afacb1ca30a82910";
              sha256_unsigned = "abd4ca70d3fc6dd96670b0c5204a384d61b283d2699d4a00afacb1ca30a82910";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-wa801nd-v5-squashfs-sysupgrade.bin";
              sha256 = "ceb9c91f160f4144c8aa1a89d032b4bbe37f3b87de572105881d41ea7a8dafba";
              sha256_unsigned = "7c41be7f0f694c48a725db982f06b3e40f672a27cf7031a43d1282b33735ab55";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-wa801nd-v5-squashfs-tftp-recovery.bin";
              sha256 = "23853c8d8720bddcefb58699f353120a35f192a6fd114ca7c602df58558733da";
              sha256_unsigned = "23853c8d8720bddcefb58699f353120a35f192a6fd114ca7c602df58558733da";
              type = "tftp-recovery";
            }
          ];
          supported_devices = [
            "tplink,tl-wa801nd-v5"
          ];
          titles = [
            {
              model = "TL-WA801ND";
              variant = "v5";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_tl-wr802n-v4 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-wr802n-v4";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-wr802n-v4-squashfs-tftp-recovery.bin";
              sha256 = "41d41924fbed40f36af673065da4ecb0d87aa3e5c7c499e69d171a1474442696";
              sha256_unsigned = "41d41924fbed40f36af673065da4ecb0d87aa3e5c7c499e69d171a1474442696";
              type = "tftp-recovery";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-wr802n-v4-initramfs-kernel.bin";
              sha256 = "55f0810fab00bed0bc50a3d54da6632a543edc66a459250921b03e3cf8ac7834";
              sha256_unsigned = "55f0810fab00bed0bc50a3d54da6632a543edc66a459250921b03e3cf8ac7834";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-wr802n-v4-squashfs-sysupgrade.bin";
              sha256 = "774421fc58d6f2e0af3dfea53b612f3f913f0cac1f8003d8dad4dc1fde9293b2";
              sha256_unsigned = "796c91e7f45a46f6e2202d1dbdf52ab364a63f5086002c1588c33c8668576ca1";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "tplink,tl-wr802n-v4"
          ];
          titles = [
            {
              model = "TL-WR802N";
              variant = "v4";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_tl-wr840n-v4 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-wr840n-v4";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-wr840n-v4-squashfs-tftp-recovery.bin";
              sha256 = "51d4b49bac47a95ed8ed95143b23f75bbc423a8e3a1be586ddacdfc37288b272";
              sha256_unsigned = "51d4b49bac47a95ed8ed95143b23f75bbc423a8e3a1be586ddacdfc37288b272";
              type = "tftp-recovery";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-wr840n-v4-initramfs-kernel.bin";
              sha256 = "95be75531dfb6dc6a10f3598c9bade33b53ef73e19bd72af57f091816940e018";
              sha256_unsigned = "95be75531dfb6dc6a10f3598c9bade33b53ef73e19bd72af57f091816940e018";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-wr840n-v4-squashfs-sysupgrade.bin";
              sha256 = "466998ab77cea37598a2edf77358a9f2f0f5e99dd502a6541c02e0bfe4270785";
              sha256_unsigned = "df1d0bc73e4431237adac6f2ff7c2b1d75ac9f4c575084a96d0e541a8a8de53a";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "tplink,tl-wr840n-v4"
            "tl-wr840n-v4"
          ];
          titles = [
            {
              model = "TL-WR840N";
              variant = "v4";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_tl-wr841n-v13 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-wr841n-v13";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-wr841n-v13-squashfs-tftp-recovery.bin";
              sha256 = "b09df4b70dcaaee3ee51c17ccf71e803d5c9967f4083bf0a8d60b4f8c984ea6a";
              sha256_unsigned = "b09df4b70dcaaee3ee51c17ccf71e803d5c9967f4083bf0a8d60b4f8c984ea6a";
              type = "tftp-recovery";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-wr841n-v13-initramfs-kernel.bin";
              sha256 = "3df72923b7a30a4ec12f8c01e054d8481a4823ba67eb60ce83e412673c66969b";
              sha256_unsigned = "3df72923b7a30a4ec12f8c01e054d8481a4823ba67eb60ce83e412673c66969b";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-wr841n-v13-squashfs-sysupgrade.bin";
              sha256 = "620e9d85fb4a1e1b62335a5a71b62ec2ccc80b4f82af3159dd4cfa200fbe6f79";
              sha256_unsigned = "1759a5c8864c6dce8c97c8b148db044b4c2ff7657513abc5ce0ae8dfa4a9468a";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "tplink,tl-wr841n-v13"
            "tl-wr841n-v13"
          ];
          titles = [
            {
              model = "TL-WR841N";
              variant = "v13";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_tl-wr842n-v5 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-wr842n-v5";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-wr842n-v5-squashfs-tftp-recovery.bin";
              sha256 = "1b22dd9f7047082dc2b633a9be5c1efc6e6afa260e80aaa02a27e0ad701cb53c";
              sha256_unsigned = "1b22dd9f7047082dc2b633a9be5c1efc6e6afa260e80aaa02a27e0ad701cb53c";
              type = "tftp-recovery";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-wr842n-v5-initramfs-kernel.bin";
              sha256 = "9d0de8d1d9a8db7ceee10af5db849f598c7f098857aa947a2323f36cc59a6a87";
              sha256_unsigned = "9d0de8d1d9a8db7ceee10af5db849f598c7f098857aa947a2323f36cc59a6a87";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-wr842n-v5-squashfs-sysupgrade.bin";
              sha256 = "498968259d98ae6db1258d0e2897d57564f9b5d54838262fb3eb08c4a221b72c";
              sha256_unsigned = "1034ff83eb4942161c4f255fe914ead1e75ee42dbb9c13402ce0d773bfd6a5a2";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "tplink,tl-wr842n-v5"
          ];
          titles = [
            {
              model = "TL-WR842N";
              variant = "v5";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_tl-wr850n-v2 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-wr850n-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-wr850n-v2-squashfs-tftp-recovery.bin";
              sha256 = "b70dbe03de7e86d153078521f5d481750d78c79efdf338105e804b4ec4d45b6c";
              sha256_unsigned = "b70dbe03de7e86d153078521f5d481750d78c79efdf338105e804b4ec4d45b6c";
              type = "tftp-recovery";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-wr850n-v2-initramfs-kernel.bin";
              sha256 = "70bb8640ac674f6d2b54a6506470f561829c56f5c3554000d5fbf99b9c8d3f94";
              sha256_unsigned = "70bb8640ac674f6d2b54a6506470f561829c56f5c3554000d5fbf99b9c8d3f94";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-wr850n-v2-squashfs-sysupgrade.bin";
              sha256 = "4b4b901b820c717bf1a15f6b7c0d04d60251707eb1da9fef03b04f37dbc11690";
              sha256_unsigned = "716c8f74105214245d4f3918febb9b7326415a3ac6c16b8e1c46a9adeb7d27fb";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "tplink,tl-wr850n-v2"
          ];
          titles = [
            {
              model = "TL-WR850N";
              variant = "v2";
              vendor = "TP-Link";
            }
          ];
        };
        tplink_tl-wr902ac-v3 = {
          device_packages = [
            "kmod-mt76x0e"
            "kmod-usb2"
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-wr902ac-v3";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-wr902ac-v3-initramfs-kernel.bin";
              sha256 = "e9518c93b73d62c84214f950f912f8e6ec63d557f7048cd06f25724041fcbbe4";
              sha256_unsigned = "e9518c93b73d62c84214f950f912f8e6ec63d557f7048cd06f25724041fcbbe4";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-wr902ac-v3-squashfs-tftp-recovery.bin";
              sha256 = "bda0abd0cdc288b85ffa8c0ba0881947f2541ac4591a0235a85a1b8cbeef8bde";
              sha256_unsigned = "bda0abd0cdc288b85ffa8c0ba0881947f2541ac4591a0235a85a1b8cbeef8bde";
              type = "tftp-recovery";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-tplink_tl-wr902ac-v3-squashfs-sysupgrade.bin";
              sha256 = "d07c8b1d733c700b395af8984e76be653ddc861b096bf9105cb705b5a6bf0984";
              sha256_unsigned = "08cb593586c48ffd9e605d20b980eb1cf20228e32cdcc4e6c4ecc4ba80a4a796";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "tplink,tl-wr902ac-v3"
          ];
          titles = [
            {
              model = "TL-WR902AC";
              variant = "v3";
              vendor = "TP-Link";
            }
          ];
        };
        unielec_u7628-01-16m = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-unielec_u7628-01-16m";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-unielec_u7628-01-16m-squashfs-sysupgrade.bin";
              sha256 = "f6b54efbd78489b4ccdbf3cbf43d844fbf6c9205ab4e5d027c45cb4f7fda3939";
              sha256_unsigned = "7451e531b073b70ba7867a44767f8e93b52fddcf49afd4a6f9fc099e5341e113";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-unielec_u7628-01-16m-initramfs-kernel.bin";
              sha256 = "f53f60feaf814439ad6f940d9b3478caa09850d649c27c4ffa40cc01702d70d9";
              sha256_unsigned = "f53f60feaf814439ad6f940d9b3478caa09850d649c27c4ffa40cc01702d70d9";
              type = "kernel";
            }
          ];
          supported_devices = [
            "unielec,u7628-01-16m"
            "u7628-01-128M-16M"
            "unielec,u7628-01-128m-16m"
          ];
          titles = [
            {
              model = "U7628-01";
              variant = "16M";
              vendor = "UniElec";
            }
          ];
        };
        vocore_vocore2 = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-mmc-mtk"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-vocore_vocore2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-vocore_vocore2-initramfs-kernel.bin";
              sha256 = "6e2e4e35fedf4bab36dbf04a8331ce1713bc22a3af676e11e5475489ff213fc7";
              sha256_unsigned = "6e2e4e35fedf4bab36dbf04a8331ce1713bc22a3af676e11e5475489ff213fc7";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-vocore_vocore2-squashfs-sysupgrade.bin";
              sha256 = "8ddcac34dfbb4a0371ed44bb6dfa1a3e69510492abe252aaab218d9397ffd2c0";
              sha256_unsigned = "2a70801600b8e846ce88d0ad0050a381e694f9d24798b83f786ca246ae717e63";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "vocore,vocore2"
            "vocore2"
          ];
          titles = [
            {
              model = "VoCore2";
              vendor = "VoCore";
            }
          ];
        };
        vocore_vocore2-lite = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
            "kmod-mmc-mtk"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-vocore_vocore2-lite";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-vocore_vocore2-lite-initramfs-kernel.bin";
              sha256 = "e426d802941c1b61f5e18e3e5b2efe5522e7629848ecf639648d211c5e5d0743";
              sha256_unsigned = "e426d802941c1b61f5e18e3e5b2efe5522e7629848ecf639648d211c5e5d0743";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-vocore_vocore2-lite-squashfs-sysupgrade.bin";
              sha256 = "54da3a9c06c3ea2b75f8371c32532bab5c9e7e1e8478cf11023b278803f086d1";
              sha256_unsigned = "3b9f587beacf1ee1d95e031f39541615b2fd205316c1b955bffd070fd5e52784";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "vocore,vocore2-lite"
            "vocore2lite"
          ];
          titles = [
            {
              model = "VoCore2-Lite";
              vendor = "VoCore";
            }
          ];
        };
        wavlink_wl-wn531a3 = {
          device_packages = [
            "kmod-mt76x2"
            "kmod-usb2"
            "kmod-usb-ohci"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-wavlink_wl-wn531a3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-wavlink_wl-wn531a3-squashfs-sysupgrade.bin";
              sha256 = "247fc675ed4e3f7d4790ac6b92f9aa14f4a3dc3b242320066e948247188c9966";
              sha256_unsigned = "a0f8411d521ed05f3127c07b2d29e00af58df54b68f0d42e4f26742eb7781a22";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-wavlink_wl-wn531a3-initramfs-kernel.bin";
              sha256 = "15129c09d02e23865805632eac7cc7659d41231cee59fe7c50f130de181b7a96";
              sha256_unsigned = "15129c09d02e23865805632eac7cc7659d41231cee59fe7c50f130de181b7a96";
              type = "kernel";
            }
          ];
          supported_devices = [
            "wavlink,wl-wn531a3"
            "wl-wn531a3"
          ];
          titles = [
            {
              model = "WL-WN531A3";
              vendor = "Wavlink";
            }
            {
              model = "QUANTUM D4";
              vendor = "Wavlink";
            }
          ];
        };
        wavlink_wl-wn570ha1 = {
          device_packages = [
            "kmod-mt76x0e"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-wavlink_wl-wn570ha1";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-wavlink_wl-wn570ha1-initramfs-kernel.bin";
              sha256 = "c168b9b2feed172eae83dd0cb94cd49d139a6ac1b76a7c0cd8f7589befe82128";
              sha256_unsigned = "c168b9b2feed172eae83dd0cb94cd49d139a6ac1b76a7c0cd8f7589befe82128";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-wavlink_wl-wn570ha1-squashfs-sysupgrade.bin";
              sha256 = "30a5c4d7b525b0cf8eb75ccecc81cdd011292edb35bcc89ae689df23e8d1f9fb";
              sha256_unsigned = "4614eb2a8c1642cd17b4c67b0215a8ea7fee4c4550d5929702e361d94a1944a0";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "wavlink,wl-wn570ha1"
          ];
          titles = [
            {
              model = "WL-WN570HA1";
              vendor = "Wavlink";
            }
          ];
        };
        wavlink_wl-wn575a3 = {
          device_packages = [
            "kmod-mt76x2"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-wavlink_wl-wn575a3";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-wavlink_wl-wn575a3-initramfs-kernel.bin";
              sha256 = "f0c58b86fa17f51f7796c071189d763fee584437af3c5a992c0170bf7a339f8f";
              sha256_unsigned = "f0c58b86fa17f51f7796c071189d763fee584437af3c5a992c0170bf7a339f8f";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-wavlink_wl-wn575a3-squashfs-sysupgrade.bin";
              sha256 = "e5febc243e36f82cc3ad2a5e20b6a5cb0c620c23e7fbba738f6614fdf7330256";
              sha256_unsigned = "c2159dede7f26eeb41cd6d22ede6eedb38133dfdc56c3822a02bfbbf8b571c52";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "wavlink,wl-wn575a3"
            "wl-wn575a3"
          ];
          titles = [
            {
              model = "WL-WN575A3";
              vendor = "Wavlink";
            }
          ];
        };
        wavlink_wl-wn576a2 = {
          device_packages = [
            "kmod-mt76x0e"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-wavlink_wl-wn576a2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-wavlink_wl-wn576a2-initramfs-kernel.bin";
              sha256 = "a8e89a199a49db68f1b0eadefcaabaafcbc2b0a33c08b2a5aa65e8f4a278532b";
              sha256_unsigned = "a8e89a199a49db68f1b0eadefcaabaafcbc2b0a33c08b2a5aa65e8f4a278532b";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-wavlink_wl-wn576a2-squashfs-sysupgrade.bin";
              sha256 = "19502fb42671ad64643a38eb0c3e7a6872426523e1f053ec83acf426558cfede";
              sha256_unsigned = "8ae4b55b369673536c15ae5244ef0369d281ef60d89a9b204a8dcf8f4d1d208a";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "wavlink,wl-wn576a2"
          ];
          titles = [
            {
              model = "WL-WN576A2";
              vendor = "Wavlink";
            }
            {
              model = "SWV 733 B1";
              vendor = "Silvercrest";
            }
          ];
        };
        wavlink_wl-wn577a2 = {
          device_packages = [
            "kmod-mt76x0e"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-wavlink_wl-wn577a2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-wavlink_wl-wn577a2-initramfs-kernel.bin";
              sha256 = "e54c9de04b690d431f9977e258b6d8419333807ed9c79b109762cbb98e528e58";
              sha256_unsigned = "e54c9de04b690d431f9977e258b6d8419333807ed9c79b109762cbb98e528e58";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-wavlink_wl-wn577a2-squashfs-sysupgrade.bin";
              sha256 = "4a5176d1cbf77b8f34b6b2eb03ae40a3278dcc9f6fa5294bd66f5b9f9093672e";
              sha256_unsigned = "c95586914a79f95cbe2cc3a0aa9b7f51ca9f881e960c3936946eb8286485e31a";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "wavlink,wl-wn577a2"
          ];
          titles = [
            {
              model = "WL-WN577A2";
              vendor = "Wavlink";
            }
            {
              model = "WLR-755";
              vendor = "Maginon";
            }
          ];
        };
        wavlink_wl-wn578a2 = {
          device_packages = [
            "kmod-mt76x0e"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-wavlink_wl-wn578a2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-wavlink_wl-wn578a2-initramfs-kernel.bin";
              sha256 = "e4ec696841f5464ed60c52849a7af428cdc58cc598dbcd845b9a888d903240e9";
              sha256_unsigned = "e4ec696841f5464ed60c52849a7af428cdc58cc598dbcd845b9a888d903240e9";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-wavlink_wl-wn578a2-squashfs-sysupgrade.bin";
              sha256 = "185bd67af8b5e9d1621e6af2f4a217cd9ebdfc214c4de78efca35c8b8f762550";
              sha256_unsigned = "624c5097ba2e5b359498ffeab573eee531f38de79c6610912580e1c72ff9dbd9";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "wavlink,wl-wn578a2"
          ];
          titles = [
            {
              model = "WL-WN578A2";
              vendor = "Wavlink";
            }
            {
              model = "SWV 733 A2";
              vendor = "SilverCrest";
            }
          ];
        };
        widora_neo-16m = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ohci"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-widora_neo-16m";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-widora_neo-16m-initramfs-kernel.bin";
              sha256 = "7bccdd9b4f9509537a6fc45b9f74a3b8f0988a099a506baa677caad40fadaf58";
              sha256_unsigned = "7bccdd9b4f9509537a6fc45b9f74a3b8f0988a099a506baa677caad40fadaf58";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-widora_neo-16m-squashfs-sysupgrade.bin";
              sha256 = "a776656bddcc63dd52217e0600420f0c5b8b4f01a4b4a440a19db3e7d37a1ae0";
              sha256_unsigned = "ab1dcc0ef7af98a2a707569b3bf0ddadee5219046a4acf88f0e0f8bb55a3b542";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "widora,neo-16m"
            "widora-neo"
          ];
          titles = [
            {
              model = "Widora-NEO";
              variant = "16M";
              vendor = "Widora";
            }
          ];
        };
        widora_neo-32m = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ohci"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-widora_neo-32m";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-widora_neo-32m-squashfs-sysupgrade.bin";
              sha256 = "1c63724545db33494248d02c00859d925e9abe639a97846088361f3cf2ed6f38";
              sha256_unsigned = "5aee3c4d0acb43748d105bc48525f186f61993541e64e6934a1d0ed6f129b554";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-widora_neo-32m-initramfs-kernel.bin";
              sha256 = "c08f519adc64b66b64ae40b4256e109994e1e1de0dfd5113a2cb26c61d2121d4";
              sha256_unsigned = "c08f519adc64b66b64ae40b4256e109994e1e1de0dfd5113a2cb26c61d2121d4";
              type = "kernel";
            }
          ];
          supported_devices = [
            "widora,neo-32m"
          ];
          titles = [
            {
              model = "Widora-NEO";
              variant = "32M";
              vendor = "Widora";
            }
          ];
        };
        wiznet_wizfi630s = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-wiznet_wizfi630s";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-wiznet_wizfi630s-squashfs-sysupgrade.bin";
              sha256 = "d70fdf196d0d0cccba8b12e547aaefaca72cfe7e259676f0061a194fd3b4f406";
              sha256_unsigned = "db7bc8e2064d2617de04ccdb47b976d3acaa6ca7c3d3a005fab8f404a39323f3";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-wiznet_wizfi630s-initramfs-kernel.bin";
              sha256 = "2fcce5b12055c7de47117a39d9b9a983b09d1f05761de45e6e25ffb41300a16b";
              sha256_unsigned = "2fcce5b12055c7de47117a39d9b9a983b09d1f05761de45e6e25ffb41300a16b";
              type = "kernel";
            }
          ];
          supported_devices = [
            "wiznet,wizfi630s"
            "wizfi630s"
          ];
          titles = [
            {
              model = "WizFi630S";
              vendor = "WIZnet";
            }
          ];
        };
        wrtnode_wrtnode2p = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-wrtnode_wrtnode2p";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-wrtnode_wrtnode2p-initramfs-kernel.bin";
              sha256 = "7febdfff506e919d6f4e5830774d8ba264f6bd47a2595e0cdb605c8468eaf87c";
              sha256_unsigned = "7febdfff506e919d6f4e5830774d8ba264f6bd47a2595e0cdb605c8468eaf87c";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-wrtnode_wrtnode2p-squashfs-sysupgrade.bin";
              sha256 = "16ab94490130b3d91d872548c53c78dbc79eb1580f6dad142c140048c8188ccc";
              sha256_unsigned = "3a235adbfe5b6c381264112025bd7af8b8d5a217752693dc83a9ab39e603676e";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "wrtnode,wrtnode2p"
            "wrtnode2p"
          ];
          titles = [
            {
              model = "WRTnode 2P";
              vendor = "WRTnode";
            }
          ];
        };
        wrtnode_wrtnode2r = {
          device_packages = [
            "kmod-usb2"
            "kmod-usb-ohci"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-wrtnode_wrtnode2r";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-wrtnode_wrtnode2r-squashfs-sysupgrade.bin";
              sha256 = "808a5e68cc3312fd7bbafcdaeb843604c257365c46b542c8e905c5443ef62110";
              sha256_unsigned = "8e00bbb2075965073e46e4fc7c554e49e41810aa3d05ee05cb8225801bced798";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-wrtnode_wrtnode2r-initramfs-kernel.bin";
              sha256 = "4b5cc072b677b542a7fb42e0d64e65ec16e74e8f161fef8fb4e178741bce7528";
              sha256_unsigned = "4b5cc072b677b542a7fb42e0d64e65ec16e74e8f161fef8fb4e178741bce7528";
              type = "kernel";
            }
          ];
          supported_devices = [
            "wrtnode,wrtnode2r"
            "wrtnode2r"
          ];
          titles = [
            {
              model = "WRTnode 2R";
              vendor = "WRTnode";
            }
          ];
        };
        xiaomi_mi-ra75 = {
          device_packages = [
            "kmod-mt76x2"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-xiaomi_mi-ra75";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-xiaomi_mi-ra75-initramfs-kernel.bin";
              sha256 = "686b9c84ac97bb15798607b811fc7dfb63e7e2de9f4ca32aa68951a22282c9d6";
              sha256_unsigned = "686b9c84ac97bb15798607b811fc7dfb63e7e2de9f4ca32aa68951a22282c9d6";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-xiaomi_mi-ra75-squashfs-sysupgrade.bin";
              sha256 = "e1acd1f0756750efa7c34c1ff9d084d55f3ac54094df936c7b1504efb167f2e1";
              sha256_unsigned = "8a8987662574dbe2b793ba2b37c6eec3798ba91df1ffbdade6a0442674423990";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "xiaomi,mi-ra75"
            "xiaomi,mira75"
          ];
          titles = [
            {
              model = "MiWiFi Range Extender AC1200 ";
              variant = "RA75";
              vendor = "Xiaomi";
            }
          ];
        };
        xiaomi_mi-router-4a-100m = {
          device_packages = [
            "kmod-mt76x2"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-xiaomi_mi-router-4a-100m";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-xiaomi_mi-router-4a-100m-initramfs-kernel.bin";
              sha256 = "1604324a8fa1a2f4de1c2cff62b39e3eee91b7bba5cf424a23cefc9582d94ca6";
              sha256_unsigned = "1604324a8fa1a2f4de1c2cff62b39e3eee91b7bba5cf424a23cefc9582d94ca6";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-xiaomi_mi-router-4a-100m-squashfs-sysupgrade.bin";
              sha256 = "e46fc9b8fca88762a386ea844a6fc9f0bc5a7a9bd679010b711cd35e270dcb39";
              sha256_unsigned = "7348f14297a2161f2a4e24b353603f08ff23e7b4a7899ad8669fee386794d007";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "xiaomi,mi-router-4a-100m"
            "xiaomi,mir4a-100m"
          ];
          titles = [
            {
              model = "Mi Router 4A";
              variant = "100M Edition";
              vendor = "Xiaomi";
            }
          ];
        };
        xiaomi_mi-router-4a-100m-intl = {
          device_packages = [
            "kmod-mt76x2"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-xiaomi_mi-router-4a-100m-intl";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-xiaomi_mi-router-4a-100m-intl-squashfs-sysupgrade.bin";
              sha256 = "0bbb4a90ab021676aa84f4e06d8eed2bf63a7d5815c2d8c312a0229ab7b18940";
              sha256_unsigned = "fd86e21630e3e7ce6de1879e5dc86cec860703e377f0bae9ccde1eeff930a213";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-xiaomi_mi-router-4a-100m-intl-initramfs-kernel.bin";
              sha256 = "ab0a200edbe0556e0348ade395839fb075523420fc3d2cb9d1c84d19df690646";
              sha256_unsigned = "ab0a200edbe0556e0348ade395839fb075523420fc3d2cb9d1c84d19df690646";
              type = "kernel";
            }
          ];
          supported_devices = [
            "xiaomi,mi-router-4a-100m-intl"
            "xiaomi,mir4a-100m-intl"
          ];
          titles = [
            {
              model = "Mi Router 4A";
              variant = "100M International Edition";
              vendor = "Xiaomi";
            }
          ];
        };
        xiaomi_mi-router-4a-100m-intl-v2 = {
          device_packages = [
            "kmod-mt7615e"
            "kmod-mt7663-firmware-ap"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-xiaomi_mi-router-4a-100m-intl-v2";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-xiaomi_mi-router-4a-100m-intl-v2-initramfs-kernel.bin";
              sha256 = "5f245eeedbc0a4d252d4a3ef859ae0e9a7b3e5b4950832c702bcce349321fd98";
              sha256_unsigned = "5f245eeedbc0a4d252d4a3ef859ae0e9a7b3e5b4950832c702bcce349321fd98";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-xiaomi_mi-router-4a-100m-intl-v2-squashfs-sysupgrade.bin";
              sha256 = "62ed031c7297e9e65af192dea77c9e06f4f296e0b05075b3c9a569b417c3c25c";
              sha256_unsigned = "10016aab9a814727a56d768a3b4bca45ea7d302045550e266af3833286146dd7";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "xiaomi,mi-router-4a-100m-intl-v2"
          ];
          titles = [
            {
              model = "Mi Router 4A";
              variant = "100M International Edition V2";
              vendor = "Xiaomi";
            }
          ];
        };
        xiaomi_mi-router-4c = {
          device_packages = [
            "uboot-envtools"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-xiaomi_mi-router-4c";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-xiaomi_mi-router-4c-squashfs-sysupgrade.bin";
              sha256 = "703f0aa85533f9ea1622a3a258f9f3942df921f916bdac30c25ffa048aed0af7";
              sha256_unsigned = "a071222a48b8897b17007ab62d5909c57ac349744cb0dcd8553a48326e4c31e6";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-xiaomi_mi-router-4c-initramfs-kernel.bin";
              sha256 = "9b0736969b840c18b0bc3bf0429ca974d376a8a1df4947d18f837b280ac276a8";
              sha256_unsigned = "9b0736969b840c18b0bc3bf0429ca974d376a8a1df4947d18f837b280ac276a8";
              type = "kernel";
            }
          ];
          supported_devices = [
            "xiaomi,mi-router-4c"
          ];
          titles = [
            {
              model = "Mi Router 4C";
              vendor = "Xiaomi";
            }
          ];
        };
        xiaomi_miwifi-3c = {
          device_packages = [
            "uboot-envtools"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-xiaomi_miwifi-3c";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-xiaomi_miwifi-3c-squashfs-sysupgrade.bin";
              sha256 = "06e7a8890de68ffaf042eced1fbb2e37c3813cc57b5b657adf9f35dc3aa66a23";
              sha256_unsigned = "5925b23ae2fad88d93e6d1bae2392156089fd4cb350b40e41486aa67bb40837f";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-xiaomi_miwifi-3c-initramfs-kernel.bin";
              sha256 = "09b1aef2d839787ef1d47820de27c9352802d4dfe408dc5679cec868707d7345";
              sha256_unsigned = "09b1aef2d839787ef1d47820de27c9352802d4dfe408dc5679cec868707d7345";
              type = "kernel";
            }
          ];
          supported_devices = [
            "xiaomi,miwifi-3c"
          ];
          titles = [
            {
              model = "MiWiFi 3C";
              vendor = "Xiaomi";
            }
          ];
        };
        xiaomi_miwifi-nano = {
          device_packages = [
            "uboot-envtools"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-xiaomi_miwifi-nano";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-xiaomi_miwifi-nano-initramfs-kernel.bin";
              sha256 = "7dc6a7d95a8a6005df62d7444c97b0d66b6b100a02e8bfb1934a47c207ff4f6e";
              sha256_unsigned = "7dc6a7d95a8a6005df62d7444c97b0d66b6b100a02e8bfb1934a47c207ff4f6e";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-xiaomi_miwifi-nano-squashfs-sysupgrade.bin";
              sha256 = "6706fa2b78e450e541240af047e347a510567a03bf8bb7f86eb94f7b3560f953";
              sha256_unsigned = "53efc139c551b100a655e60cbf27570a11a48061169a7d7d8aede74e6264e4d5";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "xiaomi,miwifi-nano"
            "miwifi-nano"
          ];
          titles = [
            {
              model = "MiWiFi Nano";
              vendor = "Xiaomi";
            }
          ];
        };
        yuncore_cpe200 = {
          device_packages = [
            "-kmod-mt7603"
            "kmod-mt7615e"
            "kmod-mt7663-firmware-ap"
            "kmod-mt7663-firmware-sta"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-yuncore_cpe200";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-yuncore_cpe200-initramfs-kernel.bin";
              sha256 = "38d4bd7e3e0e73a1a9e9273df40ca8d08f82e08aa04be5b575adc1667026230d";
              sha256_unsigned = "38d4bd7e3e0e73a1a9e9273df40ca8d08f82e08aa04be5b575adc1667026230d";
              type = "kernel";
            }
          ];
          supported_devices = [
            "yuncore,cpe200"
          ];
          titles = [
            {
              model = "CPE200";
              vendor = "Yuncore";
            }
          ];
        };
        yuncore_m300 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-yuncore_m300";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-yuncore_m300-squashfs-sysupgrade.bin";
              sha256 = "cfb90891053c31e6ed872e38d590bf310c9382df6b1a5f1fa67eb4201c8bd6ed";
              sha256_unsigned = "15a7480c2f2d0ede3b5e2f5c9e1c7920d395bd18f08bfbbd9a36939830ead358";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-yuncore_m300-initramfs-kernel.bin";
              sha256 = "097f9790b5ae74849504a02b0ff0b85b6b34e53a5116a525c745faf06e356fe9";
              sha256_unsigned = "097f9790b5ae74849504a02b0ff0b85b6b34e53a5116a525c745faf06e356fe9";
              type = "kernel";
            }
          ];
          supported_devices = [
            "yuncore,m300"
          ];
          titles = [
            {
              model = "M300";
              vendor = "Yuncore";
            }
          ];
        };
        zbtlink_zbt-we1226 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-zbtlink_zbt-we1226";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-zbtlink_zbt-we1226-initramfs-kernel.bin";
              sha256 = "8cda4464cc6af5226e16fa78d259a4185f3765262e11528e6553a59f8fea148f";
              sha256_unsigned = "8cda4464cc6af5226e16fa78d259a4185f3765262e11528e6553a59f8fea148f";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-zbtlink_zbt-we1226-squashfs-sysupgrade.bin";
              sha256 = "2f17791bd153b32a4136df6e75749a70a444423e378fefea46029c2c333900fd";
              sha256_unsigned = "4875a2b0d85cb9cb5fe536194f071091b4fbcb59a1dabb77027d00e017fa760e";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "zbtlink,zbt-we1226"
          ];
          titles = [
            {
              model = "ZBT-WE1226";
              vendor = "Zbtlink";
            }
          ];
        };
        zbtlink_zbt-we2426-b = {
          device_packages = [
            "kmod-mt76x2"
            "kmod-usb2"
            "kmod-usb-ohci"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-zbtlink_zbt-we2426-b";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-zbtlink_zbt-we2426-b-squashfs-sysupgrade.bin";
              sha256 = "4d25b67e101501ab809ea24eaf431c0e7be9fa94bcf69e4e65a5a49a1cc72c6f";
              sha256_unsigned = "e6de2a1c10a5890b56ea47ce4b8c9c85324409e01c4a2893fe7f9055e126e2c9";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-zbtlink_zbt-we2426-b-initramfs-kernel.bin";
              sha256 = "5e77a9836b2afc0227f86b7e36d7f918b63996df6c2aa6d1b9c6340b5c5f5769";
              sha256_unsigned = "5e77a9836b2afc0227f86b7e36d7f918b63996df6c2aa6d1b9c6340b5c5f5769";
              type = "kernel";
            }
          ];
          supported_devices = [
            "zbtlink,zbt-we2426-b"
          ];
          titles = [
            {
              model = "ZBT-WE2426-B";
              vendor = "Zbtlink";
            }
          ];
        };
        zyxel_keenetic-extra-ii = {
          device_packages = [
            "kmod-mt76x2"
            "kmod-usb2"
            "kmod-usb-ohci"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-mt76x8-zyxel_keenetic-extra-ii";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-zyxel_keenetic-extra-ii-squashfs-sysupgrade.bin";
              sha256 = "b33c03b3710a8566ff366e8db9cb522bc9f2ddf789c79349f6e9621c2a38c90b";
              sha256_unsigned = "4160dc34e8adf2030b009317e90b489bf23f4cce0ceb0cd42567f2c73cab0caa";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-zyxel_keenetic-extra-ii-initramfs-kernel.bin";
              sha256 = "783ee8d4e0b3b0b19b3278b27390b0f772d5569c1ffe55e45deaf652700a2857";
              sha256_unsigned = "783ee8d4e0b3b0b19b3278b27390b0f772d5569c1ffe55e45deaf652700a2857";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-mt76x8-zyxel_keenetic-extra-ii-squashfs-factory.bin";
              sha256 = "7fa7763e9e385b3c6bcc52e39deb1c5ea02fa9c171370b2595b9ba7415b826cd";
              sha256_unsigned = "7fa7763e9e385b3c6bcc52e39deb1c5ea02fa9c171370b2595b9ba7415b826cd";
              type = "factory";
            }
          ];
          supported_devices = [
            "zyxel,keenetic-extra-ii"
          ];
          titles = [
            {
              model = "Keenetic Extra II";
              vendor = "Zyxel";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "ramips/mt76x8";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
    rt305x = {
      arch_packages = "mipsel_24kc";
      default_packages = [
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
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
        "kmod-rt2800-soc"
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
        "swconfig"
        "uci"
        "uclient-fetch"
        "urandom-seed"
        "urngd"
        "wpad-basic-openssl"
      ];
      linux_kernel = {
        release = "1";
        vermagic = "8342333032102528ec6c9e0b54267bd9";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        allnet_all5002 = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-usb-ledtrig-usbport"
            "kmod-i2c-gpio"
            "kmod-hwmon-lm92"
            "kmod-gpio-pcf857x"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-rt305x-allnet_all5002";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-rt305x-allnet_all5002-squashfs-sysupgrade.bin";
              sha256 = "d1cbfb7d1c0db99f58b4e3c03690e8d297792dd1890ed90e09635e3370b86efc";
              sha256_unsigned = "60356e772c97e34a31484390bb89ab0d3370d9083cf6df4431c577eca54e0e20";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-rt305x-allnet_all5002-initramfs-kernel.bin";
              sha256 = "b31ad59b17f9a9c78f4ef836e6a7d481213f080be5faa22322c45e6036cac03a";
              sha256_unsigned = "b31ad59b17f9a9c78f4ef836e6a7d481213f080be5faa22322c45e6036cac03a";
              type = "kernel";
            }
          ];
          supported_devices = [
            "allnet,all5002"
            "all5002"
          ];
          titles = [
            {
              model = "ALL5002";
              vendor = "Allnet";
            }
          ];
        };
        argus_atp-52b = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ramips-rt305x-argus_atp-52b";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-rt305x-argus_atp-52b-initramfs-kernel.bin";
              sha256 = "456ec31b31d37735f44835d418eb463ada43cca553ae2f5747b85a5885af7794";
              sha256_unsigned = "456ec31b31d37735f44835d418eb463ada43cca553ae2f5747b85a5885af7794";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-rt305x-argus_atp-52b-squashfs-sysupgrade.bin";
              sha256 = "903d694205d18e66d48cea3057db55468b3c4d73bedea1098ca1353a822df5cd";
              sha256_unsigned = "e67451d4cf0a1a479490ad91c60f58f4321894bfb474c0bd53903c4b8f9fbd88";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "argus,atp-52b"
            "atp-52b"
          ];
          titles = [
            {
              model = "ATP-52B";
              vendor = "Argus";
            }
          ];
        };
        fon_fonera-20n = {
          device_packages = [
            "kmod-usb-dwc2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-rt305x-fon_fonera-20n";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-rt305x-fon_fonera-20n-initramfs-kernel.bin";
              sha256 = "46b36ee9acc710b1c11e7b4afbffdbdbef86857037dd4313d0a4a0ef35a3db94";
              sha256_unsigned = "46b36ee9acc710b1c11e7b4afbffdbdbef86857037dd4313d0a4a0ef35a3db94";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-rt305x-fon_fonera-20n-squashfs-sysupgrade.bin";
              sha256 = "d93d649fed07ec074277b1f52537815f0ecfb3a6b5d338ff64fd7f811e699b1f";
              sha256_unsigned = "80ee44db06df9c667f612518c2f6ade4358ba2960bac3f89f1e49f65ebc6c727";
              type = "sysupgrade";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-rt305x-fon_fonera-20n-squashfs-factory.bin";
              sha256 = "3b491140cb712302473457f1cc89801101770103f7e4ccceaf26cf3982213b86";
              sha256_unsigned = "3b491140cb712302473457f1cc89801101770103f7e4ccceaf26cf3982213b86";
              type = "factory";
            }
          ];
          supported_devices = [
            "fon,fonera-20n"
            "fonera20n"
          ];
          titles = [
            {
              model = "Fonera 2.0N";
              vendor = "Fon";
            }
          ];
        };
        hauppauge_broadway = {
          device_packages = [
            "kmod-usb-dwc2"
            "kmod-usb-ledtrig-usbport"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-rt305x-hauppauge_broadway";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-rt305x-hauppauge_broadway-squashfs-sysupgrade.bin";
              sha256 = "a02196e3e28290f056f071a01d26f62d5c0a02b690d27bd82c3e24f5478843a0";
              sha256_unsigned = "c0558066270a35eaaa79111b5732034b830a92beabeb7ccc198adbf594f1c292";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-rt305x-hauppauge_broadway-initramfs-kernel.bin";
              sha256 = "3462c9957948f49d7e3667d65852b2567621aabfd6f468a64f0661f701a11561";
              sha256_unsigned = "3462c9957948f49d7e3667d65852b2567621aabfd6f468a64f0661f701a11561";
              type = "kernel";
            }
          ];
          supported_devices = [
            "hauppauge,broadway"
            "broadway"
          ];
          titles = [
            {
              model = "Broadway";
              vendor = "Hauppauge";
            }
          ];
        };
        nexaira_bc2 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ramips-rt305x-nexaira_bc2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-rt305x-nexaira_bc2-squashfs-sysupgrade.bin";
              sha256 = "751b44be7082aea6e4863bcc2c2617dbe9c60520ec7c9e6d8c407b8b22b9e1dc";
              sha256_unsigned = "888a2ded00e3ebd7509aab7481acefb2eb428718687f9b785773ca5b5ac12fb2";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-rt305x-nexaira_bc2-initramfs-kernel.bin";
              sha256 = "3479eb0ee3e5337a4d84ce29813ec79cdf78e2a925e7a8f34630c0ab02a4f570";
              sha256_unsigned = "3479eb0ee3e5337a4d84ce29813ec79cdf78e2a925e7a8f34630c0ab02a4f570";
              type = "kernel";
            }
          ];
          supported_devices = [
            "nexaira,bc2"
            "bc2"
          ];
          titles = [
            {
              model = "BC2";
              vendor = "NexAira";
            }
          ];
        };
        omnima_miniembplug = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ramips-rt305x-omnima_miniembplug";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-rt305x-omnima_miniembplug-squashfs-sysupgrade.bin";
              sha256 = "8b66a71dc2c6ea15481f461aa2eab6235561051a21bd3ee7ccf8d4be7306d4fe";
              sha256_unsigned = "0e0905f5ea78bb364a5c8d6a3f7233f3085732c4870dfe00e6bba4fd3c030af5";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-rt305x-omnima_miniembplug-initramfs-kernel.bin";
              sha256 = "16dd63f12a5fb63f3f43249ceb20fc873be8691c358fe30f0e4b93c085af679a";
              sha256_unsigned = "16dd63f12a5fb63f3f43249ceb20fc873be8691c358fe30f0e4b93c085af679a";
              type = "kernel";
            }
          ];
          supported_devices = [
            "omnima,miniembplug"
            "miniembplug"
          ];
          titles = [
            {
              model = "MiniEMBPlug";
              vendor = "Omnima";
            }
          ];
        };
        poray_ip2202 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ramips-rt305x-poray_ip2202";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-rt305x-poray_ip2202-initramfs-kernel.bin";
              sha256 = "dc47cb8b32959c64896f614b3b30d881d3af43d0038467102a7d365503d40975";
              sha256_unsigned = "dc47cb8b32959c64896f614b3b30d881d3af43d0038467102a7d365503d40975";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-rt305x-poray_ip2202-squashfs-sysupgrade.bin";
              sha256 = "cbfa3b7232b2667a39c1d192be7c70f50fc2dd42c05a29e190ad3dc2282e3bb4";
              sha256_unsigned = "7523f49ed83af9337f67f3309133d6ada79cbebe546c062522653d9ba1e38ecb";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "poray,ip2202"
            "ip2202"
          ];
          titles = [
            {
              model = "IP2202";
              vendor = "Poray";
            }
          ];
        };
        wansview_ncs601w = {
          device_packages = [
            "kmod-video-core"
            "kmod-video-uvc"
            "kmod-usb-ohci"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-rt305x-wansview_ncs601w";
          images = [
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-rt305x-wansview_ncs601w-initramfs-kernel.bin";
              sha256 = "4c844b257b7a86024956a8ba5ca0b8382a526cae7a7412678c7c4c78dbbb54d0";
              sha256_unsigned = "4c844b257b7a86024956a8ba5ca0b8382a526cae7a7412678c7c4c78dbbb54d0";
              type = "kernel";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-rt305x-wansview_ncs601w-squashfs-sysupgrade.bin";
              sha256 = "a4471837184e0166b5097848abc6a5faf509f719ad1571c23c91510e0519a950";
              sha256_unsigned = "0bfa005a82b144b423964d232ab8b6666f68deb038f3bba440e623388c225827";
              type = "sysupgrade";
            }
          ];
          supported_devices = [
            "wansview,ncs601w"
            "ncs601w"
          ];
          titles = [
            {
              model = "NCS601W";
              vendor = "Wansview";
            }
          ];
        };
        zte_mf283plus = {
          device_packages = [
            "kmod-usb-ohci"
            "kmod-usb2"
            "kmod-usb-net-qmi-wwan"
            "uqmi"
            "kmod-usb-serial"
            "kmod-usb-serial-option"
          ];
          image_prefix = "immortalwrt-24.10.1-ramips-rt305x-zte_mf283plus";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-rt305x-zte_mf283plus-squashfs-sysupgrade.bin";
              sha256 = "d20980f58e145c524e226a23fc6b0f7caeccae94102509f025665d961fcb1a4a";
              sha256_unsigned = "22fbb396b79d05b86f42718042a413760f92ad89825c110f22f4a1971c96c8cd";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-rt305x-zte_mf283plus-initramfs-kernel.bin";
              sha256 = "8b375a1214123d8449ae52932e893a9c3dc231a80218bc08ab4d284d210094d2";
              sha256_unsigned = "8b375a1214123d8449ae52932e893a9c3dc231a80218bc08ab4d284d210094d2";
              type = "kernel";
            }
          ];
          supported_devices = [
            "zte,mf283plus"
          ];
          titles = [
            {
              model = "MF283+";
              vendor = "ZTE";
            }
          ];
        };
        zyxel_nbg-419n-v2 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-ramips-rt305x-zyxel_nbg-419n-v2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-ramips-rt305x-zyxel_nbg-419n-v2-squashfs-sysupgrade.bin";
              sha256 = "1ab69cf487e6db34387ee046c23d10d1e9be2697f76482482c70a078be2f3b3c";
              sha256_unsigned = "6297245e0835a377d45fd98a6fa4b66515d53afbce0d575387215f274fb9540c";
              type = "sysupgrade";
            }
            {
              filesystem = "initramfs";
              name = "immortalwrt-24.10.1-ramips-rt305x-zyxel_nbg-419n-v2-initramfs-kernel.bin";
              sha256 = "efe229447613cbb94f2c753c97a07b0d2afd6b2a714d8eec635f77bdc0feb0d2";
              sha256_unsigned = "efe229447613cbb94f2c753c97a07b0d2afd6b2a714d8eec635f77bdc0feb0d2";
              type = "kernel";
            }
          ];
          supported_devices = [
            "zyxel,nbg-419n-v2"
            "nbg-419n2"
          ];
          titles = [
            {
              model = "NBG-419N";
              variant = "v2";
              vendor = "Zyxel";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "ramips/rt305x";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
  };
  sunxi = {
    cortexa53 = {
      arch_packages = "aarch64_cortex-a53";
      default_packages = [
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
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
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
      linux_kernel = {
        release = "1";
        vermagic = "765ec44c078cc6ae5c892a5765dd0aa7";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        friendlyarm_nanopi-neo-plus2 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-sunxi-cortexa53-friendlyarm_nanopi-neo-plus2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-sunxi-cortexa53-friendlyarm_nanopi-neo-plus2-squashfs-sdcard.img.gz";
              sha256 = "dc2145938cf46146e62f8449834a981c08e7adb6bae4cd4cd683e15a473bfe05";
              sha256_unsigned = "cd560e91a58efaa2b45629a253cc1d1d5556312caca6134972499999243b0b12";
              type = "sdcard";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-sunxi-cortexa53-friendlyarm_nanopi-neo-plus2-ext4-sdcard.img.gz";
              sha256 = "cc1fec2456183c773a0bb8b188bb3be7dcd35249568c7ed2b2dc59f07f73ae47";
              sha256_unsigned = "7bb62c0b2899b3cc4eb54d24b96bc36e43f0e3214af202608877a78f37d77072";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "nanopi-neo-plus2"
          ];
          titles = [
            {
              model = "NanoPi NEO Plus2";
              vendor = "FriendlyARM";
            }
          ];
        };
        friendlyarm_nanopi-neo2 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-sunxi-cortexa53-friendlyarm_nanopi-neo2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-sunxi-cortexa53-friendlyarm_nanopi-neo2-squashfs-sdcard.img.gz";
              sha256 = "2dcfc1dab2c93080c6997738fabe5231cc4221c34df59c0597555d35e0705b5b";
              sha256_unsigned = "b2db880920dd94f6e0640ddd683102a3f48305aa79b2bb078b37ded7214e6f7d";
              type = "sdcard";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-sunxi-cortexa53-friendlyarm_nanopi-neo2-ext4-sdcard.img.gz";
              sha256 = "72e8e6b3be40ede440bb7e68cbf2980194b9b8e2684b91302e232eed416b16b6";
              sha256_unsigned = "8c6f742690577526b22e9bfa879c3a87bdf3f21031346fb45d7d1bbe3b2936ad";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "nanopi-neo2"
          ];
          titles = [
            {
              model = "NanoPi NEO2";
              vendor = "FriendlyARM";
            }
          ];
        };
        friendlyarm_nanopi-r1s-h5 = {
          device_packages = [
            "kmod-gpio-button-hotplug"
            "kmod-usb-net-rtl8152"
          ];
          image_prefix = "immortalwrt-24.10.1-sunxi-cortexa53-friendlyarm_nanopi-r1s-h5";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-sunxi-cortexa53-friendlyarm_nanopi-r1s-h5-squashfs-sdcard.img.gz";
              sha256 = "f579e5f5e3873e758cb41d66e8cca4ab1b8bcf02a3dff37b8fb16ea0494f145b";
              sha256_unsigned = "a8d08c6693c96f58ab330c96b23a852754f66ff49bc1956765b3b977f0b7ce48";
              type = "sdcard";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-sunxi-cortexa53-friendlyarm_nanopi-r1s-h5-ext4-sdcard.img.gz";
              sha256 = "124536f3eddf9abbf1b509df5635aeeb37b1e10030c0b881f03964f90a3949e5";
              sha256_unsigned = "1bc568138d25693c6826b1fc0a10420c77cb496b2e2a16ceb35eb398de47bd9a";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "nanopi-r1s-h5"
          ];
          titles = [
            {
              model = "Nanopi R1S H5";
              vendor = "FriendlyARM";
            }
          ];
        };
        libretech_all-h3-cc-h5 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-sunxi-cortexa53-libretech_all-h3-cc-h5";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-sunxi-cortexa53-libretech_all-h3-cc-h5-ext4-sdcard.img.gz";
              sha256 = "75296675133be1d573a2da6b45781499199e900a34bdf8394c024b155f1a764d";
              sha256_unsigned = "d328a4a2236f33e5dc71013e321a0a79c418cb14873e538ddae1719e5dc3ac49";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-sunxi-cortexa53-libretech_all-h3-cc-h5-squashfs-sdcard.img.gz";
              sha256 = "2db3099aa00a2376a4adea62966328bab4832fb04b3da6286196edd43db35990";
              sha256_unsigned = "67943645bb47185ce387ae51d6450841a930aed8a96bac794c2a68cea4c16ea5";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "libretech,all-h3-cc-h5"
          ];
          titles = [
            {
              model = "ALL-H3-CC";
              variant = "H5";
              vendor = "Libre Computer";
            }
          ];
        };
        olimex_a64-olinuxino = {
          device_packages = [
            "kmod-rtl8723bs"
            "rtl8723bu-firmware"
          ];
          image_prefix = "immortalwrt-24.10.1-sunxi-cortexa53-olimex_a64-olinuxino";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-sunxi-cortexa53-olimex_a64-olinuxino-ext4-sdcard.img.gz";
              sha256 = "7a1d017c1db3b44421bddd7979bfc353af4b6bb36efdc1b2630e97d07f577867";
              sha256_unsigned = "af63f61d464eaae0d924fc2c134cb8655a5332a0d1fab5c01d1f92bfa34ebb2b";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-sunxi-cortexa53-olimex_a64-olinuxino-squashfs-sdcard.img.gz";
              sha256 = "6366cf5f8c18a6b17661ffdfc03776a92290cfed778c8cbff0584527a67b5b2f";
              sha256_unsigned = "c997183844dcae2dc96240c1f4c8bc1ca012484bcaa8be2fabc4b4150cf9f6ad";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "olimex,a64-olinuxino"
          ];
          titles = [
            {
              model = "A64-Olinuxino";
              vendor = "Olimex";
            }
          ];
        };
        olimex_a64-olinuxino-emmc = {
          device_packages = [
            "kmod-rtl8723bs"
            "rtl8723bu-firmware"
          ];
          image_prefix = "immortalwrt-24.10.1-sunxi-cortexa53-olimex_a64-olinuxino-emmc";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-sunxi-cortexa53-olimex_a64-olinuxino-emmc-ext4-sdcard.img.gz";
              sha256 = "dc7a210b7326d7091e160e71342dcbbd8e5d0b8c8ff7e8df73cd9478d163eb78";
              sha256_unsigned = "5f21600340ea9ba146f65cee4303220275b65b93f6b11d21752c20322b927064";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-sunxi-cortexa53-olimex_a64-olinuxino-emmc-squashfs-sdcard.img.gz";
              sha256 = "5b00330ba57e18642b0063f61e620ab66583625cf616cf8708abd18dae0fa91f";
              sha256_unsigned = "dfbdb0e3c092bb4527872d8131768c831ad5f308146cab3bbbeb51c78fac7aeb";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "olimex,a64-olinuxino-emmc"
          ];
          titles = [
            {
              model = "A64-Olinuxino";
              variant = "eMMC";
              vendor = "Olimex";
            }
          ];
        };
        pine64_pine64-plus = {
          device_packages = [
            "kmod-rtl8723bs"
            "rtl8723bu-firmware"
          ];
          image_prefix = "immortalwrt-24.10.1-sunxi-cortexa53-pine64_pine64-plus";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-sunxi-cortexa53-pine64_pine64-plus-squashfs-sdcard.img.gz";
              sha256 = "e0a8d0a0f52251d2d1614f45b7b5cc20d8e48047148fc462a301636ba34f6d26";
              sha256_unsigned = "1f6880183f7b943fa7b14e2d66a4f0fdd41adcdce56aa9d456317a194de5b729";
              type = "sdcard";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-sunxi-cortexa53-pine64_pine64-plus-ext4-sdcard.img.gz";
              sha256 = "bb424ce422c698c04b192c4ed9d894f3bd7d0fa3115c7c9cbc1ef70449ea75a3";
              sha256_unsigned = "46ab168a82d3bdc20009a5339edd8381dbe392c77413e602ed5e20aeb5b4099b";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "pine64,pine64-plus"
          ];
          titles = [
            {
              model = "Pine64+";
              vendor = "Pine64";
            }
          ];
        };
        pine64_sopine-baseboard = {
          device_packages = [
            "kmod-rtl8723bs"
            "rtl8723bu-firmware"
          ];
          image_prefix = "immortalwrt-24.10.1-sunxi-cortexa53-pine64_sopine-baseboard";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-sunxi-cortexa53-pine64_sopine-baseboard-squashfs-sdcard.img.gz";
              sha256 = "075edc88b945158364cce47fd0f4a5909b86ad99e3ffcb32e5bb6d9b7a312f21";
              sha256_unsigned = "70f5f2044e01aa85c438583ccb6d50b3bea31a7dfe3f933317ef3c7f27634aac";
              type = "sdcard";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-sunxi-cortexa53-pine64_sopine-baseboard-ext4-sdcard.img.gz";
              sha256 = "a2506c3aadae4593efe45a24016943e4cc1b38ac64136f60d0d08516a25342e8";
              sha256_unsigned = "e425e9e4a07cd193d837986b4032c2b53201bd97784122cb3f239c488ca18333";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "pine64,sopine-baseboard"
          ];
          titles = [
            {
              model = "SoPine";
              vendor = "Pine64";
            }
          ];
        };
        xunlong_orangepi-one-plus = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-sunxi-cortexa53-xunlong_orangepi-one-plus";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-sunxi-cortexa53-xunlong_orangepi-one-plus-squashfs-sdcard.img.gz";
              sha256 = "c94e39b5d9a23df8131cf616c068dbc7f7eb32a66088ad4f07e8e6d4eac94b02";
              sha256_unsigned = "f2421b3d20108430a3fed333f56567113d5d34b3f70a550c1b58c960cce64b44";
              type = "sdcard";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-sunxi-cortexa53-xunlong_orangepi-one-plus-ext4-sdcard.img.gz";
              sha256 = "a9468e882e3ef478ac4509ab2420c30f4b6d42be9f62b00dbbdd2f12caedf562";
              sha256_unsigned = "efe756313ba17721cf6016894a5c6774ef468337c9fe214ed7d162ccfd4ce7b5";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "xunlong,orangepi-one-plus"
          ];
          titles = [
            {
              model = "Orange Pi One Plus";
              vendor = "Xunlong";
            }
          ];
        };
        xunlong_orangepi-pc2 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-sunxi-cortexa53-xunlong_orangepi-pc2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-sunxi-cortexa53-xunlong_orangepi-pc2-squashfs-sdcard.img.gz";
              sha256 = "5a61051275adacf5efb581668292e17de5d13c4fc541ff9a02f3e1b574fca398";
              sha256_unsigned = "19ea41d023e01b2cd6c59709e634e2b771c08a698f6c88c789af995ed4d15d56";
              type = "sdcard";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-sunxi-cortexa53-xunlong_orangepi-pc2-ext4-sdcard.img.gz";
              sha256 = "f0f67f0fc250b56f3a4b86181d297109106eca93057082137194e592540f809e";
              sha256_unsigned = "786121f640424d3bd059df119bbe73bb90bb0b4ab79c7ce5d56984b2c588fdfa";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "xunlong,orangepi-pc2"
          ];
          titles = [
            {
              model = "Orange Pi PC 2";
              vendor = "Xunlong";
            }
          ];
        };
        xunlong_orangepi-zero-plus = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-sunxi-cortexa53-xunlong_orangepi-zero-plus";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-sunxi-cortexa53-xunlong_orangepi-zero-plus-ext4-sdcard.img.gz";
              sha256 = "5f5feda03d45618b5e9c9877297576660d4852e5ba1eb7c53d18e11961f93aff";
              sha256_unsigned = "bbbde27a69715aaf4003c48b103e279047a5be6a7c8d029a4a8d00221ae75624";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-sunxi-cortexa53-xunlong_orangepi-zero-plus-squashfs-sdcard.img.gz";
              sha256 = "85f11ad021e914586b723fa4832ef9d0c9222d0e5753e0253cb56f4040644673";
              sha256_unsigned = "28132c35e959103c9e2d0093efaa935495f43264cd96e0b6d33f9e548eb57027";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "xunlong,orangepi-zero-plus"
          ];
          titles = [
            {
              model = "Orange Pi Zero Plus";
              vendor = "Xunlong";
            }
          ];
        };
        xunlong_orangepi-zero2 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-sunxi-cortexa53-xunlong_orangepi-zero2";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-sunxi-cortexa53-xunlong_orangepi-zero2-squashfs-sdcard.img.gz";
              sha256 = "6e36e6903ba2afb04135149c4bdfeed7c6362f8f0d055468cb3e2c38c51e0bbb";
              sha256_unsigned = "fd94b87519d5c1c9abc966217cb7c9197cd4ff4df2fedbce51d302a643ddf423";
              type = "sdcard";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-sunxi-cortexa53-xunlong_orangepi-zero2-ext4-sdcard.img.gz";
              sha256 = "f5c078ea6d666657b754d71b0d95361437ef75d4979472640424575c25b75f34";
              sha256_unsigned = "c347795ca35832b5709d8bc249e4a8c3f263de7aeed2425af21c905cf1203398";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "xunlong,orangepi-zero2"
          ];
          titles = [
            {
              model = "Orange Pi Zero 2";
              vendor = "Xunlong";
            }
          ];
        };
        xunlong_orangepi-zero3 = {
          device_packages = [ ];
          image_prefix = "immortalwrt-24.10.1-sunxi-cortexa53-xunlong_orangepi-zero3";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-sunxi-cortexa53-xunlong_orangepi-zero3-squashfs-sdcard.img.gz";
              sha256 = "8f2dec56b95029d58e616bde08bf6e5ecd1e719b769e48a90fb0dc2e15445fbb";
              sha256_unsigned = "331da5c975d226f2ac597b810968e003c76a7d0af727615d93e01feff605149a";
              type = "sdcard";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-sunxi-cortexa53-xunlong_orangepi-zero3-ext4-sdcard.img.gz";
              sha256 = "73f849b27de1f472edb135f364c5506816622f8920a0557890cf6dca2e6fd19b";
              sha256_unsigned = "77db80b6949248d2210709a243dbb10b36a74597da78a196931e601754376297";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "xunlong,orangepi-zero3"
          ];
          titles = [
            {
              model = "Orange Pi Zero 3";
              vendor = "Xunlong";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "sunxi/cortexa53";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
    cortexa8 = {
      arch_packages = "arm_cortex-a8_vfpv3";
      default_packages = [
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
        "kmod-nf-nathelper"
        "kmod-nf-nathelper-extra"
        "kmod-nft-offload"
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
      linux_kernel = {
        release = "1";
        vermagic = "ee821842cbf0f5ba470868e362f2aa59";
        version = "6.6.86";
      };
      metadata_version = 1;
      profiles = {
        cubietech_a10-cubieboard = {
          device_packages = [
            "kmod-ata-sunxi"
            "kmod-sun4i-emac"
            "kmod-rtc-sunxi"
          ];
          image_prefix = "immortalwrt-24.10.1-sunxi-cortexa8-cubietech_a10-cubieboard";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-sunxi-cortexa8-cubietech_a10-cubieboard-ext4-sdcard.img.gz";
              sha256 = "a873cda771f08e4cc8e422ad3768f62f90927fc2b0b1dd6400734e095deb6dcc";
              sha256_unsigned = "ec126a6a3847b33d47aa766a939ab29dde95b44a08592e929c40c76384ec24b2";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-sunxi-cortexa8-cubietech_a10-cubieboard-squashfs-sdcard.img.gz";
              sha256 = "a2462377f446d1dfdf7d470b27bda0df804fa5508bb2b1d947d4fe991c6f0f1e";
              sha256_unsigned = "538e7d79bf267cd7549d9e672ff2dd63a50871564f8a0f0959a12a3f7e5e5acc";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "cubietech,a10-cubieboard"
          ];
          titles = [
            {
              model = "Cubieboard";
              vendor = "Cubietech";
            }
          ];
        };
        haoyu_a10-marsboard = {
          device_packages = [
            "kmod-ata-core"
            "kmod-ata-sunxi"
            "kmod-sun4i-emac"
            "kmod-rtc-sunxi"
            "kmod-sound-core"
            "kmod-sound-soc-sunxi"
          ];
          image_prefix = "immortalwrt-24.10.1-sunxi-cortexa8-haoyu_a10-marsboard";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-sunxi-cortexa8-haoyu_a10-marsboard-squashfs-sdcard.img.gz";
              sha256 = "39181feacd9506e0911a5146bad6818340979d1a212c1f509c6602773cd3c1f8";
              sha256_unsigned = "4e7a8b0d85a0178819817fb52a9ddccf79c3f5fde70fcd6c8b1a0dabc956c7ee";
              type = "sdcard";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-sunxi-cortexa8-haoyu_a10-marsboard-ext4-sdcard.img.gz";
              sha256 = "d74cc6875405564d1328798dbf58f5f8b6f682637a725dabfc25fb25e21bfa47";
              sha256_unsigned = "450ff976cd4b0eef8d75bb59ddf2d3112b7850a7f720c41f782a85dbdbfe66a3";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "haoyu,a10-marsboard"
            "marsboard,a10-marsboard"
          ];
          titles = [
            {
              model = "MarsBoard A10";
              vendor = "HAOYU Electronics";
            }
          ];
        };
        linksprite_a10-pcduino = {
          device_packages = [
            "kmod-sun4i-emac"
            "kmod-rtc-sunxi"
            "kmod-rtl8192cu"
          ];
          image_prefix = "immortalwrt-24.10.1-sunxi-cortexa8-linksprite_a10-pcduino";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-sunxi-cortexa8-linksprite_a10-pcduino-squashfs-sdcard.img.gz";
              sha256 = "53885ff33bd7c4947e792d7dd9bcdda2669332ed86746648fabf911df3653062";
              sha256_unsigned = "074a8cde0c1518c1f35aad419ef2b3ee439d25d22022c9eec5ff6e0f59aa5374";
              type = "sdcard";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-sunxi-cortexa8-linksprite_a10-pcduino-ext4-sdcard.img.gz";
              sha256 = "5dcbc81fbfdadd0b06992690bcc6be1a867271864abe3d241d6e4137af9ed412";
              sha256_unsigned = "0822080f45fa8698d19902f5c82c0a3dd042005a4a591500826a080278300e99";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "linksprite,a10-pcduino"
          ];
          titles = [
            {
              model = "pcDuino";
              vendor = "LinkSprite";
            }
          ];
        };
        olimex_a10-olinuxino-lime = {
          device_packages = [
            "kmod-ata-sunxi"
            "kmod-sun4i-emac"
            "kmod-rtc-sunxi"
          ];
          image_prefix = "immortalwrt-24.10.1-sunxi-cortexa8-olimex_a10-olinuxino-lime";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-sunxi-cortexa8-olimex_a10-olinuxino-lime-ext4-sdcard.img.gz";
              sha256 = "20bf061935b0b712eed11fe5e105c2e1b95cba70157432a428f78e2ec355ab43";
              sha256_unsigned = "6259db376efb44c2d25b956eef1b8427e01124ca8478ab91e75b02c743a98fc5";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-sunxi-cortexa8-olimex_a10-olinuxino-lime-squashfs-sdcard.img.gz";
              sha256 = "5d261811bb243d556908b39571f9b2575cb66f4363d7134f33db0ef6d0679e37";
              sha256_unsigned = "ea5308c1fe2da117fcc3c87a5a9fdda02589bcf2debb3ab89087c35f577f4c3a";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "olimex,a10-olinuxino-lime"
          ];
          titles = [
            {
              model = "A10-OLinuXino-LIME";
              vendor = "Olimex";
            }
          ];
        };
        olimex_a13-olimex-som = {
          device_packages = [
            "kmod-rtl8192cu"
          ];
          image_prefix = "immortalwrt-24.10.1-sunxi-cortexa8-olimex_a13-olimex-som";
          images = [
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-sunxi-cortexa8-olimex_a13-olimex-som-squashfs-sdcard.img.gz";
              sha256 = "8d26234191f53cee61837c22f81819479ec0a464d81ffb76beb6bf21f9dda273";
              sha256_unsigned = "7a3cc4edc186b3f0f11266d27a2abf1a37ca1246a73edf096b8aa4440baa0903";
              type = "sdcard";
            }
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-sunxi-cortexa8-olimex_a13-olimex-som-ext4-sdcard.img.gz";
              sha256 = "1d4b7bdfacdc94294480a1a9212541765951ad23315f9c9f3c66b574ae9f1439";
              sha256_unsigned = "caae91f04ad8c651013e3e97b6cf0a0f145dac1e8c2a5fd40456714814dcc07e";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "olimex,a13-olinuxino"
          ];
          titles = [
            {
              model = "A13-SOM";
              vendor = "Olimex";
            }
          ];
        };
        olimex_a13-olinuxino = {
          device_packages = [
            "kmod-rtl8192cu"
          ];
          image_prefix = "immortalwrt-24.10.1-sunxi-cortexa8-olimex_a13-olinuxino";
          images = [
            {
              filesystem = "ext4";
              name = "immortalwrt-24.10.1-sunxi-cortexa8-olimex_a13-olinuxino-ext4-sdcard.img.gz";
              sha256 = "2b47b7228be30ce57add209987f2b998ce318d45b5575dbb39a0020853ff6440";
              sha256_unsigned = "ad3855ef5b7c1f3755269b22ab702768b6c5e234dba2d987e1c082646940059d";
              type = "sdcard";
            }
            {
              filesystem = "squashfs";
              name = "immortalwrt-24.10.1-sunxi-cortexa8-olimex_a13-olinuxino-squashfs-sdcard.img.gz";
              sha256 = "5fa4c0c58af72945b76ec30dfc9d99010ebd1e2f6d1be08cad6a70aea85c1be4";
              sha256_unsigned = "024e4c3d0d041d6d5e209d355ea0c4438a4b2ac14e159380a6d15641eb74404e";
              type = "sdcard";
            }
          ];
          supported_devices = [
            "olimex,a13-olinuxino"
          ];
          titles = [
            {
              model = "A13-OLinuXino";
              vendor = "Olimex";
            }
          ];
        };
      };
      source_date_epoch = 1744717122;
      target = "sunxi/cortexa8";
      version_code = "r33048-cc720ea55a71";
      version_number = "24.10.1";
    };
  };
}