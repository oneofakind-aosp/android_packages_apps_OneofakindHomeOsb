.class Lcom/sonymobile/home/model/PackageHandler$LauncherAppsCallback;
.super Landroid/content/pm/LauncherApps$Callback;
.source "PackageHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/model/PackageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LauncherAppsCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/model/PackageHandler;


# direct methods
.method private constructor <init>(Lcom/sonymobile/home/model/PackageHandler;)V
    .locals 0

    .prologue
    .line 2305
    iput-object p1, p0, Lcom/sonymobile/home/model/PackageHandler$LauncherAppsCallback;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    invoke-direct {p0}, Landroid/content/pm/LauncherApps$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/model/PackageHandler;Lcom/sonymobile/home/model/PackageHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/model/PackageHandler;
    .param p2, "x1"    # Lcom/sonymobile/home/model/PackageHandler$1;

    .prologue
    .line 2305
    invoke-direct {p0, p1}, Lcom/sonymobile/home/model/PackageHandler$LauncherAppsCallback;-><init>(Lcom/sonymobile/home/model/PackageHandler;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 2309
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$LauncherAppsCallback;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    # invokes: Lcom/sonymobile/home/model/PackageHandler;->packageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    invoke-static {v0, p1, p2}, Lcom/sonymobile/home/model/PackageHandler;->access$4200(Lcom/sonymobile/home/model/PackageHandler;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 2310
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 2319
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$LauncherAppsCallback;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/model/PackageHandler;->packageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 2320
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 2314
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$LauncherAppsCallback;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/home/model/PackageHandler;->packageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 2315
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 5
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "replacing"    # Z

    .prologue
    .line 2324
    if-nez p3, :cond_1

    .line 2325
    iget-object v4, p0, Lcom/sonymobile/home/model/PackageHandler$LauncherAppsCallback;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    # invokes: Lcom/sonymobile/home/model/PackageHandler;->packagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;)V
    invoke-static {v4, p1, p2}, Lcom/sonymobile/home/model/PackageHandler;->access$4300(Lcom/sonymobile/home/model/PackageHandler;[Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 2331
    :cond_0
    return-void

    .line 2327
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 2328
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonymobile/home/model/PackageHandler$LauncherAppsCallback;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v4, v3, p2}, Lcom/sonymobile/home/model/PackageHandler;->packageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 2327
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 1
    .param p1, "packageNames"    # [Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "replacing"    # Z

    .prologue
    .line 2335
    if-nez p3, :cond_0

    .line 2340
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$LauncherAppsCallback;->this$0:Lcom/sonymobile/home/model/PackageHandler;

    # invokes: Lcom/sonymobile/home/model/PackageHandler;->packagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;)V
    invoke-static {v0, p1, p2}, Lcom/sonymobile/home/model/PackageHandler;->access$4400(Lcom/sonymobile/home/model/PackageHandler;[Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 2342
    :cond_0
    return-void
.end method
