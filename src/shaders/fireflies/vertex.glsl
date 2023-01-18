uniform float uPixelRatio;
uniform float uSize;

void main()
{
    vec4 modelPosition = modelMatrix * vec4(position, 1.0);
    vec4 viewPosition = viewMatrix * modelPosition;
    vec4 projectionMatrix = projectionMatrix * viewPosition;

    gl_Position = projectionMatrix;
    gl_PointSize = uSize * uPixelRatio;
    gl_PointSize *= (1.0 / -viewPosition.z);
}