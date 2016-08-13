.class Lcom/sonymobile/home/desktop/DesktopPresenter$5;
.super Ljava/lang/Object;
.source "DesktopPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/desktop/cui/CuiPresenterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/desktop/DesktopPresenter;-><init>(Lcom/sonymobile/flix/components/Scene;Lcom/sonymobile/home/desktop/WallpaperWorker;Lcom/sonymobile/home/desktop/DesktopModel;Lcom/sonymobile/home/statistics/StatisticsManager;Lcom/sonymobile/home/model/ResourceHandler;Lcom/sonymobile/home/transfer/TransferHandler;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/grid/Grid;Lcom/sonymobile/flix/components/Component;Lcom/sonymobile/home/DialogHandler;Lcom/sonymobile/home/data/ItemCreator;Lcom/sonymobile/flix/components/accessibility/KeyboardFocusManager;Lcom/sonymobile/home/tip/TipManager;Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;Lcom/sonymobile/home/settings/UserSettings;Lcom/sonymobile/home/IntentHandler;Lcom/sonymobile/home/FragmentHandler;Lcom/sonymobile/home/search/SearchableModelsWrapper;)V
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
    .line 1601
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$5;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPressItem()V
    .locals 1

    .prologue
    .line 1605
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$5;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mIsPortrait:Z
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$5900(Lcom/sonymobile/home/desktop/DesktopPresenter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1613
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$5;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDropTarget:Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$6000(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopDropTarget;->enableLongWaitDurationOnFirstPageSwitch()V

    .line 1615
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$5;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mCuiPresenter:Lcom/sonymobile/home/desktop/cui/CuiPresenter;
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$6100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/cui/CuiPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/desktop/cui/CuiPresenter;->hide()V

    .line 1616
    return-void
.end method
