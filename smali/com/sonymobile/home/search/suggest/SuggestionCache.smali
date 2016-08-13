.class public Lcom/sonymobile/home/search/suggest/SuggestionCache;
.super Ljava/lang/Object;
.source "SuggestionCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/search/suggest/SuggestionCache$SuggestionClearListener;
    }
.end annotation


# static fields
.field private static final INSTANCE_LOCK:Ljava/lang/Object;

.field private static final MAX_SUGGESTION_AGE:J

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/sonymobile/home/search/suggest/SuggestionCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mRootPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 55
    const-class v0, Lcom/sonymobile/home/search/suggest/SuggestionCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/search/suggest/SuggestionCache;->TAG:Ljava/lang/String;

    .line 60
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/sonymobile/home/search/suggest/SuggestionCache;->MAX_SUGGESTION_AGE:J

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/sonymobile/home/search/suggest/SuggestionCache;->sInstance:Ljava/lang/ref/SoftReference;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonymobile/home/search/suggest/SuggestionCache;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 73
    .local v0, "cacheDir":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "root"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/home/search/suggest/SuggestionCache;->mRootPath:Ljava/lang/String;

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/home/search/suggest/SuggestionCache;->mRootPath:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sonymobile/home/search/suggest/SuggestionCache;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/search/suggest/SuggestionCache;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/search/suggest/SuggestionCache;->writeSuggestions(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/home/search/suggest/SuggestionCache;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/search/suggest/SuggestionCache;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/suggest/SuggestionCache;->loadSuggestions(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/home/search/suggest/SuggestionCache;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/search/suggest/SuggestionCache;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/suggest/SuggestionCache;->deleteStaleEntries(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/home/search/suggest/SuggestionCache;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/search/suggest/SuggestionCache;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/search/suggest/SuggestionCache;->storeIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/home/search/suggest/SuggestionCache;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/search/suggest/SuggestionCache;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/SuggestionCache;->mRootPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/home/search/suggest/SuggestionCache;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/search/suggest/SuggestionCache;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/search/suggest/SuggestionCache;->doDelete(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonymobile/home/search/suggest/SuggestionCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/search/suggest/SuggestionCache;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sonymobile/home/search/suggest/SuggestionCache;->deleteSuggestionData()V

    return-void
.end method

.method private static createCacheIfContextIsGood(Landroid/content/Context;)Lcom/sonymobile/home/search/suggest/SuggestionCache;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "instance":Lcom/sonymobile/home/search/suggest/SuggestionCache;
    if-eqz p0, :cond_0

    .line 106
    new-instance v0, Lcom/sonymobile/home/search/suggest/SuggestionCache;

    .end local v0    # "instance":Lcom/sonymobile/home/search/suggest/SuggestionCache;
    invoke-direct {v0, p0}, Lcom/sonymobile/home/search/suggest/SuggestionCache;-><init>(Landroid/content/Context;)V

    .line 107
    .restart local v0    # "instance":Lcom/sonymobile/home/search/suggest/SuggestionCache;
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/sonymobile/home/search/suggest/SuggestionCache;->sInstance:Ljava/lang/ref/SoftReference;

    .line 109
    :cond_0
    return-object v0
.end method

.method private deleteStaleEntries(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/search/entry/SuggestionEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 317
    .local p1, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/search/entry/SuggestionEntry;>;"
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/SuggestionCache;->mRootPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 318
    new-instance v0, Lcom/sonymobile/home/search/suggest/SuggestionCache$4;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/home/search/suggest/SuggestionCache$4;-><init>(Lcom/sonymobile/home/search/suggest/SuggestionCache;Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/sonymobile/home/storage/StorageManager;->getStorageExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/search/suggest/SuggestionCache$4;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 326
    :cond_0
    return-void
.end method

.method private static deleteStaleIcons(Ljava/util/List;Ljava/io/File;)V
    .locals 7
    .param p1, "rootDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 347
    .local p0, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 348
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_2

    .line 349
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 350
    .local v1, "file":Ljava/io/File;
    const-string v5, "suggestions"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 349
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 355
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v1}, Lcom/sonymobile/home/search/suggest/SuggestionCache;->isFileValid(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 357
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 361
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    return-void
.end method

.method private deleteSuggestionData()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/SuggestionCache;->mRootPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 300
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sonymobile/home/search/suggest/SuggestionCache;->mRootPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doDelete(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .param p2, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/search/entry/SuggestionEntry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 330
    .local p1, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/search/entry/SuggestionEntry;>;"
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    .local v1, "rootDirectory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 332
    invoke-static {p1}, Lcom/sonymobile/home/search/suggest/SuggestionCache;->getPackageNames(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    .line 333
    .local v0, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v1}, Lcom/sonymobile/home/search/suggest/SuggestionCache;->deleteStaleIcons(Ljava/util/List;Ljava/io/File;)V

    .line 335
    .end local v0    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/SuggestionCache;->mRootPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonymobile/home/search/suggest/SuggestionCache;->mRootPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sonymobile/home/search/suggest/SuggestionCache;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    sget-object v2, Lcom/sonymobile/home/search/suggest/SuggestionCache;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 91
    :try_start_0
    sget-object v1, Lcom/sonymobile/home/search/suggest/SuggestionCache;->sInstance:Ljava/lang/ref/SoftReference;

    if-nez v1, :cond_1

    .line 92
    invoke-static {p0}, Lcom/sonymobile/home/search/suggest/SuggestionCache;->createCacheIfContextIsGood(Landroid/content/Context;)Lcom/sonymobile/home/search/suggest/SuggestionCache;

    move-result-object v0

    .line 99
    .local v0, "instance":Lcom/sonymobile/home/search/suggest/SuggestionCache;
    :cond_0
    :goto_0
    monitor-exit v2

    .line 100
    return-object v0

    .line 94
    .end local v0    # "instance":Lcom/sonymobile/home/search/suggest/SuggestionCache;
    :cond_1
    sget-object v1, Lcom/sonymobile/home/search/suggest/SuggestionCache;->sInstance:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/search/suggest/SuggestionCache;

    .line 95
    .restart local v0    # "instance":Lcom/sonymobile/home/search/suggest/SuggestionCache;
    if-nez v0, :cond_0

    .line 96
    invoke-static {p0}, Lcom/sonymobile/home/search/suggest/SuggestionCache;->createCacheIfContextIsGood(Landroid/content/Context;)Lcom/sonymobile/home/search/suggest/SuggestionCache;

    move-result-object v0

    goto :goto_0

    .line 99
    .end local v0    # "instance":Lcom/sonymobile/home/search/suggest/SuggestionCache;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getPackageNames(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/search/entry/SuggestionEntry;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    .local p0, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/search/entry/SuggestionEntry;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/search/entry/SuggestionEntry;

    .line 374
    .local v2, "suggestion":Lcom/sonymobile/home/search/entry/SuggestionEntry;
    invoke-virtual {v2}, Lcom/sonymobile/home/search/entry/SuggestionEntry;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 376
    .end local v2    # "suggestion":Lcom/sonymobile/home/search/entry/SuggestionEntry;
    :cond_0
    return-object v1
.end method

.method private static isFileValid(Ljava/io/File;)Z
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 288
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 289
    .local v0, "creationTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sget-wide v4, Lcom/sonymobile/home/search/suggest/SuggestionCache;->MAX_SUGGESTION_AGE:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadSuggestions(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/search/entry/SuggestionEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v1, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/search/entry/SuggestionEntry;>;"
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    .local v2, "suggestionsFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    .line 193
    .local v0, "exists":Z
    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/sonymobile/home/search/suggest/SuggestionCache;->isFileValid(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 194
    invoke-direct {p0, v2}, Lcom/sonymobile/home/search/suggest/SuggestionCache;->readSuggestions(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 198
    :cond_0
    :goto_0
    return-object v1

    .line 195
    :cond_1
    if-eqz v0, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/sonymobile/home/search/suggest/SuggestionCache;->deleteSuggestionData()V

    goto :goto_0
.end method

.method private readSuggestions(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "suggestionsFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/search/entry/SuggestionEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v4, "suggestions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/search/entry/SuggestionEntry;>;"
    :try_start_0
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v5}, Lorg/apache/commons/io/FileUtils;->readFileToString(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "jsonSuggestions":Ljava/lang/String;
    invoke-static {v2}, Lcom/sonymobile/home/search/suggest/AppMetadataParser;->parse(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 216
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/search/entry/SuggestionEntry;

    .line 217
    .local v3, "suggestion":Lcom/sonymobile/home/search/entry/SuggestionEntry;
    invoke-virtual {v3}, Lcom/sonymobile/home/search/entry/SuggestionEntry;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sonymobile/home/search/suggest/SuggestionCache;->loadIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 218
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3, v0}, Lcom/sonymobile/home/search/entry/SuggestionEntry;->setIcon(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "jsonSuggestions":Ljava/lang/String;
    .end local v3    # "suggestion":Lcom/sonymobile/home/search/entry/SuggestionEntry;
    :catch_0
    move-exception v5

    .line 225
    :cond_0
    return-object v4
.end method

.method private storeIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 8
    .param p1, "iconBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 250
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 254
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 255
    .local v2, "parentFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 256
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v1, "fileOutputStream":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 257
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p1, v4, v6, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 259
    if-eqz v1, :cond_1

    if-eqz v5, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 267
    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v2    # "parentFile":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 259
    .restart local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "parentFile":Ljava/io/File;
    :catch_0
    move-exception v3

    .local v3, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 261
    .end local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v2    # "parentFile":Ljava/io/File;
    .end local v3    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    goto :goto_0

    .line 259
    .restart local v1    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "parentFile":Ljava/io/File;
    :cond_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 256
    :catch_2
    move-exception v4

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 259
    :catchall_0
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_1
    if-eqz v1, :cond_3

    if-eqz v5, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    :goto_2
    :try_start_6
    throw v4

    :catch_3
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v4

    goto :goto_1
.end method

.method private writeSuggestions(Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .param p2, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/search/entry/SuggestionEntry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/search/entry/SuggestionEntry;>;"
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 137
    .local v1, "content":Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 139
    .local v4, "suggestionArray":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/search/entry/SuggestionEntry;

    .line 140
    .local v3, "suggestion":Lcom/sonymobile/home/search/entry/SuggestionEntry;
    invoke-virtual {v3}, Lcom/sonymobile/home/search/entry/SuggestionEntry;->toJson()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 148
    .end local v1    # "content":Lorg/json/JSONObject;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "suggestion":Lcom/sonymobile/home/search/entry/SuggestionEntry;
    .end local v4    # "suggestionArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v5

    .line 153
    :goto_1
    return-void

    .line 143
    .restart local v1    # "content":Lorg/json/JSONObject;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "suggestionArray":Lorg/json/JSONArray;
    :cond_0
    const-string v5, "content"

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, "cacheFile":Ljava/io/File;
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v5, v6}, Lorg/apache/commons/io/FileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 148
    .end local v0    # "cacheFile":Ljava/io/File;
    .end local v1    # "content":Lorg/json/JSONObject;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "suggestionArray":Lorg/json/JSONArray;
    :catch_1
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method public clear(Lcom/sonymobile/home/search/suggest/SuggestionCache$SuggestionClearListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/sonymobile/home/search/suggest/SuggestionCache$SuggestionClearListener;

    .prologue
    .line 385
    new-instance v0, Lcom/sonymobile/home/search/suggest/SuggestionCache$5;

    invoke-direct {v0, p0, p1}, Lcom/sonymobile/home/search/suggest/SuggestionCache$5;-><init>(Lcom/sonymobile/home/search/suggest/SuggestionCache;Lcom/sonymobile/home/search/suggest/SuggestionCache$SuggestionClearListener;)V

    invoke-static {}, Lcom/sonymobile/home/storage/StorageManager;->getStorageExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/search/suggest/SuggestionCache$5;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 397
    return-void
.end method

.method public load(Landroid/content/Context;Lcom/sonymobile/home/search/suggest/SuggestionRequestCallback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/sonymobile/home/search/suggest/SuggestionRequestCallback;

    .prologue
    .line 162
    const-string v1, "suggestions"

    invoke-direct {p0, v1}, Lcom/sonymobile/home/search/suggest/SuggestionCache;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "filePath":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 165
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/sonymobile/home/search/suggest/SuggestionRequestCallback;->onSuggestionRequestCompleted(Ljava/util/List;)V

    .line 183
    :goto_0
    return-void

    .line 169
    :cond_0
    new-instance v1, Lcom/sonymobile/home/search/suggest/SuggestionCache$2;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/sonymobile/home/search/suggest/SuggestionCache$2;-><init>(Lcom/sonymobile/home/search/suggest/SuggestionCache;Ljava/lang/String;Landroid/content/Context;Lcom/sonymobile/home/search/suggest/SuggestionRequestCallback;)V

    invoke-static {}, Lcom/sonymobile/home/storage/StorageManager;->getStorageExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/home/search/suggest/SuggestionCache$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public loadIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 409
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/suggest/SuggestionCache;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 411
    .local v0, "filePath":Ljava/lang/String;
    if-nez v0, :cond_1

    move-object v1, v5

    .line 428
    :cond_0
    :goto_0
    return-object v1

    .line 415
    :cond_1
    const/4 v1, 0x0

    .line 417
    .local v1, "icon":Landroid/graphics/Bitmap;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 418
    .local v2, "iconFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 419
    :try_start_0
    invoke-static {v2}, Lorg/apache/commons/io/FileUtils;->openInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .local v3, "stream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 420
    :try_start_1
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 421
    if-eqz v3, :cond_0

    if-eqz v5, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v4

    .local v4, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v3    # "stream":Ljava/io/InputStream;
    .end local v4    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v5

    goto :goto_0

    .restart local v3    # "stream":Ljava/io/InputStream;
    :cond_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 419
    :catch_2
    move-exception v6

    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 421
    :catchall_0
    move-exception v5

    :goto_1
    if-eqz v3, :cond_3

    if-eqz v6, :cond_4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    :goto_2
    :try_start_6
    throw v5

    :catch_3
    move-exception v4

    .restart local v4    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v4    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v6

    move-object v7, v6

    move-object v6, v5

    move-object v5, v7

    goto :goto_1
.end method

.method public store(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/search/entry/SuggestionEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/search/entry/SuggestionEntry;>;"
    const-string v2, "suggestions"

    invoke-direct {p0, v2}, Lcom/sonymobile/home/search/suggest/SuggestionCache;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "filePath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 123
    .local v1, "suggestionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/search/entry/SuggestionEntry;>;"
    new-instance v2, Lcom/sonymobile/home/search/suggest/SuggestionCache$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/sonymobile/home/search/suggest/SuggestionCache$1;-><init>(Lcom/sonymobile/home/search/suggest/SuggestionCache;Ljava/util/List;Ljava/lang/String;)V

    invoke-static {}, Lcom/sonymobile/home/storage/StorageManager;->getStorageExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/home/search/suggest/SuggestionCache$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 131
    .end local v1    # "suggestionsCopy":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/search/entry/SuggestionEntry;>;"
    :cond_0
    return-void
.end method

.method public writeIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iconBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/suggest/SuggestionCache;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "filePath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 238
    new-instance v1, Lcom/sonymobile/home/search/suggest/SuggestionCache$3;

    invoke-direct {v1, p0, p2, v0}, Lcom/sonymobile/home/search/suggest/SuggestionCache$3;-><init>(Lcom/sonymobile/home/search/suggest/SuggestionCache;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-static {}, Lcom/sonymobile/home/storage/StorageManager;->getStorageExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/home/search/suggest/SuggestionCache$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 246
    :cond_0
    return-void
.end method
