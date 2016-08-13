.class public Lcom/sonymobile/home/storage/HomeSQLiteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "HomeSQLiteOpenHelper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mNewDatabase:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 338
    const-string v0, "home_database.db"

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/home/storage/HomeSQLiteOpenHelper;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 339
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p1, "databaseName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 350
    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-direct {p0, p2, p1, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 351
    iput-object p2, p0, Lcom/sonymobile/home/storage/HomeSQLiteOpenHelper;->mContext:Landroid/content/Context;

    .line 352
    return-void
.end method

.method private dropAll(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 545
    const-string v1, "settings_table"

    .line 546
    .local v1, "SETTINGS_TABLE_NAME":Ljava/lang/String;
    const-string v0, "item_removed_trigger"

    .line 547
    .local v0, "BADGE_DELETE_TRIGGER":Ljava/lang/String;
    const-string v4, "shortcut_table"

    .line 548
    .local v4, "SHORTCUT_TABLE_NAME":Ljava/lang/String;
    const-string v3, " remove_shortcut_in_folder_item_trigger "

    .line 549
    .local v3, "SHORTCUT_FOLDER_DELETE_TRIGGER_NAME":Ljava/lang/String;
    const-string v2, " remove_shortcut_in_application_item_trigger "

    .line 552
    .local v2, "SHORTCUT_APPLICATION_DELETE_TRIGGER_NAME":Ljava/lang/String;
    const-string v5, "DROP TRIGGER IF EXISTS delete_id_folder_trigger"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 553
    const-string v5, "DROP TRIGGER IF EXISTS  remove_shortcut_in_folder_item_trigger "

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 554
    const-string v5, "DROP TRIGGER IF EXISTS  remove_shortcut_in_application_item_trigger "

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 555
    const-string v5, "DROP TRIGGER IF EXISTS item_removed_trigger"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 562
    const-string v5, "DROP TABLE IF EXISTS application_table"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 563
    const-string v5, "DROP TABLE IF EXISTS folders_table"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 564
    const-string v5, "DROP TABLE IF EXISTS statistics_table"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 565
    const-string v5, "DROP TABLE IF EXISTS badge_table"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 566
    const-string v5, "DROP TABLE IF EXISTS shortcut_table"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 567
    const-string v5, "DROP TABLE IF EXISTS settings_table"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 568
    const-string v5, "DROP TABLE IF EXISTS popular_genres_table"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 569
    return-void
.end method

.method private setUpAll(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 529
    const-string v0, "CREATE TABLE application_table (_id INTEGER PRIMARY KEY AUTOINCREMENT, page_index INTEGER, page_position INTEGER, name TEXT, package_name TEXT, intent TEXT, page_view TEXT, cellx INTEGER, celly INTEGER, spanx INTEGER, spany INTEGER, item_type TEXT, item_id TEXT DEFAULT -1, arbitrary_data TEXT DEFAULT NULL, image BLOB DEFAULT NULL, package_resource_name TEXT DEFAULT NULL, icon_resource_name TEXT DEFAULT NULL, user_serial_number INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 531
    const-string v0, "CREATE TABLE folders_table (_id INTEGER PRIMARY KEY AUTOINCREMENT, folder_id INTEGER, page_index INTEGER, page_position INTEGER, name TEXT, package_name TEXT, intent TEXT, page_view TEXT, cellx INTEGER, celly INTEGER, spanx INTEGER, spany INTEGER, item_type TEXT, item_id TEXT DEFAULT -1, image BLOB DEFAULT NULL, package_resource_name TEXT DEFAULT NULL, icon_resource_name TEXT DEFAULT NULL, user_serial_number INTEGER DEFAULT -1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 533
    const-string v0, "CREATE TABLE statistics_table (_id INTEGER PRIMARY KEY UNIQUE, name TEXT, package_name TEXT, user_serial_number INTEGER DEFAULT -1, start_count INTEGER, UNIQUE (name, package_name, user_serial_number) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 535
    const-string v0, "CREATE TABLE badge_table (_id INTEGER PRIMARY KEY UNIQUE, name TEXT, package_name TEXT, badge TEXT, UNIQUE (name, package_name) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 537
    const-string v0, "CREATE TABLE popular_genres_table (_id INTEGER PRIMARY KEY, genre TEXT NOT NULL UNIQUE, clicks INTEGER DEFAULT 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 540
    const-string v0, "CREATE TRIGGER IF NOT EXISTS delete_id_folder_trigger AFTER DELETE ON application_table BEGIN  DELETE FROM folders_table WHERE folder_id = old._id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 541
    return-void
.end method


# virtual methods
.method public isNewDatabase()Z
    .locals 1

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/sonymobile/home/storage/HomeSQLiteOpenHelper;->mNewDatabase:Z

    return v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/home/storage/HomeSQLiteOpenHelper;->mNewDatabase:Z

    .line 357
    invoke-direct {p0, p1}, Lcom/sonymobile/home/storage/HomeSQLiteOpenHelper;->setUpAll(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 358
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 521
    const-string v0, "database"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Database downgrade from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Wiping database."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-direct {p0, p1}, Lcom/sonymobile/home/storage/HomeSQLiteOpenHelper;->dropAll(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 524
    invoke-direct {p0, p1}, Lcom/sonymobile/home/storage/HomeSQLiteOpenHelper;->setUpAll(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 525
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 371
    const-string v6, "database"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Database upgrade from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    move v5, p2

    .line 376
    .local v5, "version":I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 377
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonymobile/home/storage/HomeSQLiteOpenHelper;->dropAll(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 378
    invoke-direct {p0, p1}, Lcom/sonymobile/home/storage/HomeSQLiteOpenHelper;->setUpAll(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 380
    add-int/lit8 v5, v5, 0x1

    .line 443
    :cond_0
    :goto_0
    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 446
    iget-object v6, p0, Lcom/sonymobile/home/storage/HomeSQLiteOpenHelper;->mContext:Landroid/content/Context;

    const-string v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 447
    .local v4, "userManager":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    .line 450
    .local v2, "myUserSerialNumber":J
    const-string v6, "ALTER TABLE application_table ADD COLUMN user_serial_number INTEGER DEFAULT -1;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 451
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE application_table SET user_serial_number = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 454
    const-string v6, "ALTER TABLE folders_table ADD COLUMN user_serial_number INTEGER DEFAULT -1;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 455
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE folders_table SET user_serial_number = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 459
    const-string v6, "CREATE TABLE new_statistics_table (_id INTEGER PRIMARY KEY UNIQUE, name TEXT, package_name TEXT, user_serial_number INTEGER DEFAULT -1, start_count INTEGER, UNIQUE (name, package_name, user_serial_number) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 464
    const-string v6, "INSERT INTO new_statistics_table (_id, name, package_name, start_count) SELECT _id, name, package_name, start_count FROM statistics_table"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 466
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE new_statistics_table SET user_serial_number = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 469
    const-string v6, "DROP TABLE statistics_table"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 470
    const-string v6, "ALTER TABLE new_statistics_table RENAME TO statistics_table"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 475
    add-int/lit8 v5, v5, 0x1

    .line 478
    .end local v2    # "myUserSerialNumber":J
    .end local v4    # "userManager":Landroid/os/UserManager;
    :cond_1
    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 483
    add-int/lit8 v5, v5, 0x1

    .line 486
    :cond_2
    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    .line 487
    const-string v6, "DROP TABLE badge_table"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 488
    const-string v6, "CREATE TABLE badge_table (_id INTEGER PRIMARY KEY UNIQUE, name TEXT, package_name TEXT, badge TEXT, UNIQUE (name, package_name) ON CONFLICT REPLACE);"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 491
    add-int/lit8 v5, v5, 0x1

    .line 494
    :cond_3
    const/4 v6, 0x6

    if-ne v5, v6, :cond_4

    .line 495
    const-string v6, "CREATE TABLE popular_genres_table (_id INTEGER PRIMARY KEY, genre TEXT NOT NULL UNIQUE, clicks INTEGER DEFAULT 0)"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 496
    add-int/lit8 v5, v5, 0x1

    .line 499
    :cond_4
    const/4 v6, 0x7

    if-ne v5, v6, :cond_5

    .line 501
    add-int/lit8 v5, v5, 0x1

    .line 516
    :cond_5
    :goto_1
    return-void

    .line 381
    :cond_6
    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 383
    const-string v6, "ALTER TABLE application_table ADD COLUMN image BLOB"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 384
    const-string v6, "ALTER TABLE application_table ADD COLUMN package_resource_name TEXT"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 385
    const-string v6, "ALTER TABLE application_table ADD COLUMN icon_resource_name TEXT"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 387
    const-string v6, "UPDATE application_table SET image = (SELECT shortcut_table.bitmap_blob FROM shortcut_table WHERE application_table.item_id=shortcut_table._id AND application_table.item_type=\'ShortcutItem\') WHERE EXISTS (SELECT 1 FROM shortcut_table WHERE application_table.item_id=shortcut_table._id AND application_table.item_type=\'ShortcutItem\')"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 393
    const-string v6, "UPDATE application_table SET package_resource_name = (SELECT shortcut_table.package_resource_name FROM shortcut_table WHERE application_table.item_id=shortcut_table._id AND application_table.item_type=\'ShortcutItem\') WHERE EXISTS (SELECT 1 FROM shortcut_table WHERE application_table.item_id=shortcut_table._id AND application_table.item_type=\'ShortcutItem\');"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 399
    const-string v6, "UPDATE application_table SET icon_resource_name = (SELECT shortcut_table.icon_resource_name FROM shortcut_table WHERE application_table.item_id=shortcut_table._id AND application_table.item_type=\'ShortcutItem\') WHERE EXISTS (SELECT 1 FROM shortcut_table WHERE application_table.item_id=shortcut_table._id AND application_table.item_type=\'ShortcutItem\');"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 405
    const-string v6, "UPDATE application_table SET item_id = -1 WHERE application_table.item_type=\'ShortcutItem\';"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 410
    const-string v6, "ALTER TABLE folders_table ADD COLUMN image BLOB;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 411
    const-string v6, "ALTER TABLE folders_table ADD COLUMN package_resource_name TEXT;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 412
    const-string v6, "ALTER TABLE folders_table ADD COLUMN icon_resource_name TEXT;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 414
    const-string v6, "UPDATE folders_table SET image = (SELECT shortcut_table.bitmap_blob FROM shortcut_table WHERE folders_table.item_id=shortcut_table._id AND folders_table.item_type=\'ShortcutItem\') WHERE EXISTS (SELECT 1 FROM shortcut_table WHERE folders_table.item_id=shortcut_table._id AND folders_table.item_type=\'ShortcutItem\');"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 420
    const-string v6, "UPDATE folders_table SET package_resource_name = (SELECT shortcut_table.package_resource_name FROM shortcut_table WHERE folders_table.item_id=shortcut_table._id AND folders_table.item_type=\'ShortcutItem\') WHERE EXISTS (SELECT 1 FROM shortcut_table WHERE folders_table.item_id=shortcut_table._id AND folders_table.item_type=\'ShortcutItem\');"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 426
    const-string v6, "UPDATE folders_table SET icon_resource_name = (SELECT shortcut_table.icon_resource_name FROM shortcut_table WHERE folders_table.item_id=shortcut_table._id AND folders_table.item_type=\'ShortcutItem\') WHERE EXISTS (SELECT 1 FROM shortcut_table WHERE folders_table.item_id=shortcut_table._id AND folders_table.item_type=\'ShortcutItem\');"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 432
    const-string v6, "UPDATE folders_table SET item_id = -1 WHERE folders_table.item_type=\'ShortcutItem\';"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 436
    const-string v6, "DROP TRIGGER IF EXISTS remove_shortcut_in_folder_item_trigger"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 437
    const-string v6, "DROP TRIGGER IF EXISTS remove_shortcut_in_application_item_trigger"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 438
    const-string v6, "DROP TABLE IF EXISTS shortcut_table"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    const-string v6, "database"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onUpgrade: SQLiteException, upgrading db. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sonymobile/home/storage/HomeSQLiteOpenHelper;->dropAll(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 508
    invoke-direct {p0, p1}, Lcom/sonymobile/home/storage/HomeSQLiteOpenHelper;->setUpAll(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 509
    :catch_1
    move-exception v1

    .line 513
    .local v1, "exception":Landroid/database/sqlite/SQLiteException;
    const-string v6, "database"

    const-string v7, "onUpgrade: SQLiteException, failed to create db. "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method
