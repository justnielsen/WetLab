within WetLab.Interfaces;
expandable connector Transducers "Measurement bus"

  annotation (
    preferredView="text",
    Diagram(coordinateSystem(preserveAspectRatio=false)),
    Icon(graphics={Polygon(
          points={{-100,100},{100,100},{100,0},{100,-100},{-100,-100},{-100,100}},
          lineColor={255,170,213},
          fillColor={127,0,127},
          fillPattern=FillPattern.Solid), Text(
          extent={{-60,60},{60,-60}},
          lineColor={255,255,255},
          fillColor={127,0,127},
          fillPattern=FillPattern.Solid,
          textString="T")}));

end Transducers;
