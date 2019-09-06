within WetLab.Icons;
model Block
  parameter Boolean show_name = true "= true to display component name" annotation(choices(checkBox=true), Dialog(tab="Visualization"));

  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={Text(
          extent={{-160,-120},{162,-160}},
          visibility = show_name,
          lineColor={28,108,200},
          fillColor={215,215,215},
          fillPattern=FillPattern.None,
          textString="%name"), Rectangle(
          extent={{-100,100},{100,-100}},
          lineColor={28,108,200},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid)}), Diagram(coordinateSystem(
          preserveAspectRatio=false)));
end Block;
