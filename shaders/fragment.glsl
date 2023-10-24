uniform float time;
uniform float progress;
uniform sampler2D texture1;
uniform vec4 resolution;
varying vec2 vUv;
varying vec3 vPosition;
float PI = 3.1415926;
varying float vProgress;

void main() {

	float dist = length(gl_PointCoord - vec2(.5));

	float alpha = 1. - smoothstep(0.45, .5, dist);

	gl_FragColor = vec4(1., 1., 1., alpha * 0.5 + 0.5 * vProgress);
}