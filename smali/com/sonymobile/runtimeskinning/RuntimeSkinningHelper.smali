.class public Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;
.super Ljava/lang/Object;
.source "RuntimeSkinningHelper.java"


# static fields
.field private static final IMPLEMENTATIONS:[Lcom/sonymobile/runtimeskinning/SkinGlue;


# instance fields
.field private mSkinGlue:Lcom/sonymobile/runtimeskinning/SkinGlue;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sonymobile/runtimeskinning/SkinGlue;

    const/4 v1, 0x0

    new-instance v2, Lcom/sonymobile/runtimeskinning/SkinGlueV21;

    invoke-direct {v2}, Lcom/sonymobile/runtimeskinning/SkinGlueV21;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->IMPLEMENTATIONS:[Lcom/sonymobile/runtimeskinning/SkinGlue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public getCurrentSkin(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 88
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->getSkinGlue(Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/SkinGlue;

    move-result-object v0

    .line 89
    .local v0, "glue":Lcom/sonymobile/runtimeskinning/SkinGlue;
    invoke-interface {v0, p1}, Lcom/sonymobile/runtimeskinning/SkinGlue;->myUserId(Landroid/content/Context;)I

    move-result v4

    invoke-interface {v0, p1, v4}, Lcom/sonymobile/runtimeskinning/SkinGlue;->getSkin(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 91
    .local v3, "skinPackage":Landroid/content/pm/PackageInfo;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 94
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 99
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    return-object v3

    .line 95
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method final declared-synchronized getSkinGlue(Landroid/content/Context;)Lcom/sonymobile/runtimeskinning/SkinGlue;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->mSkinGlue:Lcom/sonymobile/runtimeskinning/SkinGlue;

    if-nez v4, :cond_0

    .line 134
    sget-object v0, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->IMPLEMENTATIONS:[Lcom/sonymobile/runtimeskinning/SkinGlue;

    .local v0, "arr$":[Lcom/sonymobile/runtimeskinning/SkinGlue;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 135
    .local v1, "glue":Lcom/sonymobile/runtimeskinning/SkinGlue;
    invoke-interface {v1, p1}, Lcom/sonymobile/runtimeskinning/SkinGlue;->isApplicable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    iput-object v1, p0, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->mSkinGlue:Lcom/sonymobile/runtimeskinning/SkinGlue;

    .line 141
    .end local v0    # "arr$":[Lcom/sonymobile/runtimeskinning/SkinGlue;
    .end local v1    # "glue":Lcom/sonymobile/runtimeskinning/SkinGlue;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->mSkinGlue:Lcom/sonymobile/runtimeskinning/SkinGlue;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->mSkinGlue:Lcom/sonymobile/runtimeskinning/SkinGlue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v4

    .line 134
    .restart local v0    # "arr$":[Lcom/sonymobile/runtimeskinning/SkinGlue;
    .restart local v1    # "glue":Lcom/sonymobile/runtimeskinning/SkinGlue;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    .end local v0    # "arr$":[Lcom/sonymobile/runtimeskinning/SkinGlue;
    .end local v1    # "glue":Lcom/sonymobile/runtimeskinning/SkinGlue;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_2
    :try_start_1
    sget-object v4, Lcom/sonymobile/runtimeskinning/SkinGlue;->DISABLED:Lcom/sonymobile/runtimeskinning/SkinGlue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 133
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
