.class Lcom/sonymobile/runtimeskinning/SkinGlueV21;
.super Ljava/lang/Object;
.source "SkinGlueV21.java"

# interfaces
.implements Lcom/sonymobile/runtimeskinning/SkinGlue;


# instance fields
.field private mFieldConfigSkinPackage:Ljava/lang/reflect/Field;

.field private mFieldIsSkin:Ljava/lang/reflect/Field;

.field private mFieldIsVerifiedSkin:Ljava/lang/reflect/Field;

.field private mMethodGetRuntimeSkin:Ljava/lang/reflect/Method;

.field private mMethodSetRuntimeSkin:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized init()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 198
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->mFieldIsSkin:Ljava/lang/reflect/Field;

    if-nez v2, :cond_0

    .line 199
    const-class v2, Landroid/content/pm/PackageInfo;

    const-string v3, "isSkin"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->mFieldIsSkin:Ljava/lang/reflect/Field;

    .line 201
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->mFieldIsVerifiedSkin:Ljava/lang/reflect/Field;

    if-nez v2, :cond_1

    .line 202
    const-class v2, Landroid/content/pm/PackageInfo;

    const-string v3, "isVerifiedSkin"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->mFieldIsVerifiedSkin:Ljava/lang/reflect/Field;

    .line 205
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->mFieldConfigSkinPackage:Ljava/lang/reflect/Field;

    if-nez v2, :cond_2

    .line 206
    const-class v2, Landroid/content/pm/ActivityInfo;

    const-string v3, "CONFIG_SKIN_PACKAGE"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->mFieldConfigSkinPackage:Ljava/lang/reflect/Field;

    .line 209
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->mMethodGetRuntimeSkin:Ljava/lang/reflect/Method;

    if-nez v2, :cond_3

    .line 210
    const-class v2, Landroid/content/pm/IPackageManager;

    const-string v3, "getRuntimeSkin"

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->mMethodGetRuntimeSkin:Ljava/lang/reflect/Method;

    .line 213
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->mMethodSetRuntimeSkin:Ljava/lang/reflect/Method;

    if-nez v2, :cond_4

    .line 214
    const-class v2, Landroid/content/pm/IPackageManager;

    const-string v3, "setRuntimeSkin"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->mMethodSetRuntimeSkin:Ljava/lang/reflect/Method;

    .line 217
    :cond_4
    iget-object v2, p0, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->mFieldIsSkin:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->mFieldIsVerifiedSkin:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->mFieldConfigSkinPackage:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->mMethodGetRuntimeSkin:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->mMethodSetRuntimeSkin:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_5

    :goto_0
    monitor-exit p0

    return v0

    :cond_5
    move v0, v1

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getSkin(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->init()Z

    move-result v3

    if-nez v3, :cond_0

    .line 169
    const/4 v2, 0x0

    .line 175
    :goto_0
    return-object v2

    .line 171
    :cond_0
    new-instance v0, Lcom/sonymobile/runtimeskinning/ExceptionHandler;

    invoke-direct {v0}, Lcom/sonymobile/runtimeskinning/ExceptionHandler;-><init>()V

    .line 172
    .local v0, "eh":Lcom/sonymobile/runtimeskinning/ExceptionHandler;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 173
    .local v1, "ipm":Landroid/content/pm/IPackageManager;
    iget-object v3, p0, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->mMethodGetRuntimeSkin:Ljava/lang/reflect/Method;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v1, v0, v4, v5}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 174
    .local v2, "result":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/sonymobile/runtimeskinning/ExceptionHandler;->reThrow()V

    goto :goto_0
.end method

.method public isApplicable(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->init()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public myUserId(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method
