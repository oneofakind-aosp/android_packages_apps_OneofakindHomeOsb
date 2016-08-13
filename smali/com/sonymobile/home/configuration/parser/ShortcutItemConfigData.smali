.class public Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;
.super Lcom/sonymobile/home/configuration/parser/ItemConfigData;
.source "ShortcutItemConfigData.java"


# instance fields
.field private final mIconImageUri:Ljava/lang/String;

.field private final mIconResourceName:Ljava/lang/String;

.field private final mIconResourcePackageName:Ljava/lang/String;

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/data/ItemLocation;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "itemLocation"    # Lcom/sonymobile/home/data/ItemLocation;
    .param p2, "layer"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "iconResourceName"    # Ljava/lang/String;
    .param p6, "iconImageUri"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/sonymobile/home/configuration/parser/ItemConfigData;-><init>(Lcom/sonymobile/home/data/ItemLocation;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/Intent;)V

    .line 24
    iput-object p4, p0, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->mName:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->mIconResourceName:Ljava/lang/String;

    .line 27
    if-eqz p5, :cond_0

    .line 28
    invoke-direct {p0, p5}, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->getPackageNameFromResourceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->mIconResourcePackageName:Ljava/lang/String;

    .line 33
    :goto_0
    iput-object p6, p0, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->mIconImageUri:Ljava/lang/String;

    .line 34
    return-void

    .line 30
    :cond_0
    iput-object v0, p0, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->mIconResourcePackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method private getPackageNameFromResourceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "iconResourceName"    # Ljava/lang/String;

    .prologue
    .line 37
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 38
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 39
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 42
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 69
    if-ne p0, p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v1

    .line 70
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

    .line 71
    :cond_3
    invoke-super {p0, p1}, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    move-object v0, p1

    .line 73
    check-cast v0, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;

    .line 75
    .local v0, "that":Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;
    iget-object v3, p0, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->mIconImageUri:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->mIconImageUri:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->mIconImageUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    iget-object v3, v0, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->mIconImageUri:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 76
    :cond_7
    iget-object v3, p0, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->mIconResourceName:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->mIconResourceName:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->mIconResourceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_8
    move v1, v2

    goto :goto_0

    :cond_9
    iget-object v3, v0, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->mIconResourceName:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 77
    :cond_a
    iget-object v3, p0, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->mName:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->mName:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_b
    iget-object v3, v0, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->mName:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getIconImageUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->mIconImageUri:Ljava/lang/String;

    return-object v0
.end method

.method public getIconResourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->mIconResourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getIconResourcePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->mIconResourcePackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-super {p0}, Lcom/sonymobile/home/configuration/parser/ItemConfigData;->hashCode()I

    move-result v0

    .line 85
    .local v0, "result":I
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 86
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->mIconResourceName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->mIconResourceName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v3, v1

    .line 87
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->mIconImageUri:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->mIconImageUri:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 88
    return v0

    :cond_1
    move v1, v2

    .line 85
    goto :goto_0

    :cond_2
    move v1, v2

    .line 86
    goto :goto_1
.end method

.method public isItemConfigDataValid()Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->mName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->mIconResourceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->mIconResourcePackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShortcutItemConfigData{mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mIconResourceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->mIconResourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mIconImageUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/configuration/parser/ShortcutItemConfigData;->mIconImageUri:Ljava/lang/String;

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
