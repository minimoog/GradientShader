import QtQuick 1.0
import Qt.labs.shaders 1.0

ShaderEffectItem {

    property color color0 : "white"
    property real stop0: 0
    property color color1 : "black"
    property real stop1: 1

    fragmentShader: "
        varying highp vec2 qt_TexCoord0;

        uniform lowp vec4 color0;
        uniform lowp float stop0;
        uniform lowp vec4 color1;
        uniform lowp float stop1;

        void main(void) {
            //1 - qt_TexCoord0 because tex t coordinate is reverse of y screen coordinate
            float stop = (1 - qt_TexCoord0.t - stop0) / (stop1 - stop0);
            float t = clamp(stop, 0, 1);

            gl_FragColor = mix(color0, color1, t);
        }
    "
}
