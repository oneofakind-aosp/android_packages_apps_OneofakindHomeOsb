.class public Lcom/sonymobile/home/search/DesktopAndStageSearchHandler;
.super Ljava/lang/Object;
.source "DesktopAndStageSearchHandler.java"


# instance fields
.field private final mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

.field private final mStageModel:Lcom/sonymobile/home/model/Model;

.field private final mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/stage/StageModel;Lcom/sonymobile/home/desktop/DesktopPresenter;Lcom/sonymobile/home/stage/StagePresenter;)V
    .locals 0
    .param p1, "stageModel"    # Lcom/sonymobile/home/stage/StageModel;
    .param p2, "desktopPresenter"    # Lcom/sonymobile/home/desktop/DesktopPresenter;
    .param p3, "stagePresenter"    # Lcom/sonymobile/home/stage/StagePresenter;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/sonymobile/home/search/DesktopAndStageSearchHandler;->mStageModel:Lcom/sonymobile/home/model/Model;

    .line 39
    iput-object p2, p0, Lcom/sonymobile/home/search/DesktopAndStageSearchHandler;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    .line 40
    iput-object p3, p0, Lcom/sonymobile/home/search/DesktopAndStageSearchHandler;->mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;

    .line 41
    return-void
.end method

.method private getActivePresenter(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/search/SearchablePageViewPresenter;
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 68
    iget-object v1, p0, Lcom/sonymobile/home/search/DesktopAndStageSearchHandler;->mStageModel:Lcom/sonymobile/home/model/Model;

    invoke-virtual {v1, p1}, Lcom/sonymobile/home/model/Model;->itemExistsInItemListOrInFolder(Lcom/sonymobile/home/data/Item;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/sonymobile/home/search/DesktopAndStageSearchHandler;->mStagePresenter:Lcom/sonymobile/home/stage/StagePresenter;

    .line 73
    .local v0, "activePresenter":Lcom/sonymobile/home/search/SearchablePageViewPresenter;
    :goto_0
    return-object v0

    .line 71
    .end local v0    # "activePresenter":Lcom/sonymobile/home/search/SearchablePageViewPresenter;
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/search/DesktopAndStageSearchHandler;->mDesktopPresenter:Lcom/sonymobile/home/desktop/DesktopPresenter;

    .restart local v0    # "activePresenter":Lcom/sonymobile/home/search/SearchablePageViewPresenter;
    goto :goto_0
.end method

.method private handleIntentActionLocate(Lcom/sonymobile/home/search/SearchablePageViewPresenter;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/FolderItem;)V
    .locals 2
    .param p1, "activePresenter"    # Lcom/sonymobile/home/search/SearchablePageViewPresenter;
    .param p2, "item"    # Lcom/sonymobile/home/data/Item;
    .param p3, "folderInWhichItemIsLocated"    # Lcom/sonymobile/home/data/FolderItem;

    .prologue
    .line 81
    if-eqz p3, :cond_0

    .line 82
    invoke-virtual {p3}, Lcom/sonymobile/home/data/FolderItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    iget v0, v1, Lcom/sonymobile/home/data/ItemLocation;->page:I

    .line 87
    .local v0, "pageToLocate":I
    :goto_0
    invoke-virtual {p1, v0, p2, p3}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->startJumpAnimation(ILcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/FolderItem;)V

    .line 88
    return-void

    .line 84
    .end local v0    # "pageToLocate":I
    :cond_0
    invoke-virtual {p2}, Lcom/sonymobile/home/data/Item;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v1

    iget v0, v1, Lcom/sonymobile/home/data/ItemLocation;->page:I

    .restart local v0    # "pageToLocate":I
    goto :goto_0
.end method


# virtual methods
.method public getPageViewGroupToOpenFolderOn(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/ui/pageview/PageViewGroup;
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/DesktopAndStageSearchHandler;->getActivePresenter(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/search/SearchablePageViewPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->getPageViewGroup()Lcom/sonymobile/home/ui/pageview/PageViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public locateSearchItem(Lcom/sonymobile/home/data/Item;Landroid/content/Intent;)V
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/DesktopAndStageSearchHandler;->getActivePresenter(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/search/SearchablePageViewPresenter;

    move-result-object v0

    .line 51
    .local v0, "activePresenter":Lcom/sonymobile/home/search/SearchablePageViewPresenter;
    invoke-virtual {v0, p2}, Lcom/sonymobile/home/search/SearchablePageViewPresenter;->getFolderInWhichItemIsLocatedFromIntent(Landroid/content/Intent;)Lcom/sonymobile/home/data/FolderItem;

    move-result-object v1

    .line 53
    .local v1, "folderItem":Lcom/sonymobile/home/data/FolderItem;
    invoke-direct {p0, v0, p1, v1}, Lcom/sonymobile/home/search/DesktopAndStageSearchHandler;->handleIntentActionLocate(Lcom/sonymobile/home/search/SearchablePageViewPresenter;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/FolderItem;)V

    .line 54
    return-void
.end method
