.class Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation$1;
.super Lcom/sonymobile/flix/util/Animation$Listener$Adapter;
.source "DesktopView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;-><init>(Lcom/sonymobile/home/desktop/DesktopView;Lcom/sonymobile/home/ui/pageview/PageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;

.field final synthetic val$pageViewToDelete:Lcom/sonymobile/home/ui/pageview/PageView;

.field final synthetic val$this$0:Lcom/sonymobile/home/desktop/DesktopView;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;Lcom/sonymobile/home/desktop/DesktopView;Lcom/sonymobile/home/ui/pageview/PageView;)V
    .locals 0

    .prologue
    .line 1486
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation$1;->this$1:Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation;

    iput-object p2, p0, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation$1;->val$this$0:Lcom/sonymobile/home/desktop/DesktopView;

    iput-object p3, p0, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation$1;->val$pageViewToDelete:Lcom/sonymobile/home/ui/pageview/PageView;

    invoke-direct {p0}, Lcom/sonymobile/flix/util/Animation$Listener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/sonymobile/flix/util/Animation;)V
    .locals 2
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 1491
    iget-object v1, p0, Lcom/sonymobile/home/desktop/DesktopView$DeletePageAnimation$1;->val$pageViewToDelete:Lcom/sonymobile/home/ui/pageview/PageView;

    invoke-virtual {v1}, Lcom/sonymobile/home/ui/pageview/PageView;->getContent()Lcom/sonymobile/flix/components/Component;

    move-result-object v0

    .line 1492
    .local v0, "pageViewContent":Lcom/sonymobile/flix/components/Component;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->setZ(F)V

    .line 1493
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/sonymobile/flix/components/Component;->setDescendantAlpha(F)V

    .line 1494
    return-void
.end method
