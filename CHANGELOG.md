# Changelog

All notable changes to this project will be documented in this file

# v2.113.13
## (2023-03-15)


<details>
<summary> Update layers/meta-balena to c6a25b265b99a9b4ca3bfe15881c2eede898a691 [Renovate Bot] </summary>

> ## meta-balena-2.113.13
> ### (2023-03-15)
> 
> * update-balena-supervisor: use API request helper [Alex Gonzalez]
> * os-helpers: add test for os-helpers-api [Alex Gonzalez]
> * os-helpers: add os-helpers-api [Alex Gonzalez]
> 
> ## meta-balena-2.113.12
> ### (2023-03-14)
> 
> * Remove a bad check in Internet connection sharing test [Zahari Petkov]
> 
> ## meta-balena-2.113.11
> ### (2023-03-14)
> 
> * peak: Ship signed module when signing is enabled [Michal Toman]
> 
> ## meta-balena-2.113.10
> ### (2023-03-09)
> 
> * patch: Add balenaOS debugging docs [Vipul Gupta (@vipulgupta2048)]
> 
> ## meta-balena-2.113.9
> ### (2023-03-09)
> 
> * flasher: fix installation when in user mode w/ sb disabled [Joseph Kogut]
> 
> ## meta-balena-2.113.8
> ### (2023-03-08)
> 
> * fix ip for dummy interface to avoid ip conflicts [rcooke-warwick]
> * tests: os: NetworkManager iptables rules test for Internet sharing [Zahari Petkov]
> 
> ## meta-balena-2.113.7
> ### (2023-03-07)
> 
> * conf: distro: balena-os: use lower case for signing key names [Alex Gonzalez]
> 
> ## meta-balena-2.113.6
> ### (2023-03-07)
> 
> * recipes-core/images: Ensure redsocks sample files are deployed [Alexandru Costache]
> 
> ## meta-balena-2.113.5
> ### (2023-03-07)
> 
> * image-balena.bbclass: deploy grub-conf before building the boot partition [Michal Toman]
> 
> ## meta-balena-2.113.4
> ### (2023-03-03)
> 
> * balena-keys: do not ship certificates in DER format [Michal Toman]
> 
> ## meta-balena-2.113.3
> ### (2023-03-02)
> 
> * balena-units-conf: launch os-config on config changes [Alex Gonzalez]
> 
> ## meta-balena-2.113.2
> ### (2023-03-02)
> 
> * Refer to balenaEngine by its full name [Leandro Motta Barros]
> 

</details>

# v2.113.1+rev4
## (2023-03-02)

* linux-compulab: Fix configuration merge [Alexandru Costache]

# v2.113.1+rev3
## (2023-03-01)


<details>
<summary> Update balena-yocto-scripts to 93f94ff88593966c1f417861b235e729d5192ba6 [Renovate Bot] </summary>

> ## balena-yocto-scripts-1.19.25
> ### (2023-03-01)
> 
> * Dockerfile: yocto-build-env: update balenaCLI to 14.5.15 [Alex Gonzalez]
> 

</details>

# v2.113.1+rev2
## (2023-03-01)


<details>
<summary> Update contracts to 40d6eaa3f0455babd1abcc1d11a6e6db60387797 [Renovate Bot] </summary>

> ## contracts-2.0.51
> ### (2023-02-24)
> 
> * node: do not set unsafe-perm with npm 9 and newer [Michal Toman]
> 

</details>

# v2.113.1+rev1
## (2023-03-01)

* iot-gate-imx8plus: Reword provisioning instructions [Alexandru Costache]

# v2.113.1
## (2023-03-01)


<details>
<summary> Update layers/meta-balena to 6d5f0882b3b1a0386b3b56eac221fe9d955eac31 [Renovate Bot] </summary>

> ## meta-balena-2.113.1
> ### (2023-02-28)
> 
> * os-helpers-fs: formatting and fixing lint warning [Alex Gonzalez]
> * os-helpers-fs: fix check for media attached [Alex Gonzalez]
> * initrdscripts: migrate: use du instead of wc to calculate byte sizes [Alex Gonzalez]
> 

</details>

# v2.113.0
## (2023-03-01)


<details>
<summary> Update layers/meta-balena to 2454c531db3f57e98ec3f15459f9ab342a38b8b0 [Renovate Bot] </summary>

> ## meta-balena-2.113.0
> ### (2023-02-25)
> 
> * resin-init-flasher: use logging helper [Alex Gonzalez]
> * resin-init-flasher: replace shutdown for reboot in case of migration [Alex Gonzalez]
> * README: add installer section [Alex Gonzalez]
> * initrdscripts: Add migration module [Alex Gonzalez]
> * integration layers: use `android-tools` from Yocto Dunfell and before [Alex Gonzalez]
> * resin-init-flasher: comply with recovery mode [Alex Gonzalez]
> * initrdscritps: Move moving /run mountpoint from rootfs to migrate module [Alex Gonzalez]
> * initrdscripts: add recovery module [Alex Gonzalez]
> 

</details>

# v2.112.15+rev2
## (2023-03-01)


<details>
<summary> Update balena-yocto-scripts to ccc1f2162a25c9b4995a612411fd05ef3117a68d [Renovate Bot] </summary>

> ## balena-yocto-scripts-1.19.24
> ### (2023-02-28)
> 
> * balena-api: ignore quotes from API replies [Alex Gonzalez]
> 

</details>

* trigger deploy builds on multi-digit revisions too [Alex Gonzalez]

# v2.112.15+rev1
## (2023-02-27)

* iot-gate-imx8plus: Add development imx-boot for device provisioning [Alexandru Costache]

# v2.112.15
## (2023-02-24)


<details>
<summary> Update layers/meta-balena to 4ec7add602a6eddcc1c95a863e0359a0c1da744c [Renovate Bot] </summary>

> ## meta-balena-2.112.15
> ### (2023-02-24)
> 
> * os-helpers-fs: add dependency on util-linux fdisk [Alex Gonzalez]
> 

</details>

# v2.112.14+rev2
## (2023-02-24)

* coffee: Update provisioning instructions in coffee file [Alexandru Costache]

# v2.112.14+rev1
## (2023-02-24)

* Add CHANGELOG.yml file [Alexandru Costache]

# v2.112.14
## (2023-02-22)


<details>
<summary> Update layers/meta-balena to 80ca81f9e4ec9d4b2e4d21bc1cf12bd59220be5a [Renovate Bot] </summary>

> ## meta-balena-2.112.14
> ### (2023-02-22)
> 
> * balena-config-vars: Remove dependency on fatrw [Alex Gonzalez]
> * balena-config-vars: split in two packages [Alex Gonzalez]
> * Add raid support based on machine features [Alex Gonzalez]
> * packagegroup-resin: add resin-device-progress dependency [Alex Gonzalez]
> * resin-init-flasher: remove device-register and device-progress dependencies [Alex Gonzalez]
> * resin-init-flasher: reduce dependencies [Alex Gonzalez]
> * os-helpers-fs: replace inform with info helper [Alex Gonzalez]
> * resin-init-flasher: Build time check on INTERNAL_DEVICE_KERNEL only for flasher device types [Alex Gonzalez]
> * resin-init-flasher: wait for the by-label links to be created [Alex Gonzalez]
> 

</details>

# v2.112.13+rev2
## (2023-02-22)


<details>
<summary> Update contracts to 7e5420c232e35b678f2138d9878f1d1fc921b1cf [Renovate Bot] </summary>

> ## contracts-2.0.50
> ### (2023-02-22)
> 
> * hw.device-type: Rename radxaFlash protocol to usbMassStorage [Alexandru Costache]
> 

</details>

# v2.112.13+rev1
## (2023-02-22)


<details>
<summary> Update contracts to 6acab7c69f61f6660fe5fa41ccfd617281442fb3 [Renovate Bot] </summary>

> ## contracts-2.0.49
> ### (2023-02-22)
> 
> * patch: Fix spelling for eMMC in Radxa-zero contract [Vipul Gupta (@vipulgupta2048)]
> 
> ## contracts-2.0.48
> ### (2023-02-22)
> 
> * hw.device-type: Various fixes [Alexandru Costache]
> 

</details>

# v2.112.13
## (2023-02-22)


<details>
<summary> Update layers/meta-balena to f6327ce662208faa11b250b47518a5f01679dd25 [Renovate Bot] </summary>

> ## meta-balena-2.112.13
> ### (2023-02-22)
> 
> * recipes-bsp/u-boot: Disable saveenv shell command [Alexandru Costache]
> * Update tests/leviathan digest to 771bac8 [Renovate Bot]
> 
> ## meta-balena-2.112.12
> ### (2023-02-20)
> 
> * os-helpers-fs: get_internal_device() skip disks w/out media [Joseph Kogut]
> 

</details>

# v2.112.11+rev2
## (2023-02-21)

* Update CI workflow to allow external contributions [Kyle Harding]

# v2.112.11+rev1
## (2023-02-21)


<details>
<summary> Update contracts to f32bce95ef31a6890812fbcf8f403a3ac2df95fd [Renovate Bot] </summary>

> ## contracts-2.0.47
> ### (2023-02-21)
> 
> * patch: Add docs to contracts for instructions partials [Vipul Gupta (@vipulgupta2048)]
> 

</details>

# v2.112.11
## (2023-02-20)


<details>
<summary> Update layers/meta-balena to d21da1fc034f4e0b09a457d0ed5eda47d0a18e13 [Renovate Bot] </summary>

> ## meta-balena-2.112.11
> ### (2023-02-20)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to 84c2b96 [Renovate Bot] </summary>
> 
>> ### leviathan-2.22.0
>> #### (2023-02-20)
>> 
>> * Update core/contracts digest to 93ba80c [Renovate Bot]
>> 
> 
> </details>
> 
> 

</details>

# v2.112.10
## (2023-02-20)


<details>
<summary> Update layers/meta-balena to c7ef4ad6fe401699d0c24960ab27a8d10511697f [Renovate Bot] </summary>

> ## meta-balena-2.112.10
> ### (2023-02-20)
> 
> * tests: os: secureboot: skip if system is not locked down [Joseph Kogut]
> 

</details>

# v2.112.9
## (2023-02-20)


<details>
<summary> Update layers/meta-balena to 5cc1aa23062247235a71dee20760fd188cd68651 [Renovate Bot] </summary>

> ## meta-balena-2.112.9
> ### (2023-02-20)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to 8a7bdcc [Renovate Bot] </summary>
> 
>> ### leviathan-2.21.0
>> #### (2023-02-20)
>> 
>> * Update core/contracts digest to 103037c [Renovate Bot]
>> 
>> ### leviathan-2.20.1
>> #### (2023-02-20)
>> 
>> * client: throw errors instead of blanket handling [Joseph Kogut]
>> 
> 
> </details>
> 
> 

</details>

# v2.112.8+rev2
## (2023-02-20)


<details>
<summary> Update contracts to 93ba80ca1ffeced474d0567cc58703cdbeb629d5 [Renovate Bot] </summary>

> ## contracts-2.0.46
> ### (2023-02-20)
> 
> * <owa5X logo> Updated owa5X logo. [Alvaro Guzman]
> 

</details>

# v2.112.8+rev1
## (2023-02-18)


<details>
<summary> Update contracts to 103037ca9624070c01ed388e8fd425bef609e924 [Renovate Bot] </summary>

> ## contracts-2.0.45
> ### (2023-02-18)
> 
> * Add node v19.6.1 v18.14.1 v16.19.1 and v14.21.3 [Trong Nghia Nguyen]
> 

</details>

# v2.112.8
## (2023-02-17)


<details>
<summary> Update layers/meta-balena to 70d37200e8af95b6a784ead0682708c7e7f3acfb [Renovate Bot] </summary>

> ## meta-balena-2.112.8
> ### (2023-02-17)
> 
> 
> <details>
> <summary> Update balena-supervisor to v14.9.1 [Renovate Bot] </summary>
> 
>> ### balena-supervisor-14.9.1
>> #### (2023-02-15)
>> 
>> * Always lower case the cpu id to avoid bouncing between casing when reporting [Pagan Gazzard]
>> 
> 
> </details>
> 
> 

</details>

# v2.112.7
## (2023-02-16)


<details>
<summary> Update layers/meta-balena to 9fdf1011b4061ed579c71dfb58f22a97f904a50b [Renovate Bot] </summary>

> ## meta-balena-2.112.7
> ### (2023-02-16)
> 
> * renovate: Only consider github releases when bumping engine [Kyle Harding]
> 

</details>

# v2.112.6
## (2023-02-16)


<details>
<summary> Update layers/meta-balena to fd42070393600c11ae162b35f126b2632c3bb694 [Renovate Bot] </summary>

> ## meta-balena-2.112.6
> ### (2023-02-16)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to 92cb71a [Renovate Bot] </summary>
> 
>> ### leviathan-2.20.0
>> #### (2023-02-16)
>> 
>> * Update core/contracts digest to 9b8811f [Renovate Bot]
>> 
>> ### leviathan-2.19.2
>> #### (2023-02-15)
>> 
>> * patch: Improve Getting Started instructions [Vipul Gupta (@vipulgupta2048)]
>> 
> 
> </details>
> 
> 

</details>

# v2.112.5
## (2023-02-16)


<details>
<summary> Update layers/meta-balena to beb261875db907bcfa9ad8604100860c362d9ebe [Renovate Bot] </summary>

> ## meta-balena-2.112.5
> ### (2023-02-16)
> 
> * grub: Add chain module to support multiboot [Alex Gonzalez]
> 

</details>

# v2.112.4+rev1
## (2023-02-16)


<details>
<summary> Update contracts to 9b8811faee63c0884f367537d3411a8d70f0fcd0 [Renovate Bot] </summary>

> ## contracts-2.0.44
> ### (2023-02-16)
> 
> * Add Golang v1.20.1 and v1.19.6 [Trong Nghia Nguyen]
> 

</details>

# v2.112.4
## (2023-02-15)


<details>
<summary> Update layers/meta-balena to e9e5601e6bb0c4ee4ab51094714f88ce074b4b09 [Renovate Bot] </summary>

> ## meta-balena-2.112.4
> ### (2023-02-15)
> 
> * Update backports with current 2.102.x [BalenaCI github workflow]
> 
> ## meta-balena-2.112.3
> ### (2023-02-15)
> 
> * workflows: update-backports: remove skipping tests [Alex Gonzalez]
> 
> ## meta-balena-2.112.2
> ### (2023-02-15)
> 
> * workflows: add update-backports [Alex Gonzalez]
> 

</details>

# v2.112.1
## (2023-02-15)


<details>
<summary> Update layers/meta-balena to dcef4ce75f4f77bdcf941d0c095487bc4bc128f4 [Renovate Bot] </summary>

> ## meta-balena-2.112.1
> ### (2023-02-15)
> 
> * Update aufs5 kernel patches for 5.10 versions [Florin Sarbu]
> 

</details>

# v2.112.0
## (2023-02-14)


<details>
<summary> Update layers/meta-balena to 7cc56305880ded60850c3440840dcdba823bd179 [Renovate Bot] </summary>

> ## meta-balena-2.112.0
> ### (2023-02-14)
> 
> 
> <details>
> <summary> Update balena-supervisor to v14.9.0 [Renovate Bot] </summary>
> 
>> ### balena-supervisor-14.9.0
>> #### (2023-02-14)
>> 
>> * Find and remove duplicate networks [Felipe Lalanne]
>> * Reference networks by Id instead of by name [Felipe Lalanne]
>> 
> 
> </details>
> 
> 

</details>

# v2.111.4
## (2023-02-14)


<details>
<summary> Update layers/meta-balena to b48ce7abc1eb2506eb81ebbb18a1c4b90e55c4d4 [Renovate Bot] </summary>

> ## meta-balena-2.111.4
> ### (2023-02-14)
> 
> * tests: hup: fix flashing for tx2 [rcooke-warwick]
> 

</details>

# v2.111.3
## (2023-02-14)


<details>
<summary> Update layers/meta-balena to a1621d4de1730a4f943f758b7fd7896d870ef9f7 [Renovate Bot] </summary>

> ## meta-balena-2.111.3
> ### (2023-02-14)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to 975e8ca [Renovate Bot] </summary>
> 
>> ### leviathan-2.19.1
>> #### (2023-02-14)
>> 
>> * docker-compose: qemu: remove dep on swtpm [Joseph Kogut]
>> 
> 
> </details>
> 
> 

</details>

# v2.111.2
## (2023-02-13)


<details>
<summary> Update layers/meta-balena to 3e652503831c517ed60bc838c250d2910f2de8fe [Renovate Bot] </summary>

> ## meta-balena-2.111.2
> ### (2023-02-13)
> 
> * docs: add section for sb/fde opt-in [Joseph Kogut]
> 

</details>

# v2.111.1
## (2023-02-13)


<details>
<summary> Update layers/meta-balena to ad77fa3dacfa32044deb80c2266e3c2d8e1e13dd [Renovate Bot] </summary>

> ## meta-balena-2.111.1
> ### (2023-02-13)
> 
> * resin-init-flasher: do not report progress if unprovisioned [Alex Gonzalez]
> * resin-init-flasher: check splash configuration exists before copying [Alex Gonzalez]
> * resin-init-flasher: Move configuration data definitions to config file [Alex Gonzalez]
> 

</details>

# v2.111.0
## (2023-02-11)


<details>
<summary> Update layers/meta-balena to 18d3baaee23803f2b15e45c1ce3b1446e7a87eb1 [Renovate Bot] </summary>

> ## meta-balena-2.111.0
> ### (2023-02-11)
> 
> 
> <details>
> <summary> Update balena-supervisor to v14.8.0 [Renovate Bot] </summary>
> 
>> ### balena-supervisor-14.8.0
>> #### (2023-02-10)
>> 
>> * Remove dependent devices content in codebase [Christina Ying Wang]
>> 
> 
> </details>
> 
> 

</details>

# v2.110.4
## (2023-02-10)


<details>
<summary> Update layers/meta-balena to 152fe5b0fde438279bf0bc05e8f51d2cafb28fc0 [Renovate Bot] </summary>

> ## meta-balena-2.110.4
> ### (2023-02-10)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to 589449d [Renovate Bot] </summary>
> 
>> ### leviathan-2.19.0
>> #### (2023-02-10)
>> 
>> * Update core/contracts digest to 35f4223 [Renovate Bot]
>> 
> 
> </details>
> 
> 

</details>

# v2.110.3+rev1
## (2023-02-10)


<details>
<summary> Update contracts to 35f42232b2c24e9a43c4b0e171f9644b1b12a686 [Renovate Bot] </summary>

> ## contracts-2.0.43
> ### (2023-02-10)
> 
> * Add Fedora 37 (latest) and 38 [Trong Nghia Nguyen]
> * Add Python v3.11.2 and v3.10.10 [Trong Nghia Nguyen]
> 

</details>

# v2.110.3
## (2023-02-09)


<details>
<summary> Update layers/meta-balena to 2c4c90350f1748a5b8d11441d84023c65069f01d [Renovate Bot] </summary>

> ## meta-balena-2.110.3
> ### (2023-02-09)
> 
> * os-helpers: remove shebangs as these are not meant to be executed [Alex Gonzalez]
> * resindataexpander: Fix formatting [Alex Gonzalez]
> * resin-init-flasher: Extract code that resolved internal device [Alex Gonzalez]
> * os-helpers-fs: Add shared code from resin-init-flasher [Alex Gonzalez]
> * resin-init-flasher: remove unused variable [Alex Gonzalez]
> * resin-init-flasher: Use the default for the external boot partition mount [Alex Gonzalez]
> * resin-init-flasher: search for images to copy instead of hardcoding paths [Alex Gonzalez]
> * resin-init-flasher: Do not  hardcode the path to the internal boot device [Alex Gonzalez]
> * resin-init-flasher: remove systemd dependency [Alex Gonzalez]
> * resin-init-flasher: Do not hardcode path to the raw image [Alex Gonzalez]
> * initrdscript: prepare: expose path to initramfs logs [Alex Gonzalez]
> * initrdscript: resindataexpander: skip for flasher images [Alex Gonzalez]
> * docs: add initramfs overview [Alex Gonzalez]
> 

</details>

# v2.110.2
## (2023-02-08)


<details>
<summary> Update layers/meta-balena to c005b8bf80326b05d3e7605bdcfda43433232679 [Renovate Bot] </summary>

> ## meta-balena-2.110.2
> ### (2023-02-07)
> 
> 
> <details>
> <summary> Update tests/leviathan digest to 4f63a2d [Renovate Bot] </summary>
> 
>> ### leviathan-2.18.1
>> #### (2023-02-07)
>> 
>> * patch: Automate docs deployment with Flowzone [Vipul Gupta (@vipulgupta2048)]
>> 
>> ### leviathan-2.18.0
>> #### (2023-02-07)
>> 
>> * Update core/contracts digest to 7797750 [Renovate Bot]
>> 
>> ### leviathan-2.17.6
>> #### (2023-02-07)
>> 
>> * patch: Update client lockfile [Vipul Gupta (@vipulgupta2048)]
>> * patch: Update core lockfile [Vipul Gupta (@vipulgupta2048)]
>> 
>> ### leviathan-2.17.5
>> #### (2023-02-06)
>> 
>> * patch: Update core dependencies [Vipul Gupta (@vipulgupta2048)]
>> 
> 
> </details>
> 
> 

</details>

# v2.110.1
## (2023-02-07)


<details>
<summary> Update layers/meta-balena to 22f6f33279e7d152dec60de927371312093396cd [Renovate Bot] </summary>

> ## meta-balena-2.110.1
> ### (2023-02-07)
> 
> * renovate: Include to and from versions for supervisor and engine [Kyle Harding]
> 

</details>

# v2.110.0
## (2023-02-07)


<details>
<summary> Update layers/meta-balena to 28f9159565cc5576669b7a327a9239a4020df973 [Renovate Bot] </summary>

> ## meta-balena-2.110.0
> ### (2023-02-07)
> 
> * Update balena-supervisor to v14.7.1 [Renovate Bot]
> 
> ## meta-balena-2.109.2
> ### (2023-02-07)
> 
> * efitools: backport patch to fix build failure [Joseph Kogut]
> * efitools: fix cross-compilation on arm [Joseph Kogut]
> * Only include EFI tools if the machine feature is defined [Alex Gonzalez]
> 
> ## meta-balena-2.109.1
> ### (2023-02-06)
> 
> * resin-extra-udev-rules: Remove after all device types have been updated [Alex Gonzalez]
> 
> ## meta-balena-2.109.0
> ### (2023-02-05)
> 
> * kernel-balena: Remove apparmor support [Alex Gonzalez]
> 
> ## meta-balena-2.108.39
> ### (2023-02-03)
> 
> * flasher: handle user mode system w/out secure boot [Joseph Kogut]
> * flasher: fix keys not enrolling with secure boot enabled [Joseph Kogut]
> * flasher: fix secure boot setup with enrolled keys [Joseph Kogut]
> 
> ## meta-balena-2.108.38
> ### (2023-02-03)
> 
> 
> <details>
> <summary> Update leviathan to v2.17.4 [Kyle Harding] </summary>
> 
>> ### leviathan-2.17.4
>> #### (2023-01-28)
>> 
>> * patch: Upgrade client to v18 [Vipul Gupta (@vipulgupta2048)]
>> 
>> ### leviathan-2.17.3
>> #### (2023-01-26)
>> 
>> * patch: Update client dependencies [Vipul Gupta (@vipulgupta2048)]
>> 
>> ### leviathan-2.17.2
>> #### (2023-01-19)
>> 
>> * chore(deps): update alpine docker tag to v3.17.1 [renovate[bot]]
>> 
>> ### leviathan-2.17.1
>> #### (2023-01-19)
>> 
>> * patch: Convert balenaCloudInteractor to JS [Vipul Gupta (@vipulgupta2048)]
>> 
>> ### leviathan-2.17.0
>> #### (2023-01-19)
>> 
>> * chore(deps): update dependency json5 [security] [renovate[bot]]
>> 
>> ### leviathan-2.16.1
>> #### (2023-01-19)
>> 
>> * split swtpm service into separate compose file [Joseph Kogut]
>> 
>> ### leviathan-2.16.0
>> #### (2023-01-18)
>> 
>> * chore(deps): update core/contracts digest to 8392bb2 [renovate[bot]]
>> 
>> ### leviathan-2.15.1
>> #### (2023-01-17)
>> 
>> * patch: Drop config NPM package [Vipul Gupta (@vipulgupta2048)]
>> 
>> ### leviathan-2.15.0
>> #### (2023-01-14)
>> 
>> * chore(deps): update dependency ansi-regex [security] [renovate[bot]]
>> 
>> ### leviathan-2.14.9
>> #### (2023-01-05)
>> 
>> * compose: qemu: add swtpm service [Joseph Kogut]
>> 
> 
> </details>
> 
> 
> ## meta-balena-2.108.37
> ### (2023-02-02)
> 
> * Update balena-engine to v20.10.26 [Renovate Bot]
> 
> ## meta-balena-2.108.36
> ### (2023-02-02)
> 
> * flasher: remove duplicate EFI boot entries [Joseph Kogut]
> * flasher: create EFI boot entry [Joseph Kogut]
> * common: os-helpers-fs: fix get_dev_path_from_label w/ luks [Joseph Kogut]
> * flasher: make secure boot opt-in [Joseph Kogut]
> * flasher: ensure image is signed before enrollment [Joseph Kogut]
> * flasher: refactor secure boot block [Joseph Kogut]
> 
> ## meta-balena-2.108.35
> ### (2023-02-01)
> 
> * renovate: Add regex manager for balena-engine [Kyle Harding]
> 
> ## meta-balena-2.108.34
> ### (2023-02-01)
> 
> * docs: Add secure boot and disk encryption overview [Alex Gonzalez]
> * hostapp-update-hooks: Fail if new keys are used [Alex Gonzalez]
> * resin-init-flasher: In setupmode program new keys [Alex Gonzalez]
> 
> ## meta-balena-2.108.33
> ### (2023-02-01)
> 
> * tests: os: skip persistent logging test for pi0 [rcooke-warwick]
> 

</details>

# v2.108.32+rev1
## (2023-02-07)


<details>
<summary> Update contracts to 79998a238ca981b890dfb9206f50bde2d367ff7c [Renovate Bot] </summary>

> ## contracts-2.0.42
> ### (2023-02-06)
> 
> * Add golang v1.20 [Trong Nghia Nguyen]
> * Add node v19.6.0 and v18.14.0 [Trong Nghia Nguyen]
> 
> ## contracts-2.0.41
> ### (2023-02-01)
> 
> * Add support for latest dotnet releases v7 (7.0.102) and v6 (6.0.113) [Trong Nghia Nguyen]
> * Add node v19.5.0 [Trong Nghia Nguyen]
> 

</details>

# v2.108.32
## (2023-01-31)


<details>
<summary> Update layers/meta-balena to ccab7759d432f7be780c194087c38eca7e02084d [Renovate Bot] </summary>

> ## meta-balena-2.108.32
> ### (2023-02-01)
> 
> * efitools: Allow builds for ARM architecture [Alex Gonzalez]
> 

</details>

# v2.108.31
## (2023-01-31)


<details>
<summary> Update layers/meta-balena to c3560cf861dbd8505adecd0e12b280c85a0eac88 [Renovate Bot] </summary>

> ## meta-balena-2.108.31
> ### (2023-02-01)
> 
> * rollback-health: bind-mount EFI partition when split from boot [Michal Toman]
> 

</details>

# v2.108.30
## (2023-01-30)


<details>
<summary> Update layers/meta-balena to e7ea08bd6459cb8a0c0c59b61ef3a46caaeaaa68 [Renovate Bot] </summary>

> ## meta-balena-2.108.30
> ### (Invalid date)
> 
> * redsocks: Deploy README and sample configration file [Alexandru Costache]
> * recipes-bsp/u-boot: Import extra uboot environment from scanned devices [Alexandru Costache]
> 

</details>

# v2.108.29+rev1
## (2023-01-28)


<details>
<summary> Update balena-yocto-scripts to fe6beafdcfa7406b20257cf67a6b74cd8f59142f [Renovate Bot] </summary>

> ## balena-yocto-scripts-1.19.23
> ### (2023-01-28)
> 
> * balena-generate-ami: increase import snapshot timeout [Alex Gonzalez]
> * balena-generate-ami: remove s3 temporary image if snapshot import times out [Alex Gonzalez]
> * balena-generate-ami: match instance type with image type [Alex Gonzalez]
> * balena-generate-ami: fix linter warnings [Alex Gonzalez]
> 

</details>

# v2.108.29
## (2023-01-28)


<details>
<summary> Update layers/meta-balena to bdfe242725e83784931987d85f83a35e861683d8 [Renovate Bot] </summary>

> ## meta-balena-2.108.29
> ### (2023-01-28)
> 
> * bluez: Update to v5.66 [Alex Gonzalez]
> 

</details>

# v2.108.28
## (2023-01-26)


<details>
<summary> Update layers/meta-balena to 00324bf0a842b63ee46b24ab5a19bff68d4b3799 [Renovate Bot] </summary>

> ## meta-balena-2.108.28
> ### (2023-01-26)
> 
> * patch: Update balenaOS docs title [Vipul Gupta (@vipulgupta2048)]
> 

</details>

# v2.108.27
## (2023-01-25)


<details>
<summary> Update layers/meta-balena to 73bc1884cad100723ee16dd08c1abd5796260cc2 [Renovate Bot] </summary>

> ## meta-balena-2.108.27
> ### (2023-01-20)
> 
> * tests: os: fix tests that use glider on rpi0 [rcooke-warwick]
> 

</details>

# v2.108.26+rev1
## (2023-01-25)


<details>
<summary> Update balena-yocto-scripts to 41929c1daa51086e2b62c095efac7ca79bb783e0 [Renovate Bot] </summary>

> ## balena-yocto-scripts-1.19.22
> ### (2023-01-25)
> 
> * balena-generate-ami: allow for staging deployments [Alex Gonzalez]
> * jenkins_generate_ami: allow for staging deployment [Alex Gonzalez]
> 

</details>

# v2.108.26
## (2023-01-20)


<details>
<summary> Update layers/meta-balena to 1d7b7e3bd6cd3bc1bbf4bd698a0b946bff498659 [Renovate Bot] </summary>

> ## meta-balena-2.108.26
> ### (2023-01-20)
> 
> * Enable back connectivity check in NetworkManager [Zahari Petkov]
> 

</details>

# v2.108.25
## (2023-01-20)


<details>
<summary> Update layers/meta-balena to b1bc70d3819c8c27041f843bccd82405a7832134 [Renovate Bot] </summary>

> ## meta-balena-2.108.25
> ### (2023-01-18)
> 
> * tests: os: add basic SB/FDE tests [Joseph Kogut]
> 
> ## meta-balena-2.108.24
> ### (2023-01-18)
> 
> * networkmanager: Make iptables wait for xtables.lock [Zahari Petkov]
> 
> ## meta-balena-2.108.23
> ### (2023-01-16)
> 
> * balena-keys: rebuild if keys change [Alex Gonzalez]
> * classes: sign-*: resign if keys change [Alex Gonzalez]
> 
> ## meta-balena-2.108.22
> ### (2023-01-16)
> 
> * workflows: esr: use semver compatible versions [Alex Gonzalez]
> 
> ## meta-balena-2.108.21
> ### (2023-01-14)
> 
> * efitools: Package lock down EFI image into its own package [Alex Gonzalez]
> 
> ## meta-balena-2.108.20
> ### (2023-01-12)
> 
> * workflows: meta-balena-esr: Fix version calculation [Alex Gonzalez]
> 
> ## meta-balena-2.108.19
> ### (2023-01-10)
> 
> * redsocks: Increase maximum number of open files [Alex Gonzalez]
> 
> ## meta-balena-2.108.18
> ### (2023-01-09)
> 
> * Revert "flasher: output logs to serial console" [Joseph Kogut]
> 
> ## meta-balena-2.108.17
> ### (2023-01-09)
> 
> * Update balena-os/balena-supervisor to v14.4.10 [renovate[bot]]
> 
> ## meta-balena-2.108.16
> ### (2023-01-09)
> 
> * balena-supervisor: Set the supervisor package version [Kyle Harding]
> 

</details>

# v2.108.15+rev2
## (2023-01-20)


<details>
<summary> Update balena-yocto-scripts to a30795acce48c90b23fcac273fe0cbcc7497c779 [Renovate Bot] </summary>

> ## balena-yocto-scripts-1.19.21
> ### (2023-01-19)
> 
> * balene-generate-ami: remove key name [Alex Gonzalez]
> 
> ## balena-yocto-scripts-1.19.20
> ### (2023-01-18)
> 
> * jenkins_generate_ami: default to pull cloud-config apps from balena_os [Alex Gonzalez]
> 
> ## balena-yocto-scripts-1.19.19
> ### (2023-01-14)
> 
> * balena-generate-ami: do not remove AMI snapshot [Alex Gonzalez]
> * jenkins_generate_ami: use balena_os tokens instead of org specific token [Alex Gonzalez]
> * jenkins_build: respect the preserve build flag [Alex Gonzalez]
> * balena-generate-ami: cleanup images after deployment [Alex Gonzalez]
> * balena-generate-ami: test image before making it public [Alex Gonzalez]
> 
> ## balena-yocto-scripts-1.19.18
> ### (2023-01-09)
> 
> * balena-generate-ami: Enable TPM support on x86_64 only [Michal Toman]
> 

</details>

# v2.108.15+rev1
## (2023-01-20)


<details>
<summary> Update contracts to 8392bb27f12919d33534f01c28c8ece7c49a7975 [Renovate Bot] </summary>

> ## contracts-2.0.40
> ### (2023-01-18)
> 
> * Add golang v1.19.5 and v1.18.10 [Trong Nghia Nguyen]
> 
> ## contracts-2.0.39
> ### (2023-01-12)
> 
> * hw.device-type: Add Radxa CM3 on Raspberry Pi Compute Module 4 IO Board [Florin Sarbu]
> 

</details>

# v2.108.15
## (2023-01-12)

* Add ESR workflow [Alex Gonzalez]

automatically by Versionist. DO NOT EDIT THIS FILE MANUALLY!
This project adheres to [Semantic Versioning](http://semver.org/).

