.class public Lcom/sonymobile/home/storage/HomeDatabaseWrapper;
.super Ljava/lang/Object;
.source "HomeDatabaseWrapper.java"

# interfaces
.implements Lcom/sonymobile/home/storage/Storage;


# static fields
.field private static final APP_TRAY_PROJECTION:[Ljava/lang/String;

.field private static final BADGE_PROJECTION:[Ljava/lang/String;

.field private static final DESKTOP_PROJECTION:[Ljava/lang/String;

.field private static final FOLDERS_PROJECTION:[Ljava/lang/String;

.field private static final POPULAR_APP_GENRE_PROJECTION:[Ljava/lang/String;

.field private static final STAGE_PROJECTION:[Ljava/lang/String;

.field private static final STATISTICS_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mHomeSQLiteOpenHelper:Lcom/sonymobile/home/storage/HomeSQLiteOpenHelper;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "page_view"

    aput-object v1, v0, v4

    const-string v1, "page_index"

    aput-object v1, v0, v5

    const-string v1, "page_position"

    aput-object v1, v0, v6

    const-string v1, "item_type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "package_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cellx"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "celly"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "arbitrary_data"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "user_serial_number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->APP_TRAY_PROJECTION:[Ljava/lang/String;

    .line 66
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "item_type"

    aput-object v1, v0, v4

    const-string v1, "page_index"

    aput-object v1, v0, v5

    const-string v1, "page_position"

    aput-object v1, v0, v6

    const-string v1, "name"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "package_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "intent"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "page_view"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cellx"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "celly"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "spanx"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "spany"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "item_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "arbitrary_data"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "image"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "package_resource_name"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "icon_resource_name"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "user_serial_number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->DESKTOP_PROJECTION:[Ljava/lang/String;

    .line 90
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "folder_id"

    aput-object v1, v0, v4

    const-string v1, "item_type"

    aput-object v1, v0, v5

    const-string v1, "page_index"

    aput-object v1, v0, v6

    const-string v1, "page_position"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "package_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "intent"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "page_view"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "cellx"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "celly"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "spanx"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "spany"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "item_id"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "image"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "package_resource_name"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "icon_resource_name"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "user_serial_number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->FOLDERS_PROJECTION:[Ljava/lang/String;

    .line 114
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "package_name"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "user_serial_number"

    aput-object v1, v0, v5

    const-string v1, "start_count"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->STATISTICS_PROJECTION:[Ljava/lang/String;

    .line 124
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "package_name"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "badge"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->BADGE_PROJECTION:[Ljava/lang/String;

    .line 133
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "page_view"

    aput-object v1, v0, v4

    const-string v1, "page_index"

    aput-object v1, v0, v5

    const-string v1, "page_position"

    aput-object v1, v0, v6

    const-string v1, "item_type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "item_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "package_name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cellx"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "celly"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "intent"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "arbitrary_data"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "image"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "package_resource_name"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "icon_resource_name"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "user_serial_number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->STAGE_PROJECTION:[Ljava/lang/String;

    .line 152
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "genre"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->POPULAR_APP_GENRE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/home/storage/HomeSQLiteOpenHelper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "homeSQLiteOpenHelper"    # Lcom/sonymobile/home/storage/HomeSQLiteOpenHelper;

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p2, p0, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->mHomeSQLiteOpenHelper:Lcom/sonymobile/home/storage/HomeSQLiteOpenHelper;

    .line 172
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->mUserManager:Landroid/os/UserManager;

    .line 173
    return-void
.end method

.method private clear(Ljava/lang/String;I)V
    .locals 6
    .param p1, "pageViewName"    # Ljava/lang/String;
    .param p2, "readOnlyDatabaseExceptionCount"    # I

    .prologue
    .line 887
    invoke-direct {p0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 889
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 892
    :try_start_1
    const-string v2, "application_table"

    const-string v3, "page_view = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 895
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 897
    :try_start_2
    invoke-static {v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->endTransactionSafely(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 906
    :goto_0
    return-void

    .line 897
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->endTransactionSafely(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_2 .. :try_end_2} :catch_1

    .line 899
    :catch_0
    move-exception v1

    .line 900
    .local v1, "e":Landroid/database/sqlite/SQLiteFullException;
    const-string v2, "HomeDatabaseWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Database full: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 901
    .end local v1    # "e":Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v1

    .line 902
    .local v1, "e":Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;
    invoke-direct {p0, v0, v1, p2}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->handleReadOnlyDatabaseException(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;I)V

    .line 904
    add-int/lit8 v2, p2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->clear(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private createItemFromCursor(Landroid/database/Cursor;)Lcom/sonymobile/home/data/Item;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1007
    const-string v2, "item_type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1008
    .local v0, "index":I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1010
    .local v1, "type":Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/sonymobile/home/storage/ItemSerializerFactory;->createItem(Ljava/lang/String;Landroid/database/Cursor;)Lcom/sonymobile/home/data/Item;

    move-result-object v2

    return-object v2
.end method

.method private createStatisticsItemFromCursor(Landroid/database/Cursor;)Lcom/sonymobile/home/statistics/StatisticsItem;
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1014
    const-string v6, "package_name"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1015
    .local v1, "packageName":Ljava/lang/String;
    const-string v6, "name"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1016
    .local v0, "name":Ljava/lang/String;
    const-string v6, "start_count"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1018
    .local v2, "startCount":I
    const-string v6, "user_serial_number"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1020
    .local v4, "userSerial":J
    const/4 v3, 0x0

    .line 1021
    .local v3, "user":Landroid/os/UserHandle;
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 1022
    iget-object v6, p0, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v4, v5}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v3

    .line 1025
    :cond_0
    new-instance v6, Lcom/sonymobile/home/statistics/StatisticsItem;

    invoke-direct {v6, v1, v0, v3, v2}, Lcom/sonymobile/home/statistics/StatisticsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;I)V

    return-object v6
.end method

.method private deleteBadge(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;I)I
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "readOnlyDatabaseExceptionCount"    # I

    .prologue
    .line 748
    const/4 v0, 0x0

    .line 749
    .local v0, "count":I
    invoke-direct {p0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 751
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 754
    :try_start_1
    const-string v3, "badge_table"

    const-string v4, "package_name =? AND name =?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 758
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 760
    :try_start_2
    invoke-static {v1}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->endTransactionSafely(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 770
    :goto_0
    return v0

    .line 760
    :catchall_0
    move-exception v3

    invoke-static {v1}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->endTransactionSafely(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_2 .. :try_end_2} :catch_1

    .line 762
    :catch_0
    move-exception v2

    .line 763
    .local v2, "e":Landroid/database/sqlite/SQLiteFullException;
    const-string v3, "HomeDatabaseWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Database full: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 764
    .end local v2    # "e":Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v2

    .line 765
    .local v2, "e":Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;
    invoke-direct {p0, v1, v2, p4}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->handleReadOnlyDatabaseException(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;I)V

    .line 767
    add-int/lit8 v3, p4, 0x1

    invoke-direct {p0, p1, p2, p3, v3}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->deleteBadge(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;I)I

    move-result v0

    goto :goto_0
.end method

.method private deletePageViewItem(Lcom/sonymobile/home/data/Item;I)I
    .locals 10
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "readOnlyDatabaseExceptionCount"    # I

    .prologue
    .line 817
    const/4 v0, 0x0

    .line 818
    .local v0, "count":I
    invoke-direct {p0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 820
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 823
    :try_start_1
    const-string v3, "application_table"

    const-string v4, "_id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getStorageId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 827
    if-lez v0, :cond_0

    .line 828
    const-wide/32 v4, -0x80000000

    invoke-virtual {p1, v4, v5}, Lcom/sonymobile/home/data/Item;->setStorageId(J)V

    .line 830
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 832
    :try_start_2
    invoke-static {v1}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->endTransactionSafely(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 842
    :goto_0
    return v0

    .line 832
    :catchall_0
    move-exception v3

    invoke-static {v1}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->endTransactionSafely(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v3
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_2 .. :try_end_2} :catch_1

    .line 834
    :catch_0
    move-exception v2

    .line 835
    .local v2, "e":Landroid/database/sqlite/SQLiteFullException;
    const-string v3, "HomeDatabaseWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Database full: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 836
    .end local v2    # "e":Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v2

    .line 837
    .local v2, "e":Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;
    invoke-direct {p0, v1, v2, p2}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->handleReadOnlyDatabaseException(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;I)V

    .line 839
    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, p1, v3}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->deletePageViewItem(Lcom/sonymobile/home/data/Item;I)I

    move-result v0

    goto :goto_0
.end method

.method private deleteStatistics(Ljava/lang/String;Landroid/os/UserHandle;I)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "readOnlyDatabaseExceptionCount"    # I

    .prologue
    .line 406
    invoke-direct {p0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 408
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, p2}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    .line 409
    .local v2, "userSerial":J
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 412
    :try_start_1
    const-string v4, "statistics_table"

    const-string v5, "package_name=? AND user_serial_number=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 417
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 419
    :try_start_2
    invoke-static {v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->endTransactionSafely(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 428
    .end local v2    # "userSerial":J
    :goto_0
    return-void

    .line 419
    .restart local v2    # "userSerial":J
    :catchall_0
    move-exception v4

    invoke-static {v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->endTransactionSafely(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v4
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_2 .. :try_end_2} :catch_1

    .line 421
    .end local v2    # "userSerial":J
    :catch_0
    move-exception v1

    .line 422
    .local v1, "e":Landroid/database/sqlite/SQLiteFullException;
    const-string v4, "HomeDatabaseWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Database full: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 423
    .end local v1    # "e":Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v1

    .line 424
    .local v1, "e":Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;
    invoke-direct {p0, v0, v1, p3}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->handleReadOnlyDatabaseException(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;I)V

    .line 426
    add-int/lit8 v4, p3, 0x1

    invoke-direct {p0, p1, p2, v4}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->deleteStatistics(Ljava/lang/String;Landroid/os/UserHandle;I)V

    goto :goto_0
.end method

.method private deleteStatisticsItem(Lcom/sonymobile/home/statistics/StatisticsItem;I)V
    .locals 7
    .param p1, "item"    # Lcom/sonymobile/home/statistics/StatisticsItem;
    .param p2, "readOnlyDatabaseExceptionCount"    # I

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 378
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 381
    :try_start_1
    const-string v2, "statistics_table"

    const-string v3, "package_name=? AND name =?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/sonymobile/home/statistics/StatisticsItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/sonymobile/home/statistics/StatisticsItem;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 386
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    :try_start_2
    invoke-static {v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->endTransactionSafely(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 397
    :goto_0
    return-void

    .line 388
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->endTransactionSafely(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_2 .. :try_end_2} :catch_1

    .line 390
    :catch_0
    move-exception v1

    .line 391
    .local v1, "e":Landroid/database/sqlite/SQLiteFullException;
    const-string v2, "HomeDatabaseWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Database full: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 392
    .end local v1    # "e":Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v1

    .line 393
    .local v1, "e":Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;
    invoke-direct {p0, v0, v1, p2}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->handleReadOnlyDatabaseException(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;I)V

    .line 395
    add-int/lit8 v2, p2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->deleteStatisticsItem(Lcom/sonymobile/home/statistics/StatisticsItem;I)V

    goto :goto_0
.end method

.method private doInsertOrUpdateItems(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 13
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v12, 0x1

    .line 956
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/data/Item;

    .line 957
    .local v2, "item":Lcom/sonymobile/home/data/Item;
    invoke-static {v2}, Lcom/sonymobile/home/storage/ItemSerializerFactory;->createContentValueFromItem(Lcom/sonymobile/home/data/Item;)Landroid/content/ContentValues;

    move-result-object v3

    .line 959
    .local v3, "value":Landroid/content/ContentValues;
    invoke-virtual {v2}, Lcom/sonymobile/home/data/Item;->isStored()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 960
    const-string v6, "application_table"

    const-string v7, "_id = ?"

    new-array v8, v12, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v2}, Lcom/sonymobile/home/data/Item;->getStorageId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p1, v6, v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 965
    .local v0, "count":I
    if-eq v0, v12, :cond_0

    .line 966
    const-string v6, "HomeDatabaseWrapper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updating of item data for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/sonymobile/home/data/Item;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 969
    .end local v0    # "count":I
    :cond_1
    const-string v6, "application_table"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 972
    .local v4, "row_id":J
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    .line 973
    invoke-virtual {v2, v4, v5}, Lcom/sonymobile/home/data/Item;->setStorageId(J)V

    goto :goto_0

    .line 975
    :cond_2
    const-string v6, "HomeDatabaseWrapper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Inserting item data for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/sonymobile/home/data/Item;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 979
    .end local v2    # "item":Lcom/sonymobile/home/data/Item;
    .end local v3    # "value":Landroid/content/ContentValues;
    .end local v4    # "row_id":J
    :cond_3
    return-void
.end method

.method private static endTransactionSafely(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p0, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1155
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1165
    :goto_0
    return-void

    .line 1156
    :catch_0
    move-exception v1

    .line 1157
    .local v1, "endTransactionException":Landroid/database/sqlite/SQLiteException;
    const-string v2, "HomeDatabaseWrapper"

    const-string v3, "Could not end transaction, closing database. "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1158
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/sonymobile/home/statistics/TrackingUtil;->trackException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 1160
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1161
    :catch_1
    move-exception v0

    .line 1162
    .local v0, "closeDatabaseException":Landroid/database/sqlite/SQLiteException;
    const-string v2, "HomeDatabaseWrapper"

    const-string v3, "Could not close database. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->mHomeSQLiteOpenHelper:Lcom/sonymobile/home/storage/HomeSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/sonymobile/home/storage/HomeSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private getLoadGenresCursor(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "sortOrder"    # Ljava/lang/String;
    .param p4, "limit"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1145
    const-string v1, "popular_genres_table"

    move-object v0, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getProjectionForPageView(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "pageViewName"    # Ljava/lang/String;

    .prologue
    .line 982
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 996
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 982
    :sswitch_0
    const-string v1, "apptray"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "desktop_automatic"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "desktop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "search_suggestions"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "stage_dynamic"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "stage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 984
    :pswitch_0
    sget-object v0, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->APP_TRAY_PROJECTION:[Ljava/lang/String;

    goto :goto_1

    .line 989
    :pswitch_1
    sget-object v0, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->DESKTOP_PROJECTION:[Ljava/lang/String;

    goto :goto_1

    .line 993
    :pswitch_2
    sget-object v0, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->STAGE_PROJECTION:[Ljava/lang/String;

    goto :goto_1

    .line 982
    :sswitch_data_0
    .sparse-switch
        -0x2f440b29 -> :sswitch_0
        -0x215db638 -> :sswitch_1
        -0x203c1402 -> :sswitch_4
        0x68ac2fe -> :sswitch_5
        0x5a88fed8 -> :sswitch_3
        0x5ccf901c -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private handleReadOnlyDatabaseException(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;I)V
    .locals 3
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "e"    # Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;
    .param p3, "exceptionCount"    # I

    .prologue
    .line 1179
    const/4 v0, 0x2

    if-ge p3, v0, :cond_1

    .line 1180
    const-string v0, "HomeDatabaseWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read-only database("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    if-eqz p1, :cond_0

    .line 1182
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1187
    :cond_0
    return-void

    .line 1185
    :cond_1
    throw p2
.end method

.method private insertBadge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;I)V
    .locals 9
    .param p1, "badgeMessage"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;
    .param p4, "user"    # Landroid/os/UserHandle;
    .param p5, "readOnlyDatabaseExceptionCount"    # I

    .prologue
    .line 681
    invoke-direct {p0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 683
    .local v6, "database":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 686
    :try_start_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 688
    .local v8, "values":Landroid/content/ContentValues;
    const-string v0, "package_name"

    invoke-virtual {v8, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const-string v0, "name"

    invoke-virtual {v8, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const-string v0, "badge"

    invoke-virtual {v8, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const-string v0, "badge_table"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 692
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 694
    :try_start_2
    invoke-static {v6}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->endTransactionSafely(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 703
    .end local v8    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 694
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->endTransactionSafely(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_2 .. :try_end_2} :catch_1

    .line 696
    :catch_0
    move-exception v7

    .line 697
    .local v7, "e":Landroid/database/sqlite/SQLiteFullException;
    const-string v0, "HomeDatabaseWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Database full: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 698
    .end local v7    # "e":Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v7

    .line 699
    .local v7, "e":Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;
    invoke-direct {p0, v6, v7, p5}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->handleReadOnlyDatabaseException(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;I)V

    .line 701
    add-int/lit8 v5, p5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->insertBadge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;I)V

    goto :goto_0
.end method

.method private insertFolderItems(Lcom/sonymobile/home/data/FolderItem;Ljava/util/List;I)V
    .locals 10
    .param p1, "folderItem"    # Lcom/sonymobile/home/data/FolderItem;
    .param p3, "readOnlyDatabaseExceptionCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/data/FolderItem;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 552
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-direct {p0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 554
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 557
    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/data/Item;

    .line 558
    .local v3, "item":Lcom/sonymobile/home/data/Item;
    invoke-static {v3}, Lcom/sonymobile/home/storage/ItemSerializerFactory;->createContentValueFromItem(Lcom/sonymobile/home/data/Item;)Landroid/content/ContentValues;

    move-result-object v6

    .line 560
    .local v6, "value":Landroid/content/ContentValues;
    if-nez v6, :cond_0

    .line 561
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "ContentValues is null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 572
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "item":Lcom/sonymobile/home/data/Item;
    .end local v6    # "value":Landroid/content/ContentValues;
    :catchall_0
    move-exception v7

    :try_start_2
    invoke-static {v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->endTransactionSafely(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v7
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_2 .. :try_end_2} :catch_1

    .line 574
    :catch_0
    move-exception v1

    .line 575
    .local v1, "e":Landroid/database/sqlite/SQLiteFullException;
    const-string v7, "HomeDatabaseWrapper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Database full: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    .end local v1    # "e":Landroid/database/sqlite/SQLiteFullException;
    :goto_1
    return-void

    .line 564
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "item":Lcom/sonymobile/home/data/Item;
    .restart local v6    # "value":Landroid/content/ContentValues;
    :cond_0
    :try_start_3
    const-string v7, "folder_id"

    invoke-virtual {p1}, Lcom/sonymobile/home/data/FolderItem;->getStorageId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 565
    const-string v7, "folders_table"

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-virtual {v0, v7, v8, v6, v9}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v4

    .line 568
    .local v4, "row_id":J
    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/home/data/Item;->setStorageId(J)V

    goto :goto_0

    .line 570
    .end local v3    # "item":Lcom/sonymobile/home/data/Item;
    .end local v4    # "row_id":J
    .end local v6    # "value":Landroid/content/ContentValues;
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 572
    :try_start_4
    invoke-static {v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->endTransactionSafely(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 576
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v1

    .line 577
    .local v1, "e":Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;
    invoke-direct {p0, v0, v1, p3}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->handleReadOnlyDatabaseException(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;I)V

    .line 579
    add-int/lit8 v7, p3, 0x1

    invoke-direct {p0, p1, p2, v7}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->insertFolderItems(Lcom/sonymobile/home/data/FolderItem;Ljava/util/List;I)V

    goto :goto_1
.end method

.method private insertPageViewItems(Ljava/lang/String;Ljava/util/List;I)V
    .locals 5
    .param p1, "pageViewName"    # Ljava/lang/String;
    .param p3, "readOnlyDatabaseExceptionCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 281
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-direct {p0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 283
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 286
    :try_start_1
    invoke-direct {p0, v0, p2}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->doInsertOrUpdateItems(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 288
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    :try_start_2
    invoke-static {v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->endTransactionSafely(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 299
    :goto_0
    return-void

    .line 290
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->endTransactionSafely(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_2 .. :try_end_2} :catch_1

    .line 292
    :catch_0
    move-exception v1

    .line 293
    .local v1, "e":Landroid/database/sqlite/SQLiteFullException;
    const-string v2, "HomeDatabaseWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Database full: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 294
    .end local v1    # "e":Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v1

    .line 295
    .local v1, "e":Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;
    invoke-direct {p0, v0, v1, p3}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->handleReadOnlyDatabaseException(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;I)V

    .line 297
    add-int/lit8 v2, p3, 0x1

    invoke-direct {p0, p1, p2, v2}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->insertPageViewItems(Ljava/lang/String;Ljava/util/List;I)V

    goto :goto_0
.end method

.method private insertPopularGenre(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "genre"    # Ljava/lang/String;
    .param p2, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1103
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1104
    .local v0, "insertValues":Landroid/content/ContentValues;
    const-string v1, "genre"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    const-string v1, "clicks"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1106
    const-string v1, "popular_genres_table"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {p2, v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 1108
    return-void
.end method

.method private insertStatisticsItem(Landroid/database/sqlite/SQLiteDatabase;Lcom/sonymobile/home/statistics/StatisticsItem;)J
    .locals 6
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "item"    # Lcom/sonymobile/home/statistics/StatisticsItem;

    .prologue
    .line 1030
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1032
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "package_name"

    invoke-virtual {p2}, Lcom/sonymobile/home/statistics/StatisticsItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    const-string v3, "name"

    invoke-virtual {p2}, Lcom/sonymobile/home/statistics/StatisticsItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    const-string v3, "user_serial_number"

    iget-object v4, p0, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p2}, Lcom/sonymobile/home/statistics/StatisticsItem;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1035
    const-string v3, "start_count"

    invoke-virtual {p2}, Lcom/sonymobile/home/statistics/StatisticsItem;->getStartCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1036
    const-string v3, "statistics_table"

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    .line 1038
    .local v0, "retVal":J
    const-wide/16 v4, -0x1

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    .line 1039
    const-string v3, "HomeDatabaseWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inserting of statistics data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/sonymobile/home/statistics/StatisticsItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :cond_0
    return-wide v0
.end method

.method private insertStatisticsItem(Lcom/sonymobile/home/statistics/StatisticsItem;I)J
    .locals 7
    .param p1, "item"    # Lcom/sonymobile/home/statistics/StatisticsItem;
    .param p2, "readOnlyDatabaseExceptionCount"    # I

    .prologue
    .line 348
    const-wide/16 v2, -0x1

    .line 349
    .local v2, "retVal":J
    invoke-direct {p0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 351
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 354
    :try_start_1
    invoke-direct {p0, v0, p1}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->insertStatisticsItem(Landroid/database/sqlite/SQLiteDatabase;Lcom/sonymobile/home/statistics/StatisticsItem;)J

    move-result-wide v2

    .line 355
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    :try_start_2
    invoke-static {v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->endTransactionSafely(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 367
    :goto_0
    return-wide v2

    .line 357
    :catchall_0
    move-exception v4

    invoke-static {v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->endTransactionSafely(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v4
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_2 .. :try_end_2} :catch_1

    .line 359
    :catch_0
    move-exception v1

    .line 360
    .local v1, "e":Landroid/database/sqlite/SQLiteFullException;
    const-string v4, "HomeDatabaseWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Database full: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 361
    .end local v1    # "e":Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v1

    .line 362
    .local v1, "e":Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;
    invoke-direct {p0, v0, v1, p2}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->handleReadOnlyDatabaseException(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;I)V

    .line 364
    add-int/lit8 v4, p2, 0x1

    invoke-direct {p0, p1, v4}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->insertStatisticsItem(Lcom/sonymobile/home/statistics/StatisticsItem;I)J

    move-result-wide v2

    goto :goto_0
.end method

.method private syncPageViewItems(Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V
    .locals 14
    .param p1, "pageViewName"    # Ljava/lang/String;
    .param p4, "readOnlyDatabaseExceptionCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 309
    .local p2, "itemsToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .local p3, "itemsToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    invoke-direct {p0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 311
    .local v3, "database":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 314
    :try_start_1
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/home/data/Item;

    .line 316
    .local v6, "itemToDelete":Lcom/sonymobile/home/data/Item;
    invoke-virtual {v6}, Lcom/sonymobile/home/data/Item;->isStored()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 317
    const-string v7, "application_table"

    const-string v8, "_id = ?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v6}, Lcom/sonymobile/home/data/Item;->getStorageId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v3, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 321
    .local v2, "count":I
    if-lez v2, :cond_0

    .line 322
    const-wide/32 v8, -0x80000000

    invoke-virtual {v6, v8, v9}, Lcom/sonymobile/home/data/Item;->setStorageId(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 331
    .end local v2    # "count":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "itemToDelete":Lcom/sonymobile/home/data/Item;
    :catchall_0
    move-exception v7

    :try_start_2
    invoke-static {v3}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->endTransactionSafely(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v7
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_2 .. :try_end_2} :catch_1

    .line 333
    :catch_0
    move-exception v4

    .line 334
    .local v4, "e":Landroid/database/sqlite/SQLiteFullException;
    const-string v7, "HomeDatabaseWrapper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Database full: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    .end local v4    # "e":Landroid/database/sqlite/SQLiteFullException;
    :goto_1
    return-void

    .line 327
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_3
    move-object/from16 v0, p2

    invoke-direct {p0, v3, v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->doInsertOrUpdateItems(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 329
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 331
    :try_start_4
    invoke-static {v3}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->endTransactionSafely(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 335
    .end local v5    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v4

    .line 336
    .local v4, "e":Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;
    move/from16 v0, p4

    invoke-direct {p0, v3, v4, v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->handleReadOnlyDatabaseException(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;I)V

    .line 338
    add-int/lit8 v7, p4, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {p0, p1, v0, v1, v7}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->syncPageViewItems(Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    goto :goto_1
.end method

.method private updateFolderItems(Ljava/util/List;I)I
    .locals 12
    .param p2, "readOnlyDatabaseExceptionCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 589
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    const/4 v4, 0x0

    .line 590
    .local v4, "result":I
    invoke-direct {p0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 592
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 595
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/data/Item;

    .line 596
    .local v3, "item":Lcom/sonymobile/home/data/Item;
    invoke-static {v3}, Lcom/sonymobile/home/storage/ItemSerializerFactory;->createContentValueFromItem(Lcom/sonymobile/home/data/Item;)Landroid/content/ContentValues;

    move-result-object v5

    .line 598
    .local v5, "value":Landroid/content/ContentValues;
    const-string v6, "folders_table"

    const-string v7, "_id = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v3}, Lcom/sonymobile/home/data/Item;->getStorageId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v0, v6, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v4, v6

    .line 601
    goto :goto_0

    .line 602
    .end local v3    # "item":Lcom/sonymobile/home/data/Item;
    .end local v5    # "value":Landroid/content/ContentValues;
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 604
    :try_start_2
    invoke-static {v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->endTransactionSafely(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 614
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    return v4

    .line 604
    :catchall_0
    move-exception v6

    invoke-static {v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->endTransactionSafely(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v6
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_2 .. :try_end_2} :catch_1

    .line 606
    :catch_0
    move-exception v1

    .line 607
    .local v1, "e":Landroid/database/sqlite/SQLiteFullException;
    const-string v6, "HomeDatabaseWrapper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Database full: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 608
    .end local v1    # "e":Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v1

    .line 609
    .local v1, "e":Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;
    invoke-direct {p0, v0, v1, p2}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->handleReadOnlyDatabaseException(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;I)V

    .line 611
    add-int/lit8 v6, p2, 0x1

    invoke-direct {p0, p1, v6}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->updateFolderItems(Ljava/util/List;I)I

    move-result v4

    goto :goto_1
.end method

.method private updateGenre(Ljava/lang/String;I)V
    .locals 5
    .param p1, "genre"    # Ljava/lang/String;
    .param p2, "readOnlyDatabaseExceptionCount"    # I

    .prologue
    .line 1058
    invoke-direct {p0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1060
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1063
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->updatePopularGenre(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1065
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->insertPopularGenre(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1066
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1068
    :try_start_2
    invoke-static {v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->endTransactionSafely(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1077
    :goto_0
    return-void

    .line 1068
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->endTransactionSafely(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1070
    :catch_0
    move-exception v1

    .line 1071
    .local v1, "e":Landroid/database/sqlite/SQLiteFullException;
    const-string v2, "HomeDatabaseWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Database full: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1072
    .end local v1    # "e":Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v1

    .line 1073
    .local v1, "e":Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;
    invoke-direct {p0, v0, v1, p2}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->handleReadOnlyDatabaseException(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;I)V

    .line 1075
    add-int/lit8 v2, p2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->updateGenre(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private updateItem(Lcom/sonymobile/home/data/Item;I)I
    .locals 10
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "readOnlyDatabaseExceptionCount"    # I

    .prologue
    .line 181
    const/4 v2, 0x0

    .line 182
    .local v2, "result":I
    invoke-direct {p0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 184
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 187
    :try_start_1
    invoke-static {p1}, Lcom/sonymobile/home/storage/ItemSerializerFactory;->createContentValueFromItem(Lcom/sonymobile/home/data/Item;)Landroid/content/ContentValues;

    move-result-object v3

    .line 188
    .local v3, "value":Landroid/content/ContentValues;
    const-string v4, "application_table"

    const-string v5, "_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getStorageId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 191
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    :try_start_2
    invoke-static {v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->endTransactionSafely(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 202
    .end local v3    # "value":Landroid/content/ContentValues;
    :goto_0
    return v2

    .line 193
    :catchall_0
    move-exception v4

    invoke-static {v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->endTransactionSafely(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v4
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_2 .. :try_end_2} :catch_1

    .line 195
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Landroid/database/sqlite/SQLiteFullException;
    const-string v4, "HomeDatabaseWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Database full: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 197
    .end local v1    # "e":Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v1

    .line 198
    .local v1, "e":Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;
    invoke-direct {p0, v0, v1, p2}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->handleReadOnlyDatabaseException(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;I)V

    .line 200
    add-int/lit8 v4, p2, 0x1

    invoke-direct {p0, p1, v4}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->updateItem(Lcom/sonymobile/home/data/Item;I)I

    move-result v2

    goto :goto_0
.end method

.method private updatePopularGenre(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "genre"    # Ljava/lang/String;
    .param p2, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 1086
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v0, v5

    .line 1087
    .local v0, "arguments":[Ljava/lang/String;
    const-string v3, "popular_genres_table"

    .line 1088
    .local v3, "table":Ljava/lang/String;
    const-string v1, "clicks"

    .line 1089
    .local v1, "clickCount":Ljava/lang/String;
    const-string v2, "genre"

    .line 1091
    .local v2, "genreColumn":Ljava/lang/String;
    const-string v4, "UPDATE OR IGNORE popular_genres_table SET clicks = clicks + 1 WHERE genre=?"

    .line 1093
    .local v4, "updateQuery":Ljava/lang/String;
    const-string v5, "UPDATE OR IGNORE popular_genres_table SET clicks = clicks + 1 WHERE genre=?"

    invoke-virtual {p2, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1094
    return-void
.end method


# virtual methods
.method public declared-synchronized clear(Ljava/lang/String;)V
    .locals 1
    .param p1, "pageViewName"    # Ljava/lang/String;

    .prologue
    .line 883
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->clear(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 884
    monitor-exit p0

    return-void

    .line 883
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteBadge(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 743
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->deleteBadge(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteFolderItem(Lcom/sonymobile/home/data/Item;)V
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 619
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->deleteFolderItem(Lcom/sonymobile/home/data/Item;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    monitor-exit p0

    return-void

    .line 619
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteFolderItem(Lcom/sonymobile/home/data/Item;I)V
    .locals 8
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;
    .param p2, "readOnlyDatabaseExceptionCount"    # I

    .prologue
    .line 623
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 625
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 629
    :try_start_2
    const-string v2, "folders_table"

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/sonymobile/home/data/Item;->getStorageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 633
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 635
    :try_start_3
    invoke-static {v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->endTransactionSafely(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 644
    :goto_0
    monitor-exit p0

    return-void

    .line 635
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-static {v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->endTransactionSafely(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v2
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 637
    :catch_0
    move-exception v1

    .line 638
    .local v1, "e":Landroid/database/sqlite/SQLiteFullException;
    :try_start_5
    const-string v2, "HomeDatabaseWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Database full: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 623
    .end local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "e":Landroid/database/sqlite/SQLiteFullException;
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 639
    .restart local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :catch_1
    move-exception v1

    .line 640
    .local v1, "e":Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;
    :try_start_6
    invoke-direct {p0, v0, v1, p2}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->handleReadOnlyDatabaseException(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;I)V

    .line 642
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->deleteFolderItem(Lcom/sonymobile/home/data/Item;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0
.end method

.method public declared-synchronized deletePageViewItem(Lcom/sonymobile/home/data/Item;)I
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 813
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->deletePageViewItem(Lcom/sonymobile/home/data/Item;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteStatistics(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 401
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->deleteStatistics(Ljava/lang/String;Landroid/os/UserHandle;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    monitor-exit p0

    return-void

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteStatisticsItem(Lcom/sonymobile/home/statistics/StatisticsItem;)V
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/statistics/StatisticsItem;

    .prologue
    .line 372
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->deleteStatisticsItem(Lcom/sonymobile/home/statistics/StatisticsItem;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    monitor-exit p0

    return-void

    .line 372
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getApplicationStatistics()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/statistics/StatisticsItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 488
    monitor-enter p0

    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 491
    .local v10, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/statistics/StatisticsItem;>;"
    :try_start_1
    invoke-direct {p0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 492
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "statistics_table"

    sget-object v2, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->STATISTICS_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 495
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 497
    :goto_0
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 498
    invoke-direct {p0, v8}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->createStatisticsItemFromCursor(Landroid/database/Cursor;)Lcom/sonymobile/home/statistics/StatisticsItem;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 501
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 504
    .end local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 505
    .local v9, "e":Landroid/database/sqlite/SQLiteFullException;
    :try_start_4
    const-string v1, "HomeDatabaseWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Database full: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 508
    .end local v9    # "e":Landroid/database/sqlite/SQLiteFullException;
    :cond_0
    :goto_1
    monitor-exit p0

    return-object v10

    .line 501
    .restart local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 488
    .end local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/statistics/StatisticsItem;>;"
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getBadges()Ljava/util/Map;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 775
    monitor-enter p0

    :try_start_0
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 778
    .local v11, "badgeMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonymobile/home/data/Item;Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 779
    .local v13, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 782
    .local v3, "database":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_2
    const-string v4, "badge_table"

    sget-object v5, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->BADGE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 785
    if-eqz v13, :cond_2

    .line 786
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 787
    const-string v4, "package_name"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 789
    .local v17, "indexPackageName":I
    move/from16 v0, v17

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 790
    .local v19, "packageName":Ljava/lang/String;
    const-string v4, "name"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 791
    .local v16, "indexName":I
    move/from16 v0, v16

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 792
    .local v18, "name":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v20

    .line 793
    .local v20, "user":Landroid/os/UserHandle;
    const-string v4, "badge"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 794
    .local v15, "indexBadge":I
    invoke-interface {v13, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 796
    .local v12, "badgeMessage":Ljava/lang/String;
    new-instance v4, Lcom/sonymobile/home/data/ActivityItem;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v4, v0, v1, v2}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-interface {v11, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 800
    .end local v12    # "badgeMessage":Ljava/lang/String;
    .end local v15    # "indexBadge":I
    .end local v16    # "indexName":I
    .end local v17    # "indexPackageName":I
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "packageName":Ljava/lang/String;
    .end local v20    # "user":Landroid/os/UserHandle;
    :catchall_0
    move-exception v4

    if-eqz v13, :cond_0

    .line 801
    :try_start_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v4
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 804
    .end local v3    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v14

    .line 805
    .local v14, "e":Landroid/database/sqlite/SQLiteFullException;
    :try_start_4
    const-string v4, "HomeDatabaseWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Database full: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 808
    .end local v14    # "e":Landroid/database/sqlite/SQLiteFullException;
    :cond_1
    :goto_1
    monitor-exit p0

    return-object v11

    .line 800
    .restart local v3    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    if-eqz v13, :cond_1

    .line 801
    :try_start_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 775
    .end local v3    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v11    # "badgeMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonymobile/home/data/Item;Ljava/lang/String;>;"
    .end local v13    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getFolderItems(Lcom/sonymobile/home/data/FolderItem;)Ljava/util/List;
    .locals 12
    .param p1, "folderItem"    # Lcom/sonymobile/home/data/FolderItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/data/FolderItem;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 513
    monitor-enter p0

    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 516
    .local v11, "result":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :try_start_1
    invoke-direct {p0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 517
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 520
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_2
    const-string v1, "folders_table"

    sget-object v2, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->FOLDERS_PROJECTION:[Ljava/lang/String;

    const-string v3, "folder_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/sonymobile/home/data/FolderItem;->getStorageId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "page_position"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 525
    if-eqz v8, :cond_3

    .line 526
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 527
    invoke-direct {p0, v8}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->createItemFromCursor(Landroid/database/Cursor;)Lcom/sonymobile/home/data/Item;

    move-result-object v10

    .line 528
    .local v10, "item":Lcom/sonymobile/home/data/Item;
    if-eqz v10, :cond_0

    .line 529
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 534
    .end local v10    # "item":Lcom/sonymobile/home/data/Item;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_1

    .line 535
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v1
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 538
    .end local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 539
    .local v9, "e":Landroid/database/sqlite/SQLiteFullException;
    :try_start_4
    const-string v1, "HomeDatabaseWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Database full: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 542
    .end local v9    # "e":Landroid/database/sqlite/SQLiteFullException;
    :cond_2
    :goto_1
    monitor-exit p0

    return-object v11

    .line 534
    .restart local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_3
    if-eqz v8, :cond_2

    .line 535
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 513
    .end local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v11    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPageViewItems(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "pageViewName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 242
    monitor-enter p0

    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 245
    .local v11, "result":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :try_start_1
    invoke-direct {p0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 246
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p1}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->getProjectionForPageView(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "PROJECTION":[Ljava/lang/String;
    const-string v1, "apptray"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v7, "page_index,page_position"

    .line 251
    .local v7, "orderBy":Ljava/lang/String;
    :cond_0
    const-string v1, "application_table"

    const-string v3, "page_view = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 255
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 257
    :cond_1
    :goto_0
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 258
    invoke-direct {p0, v8}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->createItemFromCursor(Landroid/database/Cursor;)Lcom/sonymobile/home/data/Item;

    move-result-object v10

    .line 259
    .local v10, "item":Lcom/sonymobile/home/data/Item;
    if-eqz v10, :cond_1

    .line 260
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 264
    .end local v10    # "item":Lcom/sonymobile/home/data/Item;
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 267
    .end local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "PROJECTION":[Ljava/lang/String;
    .end local v7    # "orderBy":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 268
    .local v9, "e":Landroid/database/sqlite/SQLiteFullException;
    :try_start_4
    const-string v1, "HomeDatabaseWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Database full: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 271
    .end local v9    # "e":Landroid/database/sqlite/SQLiteFullException;
    :cond_2
    :goto_1
    monitor-exit p0

    return-object v11

    .line 264
    .restart local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "PROJECTION":[Ljava/lang/String;
    .restart local v7    # "orderBy":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_3
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 242
    .end local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "PROJECTION":[Ljava/lang/String;
    .end local v7    # "orderBy":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v11    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPopularGenres()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1116
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1117
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "clicks DESC"

    .line 1118
    .local v6, "sortOrder":Ljava/lang/String;
    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 1120
    .local v5, "limit":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1121
    .local v4, "genres":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v8, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->POPULAR_APP_GENRE_PROJECTION:[Ljava/lang/String;

    const-string v9, "clicks DESC"

    invoke-direct {p0, v1, v8, v9, v5}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->getLoadGenresCursor(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 1124
    :try_start_1
    const-string v8, "genre"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1126
    .local v3, "genreIndex":I
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1127
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1128
    .local v2, "genre":Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    .line 1121
    .end local v2    # "genre":Ljava/lang/String;
    .end local v3    # "genreIndex":I
    :catch_0
    move-exception v8

    :try_start_2
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1130
    :catchall_0
    move-exception v9

    move-object v10, v9

    move-object v9, v8

    move-object v8, v10

    :goto_1
    if-eqz v0, :cond_0

    if-eqz v9, :cond_4

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    :goto_2
    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1116
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "genres":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "limit":Ljava/lang/String;
    .end local v6    # "sortOrder":Ljava/lang/String;
    :catchall_1
    move-exception v8

    monitor-exit p0

    throw v8

    .line 1130
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "genreIndex":I
    .restart local v4    # "genres":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "limit":Ljava/lang/String;
    .restart local v6    # "sortOrder":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v9, :cond_3

    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1131
    :cond_2
    :goto_3
    monitor-exit p0

    return-object v4

    .line 1130
    :catch_1
    move-exception v7

    .local v7, "x2":Ljava/lang/Throwable;
    :try_start_6
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .end local v3    # "genreIndex":I
    :catch_2
    move-exception v7

    .restart local v7    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v7    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catchall_2
    move-exception v8

    goto :goto_1
.end method

.method public declared-synchronized insertBadge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 6
    .param p1, "badgeMessage"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;
    .param p4, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 675
    monitor-enter p0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->insertBadge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    monitor-exit p0

    return-void

    .line 675
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insertFolderItems(Lcom/sonymobile/home/data/FolderItem;Ljava/util/List;)V
    .locals 1
    .param p1, "folderItem"    # Lcom/sonymobile/home/data/FolderItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/home/data/FolderItem;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 547
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->insertFolderItems(Lcom/sonymobile/home/data/FolderItem;Ljava/util/List;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    monitor-exit p0

    return-void

    .line 547
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insertPageViewItems(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "pageViewName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 276
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->insertPageViewItems(Ljava/lang/String;Ljava/util/List;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    monitor-exit p0

    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insertStatisticsItem(Lcom/sonymobile/home/statistics/StatisticsItem;)J
    .locals 2
    .param p1, "item"    # Lcom/sonymobile/home/statistics/StatisticsItem;

    .prologue
    .line 344
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->insertStatisticsItem(Lcom/sonymobile/home/statistics/StatisticsItem;I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isNewDatabase()Z
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->mHomeSQLiteOpenHelper:Lcom/sonymobile/home/storage/HomeSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/sonymobile/home/storage/HomeSQLiteOpenHelper;->isNewDatabase()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized syncPageViewItems(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "pageViewName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p2, "itemsToAdd":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    .local p3, "itemsToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->syncPageViewItems(Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    monitor-exit p0

    return-void

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateFolderItems(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/data/Item;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 585
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/data/Item;>;"
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->updateFolderItems(Ljava/util/List;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateGenre(Ljava/lang/String;)V
    .locals 1
    .param p1, "genre"    # Ljava/lang/String;

    .prologue
    .line 1054
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->updateGenre(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1055
    monitor-exit p0

    return-void

    .line 1054
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateItem(Lcom/sonymobile/home/data/Item;)I
    .locals 1
    .param p1, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    .line 177
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/home/storage/HomeDatabaseWrapper;->updateItem(Lcom/sonymobile/home/data/Item;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
