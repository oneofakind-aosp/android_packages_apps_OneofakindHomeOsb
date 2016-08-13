.class public Lcom/sonymobile/home/configuration/parser/InternalFunctionItemConfigData;
.super Lcom/sonymobile/home/configuration/parser/ItemConfigData;
.source "InternalFunctionItemConfigData.java"


# instance fields
.field private final mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/data/ItemLocation;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1
    .param p1, "itemLocation"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p2, "layer"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/sonymobile/home/configuration/parser/ItemConfigData;-><init>(Lcom/sonymobile/home/data/ItemLocation;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/Intent;)V

    .line 29
    invoke-static {p3}, Lcom/sonymobile/home/configuration/serializer/InternalFunctionJsonSerializer;->getInternalFunctionTypeFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/configuration/parser/InternalFunctionItemConfigData;->mType:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    if-ne p0, p1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v1

    .line 49
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    .line 50
    :cond_3
    invoke-super {p0, p1}, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    move-object v0, p1

    .line 52
    check-cast v0, Lcom/sonymobile/home/configuration/parser/InternalFunctionItemConfigData;

    .line 54
    .local v0, "that":Lcom/sonymobile/home/configuration/parser/InternalFunctionItemConfigData;
    iget-object v3, p0, Lcom/sonymobile/home/configuration/parser/InternalFunctionItemConfigData;->mType:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sonymobile/home/configuration/parser/InternalFunctionItemConfigData;->mType:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonymobile/home/configuration/parser/InternalFunctionItemConfigData;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lcom/sonymobile/home/configuration/parser/InternalFunctionItemConfigData;->mType:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonymobile/home/configuration/parser/InternalFunctionItemConfigData;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 61
    invoke-super {p0}, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->hashCode()I

    move-result v0

    .line 62
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/sonymobile/home/configuration/parser/InternalFunctionItemConfigData;->mType:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/home/configuration/parser/InternalFunctionItemConfigData;->mType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 63
    return v0

    .line 62
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isItemConfigDataValid()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonymobile/home/configuration/parser/InternalFunctionItemConfigData;->mType:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonymobile/home/data/InternalFunctionItem;->isTypeSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/configuration/parser/InternalFunctionItemConfigData;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
