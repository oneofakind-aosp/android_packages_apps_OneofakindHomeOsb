.class public final Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;
.super Lcom/sonyericsson/advancedwidget/framework/Proxy;
.source "AdvWidgetProxy.java"


# instance fields
.field private mCreated:Z

.field private mFocused:Z

.field private mId:Ljava/util/UUID;

.field private mResumed:Z

.field private mStarted:Z


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "comm":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/advancedwidget/framework/Proxy;-><init>(Ljava/util/Map;Z)V

    .line 268
    return-void
.end method

.method public static createAdvWidgetClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "widgetContext"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 364
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static createAdvWidgetProxy(Ljava/lang/Class;)Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 342
    .local v1, "proxy":Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;
    if-eqz p0, :cond_0

    .line 344
    :try_start_0
    new-instance v2, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-direct {v2, v3}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1    # "proxy":Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;
    .local v2, "proxy":Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;
    move-object v1, v2

    .line 351
    .end local v2    # "proxy":Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;
    .restart local v1    # "proxy":Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;
    :cond_0
    :goto_0
    return-object v1

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/InstantiationException;
    const-string v3, "AdvWidgetProxy"

    const-string v4, "Failed to instantiate adv widget"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 347
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "AdvWidgetProxy"

    const-string v4, "Failed to access adv widget"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public configure(Landroid/content/Context;)I
    .locals 2
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 214
    const-string v1, "configure"

    invoke-virtual {p0, v1, p1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 215
    .local v0, "ret":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public customize(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "settings"    # Landroid/os/Bundle;

    .prologue
    .line 222
    const-string v1, "customize"

    invoke-virtual {p0, v1, p1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 223
    .local v0, "ret":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 226
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 233
    const-string v0, "getContentView"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getFrameworkVersion()I
    .locals 2

    .prologue
    .line 56
    const-string v0, "getFrameworkVersion"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSnapshot()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 240
    const-string v0, "getSnapshot"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getType()I
    .locals 2

    .prologue
    .line 249
    const-string v0, "getType"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mId:Ljava/util/UUID;

    return-object v0
.end method

.method public init(Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;)V
    .locals 1
    .param p1, "host"    # Lcom/sonyericsson/advancedwidget/framework/AdvWidgetHost;

    .prologue
    .line 81
    const-string v0, "init"

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public onConfigured(I)V
    .locals 2
    .param p1, "response"    # I

    .prologue
    .line 200
    const-string v0, "onConfigured"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-void
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mCreated:Z

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mCreated:Z

    .line 100
    const-string v0, "onCreate"

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_0
    return-void
.end method

.method public onDefocus()V
    .locals 2

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mFocused:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mResumed:Z

    if-eqz v0, :cond_0

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mFocused:Z

    .line 110
    const-string v0, "onDefocus"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mCreated:Z

    if-eqz v0, :cond_1

    .line 187
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mStarted:Z

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onStop()V

    .line 191
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mCreated:Z

    .line 192
    const-string v0, "onDestroy"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_1
    return-void
.end method

.method public onFocus()V
    .locals 2

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mFocused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mResumed:Z

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mFocused:Z

    .line 120
    const-string v0, "onFocus"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mResumed:Z

    if-eqz v0, :cond_1

    .line 149
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mFocused:Z

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onDefocus()V

    .line 153
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mResumed:Z

    .line 154
    const-string v0, "onPause"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mResumed:Z

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mResumed:Z

    .line 135
    const-string v0, "onResume"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mStarted:Z

    if-nez v0, :cond_0

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mStarted:Z

    .line 164
    const-string v0, "onStart"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mStarted:Z

    if-eqz v0, :cond_1

    .line 173
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mResumed:Z

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onPause()V

    .line 177
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mStarted:Z

    .line 178
    const-string v0, "onStop"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_1
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 207
    const-string v0, "onTrimMemory"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    return-void
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mCreated:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->onDestroy()V

    .line 91
    :cond_0
    const-string v0, "remove"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 257
    const-string v0, "setActivity"

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    return-void
.end method

.method public setId(Ljava/util/UUID;)V
    .locals 1
    .param p1, "id"    # Ljava/util/UUID;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->mId:Ljava/util/UUID;

    .line 65
    const-string v0, "setId"

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/advancedwidget/framework/AdvWidgetProxy;->call(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method
