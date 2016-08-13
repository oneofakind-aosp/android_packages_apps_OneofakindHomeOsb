.class public Lcom/sonymobile/home/model/EnsureSearchIconExists;
.super Ljava/lang/Object;
.source "EnsureSearchIconExists.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/sonymobile/home/model/EnsureSearchIconExists;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/model/EnsureSearchIconExists;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/HomeApplication;Lcom/sonymobile/home/desktop/DesktopModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/HomeApplication;
    .param p1, "x1"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    .line 21
    invoke-static {p0, p1}, Lcom/sonymobile/home/model/EnsureSearchIconExists;->addSearchIconIfMissing(Lcom/sonymobile/home/HomeApplication;Lcom/sonymobile/home/desktop/DesktopModel;)V

    return-void
.end method

.method private static addSearchIconIfMissing(Lcom/sonymobile/home/HomeApplication;Lcom/sonymobile/home/desktop/DesktopModel;)V
    .locals 5
    .param p0, "homeApplication"    # Lcom/sonymobile/home/HomeApplication;
    .param p1, "desktopModel"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    new-instance v0, Lcom/sonymobile/home/data/InternalFunctionItem;

    const-string v2, "search"

    invoke-direct {v0, v2, p0}, Lcom/sonymobile/home/data/InternalFunctionItem;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 56
    .local v0, "searchItem":Lcom/sonymobile/home/data/Item;
    new-instance v2, Lcom/sonymobile/home/data/ItemLocation;

    invoke-direct {v2, v3, v3}, Lcom/sonymobile/home/data/ItemLocation;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/data/Item;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 57
    invoke-virtual {p1}, Lcom/sonymobile/home/desktop/DesktopModel;->getStagePageViewName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonymobile/home/HomeApplication;->getModel(Ljava/lang/String;)Lcom/sonymobile/home/model/Model;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/stage/StageModel;

    .line 60
    .local v1, "stageModel":Lcom/sonymobile/home/stage/StageModel;
    if-nez v1, :cond_0

    .line 61
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stage model should not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_0
    invoke-virtual {v1}, Lcom/sonymobile/home/stage/StageModel;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/home/model/EnsureSearchIconExists;->containsSearchItem(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/sonymobile/home/desktop/DesktopModel;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/home/model/EnsureSearchIconExists;->containsSearchItem(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 66
    invoke-static {}, Lcom/sonymobile/home/model/EnsureSearchIconExists;->trackMissingSearchIconError()V

    .line 68
    invoke-virtual {v1}, Lcom/sonymobile/home/stage/StageModel;->isFull()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 69
    invoke-virtual {p1}, Lcom/sonymobile/home/desktop/DesktopModel;->getPageViewName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/data/Item;->setPageViewName(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lcom/sonymobile/home/desktop/DesktopModel;->getHomePageId()I

    move-result v2

    invoke-virtual {p1, v0, v4, v4, v2}, Lcom/sonymobile/home/desktop/DesktopModel;->addItemAtFirstVacantLocation(Lcom/sonymobile/home/data/Item;III)Z

    .line 77
    :cond_1
    :goto_0
    return-void

    .line 73
    :cond_2
    invoke-virtual {v1}, Lcom/sonymobile/home/stage/StageModel;->getPageViewName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/home/data/Item;->setPageViewName(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1, v0}, Lcom/sonymobile/home/stage/StageModel;->addItemInNextAvailablePosition(Lcom/sonymobile/home/data/Item;)V

    goto :goto_0
.end method

.method private static containsSearchItem(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v0, 0x0

    .line 81
    .local v0, "foundSearchItem":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 82
    .local v2, "item":Lcom/sonymobile/home/data/Item;
    instance-of v4, v2, Lcom/sonymobile/home/data/InternalFunctionItem;

    if-eqz v4, :cond_0

    move-object v3, v2

    .line 83
    check-cast v3, Lcom/sonymobile/home/data/InternalFunctionItem;

    .line 84
    .local v3, "searchItem":Lcom/sonymobile/home/data/InternalFunctionItem;
    const-string v4, "search"

    invoke-virtual {v3}, Lcom/sonymobile/home/data/InternalFunctionItem;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 85
    if-eqz v0, :cond_0

    .line 90
    .end local v2    # "item":Lcom/sonymobile/home/data/Item;
    .end local v3    # "searchItem":Lcom/sonymobile/home/data/InternalFunctionItem;
    :cond_1
    return v0
.end method

.method public static ensureExistOnceModelsAreLoaded(Lcom/sonymobile/home/HomeApplication;)V
    .locals 2
    .param p0, "homeApplication"    # Lcom/sonymobile/home/HomeApplication;

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/sonymobile/home/HomeApplication;->getModels()Ljava/util/List;

    move-result-object v0

    .line 37
    .local v0, "models":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/model/Model;>;"
    new-instance v1, Lcom/sonymobile/home/model/EnsureSearchIconExists$1;

    invoke-direct {v1, v0, p0}, Lcom/sonymobile/home/model/EnsureSearchIconExists$1;-><init>(Ljava/util/List;Lcom/sonymobile/home/HomeApplication;)V

    invoke-static {v0, v1}, Lcom/sonymobile/home/model/Model;->waitForModelsToBeLoaded(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 50
    return-void
.end method

.method private static trackMissingSearchIconError()V
    .locals 3

    .prologue
    .line 94
    const-string v0, "Search item missing!"

    .line 95
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lcom/sonymobile/home/model/EnsureSearchIconExists;->TAG:Ljava/lang/String;

    const-string v2, "Search item missing!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Search item missing!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/sonymobile/home/statistics/TrackingUtil;->trackException(Ljava/lang/Throwable;)V

    .line 97
    return-void
.end method
