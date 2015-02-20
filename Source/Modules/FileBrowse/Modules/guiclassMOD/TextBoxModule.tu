unit
module TextBoxModule
    import TextBoxClass, WidgetGlobals
    export HScrollProc, VScrollProc, DoNothing, DoNothing2


    procedure HScrollProc (value : int)
	TextBoxClass (WidgetGlobals.selectedWidget ->
	    GetUserObject).HScrollProc (value)
    end HScrollProc


    procedure VScrollProc (value : int)
	TextBoxClass (WidgetGlobals.selectedWidget ->
	    GetUserObject).VScrollProc (value)
    end VScrollProc

    procedure DoNothing (line : int)
    end DoNothing

    procedure DoNothing2 (line : int, chosen : boolean)     %(RCC)
    end DoNothing2
end TextBoxModule

