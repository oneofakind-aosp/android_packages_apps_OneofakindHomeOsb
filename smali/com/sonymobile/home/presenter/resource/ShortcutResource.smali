.class public Lcom/sonymobile/home/presenter/resource/ShortcutResource;
.super Ljava/lang/Object;
.source "ShortcutResource.java"

# interfaces
.implements Lcom/sonymobile/home/model/ResourceItem;


# instance fields
.field private mBadgeLabel:Ljava/lang/String;

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mIsDefault:Z

.field private final mLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;ZLjava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "isDefault"    # Z
    .param p4, "badgeLabel"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sonymobile/home/presenter/resource/ShortcutResource;->mLabel:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/sonymobile/home/presenter/resource/ShortcutResource;->mBitmap:Landroid/graphics/Bitmap;

    .line 37
    iput-boolean p3, p0, Lcom/sonymobile/home/presenter/resource/ShortcutResource;->mIsDefault:Z

    .line 38
    iput-object p4, p0, Lcom/sonymobile/home/presenter/resource/ShortcutResource;->mBadgeLabel:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getBadgeLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/ShortcutResource;->mBadgeLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/ShortcutResource;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/ShortcutResource;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/ShortcutResource;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/sonymobile/home/presenter/resource/ShortcutResource;->mIsDefault:Z

    return v0
.end method

.method public setBadgeLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "newLabel"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sonymobile/home/presenter/resource/ShortcutResource;->mBadgeLabel:Ljava/lang/String;

    .line 87
    return-void
.end method
