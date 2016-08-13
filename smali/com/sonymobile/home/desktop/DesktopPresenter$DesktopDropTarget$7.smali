.class Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$7;
.super Ljava/lang/Object;
.source "DesktopPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->deleteEmptyPagesAddedOnPageSwitchIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

.field final synthetic val$leftPage:I


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;I)V
    .locals 0

    .prologue
    .line 1351
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$7;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iput p2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$7;->val$leftPage:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished()V
    .locals 3

    .prologue
    .line 1355
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$7;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget v2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$7;->val$leftPage:I

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->getEmptyPageViewAddedOnPageSwitch(I)Lcom/sonymobile/home/ui/pageview/PageView;
    invoke-static {v1, v2}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->access$4600(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;I)Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v0

    .line 1357
    .local v0, "leftPageView":Lcom/sonymobile/home/ui/pageview/PageView;
    if-eqz v0, :cond_0

    .line 1358
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$7;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v1, v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$4800(Lcom/sonymobile/home/desktop/DesktopPresenter;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$7$1;

    invoke-direct {v2, p0, v0}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$7$1;-><init>(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$7;Lcom/sonymobile/home/ui/pageview/PageView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1365
    :cond_0
    return-void
.end method
