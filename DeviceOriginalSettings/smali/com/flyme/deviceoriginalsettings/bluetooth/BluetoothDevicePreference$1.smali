.class Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference$1;
.super Ljava/lang/Object;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;->askDisconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 216
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;

    # getter for: Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;->access$000(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;)Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDevice;->disconnect()V

    .line 220
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;

    # getter for: Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;->access$200(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference$1;->this$0:Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;

    # getter for: Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;->access$100(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDevicePreference;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "BluetoothDevicePreference"

    const-string v2, "mBluetoothReceiver already unregistered"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method