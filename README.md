# Ysnblock Shader

A minimal Minecraft terrain shader pack starter targeting **GLSL 4.5+**. It uses a core-profile vertex/fragment pipeline, separates reusable code into guarded GLSL libraries, and applies a subtle warm color grade to terrain.

## Requirements

- A Minecraft shader loader and graphics driver that expose OpenGL 4.5 or newer.
- A shader-pack core configuration that provides the OptiFine-style attributes and uniforms used here (`vaPosition`, `vaUV0`, `vaColor`, `chunkOffset`, `modelViewMatrix`, `projectionMatrix`, `textureMatrix`, and `gtexture`).

GLSL 4.5 is an intentional minimum target. Older shader packs in the local reference collection use GLSL 3.30–4.30 and do not validate this version target.

## Install

For a folder install, extract this project into `.minecraft/shaderpacks/Ysnblock Shader/`. The `shaders/` directory must be directly inside that pack folder. To make a shader-pack ZIP, put the contents of this project's `shaders/` directory at the ZIP root; do not include an extra project-directory level.

## Structure

```text
Ysnblock Shader/                 # Pack shell
  shaders/                       # Shader root
    gbuffers_terrain.vsh
    gbuffers_terrain.fsh
    shaders.properties
    libs/
      Attributes.glsl
      Settings.glsl
      Uniforms.glsl
      Utilities.glsl
```

The shader pack currently overrides the terrain geometry pass. Other geometry passes continue through the loader's normal fallback path.

## Rendering path

The vertex shader transforms chunk-relative terrain positions into view space, then clip space:

```glsl
gl_Position = projectionMatrix
            * modelViewMatrix
            * vec4(vaPosition + chunkOffset, 1.0);
```

It passes texture coordinates and vertex color to the fragment shader. The fragment shader samples `gtexture`, preserves alpha cutouts, and applies a small warm tint. The color-grade option is declared in `libs/Settings.glsl` and exposed through `shaders.properties`.

## Libraries and options

Reusable declarations and functions live in `shaders/libs/` and use include guards. Shader stages define their context macros before including stage-aware attributes and uniforms. OptiFine's `#include` paths are relative to the shader root and start with `/`.

## 中文说明

这是一个以 **GLSL 4.5 及以上版本**为目标的 Minecraft 基础地形光影包。它使用核心配置下的顶点/片元着色流程，通过分块偏移、模型视口矩阵和投影矩阵完成坐标变换，并为地形纹理添加轻微暖色调。

运行环境需要提供 OpenGL 4.5 或更高版本，并支持本项目使用的 OptiFine 风格输入与 uniform。参考目录中的光影最高主要使用 GLSL 4.3，因此这里只借鉴它们的库组织和渲染流程，不把它们当作 GLSL 4.5 的兼容性验证。

文件夹安装时，将项目解压到 `.minecraft/shaderpacks/Ysnblock Shader/`，确保 `shaders/` 直接位于外壳目录内。制作光影 ZIP 时，将 `shaders/` 文件夹中的内容放到 ZIP 根目录，避免多套一层项目目录。

通用代码放在 `shaders/libs/`，并通过 include guard 防止重复包含。当前只重写地形几何缓冲阶段；其他几何仍由加载器的默认流程处理。色彩调整强度可在光影设置中更改。

## License

MIT. See [LICENSE](LICENSE).
