.class Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd$3;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd$3;->this$0:Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd$3;->this$0:Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd;

    iget-boolean v0, v0, Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd;->mAdding:Z

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd$3;->this$0:Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd;->addAndFinish()V

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd$3;->this$0:Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd;

    iget-boolean v0, v0, Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd;->mWaitingForRemoveMsg:Z

    if-nez v0, :cond_0

    .line 278
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd$3;->this$0:Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd;->mWaitingForRemoveMsg:Z

    .line 282
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd$3;->this$0:Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd;

    iget-object v0, v0, Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd$3;->this$0:Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd;

    iget-object v1, v1, Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    new-instance v2, Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd$3$1;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd$3;->this$0:Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd;

    iget-object v3, v3, Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd$3$1;-><init>(Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd$3;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    .line 294
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd$3;->this$0:Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd$3$2;

    invoke-direct {v1, p0}, Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd$3$2;-><init>(Lcom/flyme/deviceoriginalsettings/DeviceAdminAdd$3;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    goto :goto_1
.end method
