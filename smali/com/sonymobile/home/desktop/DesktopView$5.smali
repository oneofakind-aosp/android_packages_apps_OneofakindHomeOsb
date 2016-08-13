.class Lcom/sonymobile/home/desktop/DesktopView$5;
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

.field final synthetic val$childIndex:I

.field final synthetic val$expandPageView:Lcom/sonymobile/home/ui/pageview/PageView;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/DesktopView;JLcom/sonymobile/home/ui/pageview/PageView;I)V
    .locals 0
    .param p2, "x0"    # J

    .prologue
    .line 1385
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopView$5;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    iput-object p4, p0, Lcom/sonymobile/home/desktop/DesktopView$5;->val$expandPageView:Lcom/sonymobile/home/ui/pageview/PageView;

    iput p5, p0, Lcom/sonymobile/home/desktop/DesktopView$5;->val$childIndex:I

    invoke-direct {p0, p2, p3}, Lcom/sonymobile/flix/util/Animation;-><init>(J)V

    return-void
.end method


# virtual methods
.method public onUpdate(FF)V
    .locals 2
    .param p1, "value"    # F
    .param p2, "delta"    # F

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView$5;->val$expandPageView:Lcom/sonymobile/home/ui/pageview/PageView;

    iget v1, p0, Lcom/sonymobile/home/desktop/DesktopView$5;->val$childIndex:I

    if-nez v1, :cond_0

    neg-float p1, p1

    .end local p1    # "value":F
    :cond_0
    invoke-virtual {v0, p1}, Lcom/sonymobile/home/ui/pageview/PageView;->setPagePositionOffset(F)V

    .line 1389
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView$5;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    # invokes: Lcom/sonymobile/home/desktop/DesktopView;->updateFromTouch()V
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopView;->access$800(Lcom/sonymobile/home/desktop/DesktopView;)V

    .line 1390
    return-void
.end method
