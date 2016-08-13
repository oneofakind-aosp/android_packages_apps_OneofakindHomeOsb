.class Lcom/sonymobile/home/customization/CustomizationProcess$2;
.super Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;
.source "CustomizationProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/customization/CustomizationProcess;->notifyListenersStarting()V
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


# direct methods
.method constructor <init>(Lcom/sonymobile/home/customization/CustomizationProcess;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/sonymobile/home/customization/CustomizationProcess$2;->this$0:Lcom/sonymobile/home/customization/CustomizationProcess;

    invoke-direct {p0}, Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/sonymobile/home/customization/CustomizationProcess$CustomizeListener;)V
    .locals 0
    .param p1, "observer"    # Lcom/sonymobile/home/customization/CustomizationProcess$CustomizeListener;

    .prologue
    .line 268
    invoke-interface {p1}, Lcom/sonymobile/home/customization/CustomizationProcess$CustomizeListener;->onCustomizationStarted()V

    .line 269
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 264
    check-cast p1, Lcom/sonymobile/home/customization/CustomizationProcess$CustomizeListener;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/customization/CustomizationProcess$2;->run(Lcom/sonymobile/home/customization/CustomizationProcess$CustomizeListener;)V

    return-void
.end method
