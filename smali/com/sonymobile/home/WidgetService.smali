.class public Lcom/sonymobile/home/WidgetService;
.super Landroid/app/Service;
.source "WidgetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/WidgetService$InstallWidgetReceiver;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 122
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 116
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 47
    invoke-super/range {p0 .. p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 49
    new-instance v15, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v15, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 51
    .local v15, "mainThreadHandler":Landroid/os/Handler;
    if-nez p1, :cond_0

    .line 52
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/WidgetService;->stopSelf(I)V

    .line 53
    const/4 v2, 0x2

    .line 110
    :goto_0
    return v2

    .line 56
    :cond_0
    const-string v2, "com.sonymobile.home.extra.PACKAGE_NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "packageName":Ljava/lang/String;
    const-string v2, "com.sonymobile.home.extra.CLASS_NAME"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, "className":Ljava/lang/String;
    const-string v2, "com.sonymobile.home.extra.USER_PROFILE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/os/UserHandle;

    .line 60
    .local v16, "tmpUser":Landroid/os/UserHandle;
    if-eqz v16, :cond_2

    .line 61
    move-object/from16 v6, v16

    .line 66
    .local v6, "user":Landroid/os/UserHandle;
    :goto_1
    if-eqz v4, :cond_1

    if-nez v5, :cond_3

    .line 67
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/WidgetService;->stopSelf(I)V

    .line 68
    const/4 v2, 0x2

    goto :goto_0

    .line 63
    .end local v6    # "user":Landroid/os/UserHandle;
    :cond_2
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    .restart local v6    # "user":Landroid/os/UserHandle;
    goto :goto_1

    .line 71
    :cond_3
    invoke-static {}, Lcom/sonymobile/home/ui/widget/HomeWidgetManagerFactory;->getHomeAppWidgetManagerInstance()Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;

    move-result-object v7

    .line 73
    .local v7, "appWidgetManager":Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;
    invoke-static {}, Lcom/sonymobile/home/desktop/DesktopPresenter;->getInstance()Lcom/sonymobile/home/desktop/DesktopPresenter;

    move-result-object v8

    .line 74
    .local v8, "desktopPresenter":Lcom/sonymobile/home/desktop/DesktopPresenter;
    move/from16 v9, p3

    .line 76
    .local v9, "internalStartId":I
    if-eqz v7, :cond_4

    if-eqz v8, :cond_4

    .line 78
    new-instance v2, Lcom/sonymobile/home/WidgetService$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/sonymobile/home/WidgetService$1;-><init>(Lcom/sonymobile/home/WidgetService;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;Lcom/sonymobile/home/desktop/DesktopPresenter;I)V

    move-object v10, v7

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    move-object v14, v2

    invoke-virtual/range {v10 .. v15}, Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager;->registerAppWidgetAsync(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Lcom/sonymobile/home/ui/widget/HomeAppWidgetManager$AppWidgetRegisteredCallback;Landroid/os/Handler;)V

    .line 110
    :goto_2
    const/4 v2, 0x2

    goto :goto_0

    .line 108
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sonymobile/home/WidgetService;->stopSelf(I)V

    goto :goto_2
.end method
