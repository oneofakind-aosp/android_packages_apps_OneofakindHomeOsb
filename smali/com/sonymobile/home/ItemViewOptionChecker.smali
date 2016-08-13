.class public Lcom/sonymobile/home/ItemViewOptionChecker;
.super Ljava/lang/Object;
.source "ItemViewOptionChecker.java"


# instance fields
.field private final mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

.field private final mSupportDisableApps:Z


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/model/PackageHandler;Z)V
    .locals 0
    .param p1, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p2, "supportDisableApps"    # Z

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/sonymobile/home/ItemViewOptionChecker;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    .line 33
    iput-boolean p2, p0, Lcom/sonymobile/home/ItemViewOptionChecker;->mSupportDisableApps:Z

    .line 34
    return-void
.end method

.method private isActivityItemUninstallable(Lcom/sonymobile/home/data/ActivityItem;)Z
    .locals 1
    .param p1, "activityItem"    # Lcom/sonymobile/home/data/ActivityItem;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sonymobile/home/ItemViewOptionChecker;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/model/PackageHandler;->isActivityUninstallable(Lcom/sonymobile/home/data/ActivityItem;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/ItemViewOptionChecker;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/model/PackageHandler;->isActivityInstalled(Lcom/sonymobile/home/data/ActivityItem;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDisableable(Lcom/sonymobile/home/data/Item;)Z
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 82
    .local v1, "isDisableable":Z
    iget-boolean v2, p0, Lcom/sonymobile/home/ItemViewOptionChecker;->mSupportDisableApps:Z

    if-nez v2, :cond_0

    .line 83
    const/4 v2, 0x0

    .line 96
    .end local p1    # "item":Lcom/sonymobile/home/data/Item;
    :goto_0
    return v2

    .line 86
    .restart local p1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_0
    instance-of v2, p1, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v2, :cond_2

    .line 87
    iget-object v2, p0, Lcom/sonymobile/home/ItemViewOptionChecker;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    check-cast p1, Lcom/sonymobile/home/data/ActivityItem;

    .end local p1    # "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v2, p1}, Lcom/sonymobile/home/model/PackageHandler;->isActivityDisableable(Lcom/sonymobile/home/data/ActivityItem;)Z

    move-result v1

    :cond_1
    :goto_1
    move v2, v1

    .line 96
    goto :goto_0

    .line 89
    .restart local p1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_2
    instance-of v2, p1, Lcom/sonymobile/home/data/ShortcutItem;

    if-eqz v2, :cond_1

    .line 90
    check-cast p1, Lcom/sonymobile/home/data/ShortcutItem;

    .end local p1    # "item":Lcom/sonymobile/home/data/Item;
    invoke-static {p1}, Lcom/sonymobile/home/shortcut/ShortcutUtils;->createLauncherActivityFromShortcut(Lcom/sonymobile/home/data/ShortcutItem;)Lcom/sonymobile/home/data/ActivityItem;

    move-result-object v0

    .line 92
    .local v0, "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    if-eqz v0, :cond_1

    .line 93
    iget-object v2, p0, Lcom/sonymobile/home/ItemViewOptionChecker;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v2, v0}, Lcom/sonymobile/home/model/PackageHandler;->isActivityDisableable(Lcom/sonymobile/home/data/ActivityItem;)Z

    move-result v1

    goto :goto_1
.end method

.method private isUninstallable(Lcom/sonymobile/home/data/Item;)Z
    .locals 3
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 54
    const/4 v1, 0x0

    .line 56
    .local v1, "isUninstallable":Z
    instance-of v2, p1, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v2, :cond_1

    .line 57
    check-cast p1, Lcom/sonymobile/home/data/ActivityItem;

    .end local p1    # "item":Lcom/sonymobile/home/data/Item;
    invoke-direct {p0, p1}, Lcom/sonymobile/home/ItemViewOptionChecker;->isActivityItemUninstallable(Lcom/sonymobile/home/data/ActivityItem;)Z

    move-result v1

    .line 69
    :cond_0
    :goto_0
    return v1

    .line 59
    .restart local p1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_1
    instance-of v2, p1, Lcom/sonymobile/home/data/ShortcutItem;

    if-eqz v2, :cond_2

    .line 60
    check-cast p1, Lcom/sonymobile/home/data/ShortcutItem;

    .end local p1    # "item":Lcom/sonymobile/home/data/Item;
    invoke-static {p1}, Lcom/sonymobile/home/shortcut/ShortcutUtils;->createLauncherActivityFromShortcut(Lcom/sonymobile/home/data/ShortcutItem;)Lcom/sonymobile/home/data/ActivityItem;

    move-result-object v0

    .line 62
    .local v0, "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    if-eqz v0, :cond_0

    .line 63
    invoke-direct {p0, v0}, Lcom/sonymobile/home/ItemViewOptionChecker;->isActivityItemUninstallable(Lcom/sonymobile/home/data/ActivityItem;)Z

    move-result v1

    goto :goto_0

    .line 65
    .end local v0    # "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    .restart local p1    # "item":Lcom/sonymobile/home/data/Item;
    :cond_2
    instance-of v2, p1, Lcom/sonymobile/home/data/FolderItem;

    if-eqz v2, :cond_0

    .line 66
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public hasUninstallOptionEnabled(Lcom/sonymobile/home/data/Item;)Z
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/sonymobile/home/ItemViewOptionChecker;->isUninstallable(Lcom/sonymobile/home/data/Item;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sonymobile/home/ItemViewOptionChecker;->isDisableable(Lcom/sonymobile/home/data/Item;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
