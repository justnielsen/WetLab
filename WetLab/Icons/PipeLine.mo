within WetLab.Icons;
model PipeLine
  extends WetLab.Icons.Block;
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
        Line(points={{-100,0},{36,0}}, color={28,108,200}),
        Line(
          points={{36,0},{38,0},{40,-4},{38,-8},{36,-8}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{-2,4},{0,4},{2,0},{0,-4},{-2,-4}},
          color={28,108,200},
          smooth=Smooth.Bezier,
          origin={-78,-12},
          rotation=180),
        Line(
          points={{-76,-8},{36,-8}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{-76,-16},{36,-16}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{36,-16},{38,-16},{40,-20},{38,-24},{36,-24}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{-76,-24},{36,-24}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{-2,4},{0,4},{2,0},{0,-4},{-2,-4}},
          color={28,108,200},
          smooth=Smooth.Bezier,
          origin={-78,-28},
          rotation=180),
        Line(
          points={{-76,-32},{36,-32}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{36,-32},{38,-32},{40,-36},{38,-40},{36,-40}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{-76,-40},{36,-40}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{-2,4},{0,4},{2,0},{0,-4},{-2,-4}},
          color={28,108,200},
          smooth=Smooth.Bezier,
          origin={-78,-44},
          rotation=180),
        Line(
          points={{-76,-48},{36,-48}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{36,-48},{44,-48},{48,-44},{48,-36}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{-6,-6},{2,-6},{6,-2},{6,6}},
          color={28,108,200},
          smooth=Smooth.Bezier,
          origin={54,-6},
          rotation=180),
        Line(
          points={{48,-36},{48,-12}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(
          points={{100,0},{60,0}},
          color={28,108,200},
          smooth=Smooth.Bezier),
        Line(points={{70,0},{70,60},{100,60}}, color={28,108,200}),
        Polygon(
          points={{64,42},{76,42},{64,18},{76,18},{64,42}},
          lineColor={28,108,200},
          fillColor={215,215,215},
          fillPattern=FillPattern.Solid)}), Diagram(coordinateSystem(
          preserveAspectRatio=false)));
end PipeLine;
