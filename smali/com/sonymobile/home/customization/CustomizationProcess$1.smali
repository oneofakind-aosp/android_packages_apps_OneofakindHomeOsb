.class Lcom/sonymobile/home/customization/CustomizationProcess$1;
.super Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;
.source "CustomizationProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/customization/CustomizationProcess;->notifyListenersComplete(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonymobile/home/util/ObserverList$DispatchRunnable",
        "<",
        "Lcom/sonymobile/home/customization/CustomizationProcess$CustomizeListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/customization/CustomizationProcess;

.field final synthetic val$didRun:Z

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/sonymobile/home/customization/CustomizationProcess;ZZ)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/sonymobile/home/customization/CustomizationProcess$1;->this$0:Lcom/sonymobile/home/customization/CustomizationProcess;

    iput-boolean p2, p0, Lcom/sonymobile/home/customization/CustomizationProcess$1;->val$success:Z

    iput-boolean p3, p0, Lcom/sonymobile/home/customization/CustomizationProcess$1;->val$didRun:Z

    invoke-direct {p0}, Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/sonymobile/home/customization/CustomizationProcess$CustomizeListener;)V
    .locals 3
    .param p1, "observer"    # Lcom/sonymobile/home/customization/CustomizationProcess$CustomizeListener;

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/sonymobile/home/customization/CustomizationProcess$1;->val$success:Z

    iget-boolean v1, p0, Lcom/sonymobile/home/customization/CustomizationProcess$1;->val$didRun:Z

    iget-object v2, p0, Lcom/sonymobile/home/customization/CustomizationProcess$1;->this$0:Lcom/sonymobile/home/customization/CustomizationProcess;

    # getter for: Lcom/sonymobile/home/customization/CustomizationProcess;->mStageAddedDuringUpgrade:Z
    invoke-static {v2}, Lcom/sonymobile/home/customization/CustomizationProcess;->access$000(Lcom/sonymobile/home/customization/CustomizationProcess;)Z

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/sonymobile/home/customization/CustomizationProcess$CustomizeListener;->onCustomizationCompleted(ZZZ)V

    .line 256
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 251
    check-cast p1, Lcom/sonymobile/home/customization/CustomizationProcess$CustomizeListener;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/customization/CustomizationProcess$1;->run(Lcom/sonymobile/home/customization/CustomizationProcess$CustomizeListener;)V

    return-void
.end method
