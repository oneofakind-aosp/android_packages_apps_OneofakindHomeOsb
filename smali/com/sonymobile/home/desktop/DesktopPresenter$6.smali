.class Lcom/sonymobile/home/desktop/DesktopPresenter$6;
.super Ljava/lang/Object;
.source "DesktopPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/model/ResourceHandler$OnResourceBatchLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/DesktopPresenter;->setupProgressBar()V
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
    .line 1660
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$6;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceBatchLoaded()V
    .locals 2

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$6;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1668
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$6;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->hideProgressBar()V

    .line 1673
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$6;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$6300(Lcom/sonymobile/home/desktop/DesktopPresenter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/home/desktop/DesktopPresenter$6$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/desktop/DesktopPresenter$6$1;-><init>(Lcom/sonymobile/home/desktop/DesktopPresenter$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1681
    return-void
.end method
