.class public Lcom/sonymobile/home/model/SyncHelper;
.super Ljava/lang/Object;
.source "SyncHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/sonymobile/home/model/SyncHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/model/SyncHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isAppWidgetValid(Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/data/WidgetItem;)Z
    .locals 6
    .param p0, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p1, "widget"    # Lcom/sonymobile/home/data/WidgetItem;

    .prologue
    .line 480
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/model/PackageHandler;->isValidAppWidget(Lcom/sonymobile/home/data/WidgetItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 481
    const/4 v2, 0x1

    .line 491
    :goto_0
    return v2

    .line 484
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/home/data/WidgetItem;->getAppWidgetId()I

    move-result v1

    .line 485
    .local v1, "widgetId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid widget: id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_1

    const-string v2, "invalid"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/home/data/WidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/home/data/WidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, "msg":Ljava/lang/String;
    const-string v2, "General"

    const-string v3, "ErrorLoadingWidget"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v0, v4, v5}, Lcom/sonymobile/home/statistics/TrackingUtil;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 490
    sget-object v2, Lcom/sonymobile/home/model/SyncHelper;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v2, 0x0

    goto :goto_0

    .line 485
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1
.end method

.method private static shouldItemBeRemovedAtSync(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/PackageHandler;Ljava/util/Set;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/sonymobile/home/folder/FolderManager;)Z
    .locals 15
    .param p0, "item"    # Lcom/sonymobile/home/data/Item;
    .param p1, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p6, "folderManager"    # Lcom/sonymobile/home/folder/FolderManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/data/Item;",
            "Lcom/sonymobile/home/model/PackageHandler;",
            "Ljava/util/Set",
            "<",
            "Lcom/sonymobile/home/data/ActivityItem;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/home/model/UserPackage;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/home/model/UserComponentName;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Lcom/sonymobile/home/folder/FolderManager;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 389
    .local p2, "itemsInstalled":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/home/data/ActivityItem;>;"
    .local p3, "unavailablePackages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/model/UserPackage;>;"
    .local p4, "installedWidgets":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/model/UserComponentName;>;"
    .local p5, "installedAdvWidgets":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/ComponentName;>;"
    if-nez p0, :cond_0

    .line 390
    const/4 v14, 0x0

    .line 469
    :goto_0
    return v14

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 394
    .local v8, "packageName":Ljava/lang/String;
    instance-of v14, p0, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v14, :cond_4

    .line 395
    invoke-virtual {p0}, Lcom/sonymobile/home/data/Item;->getUser()Landroid/os/UserHandle;

    move-result-object v10

    .line 396
    .local v10, "user":Landroid/os/UserHandle;
    if-nez v10, :cond_1

    .line 397
    const/4 v14, 0x1

    goto :goto_0

    .line 398
    :cond_1
    new-instance v14, Lcom/sonymobile/home/model/UserPackage;

    invoke-direct {v14, v8, v10}, Lcom/sonymobile/home/model/UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 399
    const/4 v14, 0x0

    goto :goto_0

    .line 401
    :cond_2
    move-object/from16 v0, p2

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const/4 v14, 0x1

    goto :goto_0

    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 403
    .end local v10    # "user":Landroid/os/UserHandle;
    :cond_4
    instance-of v14, p0, Lcom/sonymobile/home/data/WidgetItem;

    if-eqz v14, :cond_9

    .line 404
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/home/model/PackageHandler;->isSafeMode()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 405
    const/4 v14, 0x0

    goto :goto_0

    :cond_5
    move-object v11, p0

    .line 407
    check-cast v11, Lcom/sonymobile/home/data/WidgetItem;

    .line 408
    .local v11, "widget":Lcom/sonymobile/home/data/WidgetItem;
    invoke-virtual {v11}, Lcom/sonymobile/home/data/WidgetItem;->getUser()Landroid/os/UserHandle;

    move-result-object v13

    .line 409
    .local v13, "widgetUser":Landroid/os/UserHandle;
    if-nez v13, :cond_6

    .line 410
    const/4 v14, 0x1

    goto :goto_0

    .line 412
    :cond_6
    invoke-virtual {v11}, Lcom/sonymobile/home/data/WidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v12

    .line 413
    .local v12, "widgetName":Ljava/lang/String;
    if-eqz v12, :cond_13

    .line 414
    new-instance v4, Lcom/sonymobile/home/model/UserComponentName;

    invoke-direct {v4, v8, v12, v13}, Lcom/sonymobile/home/model/UserComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 416
    .local v4, "c":Lcom/sonymobile/home/model/UserComponentName;
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/sonymobile/home/model/SyncHelper;->isAppWidgetValid(Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/data/WidgetItem;)Z

    move-result v14

    if-nez v14, :cond_8

    :cond_7
    const/4 v14, 0x1

    goto :goto_0

    :cond_8
    const/4 v14, 0x0

    goto :goto_0

    .line 419
    .end local v4    # "c":Lcom/sonymobile/home/model/UserComponentName;
    .end local v11    # "widget":Lcom/sonymobile/home/data/WidgetItem;
    .end local v12    # "widgetName":Ljava/lang/String;
    .end local v13    # "widgetUser":Landroid/os/UserHandle;
    :cond_9
    instance-of v14, p0, Lcom/sonymobile/home/data/AdvWidgetItem;

    if-eqz v14, :cond_b

    move-object v2, p0

    .line 420
    check-cast v2, Lcom/sonymobile/home/data/AdvWidgetItem;

    .line 421
    .local v2, "advWidget":Lcom/sonymobile/home/data/AdvWidgetItem;
    invoke-virtual {v2}, Lcom/sonymobile/home/data/AdvWidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 422
    .local v3, "advWidgetName":Ljava/lang/String;
    if-eqz v3, :cond_13

    .line 423
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v8, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    .local v4, "c":Landroid/content/ComponentName;
    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    const/4 v14, 0x1

    goto :goto_0

    :cond_a
    const/4 v14, 0x0

    goto :goto_0

    .line 426
    .end local v2    # "advWidget":Lcom/sonymobile/home/data/AdvWidgetItem;
    .end local v3    # "advWidgetName":Ljava/lang/String;
    .end local v4    # "c":Landroid/content/ComponentName;
    :cond_b
    instance-of v14, p0, Lcom/sonymobile/home/data/ShortcutItem;

    if-eqz v14, :cond_f

    move-object v9, p0

    .line 427
    check-cast v9, Lcom/sonymobile/home/data/ShortcutItem;

    .line 428
    .local v9, "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    invoke-virtual {p0}, Lcom/sonymobile/home/data/Item;->getUser()Landroid/os/UserHandle;

    move-result-object v10

    .line 429
    .restart local v10    # "user":Landroid/os/UserHandle;
    if-nez v10, :cond_c

    .line 430
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 431
    :cond_c
    if-eqz v8, :cond_d

    new-instance v14, Lcom/sonymobile/home/model/UserPackage;

    invoke-direct {v14, v8, v10}, Lcom/sonymobile/home/model/UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 433
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 434
    :cond_d
    invoke-virtual {v9}, Lcom/sonymobile/home/data/ShortcutItem;->isLauncherShortcut()Z

    move-result v14

    if-eqz v14, :cond_13

    .line 435
    invoke-virtual {v9}, Lcom/sonymobile/home/data/ShortcutItem;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 436
    .local v5, "className":Ljava/lang/String;
    if-eqz v8, :cond_13

    if-eqz v5, :cond_13

    .line 437
    new-instance v1, Lcom/sonymobile/home/data/ActivityItem;

    invoke-direct {v1, v8, v5, v10}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 439
    .local v1, "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_e
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 442
    .end local v1    # "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    .end local v5    # "className":Ljava/lang/String;
    .end local v9    # "shortcutItem":Lcom/sonymobile/home/data/ShortcutItem;
    .end local v10    # "user":Landroid/os/UserHandle;
    :cond_f
    instance-of v14, p0, Lcom/sonymobile/home/data/FolderItem;

    if-eqz v14, :cond_11

    .line 443
    const/4 v6, 0x0

    .line 444
    .local v6, "folderEmpty":Z
    if-eqz p6, :cond_10

    move-object v7, p0

    .line 445
    check-cast v7, Lcom/sonymobile/home/data/FolderItem;

    .line 446
    .local v7, "folderItem":Lcom/sonymobile/home/data/FolderItem;
    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Lcom/sonymobile/home/folder/FolderManager;->isFolderEmpty(Lcom/sonymobile/home/data/FolderItem;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 447
    const/4 v6, 0x1

    .end local v7    # "folderItem":Lcom/sonymobile/home/data/FolderItem;
    :cond_10
    move v14, v6

    .line 450
    goto/16 :goto_0

    .line 451
    .end local v6    # "folderEmpty":Z
    :cond_11
    instance-of v14, p0, Lcom/sonymobile/home/data/TipItem;

    if-nez v14, :cond_12

    instance-of v14, p0, Lcom/sonymobile/home/data/InternalFunctionItem;

    if-eqz v14, :cond_13

    .line 452
    :cond_12
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 455
    :cond_13
    if-eqz v8, :cond_17

    .line 459
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/home/model/PackageHandler;->isSafeMode()Z

    move-result v14

    if-eqz v14, :cond_14

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/sonymobile/home/model/PackageHandler;->isSystemApplication(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 460
    :cond_14
    invoke-virtual {p0}, Lcom/sonymobile/home/data/Item;->getUser()Landroid/os/UserHandle;

    move-result-object v10

    .line 461
    .restart local v10    # "user":Landroid/os/UserHandle;
    if-nez v10, :cond_15

    .line 462
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/home/model/PackageHandler;->getMainUser()Landroid/os/UserHandle;

    move-result-object v10

    .line 465
    :cond_15
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v10}, Lcom/sonymobile/home/model/PackageHandler;->isPackageInstalled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v14

    if-nez v14, :cond_16

    const/4 v14, 0x1

    goto/16 :goto_0

    :cond_16
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 469
    .end local v10    # "user":Landroid/os/UserHandle;
    :cond_17
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method public static sync(Lcom/sonymobile/home/model/RemoveSyncable;Lcom/sonymobile/home/model/AddSyncable;Ljava/util/Collection;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/folder/FolderManager;Ljava/util/Collection;)Z
    .locals 3
    .param p0, "removeSyncable"    # Lcom/sonymobile/home/model/RemoveSyncable;
    .param p1, "addSyncable"    # Lcom/sonymobile/home/model/AddSyncable;
    .param p3, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p4, "folderManager"    # Lcom/sonymobile/home/folder/FolderManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/model/RemoveSyncable;",
            "Lcom/sonymobile/home/model/AddSyncable;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Lcom/sonymobile/home/model/PackageHandler;",
            "Lcom/sonymobile/home/folder/FolderManager;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 290
    .local p2, "itemsInModel":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/data/Item;>;"
    .local p5, "outItemsRemovedFromModel":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/data/Item;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 291
    .local v1, "itemsInModelCopy":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/data/Item;>;"
    const/4 v0, 0x0

    .line 293
    .local v0, "changed":Z
    if-eqz p0, :cond_0

    .line 294
    invoke-static {p0, v1, p3, p4, p5}, Lcom/sonymobile/home/model/SyncHelper;->syncRemove(Lcom/sonymobile/home/model/RemoveSyncable;Ljava/util/Collection;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/folder/FolderManager;Ljava/util/Collection;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 298
    :cond_0
    if-eqz p1, :cond_1

    .line 299
    invoke-static {p1, v1, p3}, Lcom/sonymobile/home/model/SyncHelper;->syncAdd(Lcom/sonymobile/home/model/AddSyncable;Ljava/util/Collection;Lcom/sonymobile/home/model/PackageHandler;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 302
    :cond_1
    return v0
.end method

.method private static syncAdd(Lcom/sonymobile/home/model/AddSyncable;Ljava/util/Collection;Lcom/sonymobile/home/model/PackageHandler;)Z
    .locals 6
    .param p0, "addSyncable"    # Lcom/sonymobile/home/model/AddSyncable;
    .param p2, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/model/AddSyncable;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Lcom/sonymobile/home/model/PackageHandler;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 354
    .local p1, "itemsInModel":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/data/Item;>;"
    invoke-virtual {p2}, Lcom/sonymobile/home/model/PackageHandler;->getActivityItemSet()Ljava/util/Set;

    move-result-object v1

    .line 356
    .local v1, "activityItemsInstalled":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/home/data/ActivityItem;>;"
    const/4 v3, 0x0

    .line 358
    .local v3, "changed":Z
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/data/ActivityItem;

    .line 359
    .local v0, "activityItemInstalled":Lcom/sonymobile/home/data/ActivityItem;
    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 360
    invoke-interface {p0, v0}, Lcom/sonymobile/home/model/AddSyncable;->addDuringSync(Lcom/sonymobile/home/data/Item;)Z

    move-result v2

    .line 361
    .local v2, "added":Z
    or-int/2addr v3, v2

    goto :goto_0

    .line 365
    .end local v0    # "activityItemInstalled":Lcom/sonymobile/home/data/ActivityItem;
    .end local v2    # "added":Z
    :cond_1
    return v3
.end method

.method public static syncPackageAdded(Lcom/sonymobile/home/model/AddSyncable;Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 5
    .param p0, "addSyncable"    # Lcom/sonymobile/home/model/AddSyncable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/model/AddSyncable;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/home/data/ActivityItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "itemsInModel":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/data/Item;>;"
    .local p2, "itemsInPackage":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/data/ActivityItem;>;"
    const/4 v3, 0x0

    .line 49
    .local v3, "modelChanged":Z
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 50
    .local v2, "itemInPackage":Lcom/sonymobile/home/data/Item;
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 51
    invoke-interface {p0, v2}, Lcom/sonymobile/home/model/AddSyncable;->addDuringSync(Lcom/sonymobile/home/data/Item;)Z

    move-result v0

    .line 52
    .local v0, "added":Z
    or-int/2addr v3, v0

    goto :goto_0

    .line 56
    .end local v0    # "added":Z
    .end local v2    # "itemInPackage":Lcom/sonymobile/home/data/Item;
    :cond_1
    return v3
.end method

.method public static syncPackageChanged(Lcom/sonymobile/home/model/RemoveSyncable;Lcom/sonymobile/home/model/AddSyncable;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/Collection;)Z
    .locals 10
    .param p0, "removeSyncable"    # Lcom/sonymobile/home/model/RemoveSyncable;
    .param p1, "addSyncable"    # Lcom/sonymobile/home/model/AddSyncable;
    .param p7, "packageName"    # Ljava/lang/String;
    .param p8, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/model/RemoveSyncable;",
            "Lcom/sonymobile/home/model/AddSyncable;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/home/data/ActivityItem;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/home/model/UserPackage;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/home/model/UserComponentName;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 90
    .local p2, "itemsInModel":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/data/Item;>;"
    .local p3, "activityItemsInPackage":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/data/ActivityItem;>;"
    .local p4, "unavailablePackages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/model/UserPackage;>;"
    .local p5, "installedWidgets":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/model/UserComponentName;>;"
    .local p6, "installedAdvWidgets":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/ComponentName;>;"
    .local p9, "outItemsRemovedFromModel":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/data/Item;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 91
    .local v1, "itemsInModelCopy":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/data/Item;>;"
    const/4 v9, 0x0

    .line 93
    .local v9, "modelChanged":Z
    if-eqz p0, :cond_0

    move-object v0, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    .line 94
    invoke-static/range {v0 .. v8}, Lcom/sonymobile/home/model/SyncHelper;->syncPackageChangedRemove(Lcom/sonymobile/home/model/RemoveSyncable;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/Collection;)Z

    move-result v0

    or-int/2addr v9, v0

    .line 99
    :cond_0
    if-eqz p1, :cond_1

    .line 100
    invoke-static {p1, v1, p3}, Lcom/sonymobile/home/model/SyncHelper;->syncPackageChangedAdd(Lcom/sonymobile/home/model/AddSyncable;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    or-int/2addr v9, v0

    .line 104
    :cond_1
    return v9
.end method

.method private static syncPackageChangedAdd(Lcom/sonymobile/home/model/AddSyncable;Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 5
    .param p0, "addSyncable"    # Lcom/sonymobile/home/model/AddSyncable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/model/AddSyncable;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/home/data/ActivityItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, "itemsInModel":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/data/Item;>;"
    .local p2, "activityItemsInPackage":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/data/ActivityItem;>;"
    const/4 v3, 0x0

    .line 223
    .local v3, "modelChanged":Z
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 224
    .local v2, "itemInPackage":Lcom/sonymobile/home/data/Item;
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 225
    invoke-interface {p0, v2}, Lcom/sonymobile/home/model/AddSyncable;->addDuringSync(Lcom/sonymobile/home/data/Item;)Z

    move-result v0

    .line 226
    .local v0, "added":Z
    or-int/2addr v3, v0

    goto :goto_0

    .line 229
    .end local v0    # "added":Z
    .end local v2    # "itemInPackage":Lcom/sonymobile/home/data/Item;
    :cond_1
    return v3
.end method

.method private static syncPackageChangedRemove(Lcom/sonymobile/home/model/RemoveSyncable;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/Collection;)Z
    .locals 15
    .param p0, "removeSyncable"    # Lcom/sonymobile/home/model/RemoveSyncable;
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/model/RemoveSyncable;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/home/data/ActivityItem;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/home/model/UserPackage;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/home/model/UserComponentName;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "itemsInModel":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/data/Item;>;"
    .local p2, "activityItemsInPackage":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/data/ActivityItem;>;"
    .local p3, "unavailablePackages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/model/UserPackage;>;"
    .local p4, "installedWidgets":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/model/UserComponentName;>;"
    .local p5, "installedAdvWidgets":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/ComponentName;>;"
    .local p8, "outItemsRemovedFromModel":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/data/Item;>;"
    const/4 v9, 0x0

    .line 137
    .local v9, "modelChanged":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/home/data/Item;

    .line 138
    .local v7, "itemInModel":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v7}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 139
    .local v8, "itemPackageName":Ljava/lang/String;
    if-eqz v8, :cond_0

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual {v7}, Lcom/sonymobile/home/data/Item;->getUser()Landroid/os/UserHandle;

    move-result-object v14

    move-object/from16 v0, p7

    invoke-virtual {v0, v14}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 141
    instance-of v14, v7, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v14, :cond_2

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    new-instance v14, Lcom/sonymobile/home/model/UserPackage;

    move-object/from16 v0, p7

    invoke-direct {v14, v8, v0}, Lcom/sonymobile/home/model/UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 146
    invoke-interface {p0, v7}, Lcom/sonymobile/home/model/RemoveSyncable;->removeDuringSync(Lcom/sonymobile/home/data/Item;)Z

    move-result v10

    .line 147
    .local v10, "removed":Z
    if-eqz v10, :cond_1

    .line 148
    move-object/from16 v0, p8

    invoke-interface {v0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_1
    or-int/2addr v9, v10

    .line 151
    goto :goto_0

    .end local v10    # "removed":Z
    :cond_2
    instance-of v14, v7, Lcom/sonymobile/home/data/ShortcutItem;

    if-eqz v14, :cond_4

    move-object v14, v7

    check-cast v14, Lcom/sonymobile/home/data/ShortcutItem;

    invoke-virtual {v14}, Lcom/sonymobile/home/data/ShortcutItem;->isLauncherShortcut()Z

    move-result v14

    if-eqz v14, :cond_4

    new-instance v14, Lcom/sonymobile/home/model/UserPackage;

    move-object/from16 v0, p7

    invoke-direct {v14, v8, v0}, Lcom/sonymobile/home/model/UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    move-object v14, v7

    .line 154
    check-cast v14, Lcom/sonymobile/home/data/ShortcutItem;

    invoke-virtual {v14}, Lcom/sonymobile/home/data/ShortcutItem;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 155
    .local v5, "className":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 156
    new-instance v1, Lcom/sonymobile/home/data/ActivityItem;

    move-object/from16 v0, p6

    invoke-direct {v1, v0, v5}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .local v1, "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 158
    invoke-interface {p0, v7}, Lcom/sonymobile/home/model/RemoveSyncable;->removeDuringSync(Lcom/sonymobile/home/data/Item;)Z

    move-result v10

    .line 159
    .restart local v10    # "removed":Z
    if-eqz v10, :cond_3

    .line 160
    move-object/from16 v0, p8

    invoke-interface {v0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_3
    or-int/2addr v9, v10

    goto/16 :goto_0

    .line 165
    .end local v1    # "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    .end local v5    # "className":Ljava/lang/String;
    .end local v10    # "removed":Z
    :cond_4
    instance-of v14, v7, Lcom/sonymobile/home/data/WidgetItem;

    if-eqz v14, :cond_6

    move-object v11, v7

    .line 167
    check-cast v11, Lcom/sonymobile/home/data/WidgetItem;

    .line 168
    .local v11, "widgetItem":Lcom/sonymobile/home/data/WidgetItem;
    invoke-virtual {v11}, Lcom/sonymobile/home/data/WidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v12

    .line 169
    .local v12, "widgetName":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/sonymobile/home/data/WidgetItem;->getUser()Landroid/os/UserHandle;

    move-result-object v13

    .line 170
    .local v13, "widgetUser":Landroid/os/UserHandle;
    if-eqz v12, :cond_0

    .line 171
    new-instance v4, Lcom/sonymobile/home/model/UserComponentName;

    invoke-direct {v4, v8, v12, v13}, Lcom/sonymobile/home/model/UserComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 173
    .local v4, "c":Lcom/sonymobile/home/model/UserComponentName;
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 176
    invoke-interface {p0, v11}, Lcom/sonymobile/home/model/RemoveSyncable;->removeDuringSync(Lcom/sonymobile/home/data/Item;)Z

    move-result v10

    .line 177
    .restart local v10    # "removed":Z
    if-eqz v10, :cond_5

    .line 178
    move-object/from16 v0, p8

    invoke-interface {v0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_5
    or-int/2addr v9, v10

    goto/16 :goto_0

    .line 183
    .end local v4    # "c":Lcom/sonymobile/home/model/UserComponentName;
    .end local v10    # "removed":Z
    .end local v11    # "widgetItem":Lcom/sonymobile/home/data/WidgetItem;
    .end local v12    # "widgetName":Ljava/lang/String;
    .end local v13    # "widgetUser":Landroid/os/UserHandle;
    :cond_6
    instance-of v14, v7, Lcom/sonymobile/home/data/AdvWidgetItem;

    if-eqz v14, :cond_0

    move-object v2, v7

    .line 185
    check-cast v2, Lcom/sonymobile/home/data/AdvWidgetItem;

    .line 186
    .local v2, "advWidgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    invoke-virtual {v2}, Lcom/sonymobile/home/data/AdvWidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "advWidgetName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 189
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v8, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .local v4, "c":Landroid/content/ComponentName;
    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 193
    invoke-interface {p0, v2}, Lcom/sonymobile/home/model/RemoveSyncable;->removeDuringSync(Lcom/sonymobile/home/data/Item;)Z

    move-result v10

    .line 194
    .restart local v10    # "removed":Z
    if-eqz v10, :cond_7

    .line 195
    move-object/from16 v0, p8

    invoke-interface {v0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_7
    or-int/2addr v9, v10

    goto/16 :goto_0

    .line 203
    .end local v2    # "advWidgetItem":Lcom/sonymobile/home/data/AdvWidgetItem;
    .end local v3    # "advWidgetName":Ljava/lang/String;
    .end local v4    # "c":Landroid/content/ComponentName;
    .end local v7    # "itemInModel":Lcom/sonymobile/home/data/Item;
    .end local v8    # "itemPackageName":Ljava/lang/String;
    .end local v10    # "removed":Z
    :cond_8
    return v9
.end method

.method public static syncPackageRemoved(Lcom/sonymobile/home/model/RemoveSyncable;Ljava/util/Collection;Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/Collection;)Z
    .locals 6
    .param p0, "removeSyncable"    # Lcom/sonymobile/home/model/RemoveSyncable;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/model/RemoveSyncable;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "itemsInModel":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/data/Item;>;"
    .local p4, "outItemsRemovedFromModel":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/data/Item;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 251
    .local v2, "itemsInModelCopy":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/data/Item;>;"
    const/4 v3, 0x0

    .line 253
    .local v3, "modelChanged":Z
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/data/Item;

    .line 254
    .local v1, "itemInModel":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 255
    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lcom/sonymobile/home/data/Item;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 256
    :cond_1
    invoke-interface {p0, v1}, Lcom/sonymobile/home/model/RemoveSyncable;->removeDuringSync(Lcom/sonymobile/home/data/Item;)Z

    move-result v4

    .line 257
    .local v4, "removed":Z
    if-eqz v4, :cond_2

    .line 258
    invoke-interface {p4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_2
    or-int/2addr v3, v4

    goto :goto_0

    .line 264
    .end local v1    # "itemInModel":Lcom/sonymobile/home/data/Item;
    .end local v4    # "removed":Z
    :cond_3
    return v3
.end method

.method private static syncRemove(Lcom/sonymobile/home/model/RemoveSyncable;Ljava/util/Collection;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/folder/FolderManager;Ljava/util/Collection;)Z
    .locals 11
    .param p0, "removeSyncable"    # Lcom/sonymobile/home/model/RemoveSyncable;
    .param p2, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p3, "folderManager"    # Lcom/sonymobile/home/folder/FolderManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/model/RemoveSyncable;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Lcom/sonymobile/home/model/PackageHandler;",
            "Lcom/sonymobile/home/folder/FolderManager;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 322
    .local p1, "itemsInModel":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/data/Item;>;"
    .local p4, "outItemsRemovedFromModel":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/data/Item;>;"
    invoke-virtual {p2}, Lcom/sonymobile/home/model/PackageHandler;->getActivityItemSet()Ljava/util/Set;

    move-result-object v2

    .line 323
    .local v2, "activityItemsInstalled":Ljava/util/Set;, "Ljava/util/Set<Lcom/sonymobile/home/data/ActivityItem;>;"
    invoke-virtual {p2}, Lcom/sonymobile/home/model/PackageHandler;->getWidgets()Ljava/util/Set;

    move-result-object v4

    .line 324
    .local v4, "widgetsInstalled":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/model/UserComponentName;>;"
    invoke-virtual {p2}, Lcom/sonymobile/home/model/PackageHandler;->getAdvancedWidgets()Ljava/util/Set;

    move-result-object v5

    .line 325
    .local v5, "advWidgetsInstalled":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/ComponentName;>;"
    invoke-virtual {p2}, Lcom/sonymobile/home/model/PackageHandler;->getUnavailableApps()Ljava/util/Set;

    move-result-object v3

    .line 326
    .local v3, "unavailablePackages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/home/model/UserPackage;>;"
    const/4 v7, 0x0

    .line 328
    .local v7, "changed":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/data/Item;

    .local v0, "itemInModel":Lcom/sonymobile/home/data/Item;
    move-object v1, p2

    move-object v6, p3

    .line 329
    invoke-static/range {v0 .. v6}, Lcom/sonymobile/home/model/SyncHelper;->shouldItemBeRemovedAtSync(Lcom/sonymobile/home/data/Item;Lcom/sonymobile/home/model/PackageHandler;Ljava/util/Set;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/sonymobile/home/folder/FolderManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    invoke-interface {p0, v0}, Lcom/sonymobile/home/model/RemoveSyncable;->removeDuringSync(Lcom/sonymobile/home/data/Item;)Z

    move-result v9

    .line 332
    .local v9, "removed":Z
    if-eqz v9, :cond_1

    .line 333
    invoke-interface {p4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 334
    sget-object v1, Lcom/sonymobile/home/model/SyncHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Removed during sync: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_1
    or-int/2addr v7, v9

    goto :goto_0

    .line 339
    .end local v0    # "itemInModel":Lcom/sonymobile/home/data/Item;
    .end local v9    # "removed":Z
    :cond_2
    return v7
.end method
