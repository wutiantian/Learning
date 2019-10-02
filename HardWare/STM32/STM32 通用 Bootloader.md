# 使用 STM32 通用 Bootloader ，让 OTA 更加 Easy

最新 RT-Thread 发布了一款 STM32 系列的通用 BootLoader，有兴趣的小伙伴可以用用，我试了下，挺方便的。

RT-Thread 通用 Bootloader 有如下特点：

- 以 bin 文件的形式提供，无需修改即可使用
- 资源占用小，ROM 最小只需要 16KB，最大 32KB
- 适用于多系列 STM32 芯片（目前支持 F1 和 F4 系列 ）
- 支持各种 SPI Flash 存储固件
- 支持固件加解密功能
- 支持多种固件压缩方式
- 支持恢复出厂固件功能
- 以上功能均可自由配置



官方文档中心看这里：

[STM32 通用 BootLoader 应用笔记](https://www.rt-thread.org/document/site/application-note/system/rtboot/an0028-rtboot/)

下图展示了 HTTP OTA 升级方式的过程： 

![img](https://www.rt-thread.org/qa/data/attachment/forum/201903/31/103742vauewcywcyqunpap.gif) 
