.class Lcom/sonymobile/home/desktop/DesktopPresenter$10;
.super Ljava/lang/Object;
.source "DesktopPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/DesktopPresenter;
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
    .line 2986
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$10;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2989
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$10;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2990
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$10;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mFragmentHandler:Lcom/sonymobile/home/FragmentHandler;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$7000(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/FragmentHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sonymobile/home/FragmentHandler;->showStatusBar(Z)V

    .line 2992
    :cond_0
    return-void
.end method
