.class Lcom/flyme/deviceoriginalsettings/RadioInfo$5;
.super Ljava/lang/Thread;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/RadioInfo;->updatePingState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$updatePingResults:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 811
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$5;->this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$5;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$5;->val$updatePingResults:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 814
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$5;->this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

    # invokes: Lcom/flyme/deviceoriginalsettings/RadioInfo;->pingHostname()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->access$3200(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V

    .line 815
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$5;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$5;->val$updatePingResults:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 816
    return-void
.end method
