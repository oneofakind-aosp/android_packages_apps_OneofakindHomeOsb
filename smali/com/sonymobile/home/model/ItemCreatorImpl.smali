.class public Lcom/sonymobile/home/model/ItemCreatorImpl;
.super Ljava/lang/Object;
.source "ItemCreatorImpl.java"

# interfaces
.implements Lcom/sonymobile/home/data/ItemCreator;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultFolderLabel:Ljava/lang/String;

.field private final mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

.field private mHasCleanupTempStorage:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mShortcutManager:Lcom/sonymobile/home/shortcut/ShortcutManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sonymobile/home/shortcut/ShortcutManager;Lcom/sonymobile/home/folder/FolderManager;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainThreadHandler"    # Landroid/os/Handler;
    .param p3, "shortcutManager"    # Lcom/sonymobile/home/shortcut/ShortcutManager;
    .param p4, "folderManager"    # Lcom/sonymobile/home/folder/FolderManager;

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v3, p0, Lcom/sonymobile/home/model/ItemCreatorImpl;->mHasCleanupTempStorage:Z

    .line 64
    iput-object p1, p0, Lcom/sonymobile/home/model/ItemCreatorImpl;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/sonymobile/home/model/ItemCreatorImpl;->mMainThreadHandler:Landroid/os/Handler;

    .line 66
    iput-object p3, p0, Lcom/sonymobile/home/model/ItemCreatorImpl;->mShortcutManager:Lcom/sonymobile/home/shortcut/ShortcutManager;

    .line 67
    iput-object p4, p0, Lcom/sonymobile/home/model/ItemCreatorImpl;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f090000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "folderNames":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_0

    aget-object v1, v0, v3

    :goto_0
    iput-object v1, p0, Lcom/sonymobile/home/model/ItemCreatorImpl;->mDefaultFolderLabel:Ljava/lang/String;

    .line 71
    return-void

    .line 70
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sonymobile/home/model/ItemCreatorImpl;Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Lcom/sonymobile/home/data/Item;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/model/ItemCreatorImpl;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # Lcom/sonymobile/home/data/ItemCreator$ResultListener;
    .param p3, "x3"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/model/ItemCreatorImpl;->notifyListener(Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Lcom/sonymobile/home/data/Item;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/home/model/ItemCreatorImpl;Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/model/ItemCreatorImpl;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # Lcom/sonymobile/home/data/ItemCreator$ResultListener;
    .param p3, "x3"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/model/ItemCreatorImpl;->notifyFailure(Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/home/model/ItemCreatorImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/ItemCreatorImpl;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonymobile/home/model/ItemCreatorImpl;->mDefaultFolderLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/home/model/ItemCreatorImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/ItemCreatorImpl;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/sonymobile/home/model/ItemCreatorImpl;->mHasCleanupTempStorage:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sonymobile/home/model/ItemCreatorImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/model/ItemCreatorImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/sonymobile/home/model/ItemCreatorImpl;->mHasCleanupTempStorage:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sonymobile/home/model/ItemCreatorImpl;)Lcom/sonymobile/home/folder/FolderManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/model/ItemCreatorImpl;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonymobile/home/model/ItemCreatorImpl;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    return-object v0
.end method

.method private createActivityItem(Lcom/sonymobile/home/data/ActivityItem;)Lcom/sonymobile/home/data/Item;
    .locals 1
    .param p1, "activityItem"    # Lcom/sonymobile/home/data/ActivityItem;

    .prologue
    .line 409
    new-instance v0, Lcom/sonymobile/home/data/ActivityItem;

    invoke-direct {v0, p1}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Lcom/sonymobile/home/data/ActivityItem;)V

    return-object v0
.end method

.method private createAdvWidgetItem(Lcom/sonymobile/home/data/AdvWidgetItem;)Lcom/sonymobile/home/data/Item;
    .locals 6
    .param p1, "advWidgetItem"    # Lcom/sonymobile/home/data/AdvWidgetItem;

    .prologue
    .line 463
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAdvWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    move-result-object v0

    .line 466
    .local v0, "advWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;
    const/4 v1, 0x0

    .line 467
    .local v1, "newItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    if-eqz v0, :cond_1

    .line 468
    invoke-virtual {p1}, Lcom/sonymobile/home/data/AdvWidgetItem;->getId()Ljava/util/UUID;

    move-result-object v2

    .line 471
    .local v2, "uuid":Ljava/util/UUID;
    if-nez v2, :cond_0

    .line 472
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    .line 475
    :cond_0
    new-instance v1, Lcom/sonymobile/home/data/AdvWidgetItem;

    .end local v1    # "newItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    invoke-virtual {p1}, Lcom/sonymobile/home/data/AdvWidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonymobile/home/data/AdvWidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sonymobile/home/data/AdvWidgetItem;->getCustomization()Ljava/util/HashMap;

    move-result-object v5

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/sonymobile/home/data/AdvWidgetItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/util/HashMap;)V

    .line 478
    .restart local v1    # "newItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    invoke-virtual {p1}, Lcom/sonymobile/home/data/AdvWidgetItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/home/data/ItemLocation;->copy(Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sonymobile/home/data/AdvWidgetItem;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 479
    invoke-virtual {p1}, Lcom/sonymobile/home/data/AdvWidgetItem;->getPageViewName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sonymobile/home/data/AdvWidgetItem;->setPageViewName(Ljava/lang/String;)V

    .line 482
    .end local v2    # "uuid":Ljava/util/UUID;
    :cond_1
    return-object v1
.end method

.method private createFolderItem(Lcom/sonymobile/home/data/FolderItem;)Lcom/sonymobile/home/data/Item;
    .locals 3
    .param p1, "folderItem"    # Lcom/sonymobile/home/data/FolderItem;

    .prologue
    .line 448
    new-instance v0, Lcom/sonymobile/home/data/FolderItem;

    invoke-direct {v0, p1}, Lcom/sonymobile/home/data/FolderItem;-><init>(Lcom/sonymobile/home/data/FolderItem;)V

    .line 449
    .local v0, "newFolderItem":Lcom/sonymobile/home/data/FolderItem;
    iget-object v1, p0, Lcom/sonymobile/home/model/ItemCreatorImpl;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    invoke-virtual {p1}, Lcom/sonymobile/home/data/FolderItem;->getTemporaryItems()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sonymobile/home/folder/FolderManager;->insertFolder(Lcom/sonymobile/home/data/FolderItem;Ljava/util/List;)V

    .line 450
    return-object v0
.end method

.method private createInternalFunctionItem(Lcom/sonymobile/home/data/InternalFunctionItem;)Lcom/sonymobile/home/data/Item;
    .locals 1
    .param p1, "functionItem"    # Lcom/sonymobile/home/data/InternalFunctionItem;

    .prologue
    .line 417
    new-instance v0, Lcom/sonymobile/home/data/InternalFunctionItem;

    invoke-direct {v0, p1}, Lcom/sonymobile/home/data/InternalFunctionItem;-><init>(Lcom/sonymobile/home/data/InternalFunctionItem;)V

    return-object v0
.end method

.method private createShortcutItem(Lcom/sonymobile/home/data/ShortcutItem;)Lcom/sonymobile/home/data/Item;
    .locals 1
    .param p1, "shortcutItem"    # Lcom/sonymobile/home/data/ShortcutItem;

    .prologue
    .line 413
    new-instance v0, Lcom/sonymobile/home/data/ShortcutItem;

    invoke-direct {v0, p1}, Lcom/sonymobile/home/data/ShortcutItem;-><init>(Lcom/sonymobile/home/data/ShortcutItem;)V

    return-object v0
.end method

.method private createWidgetItem(Lcom/sonymobile/home/data/WidgetItem;)Lcom/sonymobile/home/data/Item;
    .locals 7
    .param p1, "widgetItem"    # Lcom/sonymobile/home/data/WidgetItem;

    .prologue
    .line 421
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAppWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    move-result-object v0

    .line 423
    .local v0, "appWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    if-nez v0, :cond_1

    .line 424
    const/4 v2, 0x0

    .line 444
    :cond_0
    :goto_0
    return-object v2

    .line 427
    :cond_1
    const/4 v2, 0x0

    .line 428
    .local v2, "newItem":Lcom/sonymobile/home/data/WidgetItem;
    invoke-virtual {p1}, Lcom/sonymobile/home/data/WidgetItem;->getAppWidgetId()I

    move-result v5

    .line 429
    .local v5, "widgetId":I
    invoke-virtual {p1}, Lcom/sonymobile/home/data/WidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 430
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonymobile/home/data/WidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonymobile/home/data/WidgetItem;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    .line 434
    .local v4, "user":Landroid/os/UserHandle;
    iget-object v6, p0, Lcom/sonymobile/home/model/ItemCreatorImpl;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->isValidAppWidget(Landroid/content/Context;Lcom/sonymobile/home/data/WidgetItem;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 435
    invoke-virtual {v0, v3, v1, v4}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->registerAppWidgetIdSync(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v5

    .line 438
    :cond_2
    if-eqz v5, :cond_0

    .line 439
    new-instance v2, Lcom/sonymobile/home/data/WidgetItem;

    .end local v2    # "newItem":Lcom/sonymobile/home/data/WidgetItem;
    invoke-direct {v2, v5, v3, v1, v4}, Lcom/sonymobile/home/data/WidgetItem;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 440
    .restart local v2    # "newItem":Lcom/sonymobile/home/data/WidgetItem;
    invoke-virtual {p1}, Lcom/sonymobile/home/data/WidgetItem;->getLocation()Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/home/data/ItemLocation;->copy(Lcom/sonymobile/home/data/ItemLocation;)Lcom/sonymobile/home/data/ItemLocation;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sonymobile/home/data/WidgetItem;->setLocation(Lcom/sonymobile/home/data/ItemLocation;)V

    .line 441
    invoke-virtual {p1}, Lcom/sonymobile/home/data/WidgetItem;->getPageViewName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sonymobile/home/data/WidgetItem;->setPageViewName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private destroyFolderItem(Lcom/sonymobile/home/data/FolderItem;)V
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/FolderItem;

    .prologue
    .line 486
    iget-object v0, p0, Lcom/sonymobile/home/model/ItemCreatorImpl;->mFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/folder/FolderManager;->removeCachedFolder(Lcom/sonymobile/home/data/FolderItem;)V

    .line 487
    return-void
.end method

.method private destroyWidgetItem(Lcom/sonymobile/home/data/WidgetItem;)V
    .locals 2
    .param p1, "widgetItem"    # Lcom/sonymobile/home/data/WidgetItem;

    .prologue
    .line 454
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAppWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    move-result-object v0

    .line 457
    .local v0, "appWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {p1}, Lcom/sonymobile/home/data/WidgetItem;->getAppWidgetId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->deleteAppWidgetId(I)V

    .line 460
    :cond_0
    return-void
.end method

.method private notifyFailure(Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;I)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Lcom/sonymobile/home/data/ItemCreator$ResultListener;
    .param p3, "errorResourceId"    # I

    .prologue
    .line 347
    new-instance v0, Lcom/sonymobile/home/model/ItemCreatorImpl$9;

    invoke-direct {v0, p0, p2, p3}, Lcom/sonymobile/home/model/ItemCreatorImpl$9;-><init>(Lcom/sonymobile/home/model/ItemCreatorImpl;Lcom/sonymobile/home/data/ItemCreator$ResultListener;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 354
    return-void
.end method

.method private notifyListener(Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Lcom/sonymobile/home/data/Item;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Lcom/sonymobile/home/data/ItemCreator$ResultListener;
    .param p3, "newItem"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 337
    new-instance v0, Lcom/sonymobile/home/model/ItemCreatorImpl$8;

    invoke-direct {v0, p0, p2, p3}, Lcom/sonymobile/home/model/ItemCreatorImpl$8;-><init>(Lcom/sonymobile/home/model/ItemCreatorImpl;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Lcom/sonymobile/home/data/Item;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 344
    return-void
.end method


# virtual methods
.method public addItemToFolder(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Landroid/os/Handler;)Z
    .locals 7
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "addedItem"    # Lcom/sonymobile/home/data/Item;
    .param p3, "listener"    # Lcom/sonymobile/home/data/ItemCreator$ResultListener;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 250
    instance-of v0, p1, Lcom/sonymobile/home/data/FolderItem;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/sonymobile/home/data/ActivityItem;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/sonymobile/home/data/ShortcutItem;

    if-eqz v0, :cond_1

    .line 251
    :cond_0
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/sonymobile/home/model/ItemCreatorImpl$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/model/ItemCreatorImpl$5;-><init>(Lcom/sonymobile/home/model/ItemCreatorImpl;Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/Item;Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 269
    const/4 v0, 0x1

    .line 271
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public copy(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Landroid/os/Handler;)Z
    .locals 5
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "listener"    # Lcom/sonymobile/home/data/ItemCreator$ResultListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x1

    .line 276
    instance-of v3, p1, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v3, :cond_0

    .line 277
    new-instance v1, Lcom/sonymobile/home/data/ActivityItem;

    check-cast p1, Lcom/sonymobile/home/data/ActivityItem;

    .end local p1    # "item":Lcom/sonymobile/home/data/Item;
    invoke-direct {v1, p1}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Lcom/sonymobile/home/data/ActivityItem;)V

    .line 279
    .local v1, "newItem":Lcom/sonymobile/home/data/ActivityItem;
    invoke-direct {p0, p3, p2, v1}, Lcom/sonymobile/home/model/ItemCreatorImpl;->notifyListener(Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Lcom/sonymobile/home/data/Item;)V

    .line 333
    .end local v1    # "newItem":Lcom/sonymobile/home/data/ActivityItem;
    :goto_0
    return v2

    .line 282
    .restart local p1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_0
    instance-of v3, p1, Lcom/sonymobile/home/data/ShortcutItem;

    if-eqz v3, :cond_1

    .line 283
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/sonymobile/home/model/ItemCreatorImpl$6;

    invoke-direct {v4, p0, p1, p3, p2}, Lcom/sonymobile/home/model/ItemCreatorImpl$6;-><init>(Lcom/sonymobile/home/model/ItemCreatorImpl;Lcom/sonymobile/home/data/Item;Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 294
    :cond_1
    instance-of v3, p1, Lcom/sonymobile/home/data/FolderItem;

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 295
    check-cast v0, Lcom/sonymobile/home/data/FolderItem;

    .line 300
    .local v0, "folderItem":Lcom/sonymobile/home/data/FolderItem;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/sonymobile/home/model/ItemCreatorImpl$7;

    invoke-direct {v4, p0, v0, p3, p2}, Lcom/sonymobile/home/model/ItemCreatorImpl$7;-><init>(Lcom/sonymobile/home/model/ItemCreatorImpl;Lcom/sonymobile/home/data/FolderItem;Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 325
    .end local v0    # "folderItem":Lcom/sonymobile/home/data/FolderItem;
    :cond_2
    instance-of v3, p1, Lcom/sonymobile/home/data/InternalFunctionItem;

    if-eqz v3, :cond_3

    .line 326
    new-instance v1, Lcom/sonymobile/home/data/InternalFunctionItem;

    check-cast p1, Lcom/sonymobile/home/data/InternalFunctionItem;

    .end local p1    # "item":Lcom/sonymobile/home/data/Item;
    invoke-direct {v1, p1}, Lcom/sonymobile/home/data/InternalFunctionItem;-><init>(Lcom/sonymobile/home/data/InternalFunctionItem;)V

    .line 328
    .local v1, "newItem":Lcom/sonymobile/home/data/InternalFunctionItem;
    invoke-direct {p0, p3, p2, v1}, Lcom/sonymobile/home/model/ItemCreatorImpl;->notifyListener(Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Lcom/sonymobile/home/data/Item;)V

    goto :goto_0

    .line 333
    .end local v1    # "newItem":Lcom/sonymobile/home/data/InternalFunctionItem;
    .restart local p1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public create(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Landroid/os/Handler;)Z
    .locals 27
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "listener"    # Lcom/sonymobile/home/data/ItemCreator$ResultListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 75
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 76
    :cond_0
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "Can\'t create item"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 78
    :cond_1
    move-object/from16 v0, p1

    instance-of v7, v0, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v7, :cond_2

    .line 79
    new-instance v25, Lcom/sonymobile/home/data/ActivityItem;

    check-cast p1, Lcom/sonymobile/home/data/ActivityItem;

    .end local p1    # "item":Lcom/sonymobile/home/data/Item;
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Lcom/sonymobile/home/data/ActivityItem;)V

    .line 81
    .local v25, "storeItem":Lcom/sonymobile/home/data/ActivityItem;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/home/model/ItemCreatorImpl;->notifyListener(Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Lcom/sonymobile/home/data/Item;)V

    .line 198
    .end local v25    # "storeItem":Lcom/sonymobile/home/data/ActivityItem;
    :goto_0
    const/4 v7, 0x1

    :goto_1
    return v7

    .line 82
    .restart local p1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_2
    move-object/from16 v0, p1

    instance-of v7, v0, Lcom/sonymobile/home/data/ShortcutItem;

    if-eqz v7, :cond_3

    move-object/from16 v24, p1

    .line 83
    check-cast v24, Lcom/sonymobile/home/data/ShortcutItem;

    .line 85
    .local v24, "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    new-instance v23, Landroid/content/Intent;

    const-string v7, "android.intent.action.CREATE_SHORTCUT"

    move-object/from16 v0, v23

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v23, "shortcutIntent":Landroid/content/Intent;
    invoke-virtual/range {v24 .. v24}, Lcom/sonymobile/home/data/ShortcutItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v24 .. v24}, Lcom/sonymobile/home/data/ShortcutItem;->getLabel()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v23

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonymobile/home/model/ItemCreatorImpl;->mShortcutManager:Lcom/sonymobile/home/shortcut/ShortcutManager;

    new-instance v8, Lcom/sonymobile/home/model/ItemCreatorImpl$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-direct {v8, v0, v1, v2}, Lcom/sonymobile/home/model/ItemCreatorImpl$1;-><init>(Lcom/sonymobile/home/model/ItemCreatorImpl;Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonymobile/home/model/ItemCreatorImpl;->mMainThreadHandler:Landroid/os/Handler;

    move-object/from16 v0, v23

    invoke-virtual {v7, v0, v8, v9}, Lcom/sonymobile/home/shortcut/ShortcutManager;->launchShortcutIntent(Landroid/content/Intent;Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;Landroid/os/Handler;)V

    goto :goto_0

    .line 103
    .end local v23    # "shortcutIntent":Landroid/content/Intent;
    .end local v24    # "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    :cond_3
    move-object/from16 v0, p1

    instance-of v7, v0, Lcom/sonymobile/home/data/AdvWidgetItem;

    if-eqz v7, :cond_5

    move-object/from16 v21, p1

    .line 104
    check-cast v21, Lcom/sonymobile/home/data/AdvWidgetItem;

    .line 105
    .local v21, "advWidgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/home/data/AdvWidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lcom/sonymobile/home/data/AdvWidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, "className":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAdvWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;

    move-result-object v4

    .line 111
    .local v4, "advWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;
    if-nez v4, :cond_4

    .line 112
    const/4 v7, 0x0

    goto :goto_1

    .line 115
    :cond_4
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    new-instance v8, Lcom/sonymobile/home/model/ItemCreatorImpl$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/sonymobile/home/model/ItemCreatorImpl$2;-><init>(Lcom/sonymobile/home/model/ItemCreatorImpl;Lcom/sonymobile/home/data/Item;Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonymobile/home/model/ItemCreatorImpl;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual/range {v4 .. v9}, Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;->loadWidgetAsync(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v12

    .line 143
    .local v12, "e":Ljava/lang/IllegalArgumentException;
    const v7, 0x7f080098

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v7}, Lcom/sonymobile/home/model/ItemCreatorImpl;->notifyFailure(Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;I)V

    .line 144
    const-string v7, "AdvWidget"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonymobile/home/model/ItemCreatorImpl;->mContext:Landroid/content/Context;

    const-string v11, "Loading advanced widget failed due to "

    move-object v9, v5

    move-object v10, v6

    invoke-static/range {v7 .. v12}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->logTrackAndPushExceptionToGA(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 148
    .end local v4    # "advWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "className":Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/IllegalArgumentException;
    .end local v21    # "advWidgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    :cond_5
    move-object/from16 v0, p1

    instance-of v7, v0, Lcom/sonymobile/home/data/WidgetItem;

    if-eqz v7, :cond_8

    .line 150
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAppWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    move-result-object v22

    .line 152
    .local v22, "appWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    if-nez v22, :cond_6

    .line 153
    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_6
    move-object/from16 v26, p1

    .line 156
    check-cast v26, Lcom/sonymobile/home/data/WidgetItem;

    .line 157
    .local v26, "widgetItem":Lcom/sonymobile/home/data/WidgetItem;
    invoke-virtual/range {v26 .. v26}, Lcom/sonymobile/home/data/WidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 158
    .restart local v5    # "packageName":Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Lcom/sonymobile/home/data/WidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 159
    .restart local v6    # "className":Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Lcom/sonymobile/home/data/WidgetItem;->getUser()Landroid/os/UserHandle;

    move-result-object v17

    .line 160
    .local v17, "user":Landroid/os/UserHandle;
    if-nez v17, :cond_7

    .line 161
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 164
    :cond_7
    new-instance v13, Lcom/sonymobile/home/model/ItemCreatorImpl$3;

    move-object/from16 v14, p0

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v18, p1

    move-object/from16 v19, p3

    move-object/from16 v20, p2

    invoke-direct/range {v13 .. v20}, Lcom/sonymobile/home/model/ItemCreatorImpl$3;-><init>(Lcom/sonymobile/home/model/ItemCreatorImpl;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Lcom/sonymobile/home/data/Item;Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/home/model/ItemCreatorImpl;->mMainThreadHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    move-object/from16 v14, v22

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v18, v13

    invoke-virtual/range {v14 .. v19}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->registerAppWidgetAsync(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 189
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "className":Ljava/lang/String;
    .end local v17    # "user":Landroid/os/UserHandle;
    .end local v22    # "appWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    .end local v26    # "widgetItem":Lcom/sonymobile/home/data/WidgetItem;
    :cond_8
    move-object/from16 v0, p1

    instance-of v7, v0, Lcom/sonymobile/home/data/InternalFunctionItem;

    if-eqz v7, :cond_9

    .line 190
    new-instance v25, Lcom/sonymobile/home/data/InternalFunctionItem;

    check-cast p1, Lcom/sonymobile/home/data/InternalFunctionItem;

    .end local p1    # "item":Lcom/sonymobile/home/data/Item;
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/sonymobile/home/data/InternalFunctionItem;-><init>(Lcom/sonymobile/home/data/InternalFunctionItem;)V

    .line 193
    .local v25, "storeItem":Lcom/sonymobile/home/data/InternalFunctionItem;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/home/model/ItemCreatorImpl;->notifyListener(Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Lcom/sonymobile/home/data/Item;)V

    goto/16 :goto_0

    .line 195
    .end local v25    # "storeItem":Lcom/sonymobile/home/data/InternalFunctionItem;
    .restart local p1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_1
.end method

.method public createFolder(Ljava/util/List;Lcom/sonymobile/home/data/ItemCreator$ResultListener;Landroid/os/Handler;)Z
    .locals 2
    .param p2, "listener"    # Lcom/sonymobile/home/data/ItemCreator$ResultListener;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Lcom/sonymobile/home/data/ItemCreator$ResultListener;",
            "Landroid/os/Handler;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonymobile/home/model/ItemCreatorImpl$4;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/sonymobile/home/model/ItemCreatorImpl$4;-><init>(Lcom/sonymobile/home/model/ItemCreatorImpl;Ljava/util/List;Landroid/os/Handler;Lcom/sonymobile/home/data/ItemCreator$ResultListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method public createItem(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/data/Item;
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 371
    instance-of v0, p1, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v0, :cond_0

    .line 372
    check-cast p1, Lcom/sonymobile/home/data/ActivityItem;

    .end local p1    # "item":Lcom/sonymobile/home/data/Item;
    invoke-direct {p0, p1}, Lcom/sonymobile/home/model/ItemCreatorImpl;->createActivityItem(Lcom/sonymobile/home/data/ActivityItem;)Lcom/sonymobile/home/data/Item;

    move-result-object v0

    .line 382
    :goto_0
    return-object v0

    .line 373
    .restart local p1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_0
    instance-of v0, p1, Lcom/sonymobile/home/data/ShortcutItem;

    if-eqz v0, :cond_1

    .line 374
    check-cast p1, Lcom/sonymobile/home/data/ShortcutItem;

    .end local p1    # "item":Lcom/sonymobile/home/data/Item;
    invoke-direct {p0, p1}, Lcom/sonymobile/home/model/ItemCreatorImpl;->createShortcutItem(Lcom/sonymobile/home/data/ShortcutItem;)Lcom/sonymobile/home/data/Item;

    move-result-object v0

    goto :goto_0

    .line 375
    .restart local p1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_1
    instance-of v0, p1, Lcom/sonymobile/home/data/WidgetItem;

    if-eqz v0, :cond_2

    .line 376
    check-cast p1, Lcom/sonymobile/home/data/WidgetItem;

    .end local p1    # "item":Lcom/sonymobile/home/data/Item;
    invoke-direct {p0, p1}, Lcom/sonymobile/home/model/ItemCreatorImpl;->createWidgetItem(Lcom/sonymobile/home/data/WidgetItem;)Lcom/sonymobile/home/data/Item;

    move-result-object v0

    goto :goto_0

    .line 377
    .restart local p1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_2
    instance-of v0, p1, Lcom/sonymobile/home/data/AdvWidgetItem;

    if-eqz v0, :cond_3

    .line 378
    check-cast p1, Lcom/sonymobile/home/data/AdvWidgetItem;

    .end local p1    # "item":Lcom/sonymobile/home/data/Item;
    invoke-direct {p0, p1}, Lcom/sonymobile/home/model/ItemCreatorImpl;->createAdvWidgetItem(Lcom/sonymobile/home/data/AdvWidgetItem;)Lcom/sonymobile/home/data/Item;

    move-result-object v0

    goto :goto_0

    .line 379
    .restart local p1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_3
    instance-of v0, p1, Lcom/sonymobile/home/data/FolderItem;

    if-eqz v0, :cond_4

    .line 380
    check-cast p1, Lcom/sonymobile/home/data/FolderItem;

    .end local p1    # "item":Lcom/sonymobile/home/data/Item;
    invoke-direct {p0, p1}, Lcom/sonymobile/home/model/ItemCreatorImpl;->createFolderItem(Lcom/sonymobile/home/data/FolderItem;)Lcom/sonymobile/home/data/Item;

    move-result-object v0

    goto :goto_0

    .line 381
    .restart local p1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_4
    instance-of v0, p1, Lcom/sonymobile/home/data/InternalFunctionItem;

    if-eqz v0, :cond_5

    .line 382
    check-cast p1, Lcom/sonymobile/home/data/InternalFunctionItem;

    .end local p1    # "item":Lcom/sonymobile/home/data/Item;
    invoke-direct {p0, p1}, Lcom/sonymobile/home/model/ItemCreatorImpl;->createInternalFunctionItem(Lcom/sonymobile/home/data/InternalFunctionItem;)Lcom/sonymobile/home/data/Item;

    move-result-object v0

    goto :goto_0

    .line 384
    .restart local p1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported item type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createItemsSync(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 359
    .local v3, "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/data/Item;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 360
    .local v1, "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {p0, v1}, Lcom/sonymobile/home/model/ItemCreatorImpl;->createItem(Lcom/sonymobile/home/data/Item;)Lcom/sonymobile/home/data/Item;

    move-result-object v2

    .line 361
    .local v2, "newItem":Lcom/sonymobile/home/data/Item;
    if-eqz v2, :cond_0

    .line 362
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 366
    .end local v1    # "item":Lcom/sonymobile/home/data/Item;
    .end local v2    # "newItem":Lcom/sonymobile/home/data/Item;
    :cond_1
    return-object v3
.end method

.method public destroyItem(Lcom/sonymobile/home/data/Item;)V
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 391
    instance-of v0, p1, Lcom/sonymobile/home/data/ActivityItem;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sonymobile/home/data/TipItem;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sonymobile/home/data/InternalFunctionItem;

    if-eqz v0, :cond_1

    .line 406
    .end local p1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_0
    :goto_0
    return-void

    .line 394
    .restart local p1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_1
    instance-of v0, p1, Lcom/sonymobile/home/data/ShortcutItem;

    if-nez v0, :cond_0

    .line 396
    instance-of v0, p1, Lcom/sonymobile/home/data/WidgetItem;

    if-eqz v0, :cond_2

    .line 397
    check-cast p1, Lcom/sonymobile/home/data/WidgetItem;

    .end local p1    # "item":Lcom/sonymobile/home/data/Item;
    invoke-direct {p0, p1}, Lcom/sonymobile/home/model/ItemCreatorImpl;->destroyWidgetItem(Lcom/sonymobile/home/data/WidgetItem;)V

    goto :goto_0

    .line 398
    .restart local p1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_2
    instance-of v0, p1, Lcom/sonymobile/home/data/AdvWidgetItem;

    if-nez v0, :cond_0

    .line 400
    instance-of v0, p1, Lcom/sonymobile/home/data/FolderItem;

    if-eqz v0, :cond_3

    .line 401
    check-cast p1, Lcom/sonymobile/home/data/FolderItem;

    .end local p1    # "item":Lcom/sonymobile/home/data/Item;
    invoke-direct {p0, p1}, Lcom/sonymobile/home/model/ItemCreatorImpl;->destroyFolderItem(Lcom/sonymobile/home/data/FolderItem;)V

    goto :goto_0

    .line 403
    .restart local p1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported item type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
