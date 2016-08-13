.class Lcom/sonymobile/home/desktop/DesktopView$6;
.super Lcom/sonymobile/flix/util/Animation;
.source "DesktopView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/DesktopView;->runAddPageAnimation(ILcom/sonymobile/flix/util/Animation$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/DesktopView;

.field final synthetic val$expandPageView:Lcom/sonymobile/home/ui/pageview/PageView;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/DesktopView;JLcom/sonymobile/home/ui/pageview/PageView;)V
    .locals 0
    .param p2, "x0"    # J

    .prologue
    .line 1394
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopView$6;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    iput-object p4, p0, Lcom/sonymobile/home/desktop/DesktopView$6;->val$expandPageView:Lcom/sonymobile/home/ui/pageview/PageView;

    invoke-direct {p0, p2, p3}, Lcom/sonymobile/flix/util/Animation;-><init>(J)V

    return-void
.end method


# virtual methods
.method public onUpdate(FF)V
    .locals 2
    .param p1, "value"    # F
    .param p2, "delta"    # F

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView$6;->val$expandPageView:Lcom/sonymobile/home/ui/pageview/PageView;

    invoke-virtual {v0}, Lcom/sonymobile/home/ui/pageview/PageView;->getContent()Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->setDescendantAlpha(F)V

    .line 1398
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView$6;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    # invokes: Lcom/sonymobile/home/desktop/DesktopView;->updateFromTouch()V
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopView;->access$900(Lcom/sonymobile/home/desktop/DesktopView;)V

    .line 1399
    return-void
.end method
