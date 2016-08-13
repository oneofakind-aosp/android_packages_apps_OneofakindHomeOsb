.class Lcom/sonymobile/home/desktop/DesktopPresenter$4;
.super Ljava/lang/Object;
.source "DesktopPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/DialogActionResultHandler$DialogActionListener;


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
    .line 1577
    iput-object p1, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$4;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogActionPerformed(ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "actionCode"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/high16 v4, -0x80000000

    .line 1581
    sget-object v3, Lcom/sonymobile/home/DialogFactory$Action;->DELETE_PAGE:Lcom/sonymobile/home/DialogFactory$Action;

    invoke-virtual {v3}, Lcom/sonymobile/home/DialogFactory$Action;->getActionCode()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 1582
    if-eqz p2, :cond_0

    .line 1583
    const/high16 v0, -0x80000000

    .line 1584
    .local v0, "illegalPageIndex":I
    const-string v3, "pageIndex"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1586
    .local v1, "pageIndex":I
    if-eq v1, v4, :cond_0

    .line 1587
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$4;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # getter for: Lcom/sonymobile/home/desktop/DesktopPresenter;->mDesktopView:Lcom/sonymobile/home/desktop/DesktopView;
    invoke-static {v3}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$1100(Lcom/sonymobile/home/desktop/DesktopPresenter;)Lcom/sonymobile/home/desktop/DesktopView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sonymobile/home/desktop/DesktopView;->findPage(I)Lcom/sonymobile/home/ui/pageview/PageView;

    move-result-object v2

    .line 1588
    .local v2, "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    if-eqz v2, :cond_0

    .line 1590
    iget-object v3, p0, Lcom/sonymobile/home/desktop/DesktopPresenter$4;->this$0:Lcom/sonymobile/home/desktop/DesktopPresenter;

    # invokes: Lcom/sonymobile/home/desktop/DesktopPresenter;->deletePage(Lcom/sonymobile/home/ui/pageview/PageView;)V
    invoke-static {v3, v2}, Lcom/sonymobile/home/desktop/DesktopPresenter;->access$4700(Lcom/sonymobile/home/desktop/DesktopPresenter;Lcom/sonymobile/home/ui/pageview/PageView;)V

    .line 1595
    .end local v0    # "illegalPageIndex":I
    .end local v1    # "pageIndex":I
    .end local v2    # "pageView":Lcom/sonymobile/home/ui/pageview/PageView;
    :cond_0
    return-void
.end method
