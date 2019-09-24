within WetLab.Interfaces;
expandable connector Actuators "Actuator bus"
  annotation (
    preferredView="text",
    Diagram(coordinateSystem(preserveAspectRatio=false)),
    Icon(graphics={Polygon(
          points={{-100,100},{100,100},{100,0},{100,-100},{-100,-100},{-100,100}},

          lineColor={0,220,127},
          fillColor={0,127,127},
          fillPattern=FillPattern.Solid), Text(
          extent={{-60,60},{60,-60}},
          lineColor={255,255,255},
          fillColor={127,0,127},
          fillPattern=FillPattern.Solid,
          textString="A")}),
    Documentation(info="<html>
</html>"));

end Actuators;
