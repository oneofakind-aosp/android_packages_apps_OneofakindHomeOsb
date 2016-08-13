.class public Lcom/sonymobile/home/statistics/TrackingUtil;
.super Ljava/lang/Object;
.source "TrackingUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/statistics/TrackingUtil$1;,
        Lcom/sonymobile/home/statistics/TrackingUtil$SetScreen;,
        Lcom/sonymobile/home/statistics/TrackingUtil$SendEvent;,
        Lcom/sonymobile/home/statistics/TrackingUtil$HomeGaGtmSubscriber;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final sBgHandler:Landroid/os/Handler;

.field private static sLastRefreshRequestTime:J

.field private static sScreen:Ljava/lang/String;

.field private static sTrackingEnabled:Z

.field private static final sTrackingThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const-class v0, Lcom/sonymobile/home/statistics/TrackingUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/statistics/TrackingUtil;->LOG_TAG:Ljava/lang/String;

    .line 154
    const/4 v0, 0x0

    sput-object v0, Lcom/sonymobile/home/statistics/TrackingUtil;->sScreen:Ljava/lang/String;

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/sonymobile/home/statistics/TrackingUtil;->sLastRefreshRequestTime:J

    .line 178
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TrackingThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/home/statistics/TrackingUtil;->sTrackingThread:Landroid/os/HandlerThread;

    .line 179
    sget-object v0, Lcom/sonymobile/home/statistics/TrackingUtil;->sTrackingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 180
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/sonymobile/home/statistics/TrackingUtil;->sTrackingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/sonymobile/home/statistics/TrackingUtil;->sBgHandler:Landroid/os/Handler;

    .line 181
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    return-void
.end method

.method public static createGaGtmSubscriber(Landroid/content/Context;)Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 389
    new-instance v0, Lcom/sonymobile/home/statistics/TrackingUtil$HomeGaGtmSubscriber;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/statistics/TrackingUtil$HomeGaGtmSubscriber;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getDesktopScreen(Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;)Ljava/lang/String;
    .locals 2
    .param p0, "desktopState"    # Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;

    .prologue
    .line 349
    sget-object v0, Lcom/sonymobile/home/statistics/TrackingUtil$1;->$SwitchMap$com$sonymobile$home$desktop$DesktopPresenter$DesktopState:[I

    invoke-virtual {p0}, Lcom/sonymobile/home/desktop/DesktopPresenter$DesktopState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 361
    const-string v0, "Desktop"

    :goto_0
    return-object v0

    .line 351
    :pswitch_0
    const-string v0, "CuiOptions"

    goto :goto_0

    .line 354
    :pswitch_1
    const-string v0, "CuiMainMenu"

    goto :goto_0

    .line 357
    :pswitch_2
    const-string v0, "CuiSubMenu"

    goto :goto_0

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getTrackingCategory(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pageViewName"    # Ljava/lang/String;

    .prologue
    .line 317
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 337
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 317
    :sswitch_0
    const-string v1, "apptray"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "stage"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "desktop"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "stage_dynamic"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "desktop_automatic"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "search_suggestions"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 319
    :pswitch_0
    const-string v0, "Apptray"

    .line 334
    :goto_1
    return-object v0

    .line 322
    :pswitch_1
    const-string v0, "ClassicMode_Stage"

    goto :goto_1

    .line 325
    :pswitch_2
    const-string v0, "ClassicMode_Desktop"

    goto :goto_1

    .line 328
    :pswitch_3
    const-string v0, "ModernMode_Stage"

    goto :goto_1

    .line 331
    :pswitch_4
    const-string v0, "ModernMode_Desktop"

    goto :goto_1

    .line 334
    :pswitch_5
    const-string v0, "Search"

    goto :goto_1

    .line 317
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2f440b29 -> :sswitch_0
        -0x215db638 -> :sswitch_4
        -0x203c1402 -> :sswitch_3
        0x68ac2fe -> :sswitch_1
        0x5a88fed8 -> :sswitch_5
        0x5ccf901c -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getTrackingName(Lcom/sonymobile/home/data/Item;)Ljava/lang/String;
    .locals 3
    .param p0, "item"    # Lcom/sonymobile/home/data/Item;

    .prologue
    const/16 v2, 0x2f

    .line 290
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 291
    :cond_0
    const-string v1, ""

    .line 307
    .end local p0    # "item":Lcom/sonymobile/home/data/Item;
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    :goto_0
    return-object v1

    .line 293
    .end local v0    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local p0    # "item":Lcom/sonymobile/home/data/Item;
    :cond_1
    instance-of v1, p0, Lcom/sonymobile/home/data/FolderItem;

    if-eqz v1, :cond_2

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Folder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p0, Lcom/sonymobile/home/data/FolderItem;

    .end local p0    # "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {p0}, Lcom/sonymobile/home/data/FolderItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 296
    .restart local p0    # "item":Lcom/sonymobile/home/data/Item;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sonymobile/home/data/Item;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    .restart local v0    # "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/sonymobile/home/data/Item;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/sonymobile/home/data/Item;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 298
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {p0}, Lcom/sonymobile/home/data/Item;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .end local p0    # "item":Lcom/sonymobile/home/data/Item;
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 300
    .restart local p0    # "item":Lcom/sonymobile/home/data/Item;
    :cond_4
    instance-of v1, p0, Lcom/sonymobile/home/data/WidgetItem;

    if-eqz v1, :cond_5

    .line 301
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    check-cast p0, Lcom/sonymobile/home/data/WidgetItem;

    .end local p0    # "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {p0}, Lcom/sonymobile/home/data/WidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 303
    .restart local p0    # "item":Lcom/sonymobile/home/data/Item;
    :cond_5
    instance-of v1, p0, Lcom/sonymobile/home/data/AdvWidgetItem;

    if-eqz v1, :cond_3

    .line 304
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 305
    check-cast p0, Lcom/sonymobile/home/data/AdvWidgetItem;

    .end local p0    # "item":Lcom/sonymobile/home/data/Item;
    invoke-virtual {p0}, Lcom/sonymobile/home/data/AdvWidgetItem;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static declared-synchronized isTrackingEnabled()Z
    .locals 2

    .prologue
    .line 378
    const-class v0, Lcom/sonymobile/home/statistics/TrackingUtil;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/sonymobile/home/statistics/TrackingUtil;->sTrackingEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized notifyContainerRefreshStarted()V
    .locals 4

    .prologue
    .line 266
    const-class v1, Lcom/sonymobile/home/statistics/TrackingUtil;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/sonymobile/home/statistics/TrackingUtil;->sLastRefreshRequestTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    monitor-exit v1

    return-void

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized pushException(Ljava/lang/String;)V
    .locals 2
    .param p0, "exceptionDescription"    # Ljava/lang/String;

    .prologue
    .line 230
    const-class v1, Lcom/sonymobile/home/statistics/TrackingUtil;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/sonymobile/home/statistics/TrackingUtil;->sTrackingEnabled:Z

    if-eqz v0, :cond_0

    .line 231
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushException(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :cond_0
    monitor-exit v1

    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized refreshContainerIfNeeded()V
    .locals 8

    .prologue
    .line 242
    const-class v3, Lcom/sonymobile/home/statistics/TrackingUtil;

    monitor-enter v3

    :try_start_0
    sget-boolean v2, Lcom/sonymobile/home/statistics/TrackingUtil;->sTrackingEnabled:Z

    if-eqz v2, :cond_0

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/sonymobile/home/statistics/TrackingUtil;->sLastRefreshRequestTime:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x927c0

    cmp-long v2, v4, v6

    if-lez v2, :cond_0

    .line 245
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getContainerHolder()Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object v1

    .line 246
    .local v1, "containerHolder":Lcom/google/android/gms/tagmanager/ContainerHolder;
    if-eqz v1, :cond_0

    .line 247
    invoke-interface {v1}, Lcom/google/android/gms/tagmanager/ContainerHolder;->getContainer()Lcom/google/android/gms/tagmanager/Container;

    move-result-object v0

    .line 248
    .local v0, "container":Lcom/google/android/gms/tagmanager/Container;
    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/Container;->getLastRefreshTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x44aa200

    cmp-long v2, v4, v6

    if-lez v2, :cond_0

    .line 251
    sget-object v2, Lcom/sonymobile/home/statistics/TrackingUtil;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Forcing GTM container refresh!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-static {}, Lcom/sonymobile/home/statistics/TrackingUtil;->notifyContainerRefreshStarted()V

    .line 254
    invoke-interface {v1}, Lcom/google/android/gms/tagmanager/ContainerHolder;->refresh()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    .end local v0    # "container":Lcom/google/android/gms/tagmanager/Container;
    :cond_0
    monitor-exit v3

    return-void

    .line 242
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 194
    const-class v6, Lcom/sonymobile/home/statistics/TrackingUtil;

    monitor-enter v6

    :try_start_0
    sget-boolean v0, Lcom/sonymobile/home/statistics/TrackingUtil;->sTrackingEnabled:Z

    if-eqz v0, :cond_0

    .line 195
    invoke-static {}, Lcom/sonymobile/home/statistics/TrackingUtil;->refreshContainerIfNeeded()V

    .line 196
    sget-object v7, Lcom/sonymobile/home/statistics/TrackingUtil;->sBgHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sonymobile/home/statistics/TrackingUtil$SendEvent;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/statistics/TrackingUtil$SendEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :cond_0
    monitor-exit v6

    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized setScreen(Ljava/lang/String;)V
    .locals 3
    .param p0, "screen"    # Ljava/lang/String;

    .prologue
    .line 275
    const-class v1, Lcom/sonymobile/home/statistics/TrackingUtil;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/sonymobile/home/statistics/TrackingUtil;->sTrackingEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonymobile/home/statistics/TrackingUtil;->sScreen:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    sput-object p0, Lcom/sonymobile/home/statistics/TrackingUtil;->sScreen:Ljava/lang/String;

    .line 277
    sget-object v0, Lcom/sonymobile/home/statistics/TrackingUtil;->sBgHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonymobile/home/statistics/TrackingUtil$SetScreen;

    invoke-direct {v2, p0}, Lcom/sonymobile/home/statistics/TrackingUtil$SetScreen;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    :cond_0
    monitor-exit v1

    return-void

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setTrackingEnabled(Z)V
    .locals 2
    .param p0, "trackingEnabled"    # Z

    .prologue
    .line 371
    const-class v0, Lcom/sonymobile/home/statistics/TrackingUtil;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/sonymobile/home/statistics/TrackingUtil;->sTrackingEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    monitor-exit v0

    return-void

    .line 371
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized trackException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "thread"    # Ljava/lang/Thread;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 208
    const-class v1, Lcom/sonymobile/home/statistics/TrackingUtil;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/sonymobile/home/statistics/TrackingUtil;->sTrackingEnabled:Z

    if-eqz v0, :cond_0

    .line 209
    invoke-static {p0, p1}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->generateCrash(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :cond_0
    monitor-exit v1

    return-void

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized trackException(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 219
    const-class v1, Lcom/sonymobile/home/statistics/TrackingUtil;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/sonymobile/home/statistics/TrackingUtil;->sTrackingEnabled:Z

    if-eqz v0, :cond_0

    .line 220
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->generateCrash(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :cond_0
    monitor-exit v1

    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
