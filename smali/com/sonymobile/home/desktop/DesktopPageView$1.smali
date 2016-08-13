.class Lcom/sonymobile/home/desktop/DesktopPageView$1;
.super Lcom/sonymobile/flix/util/Animation$Listener$Adapter;
.source "DesktopPageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/DesktopPageView;->createScrollBackplate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/DesktopPageView;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/DesktopPageView;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPageView$1;->this$0:Lcom/sonymobile/home/desktop/DesktopPageView;

    invoke-direct {p0}, Lcom/sonymobile/flix/util/Animation$Listener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/sonymobile/flix/util/Animation;)V
    .locals 2
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPageView$1;->this$0:Lcom/sonymobile/home/desktop/DesktopPageView;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/home/desktop/DesktopPageView;->mScrollBackplateAnimationRunning:Z
    invoke-static {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPageView;->access$002(Lcom/sonymobile/home/desktop/DesktopPageView;Z)Z

    .line 124
    return-void
.end method
