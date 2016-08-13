.class public Lcom/sonymobile/home/runtimeskinning/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/sonymobile/home/runtimeskinning/ThemeUtils;

    invoke-static {v0}, Lcom/sonymobile/home/util/HomeDebug;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/runtimeskinning/ThemeUtils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentThemePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    new-instance v2, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;

    invoke-direct {v2}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;-><init>()V

    .line 49
    .local v2, "runtimeSkinningHelper":Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;
    const/4 v3, 0x0

    .line 51
    .local v3, "themePackage":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2, p0}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->getCurrentSkin(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 52
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 53
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-object v3

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/sonymobile/home/runtimeskinning/ThemeUtils;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Failed to get current theme package name"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getThemeColor(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultColor"    # I

    .prologue
    .line 31
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 32
    .local v1, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 34
    .local v0, "theme":Landroid/content/res/Resources$Theme;
    const v2, 0x1010433

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    iget p1, v1, Landroid/util/TypedValue;->data:I

    .line 37
    .end local p1    # "defaultColor":I
    :cond_0
    return p1
.end method
