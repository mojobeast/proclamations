execute if data storage proclamations:temp ContainerTitleTextComponents[0] \
    run data modify storage proclamations:temp ContainerTitleTextComponents append value {"text": " "}

data modify storage proclamations:temp ContainerTitleTextComponents \
    append from storage proclamations:temp NewTextComponent