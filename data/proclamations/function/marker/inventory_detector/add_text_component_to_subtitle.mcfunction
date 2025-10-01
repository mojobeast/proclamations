execute if data storage proclamations:temp ContainerSubtitleTextComponents[0] \
    run data modify storage proclamations:temp ContainerSubtitleTextComponents append value {"text": " "}

data modify storage proclamations:temp ContainerSubtitleTextComponents \
    append from storage proclamations:temp NewTextComponent