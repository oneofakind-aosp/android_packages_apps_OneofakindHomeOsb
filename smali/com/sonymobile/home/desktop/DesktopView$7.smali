.class Lcom/sonymobile/home/desktop/DesktopView$7;
.super Lcom/sonymobile/flix/util/Animation$Listener$Adapter;
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

.field final synthetic val$addedPageView:Lcom/sonymobile/home/ui/pageview/PageView;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/DesktopView;Lcom/sonymobile/home/ui/pageview/PageView;)V
    .locals 0

    .prologue
    .line 1411
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopView$7;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    iput-object p2, p0, Lcom/sonymobile/home/desktop/DesktopView$7;->val$addedPageView:Lcom/sonymobile/home/ui/pageview/PageView;

    invoke-direct {p0}, Lcom/sonymobile/flix/util/Animation$Listener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/sonymobile/flix/util/Animation;)V
    .locals 2
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopView$7;->this$0:Lcom/sonymobile/home/desktop/DesktopView;

    # getter for: Lcom/sonymobile/home/desktop/DesktopView;->mScene:Lcom/sonymobile/flix/components/Scene;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopView;->access$1000(Lcom/sonymobile/home/desktop/DesktopView;)Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopView$7;->val$addedPageView:Lcom/sonymobile/home/ui/pageview/PageView;

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Scene;->removeChild(Lcom/sonymobile/flix/components/Component;)I

    .line 1417
    return-void
.end method
