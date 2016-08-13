.class public Lcom/sonymobile/home/presenter/resource/InternalFunctionResource;
.super Ljava/lang/Object;
.source "InternalFunctionResource.java"

# interfaces
.implements Lcom/sonymobile/home/model/ResourceItem;


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mIsDefault:Z

.field private final mLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "isDefault"    # Z

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/sonymobile/home/presenter/resource/InternalFunctionResource;->mLabel:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/sonymobile/home/presenter/resource/InternalFunctionResource;->mBitmap:Landroid/graphics/Bitmap;

    .line 34
    iput-boolean p3, p0, Lcom/sonymobile/home/presenter/resource/InternalFunctionResource;->mIsDefault:Z

    .line 35
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/InternalFunctionResource;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/InternalFunctionResource;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/InternalFunctionResource;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/sonymobile/home/presenter/resource/InternalFunctionResource;->mIsDefault:Z

    return v0
.end method
