.class public Lcom/sonymobile/home/desktop/WallpaperWorker;
.super Ljava/lang/Object;
.source "WallpaperWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/desktop/WallpaperWorker$1;,
        Lcom/sonymobile/home/desktop/WallpaperWorker$WallpaperHandler;,
        Lcom/sonymobile/home/desktop/WallpaperWorker$CommandAsyncParams;,
        Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetStepsAsyncParams;,
        Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParamsPool;,
        Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParams;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sWallpaperWorker:Lcom/sonymobile/home/desktop/WallpaperWorker;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mOffsetAsyncParamsPool:Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParamsPool;

.field private final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/sonymobile/home/desktop/WallpaperWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/desktop/WallpaperWorker;->TAG:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/sonymobile/home/desktop/WallpaperWorker;->sWallpaperWorker:Lcom/sonymobile/home/desktop/WallpaperWorker;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/desktop/WallpaperWorker;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 70
    new-instance v0, Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParamsPool;

    invoke-direct {v0}, Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParamsPool;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/WallpaperWorker;->mOffsetAsyncParamsPool:Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParamsPool;

    .line 71
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WallpaperWorker"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/WallpaperWorker;->mHandlerThread:Landroid/os/HandlerThread;

    .line 72
    iget-object v0, p0, Lcom/sonymobile/home/desktop/WallpaperWorker;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 73
    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/home/desktop/WallpaperWorker;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/WallpaperWorker;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/WallpaperWorker;->handleSetOffset(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/home/desktop/WallpaperWorker;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/WallpaperWorker;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/WallpaperWorker;->handleSetOffsetStep(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/home/desktop/WallpaperWorker;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/WallpaperWorker;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/sonymobile/home/desktop/WallpaperWorker;->handleCommand(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/home/desktop/WallpaperWorker;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/desktop/WallpaperWorker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/desktop/WallpaperWorker;->handleSuggestDesiredDimensions(II)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/sonymobile/home/desktop/WallpaperWorker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private checkMessageParameter(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 3
    .param p1, "parameter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 162
    .local p2, "expectedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message parameter was not of expected class:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sonymobile/home/desktop/WallpaperWorker;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    sget-object v0, Lcom/sonymobile/home/desktop/WallpaperWorker;->sWallpaperWorker:Lcom/sonymobile/home/desktop/WallpaperWorker;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/sonymobile/home/desktop/WallpaperWorker;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/desktop/WallpaperWorker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sonymobile/home/desktop/WallpaperWorker;->sWallpaperWorker:Lcom/sonymobile/home/desktop/WallpaperWorker;

    .line 60
    :cond_0
    sget-object v0, Lcom/sonymobile/home/desktop/WallpaperWorker;->sWallpaperWorker:Lcom/sonymobile/home/desktop/WallpaperWorker;

    return-object v0
.end method

.method private handleCommand(Ljava/lang/Object;)V
    .locals 9
    .param p1, "parametersObject"    # Ljava/lang/Object;

    .prologue
    .line 190
    const-class v0, Lcom/sonymobile/home/desktop/WallpaperWorker$CommandAsyncParams;

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/home/desktop/WallpaperWorker;->checkMessageParameter(Ljava/lang/Object;Ljava/lang/Class;)V

    move-object v8, p1

    .line 191
    check-cast v8, Lcom/sonymobile/home/desktop/WallpaperWorker$CommandAsyncParams;

    .line 193
    .local v8, "params":Lcom/sonymobile/home/desktop/WallpaperWorker$CommandAsyncParams;
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/WallpaperWorker;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v1, v8, Lcom/sonymobile/home/desktop/WallpaperWorker$CommandAsyncParams;->winToken:Landroid/os/IBinder;

    iget-object v2, v8, Lcom/sonymobile/home/desktop/WallpaperWorker$CommandAsyncParams;->action:Ljava/lang/String;

    iget v3, v8, Lcom/sonymobile/home/desktop/WallpaperWorker$CommandAsyncParams;->x:I

    iget v4, v8, Lcom/sonymobile/home/desktop/WallpaperWorker$CommandAsyncParams;->y:I

    iget v5, v8, Lcom/sonymobile/home/desktop/WallpaperWorker$CommandAsyncParams;->z:I

    iget-object v6, v8, Lcom/sonymobile/home/desktop/WallpaperWorker$CommandAsyncParams;->extras:Landroid/os/Bundle;

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v7

    .line 196
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    sget-object v0, Lcom/sonymobile/home/desktop/WallpaperWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IllegalArgumentException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleSetOffset(Ljava/lang/Object;)V
    .locals 6
    .param p1, "parametersObject"    # Ljava/lang/Object;

    .prologue
    .line 170
    const-class v2, Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParams;

    invoke-direct {p0, p1, v2}, Lcom/sonymobile/home/desktop/WallpaperWorker;->checkMessageParameter(Ljava/lang/Object;Ljava/lang/Class;)V

    move-object v1, p1

    .line 171
    check-cast v1, Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParams;

    .line 173
    .local v1, "parameters":Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParams;
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/home/desktop/WallpaperWorker;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v3, v1, Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParams;->winToken:Landroid/os/IBinder;

    iget v4, v1, Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParams;->xOffset:F

    iget v5, v1, Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParams;->yOffset:F

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/home/desktop/WallpaperWorker;->mOffsetAsyncParamsPool:Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParamsPool;

    invoke-virtual {v2, v1}, Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParamsPool;->release(Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParams;)V

    .line 179
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/sonymobile/home/desktop/WallpaperWorker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalArgumentException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleSetOffsetStep(Ljava/lang/Object;)V
    .locals 4
    .param p1, "parametersObject"    # Ljava/lang/Object;

    .prologue
    .line 183
    const-class v1, Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetStepsAsyncParams;

    invoke-direct {p0, p1, v1}, Lcom/sonymobile/home/desktop/WallpaperWorker;->checkMessageParameter(Ljava/lang/Object;Ljava/lang/Class;)V

    move-object v0, p1

    .line 184
    check-cast v0, Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetStepsAsyncParams;

    .line 185
    .local v0, "params":Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetStepsAsyncParams;
    iget-object v1, p0, Lcom/sonymobile/home/desktop/WallpaperWorker;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v2, v0, Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetStepsAsyncParams;->xStep:F

    iget v3, v0, Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetStepsAsyncParams;->yStep:F

    invoke-virtual {v1, v2, v3}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 186
    return-void
.end method

.method private handleSuggestDesiredDimensions(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 202
    iget-object v2, p0, Lcom/sonymobile/home/desktop/WallpaperWorker;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v1

    .line 203
    .local v1, "desiredWidth":I
    iget-object v2, p0, Lcom/sonymobile/home/desktop/WallpaperWorker;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v0

    .line 205
    .local v0, "desiredHeight":I
    if-ne p1, v1, :cond_0

    if-eq p2, v0, :cond_1

    .line 206
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/desktop/WallpaperWorker;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2, p1, p2}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    .line 208
    :cond_1
    return-void
.end method

.method private lazilyInitializeHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sonymobile/home/desktop/WallpaperWorker;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/sonymobile/home/desktop/WallpaperWorker$WallpaperHandler;

    iget-object v1, p0, Lcom/sonymobile/home/desktop/WallpaperWorker;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/home/desktop/WallpaperWorker$WallpaperHandler;-><init>(Lcom/sonymobile/home/desktop/WallpaperWorker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonymobile/home/desktop/WallpaperWorker;->mHandler:Landroid/os/Handler;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/WallpaperWorker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public sendCommandAsync(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
    .locals 10
    .param p1, "winToken"    # Landroid/os/IBinder;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 132
    if-eqz p1, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/WallpaperWorker;->lazilyInitializeHandler()Landroid/os/Handler;

    move-result-object v7

    .line 134
    .local v7, "handler":Landroid/os/Handler;
    const/4 v9, 0x3

    new-instance v0, Lcom/sonymobile/home/desktop/WallpaperWorker$CommandAsyncParams;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/desktop/WallpaperWorker$CommandAsyncParams;-><init>(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    invoke-virtual {v7, v9, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 136
    .local v8, "msg":Landroid/os/Message;
    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 138
    .end local v7    # "handler":Landroid/os/Handler;
    .end local v8    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public setOffsetStepsAsync(FF)V
    .locals 4
    .param p1, "xStep"    # F
    .param p2, "yStep"    # F

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/WallpaperWorker;->lazilyInitializeHandler()Landroid/os/Handler;

    move-result-object v0

    .line 114
    .local v0, "handler":Landroid/os/Handler;
    const/4 v2, 0x2

    new-instance v3, Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetStepsAsyncParams;

    invoke-direct {v3, p1, p2}, Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetStepsAsyncParams;-><init>(FF)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 116
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 117
    return-void
.end method

.method public setOffsetsAsync(Landroid/os/IBinder;FF)V
    .locals 4
    .param p1, "winToken"    # Landroid/os/IBinder;
    .param p2, "xOffset"    # F
    .param p3, "yOffset"    # F

    .prologue
    .line 96
    if-eqz p1, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/WallpaperWorker;->lazilyInitializeHandler()Landroid/os/Handler;

    move-result-object v0

    .line 98
    .local v0, "handler":Landroid/os/Handler;
    iget-object v3, p0, Lcom/sonymobile/home/desktop/WallpaperWorker;->mOffsetAsyncParamsPool:Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParamsPool;

    invoke-virtual {v3}, Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParamsPool;->obtain()Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParams;

    move-result-object v2

    .line 99
    .local v2, "params":Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParams;
    invoke-virtual {v2, p1, p2, p3}, Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParams;->setValues(Landroid/os/IBinder;FF)V

    .line 100
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 101
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 103
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "params":Lcom/sonymobile/home/desktop/WallpaperWorker$OffsetAsyncParams;
    :cond_0
    return-void
.end method

.method public suggestDesiredDimensionsAsync(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/sonymobile/home/desktop/WallpaperWorker;->lazilyInitializeHandler()Landroid/os/Handler;

    move-result-object v0

    .line 149
    .local v0, "handler":Landroid/os/Handler;
    const/4 v2, 0x4

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 150
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 151
    return-void
.end method
