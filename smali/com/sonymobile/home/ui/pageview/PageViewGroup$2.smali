.class Lcom/sonymobile/home/ui/pageview/PageViewGroup$2;
.super Lcom/sonymobile/flix/util/DynamicsTask;
.source "PageViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/ui/pageview/PageViewGroup;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/home/settings/UserSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonymobile/flix/util/DynamicsTask",
        "<",
        "Lcom/sonymobile/flix/util/SpringDynamics;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/ui/pageview/PageViewGroup;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/ui/pageview/PageViewGroup;Lcom/sonymobile/flix/util/SpringDynamics;)V
    .locals 0
    .param p2, "x0"    # Lcom/sonymobile/flix/util/SpringDynamics;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$2;->this$0:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    invoke-direct {p0, p2}, Lcom/sonymobile/flix/util/DynamicsTask;-><init>(Lcom/sonymobile/flix/util/Dynamics;)V

    return-void
.end method


# virtual methods
.method protected notifyFinish()V
    .locals 0

    .prologue
    .line 266
    invoke-super {p0}, Lcom/sonymobile/flix/util/DynamicsTask;->notifyFinish()V

    .line 267
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/pageview/PageViewGroup$2;->clearListeners()V

    .line 268
    return-void
.end method

.method public bridge synthetic onFinish(Lcom/sonymobile/flix/util/Dynamics;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/flix/util/Dynamics;

    .prologue
    .line 248
    check-cast p1, Lcom/sonymobile/flix/util/SpringDynamics;

    .end local p1    # "x0":Lcom/sonymobile/flix/util/Dynamics;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup$2;->onFinish(Lcom/sonymobile/flix/util/SpringDynamics;)V

    return-void
.end method

.method public onFinish(Lcom/sonymobile/flix/util/SpringDynamics;)V
    .locals 2
    .param p1, "dynamics"    # Lcom/sonymobile/flix/util/SpringDynamics;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$2;->this$0:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    invoke-virtual {p1}, Lcom/sonymobile/flix/util/SpringDynamics;->getValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->onZoomFinished(F)V

    .line 262
    return-void
.end method

.method public bridge synthetic onStart(Lcom/sonymobile/flix/util/Dynamics;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/flix/util/Dynamics;

    .prologue
    .line 248
    check-cast p1, Lcom/sonymobile/flix/util/SpringDynamics;

    .end local p1    # "x0":Lcom/sonymobile/flix/util/Dynamics;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup$2;->onStart(Lcom/sonymobile/flix/util/SpringDynamics;)V

    return-void
.end method

.method public onStart(Lcom/sonymobile/flix/util/SpringDynamics;)V
    .locals 2
    .param p1, "dynamics"    # Lcom/sonymobile/flix/util/SpringDynamics;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$2;->this$0:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    invoke-virtual {p1}, Lcom/sonymobile/flix/util/SpringDynamics;->getValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->onZoomStarted(F)V

    .line 252
    return-void
.end method

.method public bridge synthetic onUpdate(Lcom/sonymobile/flix/util/Dynamics;FF)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/flix/util/Dynamics;
    .param p2, "x1"    # F
    .param p3, "x2"    # F

    .prologue
    .line 248
    check-cast p1, Lcom/sonymobile/flix/util/SpringDynamics;

    .end local p1    # "x0":Lcom/sonymobile/flix/util/Dynamics;
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonymobile/home/ui/pageview/PageViewGroup$2;->onUpdate(Lcom/sonymobile/flix/util/SpringDynamics;FF)V

    return-void
.end method

.method public onUpdate(Lcom/sonymobile/flix/util/SpringDynamics;FF)V
    .locals 1
    .param p1, "dynamics"    # Lcom/sonymobile/flix/util/SpringDynamics;
    .param p2, "value"    # F
    .param p3, "delta"    # F

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sonymobile/home/ui/pageview/PageViewGroup$2;->this$0:Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    invoke-virtual {v0, p2}, Lcom/sonymobile/home/ui/pageview/PageViewGroup;->onZoomUpdated(F)V

    .line 257
    return-void
.end method
