.class Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothNameDialogFragment$2;
.super Ljava/lang/Object;
.source "BluetoothNameDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothNameDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothNameDialogFragment;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothNameDialogFragment;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothNameDialogFragment$2;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 106
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothNameDialogFragment$2;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothNameDialogFragment;

    iget-object v1, v1, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "deviceName":Ljava/lang/String;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothNameDialogFragment$2;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothNameDialogFragment;

    # invokes: Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothNameDialogFragment;->setDeviceName(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothNameDialogFragment;->access$000(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothNameDialogFragment;Ljava/lang/String;)V

    .line 108
    return-void
.end method