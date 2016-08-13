.class public Lcom/sonymobile/home/configuration/RemoteConfigurationService;
.super Landroid/app/Service;
.source "RemoteConfigurationService.java"

# interfaces
.implements Lcom/sonymobile/home/util/ServiceCommandTracker$ServiceStopper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/configuration/RemoteConfigurationService$RemoteConfigurationReceiver;,
        Lcom/sonymobile/home/configuration/RemoteConfigurationService$ConfigurationReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCommandTracker:Lcom/sonymobile/home/util/ServiceCommandTracker;

.field private final mErrorSessions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeApplication:Lcom/sonymobile/home/HomeApplication;

.field private final mMainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/sonymobile/home/configuration/RemoteConfigurationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->mMainHandler:Landroid/os/Handler;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->mErrorSessions:Ljava/util/Set;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/configuration/RemoteConfigurationService;Landroid/content/Intent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/configuration/RemoteConfigurationService;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->onHandleIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/home/configuration/RemoteConfigurationService;)Lcom/sonymobile/home/HomeApplication;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/configuration/RemoteConfigurationService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->mHomeApplication:Lcom/sonymobile/home/HomeApplication;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/home/configuration/RemoteConfigurationService;Ljava/util/List;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/configuration/RemoteConfigurationService;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/app/PendingIntent;
    .param p4, "x4"    # Landroid/content/Intent;
    .param p5, "x5"    # Landroid/net/Uri;

    .prologue
    .line 46
    invoke-direct/range {p0 .. p5}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->createConfig(Ljava/util/List;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonymobile/home/configuration/RemoteConfigurationService;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/configuration/RemoteConfigurationService;
    .param p1, "x1"    # Landroid/app/PendingIntent;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->sendGetCallbackIntent(Landroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/home/configuration/RemoteConfigurationService;)Lcom/sonymobile/home/util/ServiceCommandTracker;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/configuration/RemoteConfigurationService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->mCommandTracker:Lcom/sonymobile/home/util/ServiceCommandTracker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/home/configuration/RemoteConfigurationService;Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/configuration/RemoteConfigurationService;
    .param p1, "x1"    # Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->isConfigSuccessful(Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sonymobile/home/configuration/RemoteConfigurationService;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/configuration/RemoteConfigurationService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->mErrorSessions:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/home/configuration/RemoteConfigurationService;Landroid/app/PendingIntent;Landroid/content/Intent;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/configuration/RemoteConfigurationService;
    .param p1, "x1"    # Landroid/app/PendingIntent;
    .param p2, "x2"    # Landroid/content/Intent;
    .param p3, "x3"    # I
    .param p4, "x4"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->sendResponse(Landroid/app/PendingIntent;Landroid/content/Intent;IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonymobile/home/configuration/RemoteConfigurationService;Landroid/content/Intent;Landroid/app/PendingIntent;ILjava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/configuration/RemoteConfigurationService;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Landroid/app/PendingIntent;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/Exception;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->handleError(Landroid/content/Intent;Landroid/app/PendingIntent;ILjava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonymobile/home/configuration/RemoteConfigurationService;Lcom/sonymobile/home/configuration/Config;Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;Landroid/app/PendingIntent;ILandroid/content/Intent;)Lcom/sonymobile/home/model/OnConfigCompletedCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/configuration/RemoteConfigurationService;
    .param p1, "x1"    # Lcom/sonymobile/home/configuration/Config;
    .param p2, "x2"    # Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;
    .param p3, "x3"    # Landroid/app/PendingIntent;
    .param p4, "x4"    # I
    .param p5, "x5"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-direct/range {p0 .. p5}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->createOnConfigCompletedCallback(Lcom/sonymobile/home/configuration/Config;Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;Landroid/app/PendingIntent;ILandroid/content/Intent;)Lcom/sonymobile/home/model/OnConfigCompletedCallback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonymobile/home/configuration/RemoteConfigurationService;Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/configuration/RemoteConfigurationService;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->addIntentData(Landroid/content/Intent;Ljava/lang/String;Z)V

    return-void
.end method

.method private addIntentData(Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "responseIntent"    # Landroid/content/Intent;
    .param p2, "homeConfig"    # Ljava/lang/String;
    .param p3, "success"    # Z

    .prologue
    .line 451
    const-string v0, "configuration"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    invoke-direct {p0, p1, p3}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->addResponseResult(Landroid/content/Intent;Z)V

    .line 455
    return-void
.end method

.method private addResponseResult(Landroid/content/Intent;Z)V
    .locals 1
    .param p1, "responseIntent"    # Landroid/content/Intent;
    .param p2, "success"    # Z

    .prologue
    .line 458
    const-string v0, "success"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 459
    return-void
.end method

.method private closeSession(I)V
    .locals 2
    .param p1, "startId"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->mErrorSessions:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 173
    iget-object v0, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->mCommandTracker:Lcom/sonymobile/home/util/ServiceCommandTracker;

    invoke-virtual {v0, p1}, Lcom/sonymobile/home/util/ServiceCommandTracker;->finishCommand(I)V

    .line 174
    return-void
.end method

.method private createConfig(Ljava/util/List;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 9
    .param p2, "startId"    # I
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "responseIntent"    # Landroid/content/Intent;
    .param p5, "iconResourceProviderUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/model/Model;",
            ">;I",
            "Landroid/app/PendingIntent;",
            "Landroid/content/Intent;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .prologue
    .line 366
    .local p1, "models":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/model/Model;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v3, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/home/configuration/Config;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/home/model/Model;

    .line 368
    .local v8, "model":Lcom/sonymobile/home/model/Model;
    invoke-virtual {v8}, Lcom/sonymobile/home/model/Model;->createConfig()Lcom/sonymobile/home/configuration/Config;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 371
    .end local v8    # "model":Lcom/sonymobile/home/model/Model;
    :cond_0
    new-instance v0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$5;

    move-object v1, p0

    move-object v2, p5

    move-object v4, p4

    move-object v5, p3

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/configuration/RemoteConfigurationService$5;-><init>(Lcom/sonymobile/home/configuration/RemoteConfigurationService;Landroid/net/Uri;Ljava/util/ArrayList;Landroid/content/Intent;Landroid/app/PendingIntent;I)V

    .line 398
    .local v0, "getConfigTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/String;>;"
    invoke-static {}, Lcom/sonymobile/home/storage/StorageManager;->getStorageExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 399
    return-void
.end method

.method private createOnConfigCompletedCallback(Lcom/sonymobile/home/configuration/Config;Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;Landroid/app/PendingIntent;ILandroid/content/Intent;)Lcom/sonymobile/home/model/OnConfigCompletedCallback;
    .locals 7
    .param p1, "config"    # Lcom/sonymobile/home/configuration/Config;
    .param p2, "homeConfigJsonParser"    # Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "startId"    # I
    .param p5, "responseIntent"    # Landroid/content/Intent;

    .prologue
    .line 234
    new-instance v0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/configuration/RemoteConfigurationService$3;-><init>(Lcom/sonymobile/home/configuration/RemoteConfigurationService;Lcom/sonymobile/home/configuration/Config;Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;ILandroid/app/PendingIntent;Landroid/content/Intent;)V

    return-object v0
.end method

.method private getConfig(ILandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 7
    .param p1, "startId"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "iconResourceProvider"    # Ljava/lang/String;

    .prologue
    .line 409
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 410
    .local v5, "responseIntent":Landroid/content/Intent;
    if-eqz p3, :cond_0

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 411
    .local v6, "iconResourceProviderUri":Landroid/net/Uri;
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->mHomeApplication:Lcom/sonymobile/home/HomeApplication;

    invoke-virtual {v0}, Lcom/sonymobile/home/HomeApplication;->getModels()Ljava/util/List;

    move-result-object v2

    .line 412
    .local v2, "models":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/model/Model;>;"
    new-instance v0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$6;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/configuration/RemoteConfigurationService$6;-><init>(Lcom/sonymobile/home/configuration/RemoteConfigurationService;Ljava/util/List;ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/net/Uri;)V

    invoke-static {v2, v0}, Lcom/sonymobile/home/model/Model;->waitForModelsToBeLoaded(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 419
    return-void

    .line 410
    .end local v2    # "models":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/model/Model;>;"
    .end local v6    # "iconResourceProviderUri":Landroid/net/Uri;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private getVerizonHomeScreen(Landroid/app/PendingIntent;I)V
    .locals 2
    .param p1, "callbackIntent"    # Landroid/app/PendingIntent;
    .param p2, "startId"    # I

    .prologue
    .line 427
    iget-object v1, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->mHomeApplication:Lcom/sonymobile/home/HomeApplication;

    invoke-virtual {v1}, Lcom/sonymobile/home/HomeApplication;->getDesktopModel()Lcom/sonymobile/home/desktop/DesktopModel;

    move-result-object v0

    .line 428
    .local v0, "desktopModel":Lcom/sonymobile/home/desktop/DesktopModel;
    new-instance v1, Lcom/sonymobile/home/configuration/RemoteConfigurationService$7;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/sonymobile/home/configuration/RemoteConfigurationService$7;-><init>(Lcom/sonymobile/home/configuration/RemoteConfigurationService;Lcom/sonymobile/home/desktop/DesktopModel;Landroid/app/PendingIntent;I)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/desktop/DesktopModel;->addOnLoadedRunnable(Ljava/lang/Runnable;)V

    .line 447
    return-void
.end method

.method private handleError(Landroid/content/Intent;Landroid/app/PendingIntent;ILjava/lang/Exception;)V
    .locals 3
    .param p1, "responseIntent"    # Landroid/content/Intent;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "startId"    # I
    .param p4, "exception"    # Ljava/lang/Exception;

    .prologue
    const/4 v2, 0x0

    .line 331
    iget-object v0, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->mErrorSessions:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-direct {p0, p2, p1, p3, v2}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->sendResponse(Landroid/app/PendingIntent;Landroid/content/Intent;IZ)V

    .line 335
    sget-object v0, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->TAG:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p4, v0, v1}, Lcom/sonymobile/home/configuration/ConfigExceptionHandler;->trackException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    return-void
.end method

.method private isConfigSuccessful(Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;)Z
    .locals 5
    .param p1, "homeConfigJsonParser"    # Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;

    .prologue
    .line 339
    const/4 v3, 0x1

    .line 340
    .local v3, "isConfigSuccessful":Z
    invoke-virtual {p1}, Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;->getLayerConfigs()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/configuration/Config;

    .line 341
    .local v0, "config":Lcom/sonymobile/home/configuration/Config;
    invoke-virtual {v0}, Lcom/sonymobile/home/configuration/Config;->isConfigDone()Z

    move-result v2

    .line 342
    .local v2, "isConfigDone":Z
    and-int/2addr v3, v2

    .line 345
    if-nez v3, :cond_0

    .line 346
    const/4 v4, 0x0

    .line 349
    .end local v0    # "config":Lcom/sonymobile/home/configuration/Config;
    .end local v2    # "isConfigDone":Z
    :goto_0
    return v4

    :cond_1
    move v4, v3

    goto :goto_0
.end method

.method private onHandleIntent(Landroid/content/Intent;I)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const/4 v8, 0x0

    .line 103
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "action":Ljava/lang/String;
    const/4 v7, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 145
    :goto_1
    return-void

    .line 105
    :sswitch_0
    const-string v9, "com.sonymobile.home.SET_HOME_SCREEN"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v7, v8

    goto :goto_0

    :sswitch_1
    const-string v9, "com.sonymobile.home.GET_HOME_SCREEN"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :sswitch_2
    const-string v9, "com.sonymobile.home.RESTORE_HOME_SCREEN"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v7, 0x2

    goto :goto_0

    :sswitch_3
    const-string v9, "com.sonymobile.home.action.SET_CONFIGURATION"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v7, 0x3

    goto :goto_0

    :sswitch_4
    const-string v9, "com.sonymobile.home.action.GET_CONFIGURATION"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v7, 0x4

    goto :goto_0

    .line 107
    :pswitch_0
    const-string v7, "configuration"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "jsonConfigurationString":Ljava/lang/String;
    invoke-direct {p0, v3, p2}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->setVerizonHomeScreen(Ljava/lang/String;I)V

    goto :goto_1

    .line 113
    .end local v3    # "jsonConfigurationString":Ljava/lang/String;
    :pswitch_1
    const-string v7, "callback"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 115
    .local v2, "intentCallback":Landroid/app/PendingIntent;
    invoke-direct {p0, v2, p2}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->getVerizonHomeScreen(Landroid/app/PendingIntent;I)V

    goto :goto_1

    .line 119
    .end local v2    # "intentCallback":Landroid/app/PendingIntent;
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->restoreVerizonHomeScreen(I)V

    goto :goto_1

    .line 123
    :pswitch_3
    const-string v7, "configuration"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 125
    .local v6, "setConfigJsonString":Ljava/lang/String;
    const-string v7, "retain"

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 127
    .local v5, "retainState":Z
    const-string v7, "callback"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 129
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    invoke-direct {p0, v6, v4, p2, v5}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->setConfig(Ljava/lang/String;Landroid/app/PendingIntent;IZ)V

    goto :goto_1

    .line 134
    .end local v4    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v5    # "retainState":Z
    .end local v6    # "setConfigJsonString":Ljava/lang/String;
    :pswitch_4
    const-string v7, "resourceProvider"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "iconResourceProvider":Ljava/lang/String;
    const-string v7, "callback"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 138
    .restart local v4    # "pendingIntent":Landroid/app/PendingIntent;
    invoke-direct {p0, p2, v4, v1}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->getConfig(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    goto :goto_1

    .line 105
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f7a70d4 -> :sswitch_4
        -0x4d95b6f4 -> :sswitch_1
        -0x174cbbe8 -> :sswitch_0
        0x787bf738 -> :sswitch_3
        0x7f12f3c4 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private restoreVerizonHomeScreen(I)V
    .locals 3
    .param p1, "startId"    # I

    .prologue
    .line 485
    new-instance v0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$8;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/configuration/RemoteConfigurationService$8;-><init>(Lcom/sonymobile/home/configuration/RemoteConfigurationService;)V

    .line 499
    .local v0, "restoreTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    invoke-static {}, Lcom/sonymobile/home/storage/StorageManager;->getStorageExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 500
    return-void
.end method

.method private sendGetCallbackIntent(Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 5
    .param p1, "callbackIntent"    # Landroid/app/PendingIntent;
    .param p2, "jsonDesktop"    # Ljava/lang/String;

    .prologue
    .line 463
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 464
    .local v0, "dataIntent":Landroid/content/Intent;
    const-string v2, "configuration"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    invoke-virtual {p0}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    .end local v0    # "dataIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 468
    :catch_0
    move-exception v1

    .line 469
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    sget-object v2, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.sonymobile.home.GET_HOME_SCREEN : Failed to send callback intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendResponse(Landroid/app/PendingIntent;Landroid/content/Intent;IZ)V
    .locals 4
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p2, "responseIntent"    # Landroid/content/Intent;
    .param p3, "startId"    # I
    .param p4, "success"    # Z

    .prologue
    const/4 v3, 0x1

    .line 158
    :try_start_0
    invoke-direct {p0, p2, p4}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->addResponseResult(Landroid/content/Intent;Z)V

    .line 159
    invoke-virtual {p0}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    invoke-direct {p0, p3}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->closeSession(I)V

    .line 164
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    sget-object v1, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->TAG:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/sonymobile/home/configuration/ConfigExceptionHandler;->trackException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setConfig(Ljava/lang/String;Landroid/app/PendingIntent;IZ)V
    .locals 6
    .param p1, "configuration"    # Ljava/lang/String;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "startId"    # I
    .param p4, "retainState"    # Z

    .prologue
    .line 272
    new-instance v0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/configuration/RemoteConfigurationService$4;-><init>(Lcom/sonymobile/home/configuration/RemoteConfigurationService;Ljava/lang/String;ZLandroid/app/PendingIntent;I)V

    .line 326
    .local v0, "setParsingTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/sonymobile/home/configuration/parser/jsonParser/HomeConfigJsonParser;>;"
    invoke-static {}, Lcom/sonymobile/home/storage/StorageManager;->getStorageExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 327
    return-void
.end method

.method private setVerizonHomeScreen(Ljava/lang/String;I)V
    .locals 4
    .param p1, "jsonConfiguration"    # Ljava/lang/String;
    .param p2, "startId"    # I

    .prologue
    .line 188
    iget-object v3, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->mHomeApplication:Lcom/sonymobile/home/HomeApplication;

    invoke-virtual {v3}, Lcom/sonymobile/home/HomeApplication;->getDesktopModels()Ljava/util/List;

    move-result-object v1

    .line 189
    .local v1, "desktopModels":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/desktop/DesktopModel;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/desktop/DesktopModel;

    .line 190
    .local v0, "desktopModel":Lcom/sonymobile/home/desktop/DesktopModel;
    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->setVerizonHomeScreenForModel(Ljava/lang/String;ILcom/sonymobile/home/desktop/DesktopModel;)V

    goto :goto_0

    .line 192
    .end local v0    # "desktopModel":Lcom/sonymobile/home/desktop/DesktopModel;
    :cond_0
    return-void
.end method

.method private setVerizonHomeScreenForModel(Ljava/lang/String;ILcom/sonymobile/home/desktop/DesktopModel;)V
    .locals 6
    .param p1, "jsonConfiguration"    # Ljava/lang/String;
    .param p2, "startId"    # I
    .param p3, "desktopModel"    # Lcom/sonymobile/home/desktop/DesktopModel;

    .prologue
    .line 197
    :try_start_0
    new-instance v2, Lcom/sonymobile/home/desktop/VerizonDesktopJsonParser;

    invoke-virtual {p0}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p3}, Lcom/sonymobile/home/desktop/DesktopModel;->getColumnSpan()I

    move-result v4

    invoke-virtual {p3}, Lcom/sonymobile/home/desktop/DesktopModel;->getRowSpan()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/sonymobile/home/desktop/VerizonDesktopJsonParser;-><init>(Landroid/content/Context;II)V

    .line 200
    .local v2, "jsonParser":Lcom/sonymobile/home/desktop/VerizonDesktopJsonParser;
    invoke-virtual {v2, p1}, Lcom/sonymobile/home/desktop/VerizonDesktopJsonParser;->createConfigFromJson(Ljava/lang/String;)Lcom/sonymobile/home/desktop/VerizonDesktopConfig;

    move-result-object v0

    .line 203
    .local v0, "desktopConfig":Lcom/sonymobile/home/desktop/VerizonDesktopConfig;
    new-instance v3, Lcom/sonymobile/home/configuration/RemoteConfigurationService$2;

    invoke-direct {v3, p0, p3, v0, p2}, Lcom/sonymobile/home/configuration/RemoteConfigurationService$2;-><init>(Lcom/sonymobile/home/configuration/RemoteConfigurationService;Lcom/sonymobile/home/desktop/DesktopModel;Lcom/sonymobile/home/desktop/VerizonDesktopConfig;I)V

    invoke-virtual {p3, v3}, Lcom/sonymobile/home/desktop/DesktopModel;->addOnLoadedRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v0    # "desktopConfig":Lcom/sonymobile/home/desktop/VerizonDesktopConfig;
    .end local v2    # "jsonParser":Lcom/sonymobile/home/desktop/VerizonDesktopJsonParser;
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    sget-object v3, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.sonymobile.home.SET_HOME_SCREEN : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v3, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->mCommandTracker:Lcom/sonymobile/home/util/ServiceCommandTracker;

    invoke-virtual {v3, p2}, Lcom/sonymobile/home/util/ServiceCommandTracker;->finishCommand(I)V

    goto :goto_0

    .line 222
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 510
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 66
    invoke-virtual {p0}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/HomeApplication;

    iput-object v0, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->mHomeApplication:Lcom/sonymobile/home/HomeApplication;

    .line 67
    new-instance v0, Lcom/sonymobile/home/util/ServiceCommandTracker;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/util/ServiceCommandTracker;-><init>(Lcom/sonymobile/home/util/ServiceCommandTracker$ServiceStopper;)V

    iput-object v0, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->mCommandTracker:Lcom/sonymobile/home/util/ServiceCommandTracker;

    .line 68
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->mCommandTracker:Lcom/sonymobile/home/util/ServiceCommandTracker;

    .line 74
    iget-object v0, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->mErrorSessions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 75
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "serviceIntent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->mCommandTracker:Lcom/sonymobile/home/util/ServiceCommandTracker;

    invoke-virtual {v0, p3}, Lcom/sonymobile/home/util/ServiceCommandTracker;->startCommand(I)V

    .line 81
    iget-object v0, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/home/configuration/RemoteConfigurationService$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/sonymobile/home/configuration/RemoteConfigurationService$1;-><init>(Lcom/sonymobile/home/configuration/RemoteConfigurationService;Landroid/content/Intent;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    const/4 v0, 0x3

    return v0
.end method

.method public onStopCommand(I)V
    .locals 0
    .param p1, "startId"    # I

    .prologue
    .line 504
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->stopSelf(I)V

    .line 505
    return-void
.end method
