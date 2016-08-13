.class public Lcom/sonymobile/home/resourceprovider/HomeResourceProvider;
.super Landroid/content/ContentProvider;
.source "HomeResourceProvider.java"


# static fields
.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field protected mPermissionValidator:Lcom/sonymobile/home/resourceprovider/PermissionValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 43
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sonymobile/home/resourceprovider/HomeResourceProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 44
    sget-object v0, Lcom/sonymobile/home/resourceprovider/HomeResourceProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sonymobile.home.resourceprovider"

    const-string v2, "badge"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 36
    new-instance v0, Lcom/sonymobile/home/resourceprovider/PermissionValidator;

    invoke-direct {v0}, Lcom/sonymobile/home/resourceprovider/PermissionValidator;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/resourceprovider/HomeResourceProvider;->mPermissionValidator:Lcom/sonymobile/home/resourceprovider/PermissionValidator;

    return-void
.end method

.method private checkActivity(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 200
    if-nez p1, :cond_0

    .line 201
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Package name is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :cond_0
    if-nez p2, :cond_1

    .line 204
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Activity name is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    :cond_1
    if-nez p3, :cond_2

    .line 207
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "User is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 209
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/home/resourceprovider/HomeResourceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 210
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/sonymobile/home/resourceprovider/HomeResourceProvider;->mPermissionValidator:Lcom/sonymobile/home/resourceprovider/PermissionValidator;

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/sonymobile/home/resourceprovider/PermissionValidator;->isLauncherActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 211
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a launcher activity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/home/resourceprovider/HomeResourceProvider;->mPermissionValidator:Lcom/sonymobile/home/resourceprovider/PermissionValidator;

    invoke-virtual {v1, v0, p1}, Lcom/sonymobile/home/resourceprovider/PermissionValidator;->verifyPackageBelongsToCallingUid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sonymobile/home/resourceprovider/HomeResourceProvider;->mPermissionValidator:Lcom/sonymobile/home/resourceprovider/PermissionValidator;

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/resourceprovider/PermissionValidator;->hasInsertBadgeProxyPermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 216
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not belong to calling uid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 218
    :cond_4
    return-void
.end method

.method private insertBadge(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/sonymobile/home/resourceprovider/HomeResourceProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 115
    .local v7, "context":Landroid/content/Context;
    iget-object v4, p0, Lcom/sonymobile/home/resourceprovider/HomeResourceProvider;->mPermissionValidator:Lcom/sonymobile/home/resourceprovider/PermissionValidator;

    invoke-virtual {v4, v7}, Lcom/sonymobile/home/resourceprovider/PermissionValidator;->hasInsertBadgePermission(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 116
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Missing permission to insert badges"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 122
    :cond_0
    const-string v4, "package_name"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "packageName":Ljava/lang/String;
    const-string v4, "activity_name"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "activityName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 126
    .local v3, "user":Landroid/os/UserHandle;
    invoke-direct {p0, v1, v2, v3}, Lcom/sonymobile/home/resourceprovider/HomeResourceProvider;->checkActivity(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 128
    const-string v4, "badge_count"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 129
    .local v6, "badgeCount":Ljava/lang/Integer;
    if-nez v6, :cond_1

    .line 130
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Badge count is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 131
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gez v4, :cond_2

    .line 132
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Badge count is negative"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 136
    :cond_2
    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/home/storage/StorageManager;->getBadgeManager(Landroid/content/Context;)Lcom/sonymobile/home/badge/BadgeManager;

    move-result-object v0

    .line 137
    .local v0, "badgeManager":Lcom/sonymobile/home/badge/BadgeManager;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/home/badge/BadgeManager;->handleNewBadge(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;ZI)Z

    .line 139
    sget-object v4, Lcom/sonymobile/home/resourceprovider/BadgeProviderContract;->CONTENT_URI:Landroid/net/Uri;

    return-object v4

    .line 137
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private queryBadges(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 18
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/home/resourceprovider/HomeResourceProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 151
    .local v6, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/home/resourceprovider/HomeResourceProvider;->mPermissionValidator:Lcom/sonymobile/home/resourceprovider/PermissionValidator;

    invoke-virtual {v15, v6}, Lcom/sonymobile/home/resourceprovider/PermissionValidator;->hasReadBadgePermission(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 152
    new-instance v15, Ljava/lang/SecurityException;

    const-string v16, "Missing permission to read badges"

    invoke-direct/range {v15 .. v16}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 156
    :cond_0
    new-instance v7, Landroid/database/MatrixCursor;

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "package_name"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "activity_name"

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-string v17, "badge_count"

    aput-object v17, v15, v16

    invoke-direct {v7, v15}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 162
    .local v7, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/sonymobile/home/storage/StorageManager;->getStorage(Landroid/content/Context;)Lcom/sonymobile/home/storage/Storage;

    move-result-object v14

    .line 163
    .local v14, "storage":Lcom/sonymobile/home/storage/Storage;
    invoke-interface {v14}, Lcom/sonymobile/home/storage/Storage;->getBadges()Ljava/util/Map;

    move-result-object v4

    .line 164
    .local v4, "badgeMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonymobile/home/data/Item;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    .line 165
    .local v10, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Lcom/sonymobile/home/data/Item;Ljava/lang/String;>;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 166
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonymobile/home/data/Item;Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sonymobile/home/data/Item;

    .line 168
    .local v12, "item":Lcom/sonymobile/home/data/Item;
    instance-of v15, v12, Lcom/sonymobile/home/data/ActivityItem;

    if-eqz v15, :cond_1

    move-object v1, v12

    .line 169
    check-cast v1, Lcom/sonymobile/home/data/ActivityItem;

    .line 170
    .local v1, "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    invoke-virtual {v1}, Lcom/sonymobile/home/data/ActivityItem;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 171
    .local v13, "packageName":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/sonymobile/home/data/ActivityItem;->getName()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "activityName":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 175
    .local v5, "badgeMessage":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 176
    .local v3, "badgeCount":I
    invoke-virtual {v7}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    .end local v3    # "badgeCount":I
    :catch_0
    move-exception v8

    .line 179
    .local v8, "e":Ljava/lang/NumberFormatException;
    const-class v15, Lcom/sonymobile/home/resourceprovider/HomeResourceProvider;

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "queryBadges: discarding item: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " / "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " due to malformatted badge value"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 186
    .end local v1    # "activityItem":Lcom/sonymobile/home/data/ActivityItem;
    .end local v2    # "activityName":Ljava/lang/String;
    .end local v5    # "badgeMessage":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonymobile/home/data/Item;Ljava/lang/String;>;"
    .end local v12    # "item":Lcom/sonymobile/home/data/Item;
    .end local v13    # "packageName":Ljava/lang/String;
    :cond_2
    return-object v7
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 89
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 94
    sget-object v0, Lcom/sonymobile/home/resourceprovider/HomeResourceProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.com.sonymobile.home.resourceprovider.badge"

    return-object v0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 58
    sget-object v0, Lcom/sonymobile/home/resourceprovider/HomeResourceProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/resourceprovider/HomeResourceProvider;->insertBadge(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 72
    sget-object v0, Lcom/sonymobile/home/resourceprovider/HomeResourceProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sonymobile/home/resourceprovider/HomeResourceProvider;->queryBadges(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 84
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
