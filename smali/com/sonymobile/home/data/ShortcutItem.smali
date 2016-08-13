.class public Lcom/sonymobile/home/data/ShortcutItem;
.super Lcom/sonymobile/home/data/Item;
.source "ShortcutItem.java"


# instance fields
.field private mIconResourceName:Ljava/lang/String;

.field private mImage:Landroid/graphics/Bitmap;

.field private mImageChecksum:J

.field private mIntent:Landroid/content/Intent;

.field private mIntentUri:Ljava/lang/String;

.field private mLabel:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPackageResourceName:Ljava/lang/String;

.field private mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/data/ShortcutItem;)V
    .locals 3
    .param p1, "other"    # Lcom/sonymobile/home/data/ShortcutItem;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/sonymobile/home/data/Item;-><init>(Lcom/sonymobile/home/data/Item;)V

    .line 79
    iget-object v0, p1, Lcom/sonymobile/home/data/ShortcutItem;->mPackageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/sonymobile/home/data/ShortcutItem;->mLabel:Ljava/lang/String;

    iget-object v2, p1, Lcom/sonymobile/home/data/ShortcutItem;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/home/data/ShortcutItem;->init(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 80
    iget-object v0, p1, Lcom/sonymobile/home/data/ShortcutItem;->mIconResourceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonymobile/home/data/ShortcutItem;->mIconResourceName:Ljava/lang/String;

    .line 81
    iget-object v0, p1, Lcom/sonymobile/home/data/ShortcutItem;->mPackageResourceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonymobile/home/data/ShortcutItem;->mPackageResourceName:Ljava/lang/String;

    .line 82
    iget-object v0, p1, Lcom/sonymobile/home/data/ShortcutItem;->mImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p1, Lcom/sonymobile/home/data/ShortcutItem;->mImage:Landroid/graphics/Bitmap;

    iget-object v1, p1, Lcom/sonymobile/home/data/ShortcutItem;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/data/ShortcutItem;->mImage:Landroid/graphics/Bitmap;

    .line 85
    :cond_0
    iget-wide v0, p1, Lcom/sonymobile/home/data/ShortcutItem;->mImageChecksum:J

    iput-wide v0, p0, Lcom/sonymobile/home/data/ShortcutItem;->mImageChecksum:J

    .line 86
    iget-object v0, p1, Lcom/sonymobile/home/data/ShortcutItem;->mUser:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/sonymobile/home/data/ShortcutItem;->mUser:Landroid/os/UserHandle;

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/sonymobile/home/data/Item;-><init>()V

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/home/data/ShortcutItem;->init(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 70
    return-void
.end method

.method private static createShortcutIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 389
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 391
    .local v0, "shortcutIntent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 393
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    :cond_0
    :goto_0
    return-object v0

    .line 394
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private getClassName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 364
    if-eqz p1, :cond_0

    .line 365
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 366
    .local v0, "comp":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 371
    .end local v0    # "comp":Landroid/content/ComponentName;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPackageName(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 345
    move-object v2, p1

    .line 347
    .local v2, "tempPackageName":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 348
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 350
    .local v0, "comp":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 351
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 360
    .end local v0    # "comp":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    return-object v2

    .line 353
    .restart local v0    # "comp":Landroid/content/ComponentName;
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, "intentPackageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 356
    move-object v2, v1

    goto :goto_0
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 376
    invoke-direct {p0, p1, p3}, Lcom/sonymobile/home/data/ShortcutItem;->getPackageName(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/data/ShortcutItem;->mPackageName:Ljava/lang/String;

    .line 377
    if-eqz p2, :cond_1

    .end local p2    # "label":Ljava/lang/String;
    :goto_0
    iput-object p2, p0, Lcom/sonymobile/home/data/ShortcutItem;->mLabel:Ljava/lang/String;

    .line 379
    if-eqz p3, :cond_0

    .line 380
    invoke-static {p3}, Lcom/sonymobile/home/data/ShortcutItem;->createShortcutIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/data/ShortcutItem;->mIntent:Landroid/content/Intent;

    .line 381
    iget-object v0, p0, Lcom/sonymobile/home/data/ShortcutItem;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/data/ShortcutItem;->mIntentUri:Ljava/lang/String;

    .line 385
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/data/ShortcutItem;->mUser:Landroid/os/UserHandle;

    .line 386
    return-void

    .line 377
    .restart local p2    # "label":Ljava/lang/String;
    :cond_1
    const-string p2, ""

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 245
    if-ne p0, p1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v1

    .line 246
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 247
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 249
    check-cast v0, Lcom/sonymobile/home/data/ShortcutItem;

    .line 250
    .local v0, "other":Lcom/sonymobile/home/data/ShortcutItem;
    iget-wide v4, p0, Lcom/sonymobile/home/data/ShortcutItem;->mImageChecksum:J

    iget-wide v6, v0, Lcom/sonymobile/home/data/ShortcutItem;->mImageChecksum:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 251
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/home/data/ShortcutItem;->mLabel:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonymobile/home/data/ShortcutItem;->mLabel:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 252
    :cond_5
    iget-object v3, p0, Lcom/sonymobile/home/data/ShortcutItem;->mPackageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonymobile/home/data/ShortcutItem;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 253
    :cond_6
    iget-object v3, p0, Lcom/sonymobile/home/data/ShortcutItem;->mIconResourceName:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonymobile/home/data/ShortcutItem;->mIconResourceName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    goto :goto_0

    .line 254
    :cond_7
    iget-object v3, p0, Lcom/sonymobile/home/data/ShortcutItem;->mIntentUri:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonymobile/home/data/ShortcutItem;->mIntentUri:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sonymobile/home/data/ShortcutItem;->mImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sonymobile/home/data/ShortcutItem;->mIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/sonymobile/home/data/ShortcutItem;->getClassName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconResourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sonymobile/home/data/ShortcutItem;->mIconResourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getImageData()[B
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sonymobile/home/data/ShortcutItem;->mImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/sonymobile/home/data/ShortcutItem;->mImage:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/sonymobile/home/bitmap/BitmapUtils;->convertBitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 199
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonymobile/home/data/ShortcutItem;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sonymobile/home/data/ShortcutItem;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sonymobile/home/data/ShortcutItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageResourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sonymobile/home/data/ShortcutItem;->mPackageResourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sonymobile/home/data/ShortcutItem;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public hasSameIntent(Lcom/sonymobile/home/data/ShortcutItem;)Z
    .locals 9
    .param p1, "otherItem"    # Lcom/sonymobile/home/data/ShortcutItem;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 269
    if-nez p1, :cond_1

    move v0, v7

    .line 323
    :cond_0
    :goto_0
    return v0

    .line 272
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/home/data/ShortcutItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 273
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/sonymobile/home/data/ShortcutItem;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 274
    .local v3, "otherIntent":Landroid/content/Intent;
    const/4 v0, 0x0

    .line 276
    .local v0, "hasSameIntent":Z
    if-ne v1, v3, :cond_2

    .line 277
    const/4 v0, 0x1

    goto :goto_0

    .line 278
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/sonymobile/home/data/ShortcutItem;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "label":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonymobile/home/data/ShortcutItem;->getLabel()Ljava/lang/String;

    move-result-object v4

    .line 283
    .local v4, "otherLabel":Ljava/lang/String;
    if-nez v2, :cond_4

    if-nez v4, :cond_4

    .line 284
    const/4 v0, 0x1

    .line 292
    :goto_1
    if-eqz v0, :cond_3

    .line 296
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 297
    .local v5, "tempIntent":Landroid/content/Intent;
    invoke-virtual {v5, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    invoke-virtual {v5, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 300
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 301
    .local v6, "tempOtherIntent":Landroid/content/Intent;
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 304
    invoke-virtual {v5, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 307
    const/4 v0, 0x1

    .line 313
    .end local v5    # "tempIntent":Landroid/content/Intent;
    .end local v6    # "tempOtherIntent":Landroid/content/Intent;
    :cond_3
    :goto_2
    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-nez v7, :cond_7

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-nez v7, :cond_7

    .line 316
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sonymobile/flix/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 285
    :cond_4
    if-eqz v2, :cond_5

    .line 286
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 289
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 309
    .restart local v5    # "tempIntent":Landroid/content/Intent;
    .restart local v6    # "tempOtherIntent":Landroid/content/Intent;
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 319
    .end local v5    # "tempIntent":Landroid/content/Intent;
    .end local v6    # "tempOtherIntent":Landroid/content/Intent;
    :cond_7
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sonymobile/flix/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 232
    const/16 v0, 0x1f

    .line 233
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 235
    .local v1, "result":I
    iget-wide v4, p0, Lcom/sonymobile/home/data/ShortcutItem;->mImageChecksum:J

    iget-wide v6, p0, Lcom/sonymobile/home/data/ShortcutItem;->mImageChecksum:J

    const/16 v2, 0x20

    ushr-long/2addr v6, v2

    xor-long/2addr v4, v6

    long-to-int v2, v4

    add-int/lit8 v1, v2, 0x1f

    .line 236
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/sonymobile/home/data/ShortcutItem;->mLabel:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    .line 237
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/sonymobile/home/data/ShortcutItem;->mPackageName:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 238
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/sonymobile/home/data/ShortcutItem;->mIconResourceName:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 239
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/sonymobile/home/data/ShortcutItem;->mIntentUri:Ljava/lang/String;

    if-nez v4, :cond_3

    :goto_3
    add-int v1, v2, v3

    .line 240
    return v1

    .line 236
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/data/ShortcutItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 237
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/home/data/ShortcutItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 238
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/home/data/ShortcutItem;->mIconResourceName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 239
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/home/data/ShortcutItem;->mIntentUri:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3
.end method

.method public isActivityShortcut()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sonymobile/home/data/ShortcutItem;->mIntent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/sonymobile/home/util/HomeUtils;->isActivityIntent(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public isLauncherShortcut()Z
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sonymobile/home/data/ShortcutItem;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/data/ShortcutItem;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.action.MAIN"

    iget-object v1, p0, Lcom/sonymobile/home/data/ShortcutItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const/4 v0, 0x1

    .line 185
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShortcutData(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "packageResourceName"    # Ljava/lang/String;
    .param p3, "iconResourceName"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/sonymobile/home/data/ShortcutItem;->mImage:Landroid/graphics/Bitmap;

    .line 116
    iget-object v0, p0, Lcom/sonymobile/home/data/ShortcutItem;->mImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/data/ShortcutItem;->mImage:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/sonymobile/home/bitmap/BitmapUtils;->computeBitmapChecksum(Landroid/graphics/Bitmap;)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/sonymobile/home/data/ShortcutItem;->mImageChecksum:J

    .line 117
    iput-object p2, p0, Lcom/sonymobile/home/data/ShortcutItem;->mPackageResourceName:Ljava/lang/String;

    .line 118
    iput-object p3, p0, Lcom/sonymobile/home/data/ShortcutItem;->mIconResourceName:Ljava/lang/String;

    .line 119
    return-void

    .line 116
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public setShortcutData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageResourceName"    # Ljava/lang/String;
    .param p2, "iconResourceName"    # Ljava/lang/String;

    .prologue
    .line 129
    const/4 v0, 0x0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p1, p2}, Lcom/sonymobile/home/data/ShortcutItem;->setShortcutData(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public setShortcutData([BLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "imageBlob"    # [B
    .param p2, "packageResourceName"    # Ljava/lang/String;
    .param p3, "iconResourceName"    # Ljava/lang/String;

    .prologue
    .line 99
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sonymobile/home/data/ShortcutItem;->mImage:Landroid/graphics/Bitmap;

    .line 100
    iget-object v0, p0, Lcom/sonymobile/home/data/ShortcutItem;->mImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/home/data/ShortcutItem;->mImage:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/sonymobile/home/bitmap/BitmapUtils;->computeBitmapChecksum(Landroid/graphics/Bitmap;)J

    move-result-wide v0

    :goto_1
    iput-wide v0, p0, Lcom/sonymobile/home/data/ShortcutItem;->mImageChecksum:J

    .line 101
    iput-object p2, p0, Lcom/sonymobile/home/data/ShortcutItem;->mPackageResourceName:Ljava/lang/String;

    .line 102
    iput-object p3, p0, Lcom/sonymobile/home/data/ShortcutItem;->mIconResourceName:Ljava/lang/String;

    .line 103
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 100
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sonymobile/home/data/Item;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nlabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/data/ShortcutItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/data/ShortcutItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nintent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/data/ShortcutItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\npackageResourceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/data/ShortcutItem;->mPackageResourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iconResourceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/data/ShortcutItem;->mIconResourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
