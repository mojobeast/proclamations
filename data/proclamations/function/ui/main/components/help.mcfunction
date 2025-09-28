data modify storage proclamations:temp WIPDialogAction set value {\
    label: "Help",\
    width: 50,\
    tooltip: "Open help",\
    action: {\
        type: "run_command",\
        command: "trigger proclamations.ui.action set 3"\
    }\
}

data modify storage proclamations:dialog dialog.actions \
  append from storage proclamations:temp WIPDialogAction