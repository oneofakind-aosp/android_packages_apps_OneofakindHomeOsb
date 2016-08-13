.class Lcom/sonymobile/home/apptray/AppTray$4;
.super Ljava/lang/Object;
.source "AppTray.java"

# interfaces
.implements Lcom/sonymobile/flix/util/Animation$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/apptray/AppTray;->hide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/apptray/AppTray;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/apptray/AppTray;)V
    .locals 1

    .prologue
    .line 519
    iput-object p1, p0, Lcom/sonymobile/home/apptray/AppTray$4;->this$0:Lcom/sonymobile/home/apptray/AppTray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray$4;->this$0:Lcom/sonymobile/home/apptray/AppTray;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTray;->onPause()V

    .line 522
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray$4;->this$0:Lcom/sonymobile/home/apptray/AppTray;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTray;->onPrepareClose()V

    .line 523
    return-void
.end method


# virtual methods
.method public onFinish(Lcom/sonymobile/flix/util/Animation;)V
    .locals 2
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 532
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray$4;->this$0:Lcom/sonymobile/home/apptray/AppTray;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTray;->onStop()V

    .line 533
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray$4;->this$0:Lcom/sonymobile/home/apptray/AppTray;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTray;->onClose()V

    .line 535
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray$4;->this$0:Lcom/sonymobile/home/apptray/AppTray;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTray;->getView()Lcom/sonymobile/home/apptray/AppTrayView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayView;->setTouchEnabled(Z)V

    .line 536
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray$4;->this$0:Lcom/sonymobile/home/apptray/AppTray;

    invoke-virtual {v0}, Lcom/sonymobile/home/apptray/AppTray;->getView()Lcom/sonymobile/home/apptray/AppTrayView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/apptray/AppTrayView;->setDescendantAlpha(F)V

    .line 537
    return-void
.end method

.method public onStart(Lcom/sonymobile/flix/util/Animation;)V
    .locals 2
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 527
    iget-object v0, p0, Lcom/sonymobile/home/apptray/AppTray$4;->this$0:Lcom/sonymobile/home/apptray/AppTray;

    # getter for: Lcom/sonymobile/home/apptray/AppTray;->mScene:Lcom/sonymobile/flix/components/Scene;
    invoke-static {v0}, Lcom/sonymobile/home/apptray/AppTray;->access$300(Lcom/sonymobile/home/apptray/AppTray;)Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    const v1, 0x7f0f002c

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->findById(I)Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->setVisible(Z)V

    .line 528
    return-void
.end method
