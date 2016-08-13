.class Lcom/sonymobile/home/desktop/DesktopPresenter$13$1;
.super Lcom/sonymobile/flix/util/Animation$Listener$Adapter;
.source "DesktopPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/DesktopPresenter$13;->onFinish(Lcom/sonymobile/flix/util/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$13;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/DesktopPresenter$13;)V
    .locals 0

    .prologue
    .line 3219
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$13$1;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$13;

    invoke-direct {p0}, Lcom/sonymobile/flix/util/Animation$Listener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/sonymobile/flix/util/Animation;)V
    .locals 1
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 3222
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$13$1;->this$1:Lcom/sonymobile/home/desktop/DesktopPresenter$13;

    iget-object v0, v0, Lcom/sonymobile/home/desktop/DesktopPresenter$13;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter;->removeExpandBoundsPagesIfNeeded()V
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1700(Lcom/sonymobile/home/desktop/DesktopPresenter;)V

    .line 3223
    return-void
.end method
