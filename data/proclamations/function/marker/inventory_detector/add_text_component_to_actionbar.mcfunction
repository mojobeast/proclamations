execute if data storage proclamations:temp ContainerActionbarTextComponents[0] \
    run data modify storage proclamations:temp ContainerActionbarTextComponents append value {"text": " "}

data modify storage proclamations:temp ContainerActionbarTextComponents \
    append from storage proclamations:temp NewTextComponent