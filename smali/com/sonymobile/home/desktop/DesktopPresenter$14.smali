.class Lcom/sonymobile/home/desktop/DesktopPresenter$14;
.super Ljava/lang/Object;
.source "DesktopPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/DesktopPresenter;->onPageDeleted(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

.field final synthetic val$deletedPosition:I


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/DesktopPresenter;I)V
    .locals 0

    .prologue
    .line 3247
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$14;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    iput p2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$14;->val$deletedPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished()V
    .locals 6

    .prologue
    .line 3250
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$14;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDeletePageAnimationFinishedListener:Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$7200(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3251
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$14;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDeletePageAnimationFinishedListener:Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$7200(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;->onAnimationFinished()V

    .line 3252
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$14;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDeletePageAnimationFinishedListener:Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;
    invoke-static {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$7202(Lcom/sonymobile/home/desktop/DesktopPresenter;Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;)Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;

    .line 3254
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$14;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->onContentChanged()V

    .line 3255
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$14;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopView;->setContentChangeEnabled(Z)V

    .line 3256
    const-string v0, "CUI"

    const-string v1, "PageRemoved"

    const-string v2, ""

    iget v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$14;->val$deletedPosition:I

    int-to-long v4, v3

    invoke-static {v0, v1, v2, v4, v5}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 3257
    return-void
.end method
