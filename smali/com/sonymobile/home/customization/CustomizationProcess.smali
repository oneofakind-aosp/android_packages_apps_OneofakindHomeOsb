.class public Lcom/sonymobile/home/customization/CustomizationProcess;
.super Ljava/lang/Object;
.source "CustomizationProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/customization/CustomizationProcess$CustomizationRunner;,
        Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;,
        Lcom/sonymobile/home/customization/CustomizationProcess$CustomizeListener;
    }
.end annotation


# instance fields
.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mCustomizationCompleted:I

.field private final mCustomizationListeners:Lcom/sonymobile/home/util/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/home/util/ObserverList",
            "<",
            "Lcom/sonymobile/home/customization/CustomizationProcess$CustomizeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mCustomizations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/home/customization/Customization;",
            ">;"
        }
    .end annotation
.end field

.field private mStageAddedDuringUpgrade:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lcom/sonymobile/home/util/ObserverList;

    invoke-direct {v0}, Lcom/sonymobile/home/util/ObserverList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/customization/CustomizationProcess;->mCustomizationListeners:Lcom/sonymobile/home/util/ObserverList;

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/home/customization/CustomizationProcess;->mCustomizationCompleted:I

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/customization/CustomizationProcess;->mCustomizations:Ljava/util/ArrayList;

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/customization/CustomizationProcess;->mStageAddedDuringUpgrade:Z

    .line 498
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/customization/CustomizationProcess;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/customization/CustomizationProcess;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/sonymobile/home/customization/CustomizationProcess;->mStageAddedDuringUpgrade:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sonymobile/home/customization/CustomizationProcess;Landroid/content/Context;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/customization/CustomizationProcess;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/sonymobile/home/customization/CustomizationProcess;->getCustomizationsCompleted(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sonymobile/home/customization/CustomizationProcess;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/customization/CustomizationProcess;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonymobile/home/customization/CustomizationProcess;->mCustomizations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/home/customization/CustomizationProcess;Landroid/content/Context;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/customization/CustomizationProcess;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Z

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/customization/CustomizationProcess;->setStageAddedDuringUpgrade(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/home/customization/CustomizationProcess;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/customization/CustomizationProcess;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/sonymobile/home/customization/CustomizationProcess;->initStageAddedDuringUpgrade(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/home/customization/CustomizationProcess;Landroid/content/Context;Lcom/sonymobile/home/customization/Customization;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/customization/CustomizationProcess;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/sonymobile/home/customization/Customization;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/customization/CustomizationProcess;->isCustomizationCompleted(Landroid/content/Context;Lcom/sonymobile/home/customization/Customization;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sonymobile/home/customization/CustomizationProcess;Landroid/content/Context;ZLcom/sonymobile/home/customization/Customization;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/customization/CustomizationProcess;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lcom/sonymobile/home/customization/Customization;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/customization/CustomizationProcess;->setCustomizationComplete(Landroid/content/Context;ZLcom/sonymobile/home/customization/Customization;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonymobile/home/customization/CustomizationProcess;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/customization/CustomizationProcess;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/customization/CustomizationProcess;->notifyListenersComplete(ZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonymobile/home/customization/CustomizationProcess;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/customization/CustomizationProcess;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/sonymobile/home/customization/CustomizationProcess;->notifyListenersStarting()V

    return-void
.end method

.method static synthetic access$900(Lcom/sonymobile/home/customization/CustomizationProcess;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/customization/CustomizationProcess;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonymobile/home/customization/CustomizationProcess;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private customize(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonymobile/home/model/PackageHandler;",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/home/customization/Customization;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p3, "custs":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/home/customization/Customization;>;"
    iget-object v0, p0, Lcom/sonymobile/home/customization/CustomizationProcess;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sonymobile/home/customization/CustomizationProcess$CheckCustomizationDone;-><init>(Lcom/sonymobile/home/customization/CustomizationProcess;Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 243
    return-void
.end method

.method private getCustomizationsCompleted(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 296
    iget v1, p0, Lcom/sonymobile/home/customization/CustomizationProcess;->mCustomizationCompleted:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 297
    const-string v1, "cust_shared_prefs"

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 300
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "cust_completed"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/home/customization/CustomizationProcess;->mCustomizationCompleted:I

    .line 302
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    iget v1, p0, Lcom/sonymobile/home/customization/CustomizationProcess;->mCustomizationCompleted:I

    return v1
.end method

.method private initStageAddedDuringUpgrade(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 371
    const-string v1, "cust_shared_prefs"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 372
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "stage_added_during_upgrade"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/home/customization/CustomizationProcess;->mStageAddedDuringUpgrade:Z

    .line 373
    return-void
.end method

.method private isCustomizationCompleted(Landroid/content/Context;Lcom/sonymobile/home/customization/Customization;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cust"    # Lcom/sonymobile/home/customization/Customization;

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/sonymobile/home/customization/CustomizationProcess;->getCustomizationsCompleted(Landroid/content/Context;)I

    move-result v1

    .line 284
    .local v1, "custsCompleted":I
    invoke-interface {p2}, Lcom/sonymobile/home/customization/Customization;->getCustomizationIdentifier()I

    move-result v0

    .line 286
    .local v0, "custValue":I
    and-int v2, v0, v1

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private notifyListenersComplete(ZZ)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "didRun"    # Z

    .prologue
    .line 250
    new-instance v0, Lcom/sonymobile/home/customization/CustomizationProcess$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonymobile/home/customization/CustomizationProcess$1;-><init>(Lcom/sonymobile/home/customization/CustomizationProcess;ZZ)V

    .line 259
    .local v0, "runnable":Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;, "Lcom/sonymobile/home/util/ObserverList$DispatchRunnable<Lcom/sonymobile/home/customization/CustomizationProcess$CustomizeListener;>;"
    iget-object v1, p0, Lcom/sonymobile/home/customization/CustomizationProcess;->mCustomizationListeners:Lcom/sonymobile/home/util/ObserverList;

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/util/ObserverList;->notifyObservers(Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;)V

    .line 260
    return-void
.end method

.method private notifyListenersStarting()V
    .locals 2

    .prologue
    .line 263
    new-instance v0, Lcom/sonymobile/home/customization/CustomizationProcess$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/customization/CustomizationProcess$2;-><init>(Lcom/sonymobile/home/customization/CustomizationProcess;)V

    .line 272
    .local v0, "runnable":Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;, "Lcom/sonymobile/home/util/ObserverList$DispatchRunnable<Lcom/sonymobile/home/customization/CustomizationProcess$CustomizeListener;>;"
    iget-object v1, p0, Lcom/sonymobile/home/customization/CustomizationProcess;->mCustomizationListeners:Lcom/sonymobile/home/util/ObserverList;

    invoke-virtual {v1, v0}, Lcom/sonymobile/home/util/ObserverList;->notifyObservers(Lcom/sonymobile/home/util/ObserverList$DispatchRunnable;)V

    .line 273
    return-void
.end method

.method public static readCustomization(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 228
    const-string v1, "cust_shared_prefs"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 230
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "cust_completed"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private setCustomizationBitmask(Landroid/content/Context;IZ)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmask"    # I
    .param p3, "on"    # Z

    .prologue
    const/4 v4, 0x0

    .line 313
    const-string v2, "cust_shared_prefs"

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 316
    .local v0, "prefs":Landroid/content/SharedPreferences;
    iget v2, p0, Lcom/sonymobile/home/customization/CustomizationProcess;->mCustomizationCompleted:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 317
    const-string v2, "cust_completed"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/home/customization/CustomizationProcess;->mCustomizationCompleted:I

    .line 320
    :cond_0
    if-eqz p3, :cond_2

    .line 321
    iget v2, p0, Lcom/sonymobile/home/customization/CustomizationProcess;->mCustomizationCompleted:I

    or-int/2addr v2, p2

    iput v2, p0, Lcom/sonymobile/home/customization/CustomizationProcess;->mCustomizationCompleted:I

    .line 325
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "cust_completed"

    iget v4, p0, Lcom/sonymobile/home/customization/CustomizationProcess;->mCustomizationCompleted:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 327
    .local v1, "success":Z
    if-nez v1, :cond_1

    .line 328
    const-string v2, "CustomizationProcess"

    const-string v3, "Couldn\'t write preferences"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_1
    return-void

    .line 323
    .end local v1    # "success":Z
    :cond_2
    iget v2, p0, Lcom/sonymobile/home/customization/CustomizationProcess;->mCustomizationCompleted:I

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/sonymobile/home/customization/CustomizationProcess;->mCustomizationCompleted:I

    goto :goto_0
.end method

.method private setCustomizationComplete(Landroid/content/Context;ZLcom/sonymobile/home/customization/Customization;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "completed"    # Z
    .param p3, "cust"    # Lcom/sonymobile/home/customization/Customization;

    .prologue
    .line 357
    invoke-interface {p3}, Lcom/sonymobile/home/customization/Customization;->getCustomizationIdentifier()I

    move-result v0

    .line 359
    .local v0, "custValue":I
    invoke-direct {p0, p1, v0, p2}, Lcom/sonymobile/home/customization/CustomizationProcess;->setCustomizationBitmask(Landroid/content/Context;IZ)V

    .line 360
    return-void
.end method

.method private setStageAddedDuringUpgrade(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "added"    # Z

    .prologue
    .line 384
    const-string v2, "cust_shared_prefs"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 385
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "stage_added_during_upgrade"

    invoke-interface {v2, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 387
    .local v1, "success":Z
    iput-boolean p2, p0, Lcom/sonymobile/home/customization/CustomizationProcess;->mStageAddedDuringUpgrade:Z

    .line 389
    if-nez v1, :cond_0

    .line 390
    const-string v2, "CustomizationProcess"

    const-string v3, "Could not write move desktop items to stage preference"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    return-void
.end method


# virtual methods
.method public addCustomizationListener(Lcom/sonymobile/home/customization/CustomizationProcess$CustomizeListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonymobile/home/customization/CustomizationProcess$CustomizeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sonymobile/home/customization/CustomizationProcess;->mCustomizationListeners:Lcom/sonymobile/home/util/ObserverList;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/util/ObserverList;->registerObserver(Ljava/lang/Object;Landroid/os/Handler;)V

    .line 161
    return-void
.end method

.method public customize(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/customization/CustomizationFactory;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p3, "factory"    # Lcom/sonymobile/home/customization/CustomizationFactory;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sonymobile/home/customization/CustomizationProcess;->mCustomizations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 184
    invoke-interface {p3}, Lcom/sonymobile/home/customization/CustomizationFactory;->getCustomizations()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/home/customization/CustomizationProcess;->customize(Landroid/content/Context;Lcom/sonymobile/home/model/PackageHandler;Ljava/util/List;)V

    .line 185
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sonymobile/home/customization/CustomizationProcess;->mCustomizations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 147
    iget-object v0, p0, Lcom/sonymobile/home/customization/CustomizationProcess;->mCustomizationListeners:Lcom/sonymobile/home/util/ObserverList;

    invoke-virtual {v0}, Lcom/sonymobile/home/util/ObserverList;->unregisterAll()V

    .line 148
    iget-object v0, p0, Lcom/sonymobile/home/customization/CustomizationProcess;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/sonymobile/home/customization/CustomizationProcess;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 150
    iget-object v0, p0, Lcom/sonymobile/home/customization/CustomizationProcess;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 151
    return-void
.end method

.method public finalizeCustomization()V
    .locals 3

    .prologue
    .line 194
    iget-object v2, p0, Lcom/sonymobile/home/customization/CustomizationProcess;->mCustomizations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/customization/Customization;

    .line 195
    .local v0, "customization":Lcom/sonymobile/home/customization/Customization;
    invoke-interface {v0}, Lcom/sonymobile/home/customization/Customization;->finalizeCustomization()V

    goto :goto_0

    .line 197
    .end local v0    # "customization":Lcom/sonymobile/home/customization/Customization;
    :cond_0
    return-void
.end method

.method public initialize()V
    .locals 3

    .prologue
    .line 131
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "CustomizationProcess"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sonymobile/home/customization/CustomizationProcess;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 132
    iget-object v1, p0, Lcom/sonymobile/home/customization/CustomizationProcess;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 134
    iget-object v1, p0, Lcom/sonymobile/home/customization/CustomizationProcess;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 135
    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 137
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sonymobile/home/customization/CustomizationProcess;->mBackgroundHandler:Landroid/os/Handler;

    .line 138
    return-void
.end method
