#version 450 core

#define TERRAIN_GBUFFER
#define FRAGMENT_STAGE
#include "/libs/Uniforms.glsl"
#include "/libs/Settings.glsl"
#include "/libs/Utilities.glsl"

in vec2 vTexCoord;
in vec4 vVertexColor;

layout(location = 0) out vec4 fragColor;

void main() {
    vec4 color = texture(gtexture, vTexCoord) * vVertexColor;
    if (color.a < 0.1) discard;

    fragColor = vec4(ysnApplyColorGrade(color.rgb), color.a);
}
