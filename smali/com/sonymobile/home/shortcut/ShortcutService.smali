.class public Lcom/sonymobile/home/shortcut/ShortcutService;
.super Landroid/app/Service;
.source "ShortcutService.java"

# interfaces
.implements Lcom/sonymobile/home/util/ServiceCommandTracker$ServiceStopper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/shortcut/ShortcutService$InstallShortcutReceiver;
    }
.end annotation


# instance fields
.field private mCommandTracker:Lcom/sonymobile/home/util/ServiceCommandTracker;

.field private mHomeApplication:Lcom/sonymobile/home/HomeApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/shortcut/ShortcutService;)Lcom/sonymobile/home/HomeApplication;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/shortcut/ShortcutService;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/home/shortcut/ShortcutService;->mHomeApplication:Lcom/sonymobile/home/HomeApplication;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/home/shortcut/ShortcutService;Landroid/os/Bundle;Lcom/sonymobile/home/desktop/DesktopModel;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/shortcut/ShortcutService;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # Lcom/sonymobile/home/desktop/DesktopModel;
    .param p3, "x3"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/shortcut/ShortcutService;->onHandleIntent(Landroid/os/Bundle;Lcom/sonymobile/home/desktop/DesktopModel;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/home/shortcut/ShortcutService;)Lcom/sonymobile/home/util/ServiceCommandTracker;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/shortcut/ShortcutService;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/home/shortcut/ShortcutService;->mCommandTracker:Lcom/sonymobile/home/util/ServiceCommandTracker;

    return-object v0
.end method

.method private displayShortcutToast(Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;)V
    .locals 3
    .param p1, "status"    # Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;

    .prologue
    .line 116
    iget-object v1, p0, Lcom/sonymobile/home/shortcut/ShortcutService;->mHomeApplication:Lcom/sonymobile/home/HomeApplication;

    invoke-virtual {p1, v1}, Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "toastMessage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/sonymobile/home/shortcut/ShortcutService;->mHomeApplication:Lcom/sonymobile/home/HomeApplication;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 120
    :cond_0
    return-void
.end method

.method private static isDefaultHomeScreen(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 143
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "pkgNameThisApp":Ljava/lang/String;
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_1

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android"

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method private static isValidShortcutIntent(Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "extrasBundle"    # Landroid/os/Bundle;

    .prologue
    .line 153
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "action":Ljava/lang/String;
    :goto_0
    const-string v1, "ShortcutService.INSTALL_SHORTCUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 153
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 154
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private onHandleIntent(Landroid/os/Bundle;Lcom/sonymobile/home/desktop/DesktopModel;I)V
    .locals 4
    .param p1, "extrasBundle"    # Landroid/os/Bundle;
    .param p2, "desktopModel"    # Lcom/sonymobile/home/desktop/DesktopModel;
    .param p3, "startId"    # I

    .prologue
    .line 99
    new-instance v0, Lcom/sonymobile/home/shortcut/ShortcutService$3;

    invoke-direct {v0, p0, p3}, Lcom/sonymobile/home/shortcut/ShortcutService$3;-><init>(Lcom/sonymobile/home/shortcut/ShortcutService;I)V

    .line 105
    .local v0, "callback":Lcom/sonymobile/home/storage/OnWriteCompletedCallback;
    iget-object v3, p0, Lcom/sonymobile/home/shortcut/ShortcutService;->mHomeApplication:Lcom/sonymobile/home/HomeApplication;

    invoke-static {v3}, Lcom/sonymobile/home/storage/StorageManager;->getShortcutManager(Landroid/content/Context;)Lcom/sonymobile/home/shortcut/ShortcutManager;

    move-result-object v1

    .line 106
    .local v1, "shortcutManager":Lcom/sonymobile/home/shortcut/ShortcutManager;
    invoke-virtual {v1, p1, p2, v0}, Lcom/sonymobile/home/shortcut/ShortcutManager;->installShortcut(Landroid/os/Bundle;Lcom/sonymobile/home/desktop/DesktopModel;Lcom/sonymobile/home/storage/OnWriteCompletedCallback;)Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;

    move-result-object v2

    .line 108
    .local v2, "status":Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;
    invoke-direct {p0, v2}, Lcom/sonymobile/home/shortcut/ShortcutService;->displayShortcutToast(Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;)V

    .line 109
    sget-object v3, Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;->CREATED:Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;

    if-eq v2, v3, :cond_0

    .line 111
    iget-object v3, p0, Lcom/sonymobile/home/shortcut/ShortcutService;->mCommandTracker:Lcom/sonymobile/home/util/ServiceCommandTracker;

    invoke-virtual {v3, p3}, Lcom/sonymobile/home/util/ServiceCommandTracker;->finishCommand(I)V

    .line 113
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 54
    invoke-virtual {p0}, Lcom/sonymobile/home/shortcut/ShortcutService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/HomeApplication;

    iput-object v0, p0, Lcom/sonymobile/home/shortcut/ShortcutService;->mHomeApplication:Lcom/sonymobile/home/HomeApplication;

    .line 55
    new-instance v0, Lcom/sonymobile/home/util/ServiceCommandTracker;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/util/ServiceCommandTracker;-><init>(Lcom/sonymobile/home/util/ServiceCommandTracker$ServiceStopper;)V

    iput-object v0, p0, Lcom/sonymobile/home/shortcut/ShortcutService;->mCommandTracker:Lcom/sonymobile/home/util/ServiceCommandTracker;

    .line 56
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/shortcut/ShortcutService;->mCommandTracker:Lcom/sonymobile/home/util/ServiceCommandTracker;

    .line 62
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 66
    iget-object v1, p0, Lcom/sonymobile/home/shortcut/ShortcutService;->mCommandTracker:Lcom/sonymobile/home/util/ServiceCommandTracker;

    invoke-virtual {v1, p3}, Lcom/sonymobile/home/util/ServiceCommandTracker;->startCommand(I)V

    .line 68
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 69
    .local v0, "extrasBundle":Landroid/os/Bundle;
    :goto_0
    invoke-static {p0}, Lcom/sonymobile/home/shortcut/ShortcutService;->isDefaultHomeScreen(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, v0}, Lcom/sonymobile/home/shortcut/ShortcutService;->isValidShortcutIntent(Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/sonymobile/home/shortcut/ShortcutService;->mHomeApplication:Lcom/sonymobile/home/HomeApplication;

    new-instance v2, Lcom/sonymobile/home/shortcut/ShortcutService$1;

    invoke-direct {v2, p0, v0, p3}, Lcom/sonymobile/home/shortcut/ShortcutService$1;-><init>(Lcom/sonymobile/home/shortcut/ShortcutService;Landroid/os/Bundle;I)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/HomeApplication;->customize(Lcom/sonymobile/home/HomeApplication$CustomizationListener;)V

    .line 94
    :goto_1
    const/4 v1, 0x3

    return v1

    .line 68
    .end local v0    # "extrasBundle":Landroid/os/Bundle;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 86
    .restart local v0    # "extrasBundle":Landroid/os/Bundle;
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/home/shortcut/ShortcutService;->mHomeApplication:Lcom/sonymobile/home/HomeApplication;

    invoke-virtual {v1}, Lcom/sonymobile/home/HomeApplication;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sonymobile/home/shortcut/ShortcutService$2;

    invoke-direct {v2, p0, p3}, Lcom/sonymobile/home/shortcut/ShortcutService$2;-><init>(Lcom/sonymobile/home/shortcut/ShortcutService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public onStopCommand(I)V
    .locals 0
    .param p1, "startId"    # I

    .prologue
    .line 130
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/shortcut/ShortcutService;->stopSelf(I)V

    .line 131
    return-void
.end method
