.class Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$2;
.super Landroid/os/storage/StorageEventListener;
.source "UsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 160
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 163
    .local v0, "isExternalPath":Z
    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 164
    :cond_0
    const-string v1, "shared"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090288

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 172
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    # invokes: Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->updateUsbFunctionState()V
    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->access$200(Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;)V

    goto :goto_0

    .line 167
    :cond_2
    const-string v1, "shared"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "unmounted"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings$2;->this$0:Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090289

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
