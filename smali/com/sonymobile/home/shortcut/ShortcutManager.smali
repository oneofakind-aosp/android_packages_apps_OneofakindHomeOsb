.class public Lcom/sonymobile/home/shortcut/ShortcutManager;
.super Ljava/lang/Object;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/shortcut/ShortcutManager$ActivityResultHandler;,
        Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;,
        Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIntentHandler:Lcom/sonymobile/home/IntentHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    const-class v0, Lcom/sonymobile/home/shortcut/ShortcutManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/shortcut/ShortcutManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/sonymobile/home/shortcut/ShortcutManager;->mContext:Landroid/content/Context;

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/shortcut/ShortcutManager;Landroid/os/Handler;Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/shortcut/ShortcutManager;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/shortcut/ShortcutManager;->notifyShortcutFailed(Landroid/os/Handler;Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/home/shortcut/ShortcutManager;Landroid/os/Bundle;)Lcom/sonymobile/home/data/ShortcutItem;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/shortcut/ShortcutManager;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/sonymobile/home/shortcut/ShortcutManager;->createShortcutItemFromIntentExtras(Landroid/os/Bundle;)Lcom/sonymobile/home/data/ShortcutItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/home/shortcut/ShortcutManager;Landroid/os/Handler;Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;Lcom/sonymobile/home/data/ShortcutItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/shortcut/ShortcutManager;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;
    .param p3, "x3"    # Lcom/sonymobile/home/data/ShortcutItem;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/shortcut/ShortcutManager;->notifyShortcutCreated(Landroid/os/Handler;Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;Lcom/sonymobile/home/data/ShortcutItem;)V

    return-void
.end method

.method private createShortcutItemFromIntentExtras(Landroid/os/Bundle;)Lcom/sonymobile/home/data/ShortcutItem;
    .locals 10
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 194
    const-string v9, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    .line 195
    .local v7, "shortcutIntent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 197
    .local v3, "item":Lcom/sonymobile/home/data/ShortcutItem;
    if-eqz v7, :cond_0

    .line 198
    invoke-direct {p0, p1}, Lcom/sonymobile/home/shortcut/ShortcutManager;->getIconResourceFromIntent(Landroid/os/Bundle;)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    .line 199
    .local v2, "iconResource":Landroid/content/Intent$ShortcutIconResource;
    if-eqz v2, :cond_1

    iget-object v5, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 200
    .local v5, "packageName":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_2

    iget-object v1, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 201
    .local v1, "iconResName":Ljava/lang/String;
    :goto_1
    invoke-direct {p0, p1}, Lcom/sonymobile/home/shortcut/ShortcutManager;->getIconFromIntent(Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 202
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    iget-object v8, p0, Lcom/sonymobile/home/shortcut/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-static {v8, v0}, Lcom/sonymobile/home/shortcut/ShortcutUtils;->createShortcutIcon(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 203
    .local v6, "paddedIcon":Landroid/graphics/Bitmap;
    :goto_2
    const-string v8, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 205
    .local v4, "label":Ljava/lang/String;
    new-instance v3, Lcom/sonymobile/home/data/ShortcutItem;

    .end local v3    # "item":Lcom/sonymobile/home/data/ShortcutItem;
    invoke-direct {v3, v5, v4, v7}, Lcom/sonymobile/home/data/ShortcutItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 206
    .restart local v3    # "item":Lcom/sonymobile/home/data/ShortcutItem;
    invoke-virtual {v3, v6, v5, v1}, Lcom/sonymobile/home/data/ShortcutItem;->setShortcutData(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .end local v0    # "icon":Landroid/graphics/Bitmap;
    .end local v1    # "iconResName":Ljava/lang/String;
    .end local v2    # "iconResource":Landroid/content/Intent$ShortcutIconResource;
    .end local v4    # "label":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "paddedIcon":Landroid/graphics/Bitmap;
    :cond_0
    return-object v3

    .restart local v2    # "iconResource":Landroid/content/Intent$ShortcutIconResource;
    :cond_1
    move-object v5, v8

    .line 199
    goto :goto_0

    .restart local v5    # "packageName":Ljava/lang/String;
    :cond_2
    move-object v1, v8

    .line 200
    goto :goto_1

    .restart local v0    # "icon":Landroid/graphics/Bitmap;
    .restart local v1    # "iconResName":Ljava/lang/String;
    :cond_3
    move-object v6, v8

    .line 202
    goto :goto_2
.end method

.method private getDuplicateFlagFromIntent(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 220
    const-string v0, "duplicate"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getIconFromIntent(Landroid/os/Bundle;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 230
    const/4 v1, 0x0

    .line 232
    .local v1, "icon":Landroid/graphics/Bitmap;
    const-string v2, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 234
    .local v0, "bitmapParcelable":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 235
    check-cast v1, Landroid/graphics/Bitmap;

    .line 238
    :cond_0
    return-object v1
.end method

.method private getIconResourceFromIntent(Landroid/os/Bundle;)Landroid/content/Intent$ShortcutIconResource;
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 248
    const/4 v1, 0x0

    .line 250
    .local v1, "shortcutIconResource":Landroid/content/Intent$ShortcutIconResource;
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 253
    .local v0, "iconResourceParcelable":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 255
    check-cast v1, Landroid/content/Intent$ShortcutIconResource;

    .line 258
    :cond_0
    return-object v1
.end method

.method private notifyShortcutCreated(Landroid/os/Handler;Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;Lcom/sonymobile/home/data/ShortcutItem;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;
    .param p3, "item"    # Lcom/sonymobile/home/data/ShortcutItem;

    .prologue
    .line 287
    if-eqz p1, :cond_0

    .line 288
    new-instance v0, Lcom/sonymobile/home/shortcut/ShortcutManager$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/sonymobile/home/shortcut/ShortcutManager$2;-><init>(Lcom/sonymobile/home/shortcut/ShortcutManager;Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;Lcom/sonymobile/home/data/ShortcutItem;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-interface {p2, p3}, Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;->onShortcutCreated(Lcom/sonymobile/home/data/ShortcutItem;)V

    goto :goto_0
.end method

.method private notifyShortcutFailed(Landroid/os/Handler;Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;

    .prologue
    .line 268
    if-eqz p1, :cond_0

    .line 269
    new-instance v0, Lcom/sonymobile/home/shortcut/ShortcutManager$1;

    invoke-direct {v0, p0, p2}, Lcom/sonymobile/home/shortcut/ShortcutManager$1;-><init>(Lcom/sonymobile/home/shortcut/ShortcutManager;Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-interface {p2}, Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;->onShortcutFailed()V

    goto :goto_0
.end method


# virtual methods
.method public installShortcut(Landroid/os/Bundle;Lcom/sonymobile/home/desktop/DesktopModel;Lcom/sonymobile/home/storage/OnWriteCompletedCallback;)Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;
    .locals 4
    .param p1, "shortcutBundle"    # Landroid/os/Bundle;
    .param p2, "desktopModel"    # Lcom/sonymobile/home/desktop/DesktopModel;
    .param p3, "callback"    # Lcom/sonymobile/home/storage/OnWriteCompletedCallback;

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/sonymobile/home/shortcut/ShortcutManager;->createShortcutItemFromIntentExtras(Landroid/os/Bundle;)Lcom/sonymobile/home/data/ShortcutItem;

    move-result-object v2

    .line 149
    .local v2, "item":Lcom/sonymobile/home/data/ShortcutItem;
    if-eqz v2, :cond_0

    .line 150
    invoke-direct {p0, p1}, Lcom/sonymobile/home/shortcut/ShortcutManager;->getDuplicateFlagFromIntent(Landroid/os/Bundle;)Z

    move-result v0

    .line 151
    .local v0, "allowDuplicates":Z
    invoke-virtual {p2, v2, v0, p3}, Lcom/sonymobile/home/desktop/DesktopModel;->addShortcutToDesktop(Lcom/sonymobile/home/data/ShortcutItem;ZLcom/sonymobile/home/storage/OnWriteCompletedCallback;)Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;

    move-result-object v1

    .line 152
    .local v1, "creationStatus":Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;
    invoke-virtual {v2}, Lcom/sonymobile/home/data/ShortcutItem;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;->setShortcutLabel(Ljava/lang/String;)V

    .line 156
    .end local v0    # "allowDuplicates":Z
    :goto_0
    return-object v1

    .line 154
    .end local v1    # "creationStatus":Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;
    :cond_0
    sget-object v1, Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;->UNDEFINED_ERROR:Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;

    .restart local v1    # "creationStatus":Lcom/sonymobile/home/shortcut/ShortcutManager$CreationStatus;
    goto :goto_0
.end method

.method public launchShortcutIntent(Landroid/content/Intent;Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "listener"    # Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 177
    iget-object v1, p0, Lcom/sonymobile/home/shortcut/ShortcutManager;->mIntentHandler:Lcom/sonymobile/home/IntentHandler;

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/sonymobile/home/shortcut/ShortcutManager;->mIntentHandler:Lcom/sonymobile/home/IntentHandler;

    invoke-interface {v1}, Lcom/sonymobile/home/IntentHandler;->generateUniqueRequestCode()I

    move-result v0

    .line 180
    .local v0, "requestCode":I
    iget-object v1, p0, Lcom/sonymobile/home/shortcut/ShortcutManager;->mIntentHandler:Lcom/sonymobile/home/IntentHandler;

    new-instance v2, Lcom/sonymobile/home/shortcut/ShortcutManager$ActivityResultHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, p3, v3}, Lcom/sonymobile/home/shortcut/ShortcutManager$ActivityResultHandler;-><init>(Lcom/sonymobile/home/shortcut/ShortcutManager;Lcom/sonymobile/home/shortcut/ShortcutManager$OnShortcutCreatedListener;Landroid/os/Handler;Lcom/sonymobile/home/shortcut/ShortcutManager$1;)V

    invoke-interface {v1, v0, v2}, Lcom/sonymobile/home/IntentHandler;->addActivityResultListener(ILcom/sonymobile/home/ActivityResultHandler$ActivityResultListener;)V

    .line 181
    iget-object v1, p0, Lcom/sonymobile/home/shortcut/ShortcutManager;->mIntentHandler:Lcom/sonymobile/home/IntentHandler;

    const-string v2, ""

    invoke-interface {v1, p1, v0, v2}, Lcom/sonymobile/home/IntentHandler;->launchActivityForResult(Landroid/content/Intent;ILjava/lang/String;)V

    .line 185
    .end local v0    # "requestCode":I
    :goto_0
    return-void

    .line 183
    :cond_0
    sget-object v1, Lcom/sonymobile/home/shortcut/ShortcutManager;->TAG:Ljava/lang/String;

    const-string v2, "Launching shortcut intent failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIntentHandler(Lcom/sonymobile/home/IntentHandler;)V
    .locals 0
    .param p1, "intentHandler"    # Lcom/sonymobile/home/IntentHandler;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/sonymobile/home/shortcut/ShortcutManager;->mIntentHandler:Lcom/sonymobile/home/IntentHandler;

    .line 167
    return-void
.end method
