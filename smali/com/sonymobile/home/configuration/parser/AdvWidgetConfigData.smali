.class public Lcom/sonymobile/home/configuration/parser/AdvWidgetConfigData;
.super Lcom/sonymobile/home/configuration/parser/ItemConfigData;
.source "AdvWidgetConfigData.java"


# instance fields
.field private final mUuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/data/ItemLocation;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/Intent;Ljava/util/UUID;)V
    .locals 0
    .param p1, "itemLocation"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p2, "layer"    # Ljava/lang/String;
    .param p3, "userHandle"    # Landroid/os/UserHandle;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/home/configuration/parser/ItemConfigData;-><init>(Lcom/sonymobile/home/data/ItemLocation;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/Intent;)V

    .line 23
    iput-object p5, p0, Lcom/sonymobile/home/configuration/parser/AdvWidgetConfigData;->mUuid:Ljava/util/UUID;

    .line 24
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 32
    if-ne p0, p1, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v1

    .line 33
    :cond_1
    instance-of v3, p1, Lcom/sonymobile/home/configuration/parser/AdvWidgetConfigData;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    .line 34
    :cond_2
    invoke-super {p0, p1}, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 36
    check-cast v0, Lcom/sonymobile/home/configuration/parser/AdvWidgetConfigData;

    .line 38
    .local v0, "that":Lcom/sonymobile/home/configuration/parser/AdvWidgetConfigData;
    iget-object v3, p0, Lcom/sonymobile/home/configuration/parser/AdvWidgetConfigData;->mUuid:Ljava/util/UUID;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sonymobile/home/configuration/parser/AdvWidgetConfigData;->mUuid:Ljava/util/UUID;

    iget-object v4, v0, Lcom/sonymobile/home/configuration/parser/AdvWidgetConfigData;->mUuid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lcom/sonymobile/home/configuration/parser/AdvWidgetConfigData;->mUuid:Ljava/util/UUID;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonymobile/home/configuration/parser/AdvWidgetConfigData;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 45
    invoke-super {p0}, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->hashCode()I

    move-result v0

    .line 46
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/sonymobile/home/configuration/parser/AdvWidgetConfigData;->mUuid:Ljava/util/UUID;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/home/configuration/parser/AdvWidgetConfigData;->mUuid:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 47
    return v0

    .line 46
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdvWidgetConfigData{mUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/configuration/parser/AdvWidgetConfigData;->mUuid:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
