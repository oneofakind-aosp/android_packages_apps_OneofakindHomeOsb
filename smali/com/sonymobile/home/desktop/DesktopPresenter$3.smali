.class Lcom/sonymobile/home/desktop/DesktopPresenter$3;
.super Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener$Adapter;
.source "DesktopPresenter.java"


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
    .line 1568
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$3;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-direct {p0}, Lcom/sonymobile/home/settings/UserSettings$UserSettingsListener$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoArrangeItemsChanged(Z)V
    .locals 1
    .param p1, "autoPack"    # Z

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$3;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter;->setupAutoMoveManager()V
    invoke-static {v0}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$5700(Lcom/sonymobile/home/desktop/DesktopPresenter;)V

    .line 1572
    return-void
.end method
