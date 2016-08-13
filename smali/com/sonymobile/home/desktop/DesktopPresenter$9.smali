.class Lcom/sonymobile/home/desktop/DesktopPresenter$9;
.super Ljava/lang/Object;
.source "DesktopPresenter.java"

# interfaces
.implements Lcom/sonymobile/flix/util/Animation$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/DesktopPresenter;->homeButtonPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/DesktopPresenter;)V
    .locals 0

    .prologue
    .line 2693
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$9;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/sonymobile/flix/util/Animation;)V
    .locals 2
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 2703
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$9;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopView;->setDragEnabled(Z)V

    .line 2704
    return-void
.end method

.method public onStart(Lcom/sonymobile/flix/util/Animation;)V
    .locals 2
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 2698
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$9;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopView;->setDragEnabled(Z)V

    .line 2699
    return-void
.end method
