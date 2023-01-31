# Changelog

All notable changes to this project will be documented in this file

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

