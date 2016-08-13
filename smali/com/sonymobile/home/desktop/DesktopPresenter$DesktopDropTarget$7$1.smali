.class Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$7$1;
.super Ljava/lang/Object;
.source "DesktopPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$7;->onAnimationFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$7;

.field final synthetic val$leftPageView:Lcom/sonymobile/home/ui/pageview/PageView;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$7;Lcom/sonymobile/home/ui/pageview/PageView;)V
    .locals 0

    .prologue
    .line 1358
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$7$1;->this$2:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$7;

    iput-object p2, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$7$1;->val$leftPageView:Lcom/sonymobile/home/ui/pageview/PageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$7$1;->this$2:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$7;

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$7;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget$7$1;->val$leftPageView:Lcom/sonymobile/home/ui/pageview/PageView;

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter;->deletePage(Lcom/sonymobile/home/ui/pageview/PageView;)V
    invoke-static {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$4700(Lcom/sonymobile/home/desktop/DesktopPresenter;Lcom/sonymobile/home/ui/pageview/PageView;)V

    .line 1362
    return-void
.end method
