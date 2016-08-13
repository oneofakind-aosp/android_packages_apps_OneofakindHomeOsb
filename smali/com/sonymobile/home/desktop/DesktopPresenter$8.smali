.class Lcom/sonymobile/home/desktop/DesktopPresenter$8;
.super Lcom/sonymobile/flix/util/DynamicsTask$Listener$Adapter;
.source "DesktopPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/DesktopPresenter;->setState(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;)V
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
    .line 2079
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$8;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-direct {p0}, Lcom/sonymobile/flix/util/DynamicsTask$Listener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/sonymobile/flix/util/DynamicsTask;Lcom/sonymobile/flix/util/Dynamics;)V
    .locals 6
    .param p1, "task"    # Lcom/sonymobile/flix/util/DynamicsTask;
    .param p2, "dynamics"    # Lcom/sonymobile/flix/util/Dynamics;

    .prologue
    .line 2083
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$8;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopView;->disableEditMode()V

    .line 2084
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$8;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->getTrackingCategory()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EditMode"

    const-string v2, ""

    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$8;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mTrackUninstallCount:I
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$6900(Lcom/sonymobile/home/desktop/DesktopPresenter;)I

    move-result v3

    int-to-long v4, v3

    invoke-static {v0, v1, v2, v4, v5}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2087
    return-void
.end method
