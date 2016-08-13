.class public Lcom/sonymobile/home/presenter/resource/ActivityResource;
.super Ljava/lang/Object;
.source "ActivityResource.java"

# interfaces
.implements Lcom/sonymobile/home/model/ResourceItem;


# instance fields
.field private mBadgeLabel:Ljava/lang/String;

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mContentDescription:Ljava/lang/String;

.field private final mIsDefault:Z

.field private final mLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "contentDescription"    # Ljava/lang/String;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "badge"    # Ljava/lang/String;
    .param p5, "isDefault"    # Z

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/sonymobile/home/presenter/resource/ActivityResource;->mLabel:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/sonymobile/home/presenter/resource/ActivityResource;->mContentDescription:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/sonymobile/home/presenter/resource/ActivityResource;->mBitmap:Landroid/graphics/Bitmap;

    .line 41
    iput-object p4, p0, Lcom/sonymobile/home/presenter/resource/ActivityResource;->mBadgeLabel:Ljava/lang/String;

    .line 42
    iput-boolean p5, p0, Lcom/sonymobile/home/presenter/resource/ActivityResource;->mIsDefault:Z

    .line 43
    return-void
.end method


# virtual methods
.method public getBadgeLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/ActivityResource;->mBadgeLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/ActivityResource;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/ActivityResource;->mContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/ActivityResource;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/sonymobile/home/presenter/resource/ActivityResource;->mIsDefault:Z

    return v0
.end method

.method public setBadge(Ljava/lang/String;)V
    .locals 0
    .param p1, "badgeLabel"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sonymobile/home/presenter/resource/ActivityResource;->mBadgeLabel:Ljava/lang/String;

    .line 75
    return-void
.end method
