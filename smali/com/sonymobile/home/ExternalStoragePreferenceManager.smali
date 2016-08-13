.class public final Lcom/sonymobile/home/ExternalStoragePreferenceManager;
.super Ljava/lang/Object;
.source "ExternalStoragePreferenceManager.java"


# static fields
.field private static sInstance:Lcom/sonymobile/home/ExternalStoragePreferenceManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mExternalStoragePackageMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->mExternalStoragePackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/ExternalStoragePreferenceManager;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/ExternalStoragePreferenceManager;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->getPackageExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private addPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 232
    iget-object v5, p0, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->mExternalStoragePackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 233
    .local v2, "oldLabel":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 235
    .local v0, "change":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 236
    iget-object v5, p0, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->mContext:Landroid/content/Context;

    const-string v6, "home_external_storage_apps_pref"

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 238
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 239
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 240
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 242
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    return-void

    .end local v0    # "change":Z
    :cond_2
    move v0, v4

    .line 233
    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sonymobile/home/ExternalStoragePreferenceManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const-class v1, Lcom/sonymobile/home/ExternalStoragePreferenceManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->sInstance:Lcom/sonymobile/home/ExternalStoragePreferenceManager;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/sonymobile/home/ExternalStoragePreferenceManager;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/ExternalStoragePreferenceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->sInstance:Lcom/sonymobile/home/ExternalStoragePreferenceManager;

    .line 55
    :cond_0
    sget-object v0, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->sInstance:Lcom/sonymobile/home/ExternalStoragePreferenceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPackageExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sonymobile/home/HomeApplication;

    .line 201
    .local v0, "homeApplication":Lcom/sonymobile/home/HomeApplication;
    invoke-virtual {v0}, Lcom/sonymobile/home/HomeApplication;->getPackageHandler()Lcom/sonymobile/home/model/PackageHandler;

    move-result-object v1

    .line 202
    .local v1, "packageHandler":Lcom/sonymobile/home/model/PackageHandler;
    invoke-virtual {v1}, Lcom/sonymobile/home/model/PackageHandler;->getPackageExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    return-object v2
.end method

.method private removePackage(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 250
    iget-object v2, p0, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->mExternalStoragePackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 251
    iget-object v2, p0, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->mContext:Landroid/content/Context;

    const-string v3, "home_external_storage_apps_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 253
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 254
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 255
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 257
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method


# virtual methods
.method public getLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->mExternalStoragePackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public isOnExternalStorage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->mExternalStoragePackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized update(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v5, 0x2000

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 143
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x40000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 146
    .local v2, "isOnExternalStorage":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 147
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "label":Ljava/lang/String;
    invoke-direct {p0, p1, v3}, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->addPackage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "isOnExternalStorage":Z
    .end local v3    # "label":Ljava/lang/String;
    :goto_1
    monitor-exit p0

    return-void

    .line 143
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 150
    .restart local v2    # "isOnExternalStorage":Z
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->removePackage(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 153
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "isOnExternalStorage":Z
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    invoke-direct {p0, p1}, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->removePackage(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 141
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized updateAll()Ljava/util/Set;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->mContext:Landroid/content/Context;

    const-string v16, "home_external_storage_apps_pref"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 83
    .local v14, "prefs":Landroid/content/SharedPreferences;
    const/4 v3, 0x0

    .line 86
    .local v3, "change":Z
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 87
    .local v8, "externalStoragePackageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v14}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v9

    .line 88
    .local v9, "externalStoragePackageTmpMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 89
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    instance-of v15, v15, Ljava/lang/String;

    if-eqz v15, :cond_0

    .line 90
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v8, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 81
    .end local v3    # "change":Z
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v8    # "externalStoragePackageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "externalStoragePackageTmpMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v14    # "prefs":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15

    .line 94
    .restart local v3    # "change":Z
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .restart local v8    # "externalStoragePackageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "externalStoragePackageTmpMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v14    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    :try_start_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const/4 v3, 0x1

    goto :goto_0

    .line 100
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v16, 0x2000

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 102
    .local v2, "appInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 103
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v15, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v16, 0x40000

    and-int v15, v15, v16

    if-eqz v15, :cond_4

    const/4 v11, 0x1

    .line 104
    .local v11, "isOnExternalStorage":Z
    :goto_2
    if-eqz v11, :cond_5

    .line 105
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v15}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 106
    .local v12, "label":Ljava/lang/String;
    iget-object v15, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v15, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 107
    .local v13, "oldLabel":Ljava/lang/String;
    if-eqz v13, :cond_3

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 108
    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    .line 103
    .end local v11    # "isOnExternalStorage":Z
    .end local v12    # "label":Ljava/lang/String;
    .end local v13    # "oldLabel":Ljava/lang/String;
    :cond_4
    const/4 v11, 0x0

    goto :goto_2

    .line 111
    .restart local v11    # "isOnExternalStorage":Z
    :cond_5
    iget-object v15, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_6

    const/4 v15, 0x1

    :goto_3
    or-int/2addr v3, v15

    goto :goto_1

    :cond_6
    const/4 v15, 0x0

    goto :goto_3

    .line 115
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "isOnExternalStorage":Z
    :cond_7
    if-eqz v3, :cond_9

    .line 117
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 118
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 119
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    .line 120
    .local v7, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 121
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-interface {v4, v15, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 123
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 126
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->mExternalStoragePackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v15}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 127
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/home/ExternalStoragePreferenceManager;->mExternalStoragePackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v15, v8}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 129
    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v15

    monitor-exit p0

    return-object v15
.end method

.method public updateAllAsync()V
    .locals 4

    .prologue
    .line 166
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 167
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/sonymobile/home/ExternalStoragePreferenceManager$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/ExternalStoragePreferenceManager$1;-><init>(Lcom/sonymobile/home/ExternalStoragePreferenceManager;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 197
    return-void
.end method
