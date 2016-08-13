.class Lcom/sonymobile/home/HomeApplication$3;
.super Ljava/lang/Object;
.source "HomeApplication.java"

# interfaces
.implements Lcom/sonymobile/home/customization/CustomizationProcess$CustomizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/HomeApplication;->doCustomizationIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/HomeApplication;

.field final synthetic val$custProcess:Lcom/sonymobile/home/customization/CustomizationProcess;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/HomeApplication;Lcom/sonymobile/home/customization/CustomizationProcess;)V
    .locals 0

    .prologue
    .line 724
    iput-object p1, p0, Lcom/sonymobile/home/HomeApplication$3;->this$0:Lcom/sonymobile/home/HomeApplication;

    iput-object p2, p0, Lcom/sonymobile/home/HomeApplication$3;->val$custProcess:Lcom/sonymobile/home/customization/CustomizationProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomizationCompleted(ZZZ)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "customizationExecuted"    # Z
    .param p3, "stageAddedDuringUpgrade"    # Z

    .prologue
    .line 733
    # getter for: Lcom/sonymobile/home/HomeApplication;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/home/HomeApplication;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCustomizationCompleted: success="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", executed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication$3;->this$0:Lcom/sonymobile/home/HomeApplication;

    # setter for: Lcom/sonymobile/home/HomeApplication;->mStageAddedDuringUpgrade:Z
    invoke-static {v0, p3}, Lcom/sonymobile/home/HomeApplication;->access$302(Lcom/sonymobile/home/HomeApplication;Z)Z

    .line 737
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 738
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication$3;->val$custProcess:Lcom/sonymobile/home/customization/CustomizationProcess;

    invoke-virtual {v0}, Lcom/sonymobile/home/customization/CustomizationProcess;->finalizeCustomization()V

    .line 741
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication$3;->this$0:Lcom/sonymobile/home/HomeApplication;

    invoke-virtual {v0}, Lcom/sonymobile/home/HomeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sonyericsson.home.CUSTOMIZATION_DONE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication$3;->val$custProcess:Lcom/sonymobile/home/customization/CustomizationProcess;

    invoke-virtual {v0}, Lcom/sonymobile/home/customization/CustomizationProcess;->destroy()V

    .line 747
    iget-object v0, p0, Lcom/sonymobile/home/HomeApplication$3;->this$0:Lcom/sonymobile/home/HomeApplication;

    # invokes: Lcom/sonymobile/home/HomeApplication;->notifyCustomizationDone()V
    invoke-static {v0}, Lcom/sonymobile/home/HomeApplication;->access$400(Lcom/sonymobile/home/HomeApplication;)V

    .line 748
    return-void
.end method

.method public onCustomizationStarted()V
    .locals 2

    .prologue
    .line 728
    # getter for: Lcom/sonymobile/home/HomeApplication;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/home/HomeApplication;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCustomizationStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    return-void
.end method
