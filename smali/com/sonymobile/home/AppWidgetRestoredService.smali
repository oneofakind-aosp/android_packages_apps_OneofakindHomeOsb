.class public Lcom/sonymobile/home/AppWidgetRestoredService;
.super Landroid/app/Service;
.source "AppWidgetRestoredService.java"

# interfaces
.implements Lcom/sonymobile/home/util/ServiceCommandTracker$ServiceStopper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/AppWidgetRestoredService$AppWidgetRestoredReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCommandTracker:Lcom/sonymobile/home/util/ServiceCommandTracker;

.field private mHomeApplication:Lcom/sonymobile/home/HomeApplication;

.field private final mMainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/sonymobile/home/AppWidgetRestoredService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/AppWidgetRestoredService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonymobile/home/AppWidgetRestoredService;->mMainHandler:Landroid/os/Handler;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/AppWidgetRestoredService;Landroid/content/Intent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/AppWidgetRestoredService;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/AppWidgetRestoredService;->onHandleIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/home/AppWidgetRestoredService;)Lcom/sonymobile/home/HomeApplication;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/AppWidgetRestoredService;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/home/AppWidgetRestoredService;->mHomeApplication:Lcom/sonymobile/home/HomeApplication;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/home/AppWidgetRestoredService;)Lcom/sonymobile/home/util/ServiceCommandTracker;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/AppWidgetRestoredService;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/home/AppWidgetRestoredService;->mCommandTracker:Lcom/sonymobile/home/util/ServiceCommandTracker;

    return-object v0
.end method

.method private onHandleIntent(Landroid/content/Intent;I)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 75
    sget-object v2, Lcom/sonymobile/home/AppWidgetRestoredService;->TAG:Ljava/lang/String;

    const-string v3, "APPWIDGET_HOST_RESTORED"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v2, "appWidgetIds"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 78
    .local v0, "newIds":[I
    const-string v2, "appWidgetOldIds"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 80
    .local v1, "oldIds":[I
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    array-length v2, v1

    array-length v3, v0

    if-ne v2, v3, :cond_0

    .line 81
    invoke-direct {p0, p2, v1, v0}, Lcom/sonymobile/home/AppWidgetRestoredService;->updateDesktopModels(I[I[I)V

    .line 87
    :goto_0
    return-void

    .line 83
    :cond_0
    sget-object v2, Lcom/sonymobile/home/AppWidgetRestoredService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received id list lengths don\'t match : old="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", new="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v2, p0, Lcom/sonymobile/home/AppWidgetRestoredService;->mCommandTracker:Lcom/sonymobile/home/util/ServiceCommandTracker;

    invoke-virtual {v2, p2}, Lcom/sonymobile/home/util/ServiceCommandTracker;->finishCommand(I)V

    goto :goto_0
.end method

.method private updateDesktopModels(I[I[I)V
    .locals 9
    .param p1, "startId"    # I
    .param p2, "oldIds"    # [I
    .param p3, "newIds"    # [I

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/home/AppWidgetRestoredService;->mHomeApplication:Lcom/sonymobile/home/HomeApplication;

    invoke-virtual {v0}, Lcom/sonymobile/home/HomeApplication;->getDesktopModels()Ljava/util/List;

    move-result-object v7

    .line 97
    .local v7, "desktopModels":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/desktop/DesktopModel;>;"
    new-instance v5, Landroid/util/MutableInt;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, v0}, Landroid/util/MutableInt;-><init>(I)V

    .line 99
    .local v5, "modelsToBeLoadedCount":Landroid/util/MutableInt;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/home/desktop/DesktopModel;

    .line 100
    .local v2, "desktopModel":Lcom/sonymobile/home/desktop/DesktopModel;
    new-instance v0, Lcom/sonymobile/home/AppWidgetRestoredService$2;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/AppWidgetRestoredService$2;-><init>(Lcom/sonymobile/home/AppWidgetRestoredService;Lcom/sonymobile/home/desktop/DesktopModel;[I[ILandroid/util/MutableInt;I)V

    invoke-virtual {v2, v0}, Lcom/sonymobile/home/desktop/DesktopModel;->addOnLoadedRunnable(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 117
    .end local v2    # "desktopModel":Lcom/sonymobile/home/desktop/DesktopModel;
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 47
    invoke-virtual {p0}, Lcom/sonymobile/home/AppWidgetRestoredService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/HomeApplication;

    iput-object v0, p0, Lcom/sonymobile/home/AppWidgetRestoredService;->mHomeApplication:Lcom/sonymobile/home/HomeApplication;

    .line 48
    new-instance v0, Lcom/sonymobile/home/util/ServiceCommandTracker;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/util/ServiceCommandTracker;-><init>(Lcom/sonymobile/home/util/ServiceCommandTracker$ServiceStopper;)V

    iput-object v0, p0, Lcom/sonymobile/home/AppWidgetRestoredService;->mCommandTracker:Lcom/sonymobile/home/util/ServiceCommandTracker;

    .line 49
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonymobile/home/AppWidgetRestoredService;->mCommandTracker:Lcom/sonymobile/home/util/ServiceCommandTracker;

    invoke-virtual {v0, p3}, Lcom/sonymobile/home/util/ServiceCommandTracker;->startCommand(I)V

    .line 55
    iget-object v0, p0, Lcom/sonymobile/home/AppWidgetRestoredService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/home/AppWidgetRestoredService$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/sonymobile/home/AppWidgetRestoredService$1;-><init>(Lcom/sonymobile/home/AppWidgetRestoredService;Landroid/content/Intent;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    const/4 v0, 0x3

    return v0
.end method

.method public onStopCommand(I)V
    .locals 0
    .param p1, "startId"    # I

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/AppWidgetRestoredService;->stopSelf(I)V

    .line 128
    return-void
.end method
