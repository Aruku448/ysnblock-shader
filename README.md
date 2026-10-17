# Ysnblock Shader

A lightweight Minecraft shader pack starter for Iris and OptiFine. The initial pass keeps vanilla lighting intact and adds a restrained color grade, with an intentionally small shader surface for future features.

## Installation

1. Download the repository as a ZIP (or package the `shaders` directory and `shaders.properties` at the ZIP root).
2. Place the ZIP in `.minecraft/shaderpacks`.
3. Select **Ysnblock Shader** in the Minecraft shader settings.

Use Minecraft with [Iris](https://irisshaders.dev/) or OptiFine. Shader pack support can vary across Minecraft and loader versions.

## Current features

- Subtle daylight color grading for terrain.
- Vanilla block and entity rendering paths remain unchanged.
- Small, readable GLSL files intended as a starting point.

## Project layout

```text
shaders/
  gbuffers_terrain.vsh
  gbuffers_terrain.fsh
shaders.properties
```

## Development

Edit the GLSL files, then reload shaders in-game (commonly `F3+R` with Iris). This starter does not bundle game assets or third-party code.

## License

MIT. See [LICENSE](LICENSE).

---

# Ysnblock Shader（中文）

这是一个面向 Iris 与 OptiFine 的轻量 Minecraft 着色器包起始项目。当前版本保留原版光照，只为地形加入克制的色彩调整，方便继续扩展。

## 安装

1. 将仓库下载为 ZIP（也可以把 `shaders` 文件夹和 `shaders.properties` 放在 ZIP 根目录后打包）。
2. 将 ZIP 放入 `.minecraft/shaderpacks`。
3. 在 Minecraft 的着色器设置中选择 **Ysnblock Shader**。

需要安装 [Iris](https://irisshaders.dev/) 或 OptiFine。不同 Minecraft 与加载器版本的兼容情况可能不同。

## 当前效果

- 为地形添加轻微的日间色彩调整。
- 方块与实体渲染路径保持原版行为。
- GLSL 文件尽量精简，便于继续开发。

## 开发

修改 GLSL 文件后，在游戏中重新加载着色器（Iris 通常可使用 `F3+R`）。本项目不包含游戏资源或第三方代码。
