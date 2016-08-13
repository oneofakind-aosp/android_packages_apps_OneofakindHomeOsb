.class Lcom/sonymobile/home/desktop/DesktopPresenter$13;
.super Lcom/sonymobile/flix/util/Animation$Listener$Adapter;
.source "DesktopPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/DesktopPresenter;->onPageAdded(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

.field final synthetic val$pageId:I


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/DesktopPresenter;I)V
    .locals 0

    .prologue
    .line 3213
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$13;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    iput p2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$13;->val$pageId:I

    invoke-direct {p0}, Lcom/sonymobile/flix/util/Animation$Listener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/sonymobile/flix/util/Animation;)V
    .locals 6
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 3217
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$13;->val$pageId:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 3218
    iget v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$13;->val$pageId:I

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$13;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/desktop/DesktopView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 3219
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$13;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$13;->val$pageId:I

    new-instance v2, Lcom/sonymobile/home/desktop/DesktopPresenter$13$1;

    invoke-direct {v2, p0}, Lcom/sonymobile/home/desktop/DesktopPresenter$13$1;-><init>(Lcom/sonymobile/home/desktop/DesktopPresenter$13;)V

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/desktop/DesktopView;->setCurrentPage(ILcom/sonymobile/flix/util/Animation$Listener;)V

    .line 3229
    :goto_0
    const-string v0, "CUI"

    const-string v1, "PageAdded"

    const-string v2, ""

    iget v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$13;->val$pageId:I

    int-to-long v4, v3

    invoke-static {v0, v1, v2, v4, v5}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 3232
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$13;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->onContentChanged()V

    .line 3233
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$13;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopView;->setContentChangeEnabled(Z)V

    .line 3234
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$13;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mScene:Lcom/sonymobile/flix/components/Scene;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$7100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->enableTouch()V

    .line 3235
    return-void

    .line 3226
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$13;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter;->removeExpandBoundsPagesIfNeeded()V
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1700(Lcom/sonymobile/home/desktop/DesktopPresenter;)V

    goto :goto_0
.end method
