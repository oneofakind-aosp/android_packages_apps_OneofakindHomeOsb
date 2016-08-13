.class public Lcom/sonymobile/home/configuration/parser/WidgetConfigData;
.super Lcom/sonymobile/home/configuration/parser/ItemConfigData;
.source "WidgetConfigData.java"


# instance fields
.field private final mId:I


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/data/ItemLocation;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "itemLocation"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p2, "layer"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "id"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/home/configuration/parser/ItemConfigData;-><init>(Lcom/sonymobile/home/data/ItemLocation;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/Intent;)V

    .line 25
    iput p5, p0, Lcom/sonymobile/home/configuration/parser/WidgetConfigData;->mId:I

    .line 26
    return-void
.end method

.method private isUserHandleValid()Z
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/sonymobile/home/configuration/parser/WidgetConfigData;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 43
    if-ne p0, p1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v1

    .line 44
    :cond_1
    instance-of v3, p1, Lcom/sonymobile/home/configuration/parser/WidgetConfigData;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 45
    :cond_2
    invoke-super {p0, p1}, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 47
    check-cast v0, Lcom/sonymobile/home/configuration/parser/WidgetConfigData;

    .line 49
    .local v0, "that":Lcom/sonymobile/home/configuration/parser/WidgetConfigData;
    iget v3, p0, Lcom/sonymobile/home/configuration/parser/WidgetConfigData;->mId:I

    iget v4, v0, Lcom/sonymobile/home/configuration/parser/WidgetConfigData;->mId:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/sonymobile/home/configuration/parser/WidgetConfigData;->mId:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 56
    invoke-super {p0}, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->hashCode()I

    move-result v0

    .line 57
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/sonymobile/home/configuration/parser/WidgetConfigData;->mId:I

    add-int v0, v1, v2

    .line 58
    return v0
.end method

.method public isItemConfigDataValid()Z
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->isItemConfigDataValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/home/configuration/parser/WidgetConfigData;->isUserHandleValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WidgetConfigData{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/home/configuration/parser/WidgetConfigData;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
