.class Lcom/sonymobile/home/model/PackageHandler$LauncherActivityAppInfo;
.super Ljava/lang/Object;
.source "PackageHandler.java"

# interfaces
.implements Lcom/sonymobile/home/model/PackageHandler$AppInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/model/PackageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LauncherActivityAppInfo"
.end annotation


# instance fields
.field private final mDisableable:Z

.field private final mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/LauncherActivityInfo;Z)V
    .locals 0
    .param p1, "info"    # Landroid/content/pm/LauncherActivityInfo;
    .param p2, "disableable"    # Z

    .prologue
    .line 2258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2259
    iput-object p1, p0, Lcom/sonymobile/home/model/PackageHandler$LauncherActivityAppInfo;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    .line 2260
    iput-boolean p2, p0, Lcom/sonymobile/home/model/PackageHandler$LauncherActivityAppInfo;->mDisableable:Z

    .line 2261
    return-void
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 2286
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$LauncherActivityAppInfo;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "density"    # I

    .prologue
    .line 2281
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$LauncherActivityAppInfo;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherActivityInfo;->getBadgedIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getInstallTime()J
    .locals 2

    .prologue
    .line 2301
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$LauncherActivityAppInfo;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getFirstInstallTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2291
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$LauncherActivityAppInfo;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 2296
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$LauncherActivityAppInfo;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public isDisableable()Z
    .locals 1

    .prologue
    .line 2271
    iget-boolean v0, p0, Lcom/sonymobile/home/model/PackageHandler$LauncherActivityAppInfo;->mDisableable:Z

    return v0
.end method

.method public isSystemApplication()Z
    .locals 1

    .prologue
    .line 2265
    iget-object v0, p0, Lcom/sonymobile/home/model/PackageHandler$LauncherActivityAppInfo;->mLauncherActivityInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
