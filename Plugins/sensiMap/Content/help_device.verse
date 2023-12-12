using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }

hello_world_device := class(creative_device):
    @editable
    MyButtonDevice:button_device = button_device{}

    OnBegin<override>()<suspends>:void=
        # Lier la fonction OnButtonInteractedWith à l'événement InteractedWithEvent de l'appareil Bouton
        MyButtonDevice.InteractedWithEvent.Subscribe(OnButtonInteractedWith)

    OnButtonInteractedWith(InAgent:agent):void=
        Print("Player interacted with button!")