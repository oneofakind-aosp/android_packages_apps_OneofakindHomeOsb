.class Lcom/sonymobile/home/desktop/Desktop$4;
.super Ljava/lang/Object;
.source "Desktop.java"

# interfaces
.implements Lcom/sonymobile/home/ui/pageview/PageItemViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/Desktop;->createAppTrayButton(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/resources/ResourceManager;Lcom/sonymobile/flix/components/Component;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/Desktop;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/desktop/Desktop;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/sonymobile/home/desktop/Desktop$4;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked(Lcom/sonymobile/home/ui/pageview/PageItemView;)V
    .locals 3
    .param p1, "clickedView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;

    .prologue
    const/4 v1, 0x1

    .line 361
    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$4;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mDesktopListener:Lcom/sonymobile/home/desktop/DesktopListener;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/Desktop;->access$1000(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/desktop/DesktopListener;

    move-result-object v2

    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$4;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/Desktop;->access$700(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/desktop/DesktopPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->isInNormalState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/desktop/Desktop$4;->this$0:Lcom/sonymobile/home/desktop/Desktop;

    # getter for: Lcom/sonymobile/home/desktop/Desktop;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/Desktop;->access$300(Lcom/sonymobile/home/desktop/Desktop;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->isDimmingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    invoke-interface {v2, v1, v0}, Lcom/sonymobile/home/desktop/DesktopListener;->showApptray(ZZ)V

    .line 362
    return-void

    .line 361
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongPress(Lcom/sonymobile/home/ui/pageview/PageItemView;FF)V
    .locals 0
    .param p1, "pressedView"    # Lcom/sonymobile/home/ui/pageview/PageItemView;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 367
    return-void
.end method
