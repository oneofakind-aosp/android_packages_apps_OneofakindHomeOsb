.class Lcom/sonymobile/home/desktop/DesktopView$8;
.super Lcom/sonymobile/flix/util/Animation$Listener$Adapter;
.source "DesktopView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/DesktopView;->runDeletePageAnimation(ILcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/DesktopView;

.field final synthetic val$addExpandBoundsPages:Z

.field final synthetic val$listener:Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/DesktopView;Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;Z)V
    .locals 0

    .prologue
    .line 1452
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopView$8;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    iput-object p2, p0, Lcom/sonymobile/home/desktop/DesktopView$8;->val$listener:Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;

    iput-boolean p3, p0, Lcom/sonymobile/home/desktop/DesktopView$8;->val$addExpandBoundsPages:Z

    invoke-direct {p0}, Lcom/sonymobile/flix/util/Animation$Listener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/sonymobile/flix/util/Animation;)V
    .locals 2
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView$8;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    # getter for: Lcom/sonymobile/home/desktop/DesktopView;->mPageViewToDelete:Lcom/sonymobile/home/ui/pageview/PageView;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopView;->access$1100(Lcom/sonymobile/home/desktop/DesktopView;)Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/pageview/PageView;->onRemove()V

    .line 1459
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView$8;->val$listener:Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;

    if-eqz v0, :cond_0

    .line 1460
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView$8;->val$listener:Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;

    invoke-interface {v0}, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimationFinishedListener;->onAnimationFinished()V

    .line 1463
    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/home/desktop/DesktopView$8;->val$addExpandBoundsPages:Z

    if-eqz v0, :cond_1

    .line 1465
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView$8;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->addExpandBoundsPages()V

    .line 1469
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView$8;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    # getter for: Lcom/sonymobile/home/desktop/DesktopView;->mPageViewToDelete:Lcom/sonymobile/home/ui/pageview/PageView;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopView;->access$1100(Lcom/sonymobile/home/desktop/DesktopView;)Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/pageview/PageView;->setContentVisible(Z)V

    .line 1470
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView$8;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/home/desktop/DesktopView;->mPageViewToDelete:Lcom/sonymobile/home/ui/pageview/PageView;
    invoke-static {v0, v1}, Lcom/sonymobile/home/desktop/DesktopView;->access$1102(Lcom/sonymobile/home/desktop/DesktopView;Lcom/sonymobile/home/ui/pageview/PageView;)Lcom/sonymobile/home/ui/pageview/PageView;

    .line 1471
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView$8;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    # getter for: Lcom/sonymobile/home/desktop/DesktopView;->mScene:Lcom/sonymobile/flix/components/Scene;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopView;->access$1200(Lcom/sonymobile/home/desktop/DesktopView;)Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/flix/components/Scene;->enableTouch()V

    .line 1472
    return-void
.end method
