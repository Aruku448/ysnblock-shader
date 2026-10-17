#version 450 core

#define TERRAIN_GBUFFER
#define VERTEX_STAGE
#include "/libs/Attributes.glsl"
#include "/libs/Uniforms.glsl"

out vec2 vTexCoord;
out vec4 vVertexColor;

void main() {
    vec4 viewPosition = modelViewMatrix * vec4(vaPosition + chunkOffset, 1.0);
    gl_Position = projectionMatrix * viewPosition;

    vTexCoord = (textureMatrix * vec4(vaUV0, 0.0, 1.0)).xy;
    vVertexColor = vaColor;
}
