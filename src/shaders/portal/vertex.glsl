uniform float u_pixelRatio;
uniform float u_pointSize;
uniform float u_time;

attribute float a_scale;

varying vec2 vUv;

void main() {
    vec4 modelPosition = modelMatrix * vec4(position, 1.0);
    vec4 viewPosition = viewMatrix * modelPosition;
    vec4 projectionPosition = projectionMatrix * viewPosition;

    gl_Position = projectionPosition;

    // Varying
    vUv = uv;
}