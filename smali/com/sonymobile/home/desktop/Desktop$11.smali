.class Lcom/sonymobile/home/desktop/Desktop$11;
.super Ljava/lang/Object;
.source "Desktop.java"

# interfaces
.implements Lcom/sonymobile/flix/util/Animation$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/Desktop;->hide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/Desktop;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/Desktop;)V
    .locals 1

    .prologue
    .line 910
    iput-object p1, p0, Lcom/sonymobile/home/desktop/Desktop$11;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 912
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$11;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/Desktop;->onPause()V

    .line 913
    return-void
.end method


# virtual methods
.method public onFinish(Lcom/sonymobile/flix/util/Animation;)V
    .locals 2
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 931
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$11;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/Desktop;->onStop()V

    .line 932
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$11;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/Desktop;->access$300(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopView;->setTouchEnabled(Z)V

    .line 933
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$11;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/Desktop;->access$300(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopView;->setDescendantAlpha(F)V

    .line 934
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$11;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/Desktop;->access$700(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/desktop/DesktopPresenter;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->NORMAL:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopPresenter;->setState(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;)V

    .line 935
    return-void
.end method

.method public onStart(Lcom/sonymobile/flix/util/Animation;)V
    .locals 0
    .param p1, "animation"    # Lcom/sonymobile/flix/util/Animation;

    .prologue
    .line 917
    return-void
.end method
