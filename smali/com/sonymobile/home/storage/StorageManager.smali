.class public Lcom/sonymobile/home/storage/StorageManager;
.super Ljava/lang/Object;
.source "StorageManager.java"


# static fields
.field private static sBadgeManager:Lcom/sonymobile/home/badge/BadgeManager;

.field private static sFolderManager:Lcom/sonymobile/home/folder/FolderManager;

.field private static sGenreManager:Lcom/sonymobile/home/search/suggest/PopularGenreManager;

.field private static volatile sShortcutManager:Lcom/sonymobile/home/shortcut/ShortcutManager;

.field private static sStatisticsManager:Lcom/sonymobile/home/statistics/StatisticsManager;

.field private static final sStorageExecutor:Ljava/util/concurrent/Executor;

.field private static sWrapper:Lcom/sonymobile/home/storage/HomeDatabaseWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 35
    sput-object v0, Lcom/sonymobile/home/storage/StorageManager;->sWrapper:Lcom/sonymobile/home/storage/HomeDatabaseWrapper;

    .line 37
    sput-object v0, Lcom/sonymobile/home/storage/StorageManager;->sStatisticsManager:Lcom/sonymobile/home/statistics/StatisticsManager;

    .line 39
    sput-object v0, Lcom/sonymobile/home/storage/StorageManager;->sBadgeManager:Lcom/sonymobile/home/badge/BadgeManager;

    .line 41
    sput-object v0, Lcom/sonymobile/home/storage/StorageManager;->sFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    .line 45
    sput-object v0, Lcom/sonymobile/home/storage/StorageManager;->sGenreManager:Lcom/sonymobile/home/search/suggest/PopularGenreManager;

    .line 47
    new-instance v0, Lcom/sonymobile/home/util/NamingThreadFactory;

    const-string v1, "Storage"

    invoke-direct {v0, v1}, Lcom/sonymobile/home/util/NamingThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/storage/StorageManager;->sStorageExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static declared-synchronized getBadgeManager(Landroid/content/Context;)Lcom/sonymobile/home/badge/BadgeManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const-class v1, Lcom/sonymobile/home/storage/StorageManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sonymobile/home/storage/StorageManager;->sBadgeManager:Lcom/sonymobile/home/badge/BadgeManager;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/sonymobile/home/badge/BadgeManager;

    invoke-static {p0}, Lcom/sonymobile/home/storage/StorageManager;->getStorage(Landroid/content/Context;)Lcom/sonymobile/home/storage/Storage;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/sonymobile/home/badge/BadgeManager;-><init>(Landroid/content/Context;Lcom/sonymobile/home/storage/Storage;)V

    sput-object v0, Lcom/sonymobile/home/storage/StorageManager;->sBadgeManager:Lcom/sonymobile/home/badge/BadgeManager;

    .line 84
    :cond_0
    sget-object v0, Lcom/sonymobile/home/storage/StorageManager;->sBadgeManager:Lcom/sonymobile/home/badge/BadgeManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getFolderManager(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/flix/util/Worker;)Lcom/sonymobile/home/folder/FolderManager;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p2, "worker"    # Lcom/sonymobile/flix/util/Worker;

    .prologue
    .line 108
    const-class v6, Lcom/sonymobile/home/storage/StorageManager;

    monitor-enter v6

    :try_start_0
    sget-object v0, Lcom/sonymobile/home/storage/StorageManager;->sFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 111
    .local v5, "maxNumberOfMiniatures":I
    new-instance v0, Lcom/sonymobile/home/folder/FolderManager;

    invoke-static {p0}, Lcom/sonymobile/home/storage/StorageManager;->getStorage(Landroid/content/Context;)Lcom/sonymobile/home/storage/Storage;

    move-result-object v1

    invoke-static {p0}, Lcom/sonymobile/home/storage/StorageManager;->getBadgeManager(Landroid/content/Context;)Lcom/sonymobile/home/badge/BadgeManager;

    move-result-object v4

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/folder/FolderManager;-><init>(Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/flix/util/Worker;Lcom/sonymobile/home/badge/BadgeManager;I)V

    sput-object v0, Lcom/sonymobile/home/storage/StorageManager;->sFolderManager:Lcom/sonymobile/home/folder/FolderManager;

    .line 114
    .end local v5    # "maxNumberOfMiniatures":I
    :cond_0
    sget-object v0, Lcom/sonymobile/home/storage/StorageManager;->sFolderManager:Lcom/sonymobile/home/folder/FolderManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-object v0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized getGenreManager(Landroid/content/Context;)Lcom/sonymobile/home/search/suggest/PopularGenreManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    const-class v1, Lcom/sonymobile/home/storage/StorageManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sonymobile/home/storage/StorageManager;->sGenreManager:Lcom/sonymobile/home/search/suggest/PopularGenreManager;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/sonymobile/home/search/suggest/PopularGenreManager;

    invoke-static {p0}, Lcom/sonymobile/home/storage/StorageManager;->getStorage(Landroid/content/Context;)Lcom/sonymobile/home/storage/Storage;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sonymobile/home/search/suggest/PopularGenreManager;-><init>(Lcom/sonymobile/home/storage/Storage;)V

    sput-object v0, Lcom/sonymobile/home/storage/StorageManager;->sGenreManager:Lcom/sonymobile/home/search/suggest/PopularGenreManager;

    .line 127
    :cond_0
    sget-object v0, Lcom/sonymobile/home/storage/StorageManager;->sGenreManager:Lcom/sonymobile/home/search/suggest/PopularGenreManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getShortcutManager(Landroid/content/Context;)Lcom/sonymobile/home/shortcut/ShortcutManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    sget-object v0, Lcom/sonymobile/home/storage/StorageManager;->sShortcutManager:Lcom/sonymobile/home/shortcut/ShortcutManager;

    if-nez v0, :cond_1

    .line 89
    const-class v1, Lcom/sonymobile/home/shortcut/ShortcutManager;

    monitor-enter v1

    .line 90
    :try_start_0
    sget-object v0, Lcom/sonymobile/home/storage/StorageManager;->sShortcutManager:Lcom/sonymobile/home/shortcut/ShortcutManager;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/sonymobile/home/shortcut/ShortcutManager;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/shortcut/ShortcutManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sonymobile/home/storage/StorageManager;->sShortcutManager:Lcom/sonymobile/home/shortcut/ShortcutManager;

    .line 93
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_1
    sget-object v0, Lcom/sonymobile/home/storage/StorageManager;->sShortcutManager:Lcom/sonymobile/home/shortcut/ShortcutManager;

    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static declared-synchronized getStatistics(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;)Lcom/sonymobile/home/statistics/StatisticsManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;

    .prologue
    .line 74
    const-class v1, Lcom/sonymobile/home/storage/StorageManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sonymobile/home/storage/StorageManager;->sStatisticsManager:Lcom/sonymobile/home/statistics/StatisticsManager;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/sonymobile/home/statistics/StatisticsManager;

    invoke-static {p0}, Lcom/sonymobile/home/storage/StorageManager;->getStorage(Landroid/content/Context;)Lcom/sonymobile/home/storage/Storage;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/sonymobile/home/statistics/StatisticsManager;-><init>(Lcom/sonymobile/home/storage/Storage;Lcom/sonymobile/home/model/PackageHandler;)V

    sput-object v0, Lcom/sonymobile/home/storage/StorageManager;->sStatisticsManager:Lcom/sonymobile/home/statistics/StatisticsManager;

    .line 77
    :cond_0
    sget-object v0, Lcom/sonymobile/home/storage/StorageManager;->sStatisticsManager:Lcom/sonymobile/home/statistics/StatisticsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getStorage(Landroid/content/Context;)Lcom/sonymobile/home/storage/Storage;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const-class v1, Lcom/sonymobile/home/storage/StorageManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sonymobile/home/storage/StorageManager;->sWrapper:Lcom/sonymobile/home/storage/HomeDatabaseWrapper;

    if-nez v0, :cond_0

    .line 53
    const-class v0, Lcom/sonymobile/home/data/ActivityItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/sonymobile/home/storage/ActivitySerializer;

    invoke-direct {v2, p0}, Lcom/sonymobile/home/storage/ActivitySerializer;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lcom/sonymobile/home/storage/ItemSerializerFactory;->registerSerializer(Ljava/lang/String;Lcom/sonymobile/home/storage/ItemSerializerFactory$Serializer;)V

    .line 55
    const-class v0, Lcom/sonymobile/home/data/AdvWidgetItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/sonymobile/home/storage/AdvWidgetSerializer;

    invoke-direct {v2}, Lcom/sonymobile/home/storage/AdvWidgetSerializer;-><init>()V

    invoke-static {v0, v2}, Lcom/sonymobile/home/storage/ItemSerializerFactory;->registerSerializer(Ljava/lang/String;Lcom/sonymobile/home/storage/ItemSerializerFactory$Serializer;)V

    .line 57
    const-class v0, Lcom/sonymobile/home/data/WidgetItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/sonymobile/home/storage/WidgetSerializer;

    invoke-direct {v2, p0}, Lcom/sonymobile/home/storage/WidgetSerializer;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lcom/sonymobile/home/storage/ItemSerializerFactory;->registerSerializer(Ljava/lang/String;Lcom/sonymobile/home/storage/ItemSerializerFactory$Serializer;)V

    .line 59
    const-class v0, Lcom/sonymobile/home/data/FolderItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/sonymobile/home/storage/FolderSerializer;

    invoke-direct {v2}, Lcom/sonymobile/home/storage/FolderSerializer;-><init>()V

    invoke-static {v0, v2}, Lcom/sonymobile/home/storage/ItemSerializerFactory;->registerSerializer(Ljava/lang/String;Lcom/sonymobile/home/storage/ItemSerializerFactory$Serializer;)V

    .line 61
    const-class v0, Lcom/sonymobile/home/data/ShortcutItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/sonymobile/home/storage/ShortcutSerializer;

    invoke-direct {v2}, Lcom/sonymobile/home/storage/ShortcutSerializer;-><init>()V

    invoke-static {v0, v2}, Lcom/sonymobile/home/storage/ItemSerializerFactory;->registerSerializer(Ljava/lang/String;Lcom/sonymobile/home/storage/ItemSerializerFactory$Serializer;)V

    .line 63
    const-class v0, Lcom/sonymobile/home/data/InternalFunctionItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/sonymobile/home/storage/InternalFunctionSerializer;

    invoke-direct {v2, p0}, Lcom/sonymobile/home/storage/InternalFunctionSerializer;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lcom/sonymobile/home/storage/ItemSerializerFactory;->registerSerializer(Ljava/lang/String;Lcom/sonymobile/home/storage/ItemSerializerFactory$Serializer;)V

    .line 65
    const-class v0, Lcom/sonymobile/home/data/TipItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/sonymobile/home/storage/TipSerializer;

    invoke-direct {v2}, Lcom/sonymobile/home/storage/TipSerializer;-><init>()V

    invoke-static {v0, v2}, Lcom/sonymobile/home/storage/ItemSerializerFactory;->registerSerializer(Ljava/lang/String;Lcom/sonymobile/home/storage/ItemSerializerFactory$Serializer;)V

    .line 68
    new-instance v0, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;

    new-instance v2, Lcom/sonymobile/home/storage/HomeSQLiteOpenHelper;

    invoke-direct {v2, p0}, Lcom/sonymobile/home/storage/HomeSQLiteOpenHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p0, v2}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;-><init>(Landroid/content/Context;Lcom/sonymobile/home/storage/HomeSQLiteOpenHelper;)V

    sput-object v0, Lcom/sonymobile/home/storage/StorageManager;->sWrapper:Lcom/sonymobile/home/storage/HomeDatabaseWrapper;

    .line 70
    :cond_0
    sget-object v0, Lcom/sonymobile/home/storage/StorageManager;->sWrapper:Lcom/sonymobile/home/storage/HomeDatabaseWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getStorageExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/sonymobile/home/storage/StorageManager;->sStorageExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method
