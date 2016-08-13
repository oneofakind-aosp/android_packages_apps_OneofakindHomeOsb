.class public Lcom/sonymobile/home/presenter/resource/TipResource;
.super Ljava/lang/Object;
.source "TipResource.java"

# interfaces
.implements Lcom/sonymobile/home/model/ResourceItem;


# instance fields
.field private final mInfoLabel:Ljava/lang/String;

.field private final mTitleLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "titleLabel"    # Ljava/lang/String;
    .param p2, "infoLabel"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/sonymobile/home/presenter/resource/TipResource;->mTitleLabel:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/sonymobile/home/presenter/resource/TipResource;->mInfoLabel:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, ""

    return-object v0
.end method

.method public getInfoLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/TipResource;->mInfoLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, ""

    return-object v0
.end method

.method public getTitleLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/home/presenter/resource/TipResource;->mTitleLabel:Ljava/lang/String;

    return-object v0
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method
