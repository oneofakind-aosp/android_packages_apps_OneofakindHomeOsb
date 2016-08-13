.class public Lcom/sonymobile/home/data/AdvWidgetItem;
.super Lcom/sonymobile/home/data/Item;
.source "AdvWidgetItem.java"


# instance fields
.field private final mAdvWidgetId:Ljava/util/UUID;

.field private final mClassName:Ljava/lang/String;

.field private final mCustomizationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/util/UUID;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonymobile/home/data/AdvWidgetItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/util/HashMap;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p4, "custMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/sonymobile/home/data/Item;-><init>()V

    .line 37
    iput-object p3, p0, Lcom/sonymobile/home/data/AdvWidgetItem;->mAdvWidgetId:Ljava/util/UUID;

    .line 38
    iput-object p1, p0, Lcom/sonymobile/home/data/AdvWidgetItem;->mPackageName:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/sonymobile/home/data/AdvWidgetItem;->mClassName:Ljava/lang/String;

    .line 40
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .end local p4    # "custMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    iput-object p4, p0, Lcom/sonymobile/home/data/AdvWidgetItem;->mCustomizationMap:Ljava/util/HashMap;

    .line 41
    return-void

    .line 40
    .restart local p4    # "custMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 p4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    if-ne p0, p1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v1

    .line 88
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 89
    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 91
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 92
    check-cast v0, Lcom/sonymobile/home/data/AdvWidgetItem;

    .line 93
    .local v0, "other":Lcom/sonymobile/home/data/AdvWidgetItem;
    iget-object v3, p0, Lcom/sonymobile/home/data/AdvWidgetItem;->mAdvWidgetId:Ljava/util/UUID;

    if-nez v3, :cond_4

    .line 94
    iget-object v3, v0, Lcom/sonymobile/home/data/AdvWidgetItem;->mAdvWidgetId:Ljava/util/UUID;

    if-eqz v3, :cond_5

    move v1, v2

    .line 95
    goto :goto_0

    .line 96
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/home/data/AdvWidgetItem;->mAdvWidgetId:Ljava/util/UUID;

    iget-object v4, v0, Lcom/sonymobile/home/data/AdvWidgetItem;->mAdvWidgetId:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 97
    goto :goto_0

    .line 98
    :cond_5
    iget-object v3, p0, Lcom/sonymobile/home/data/AdvWidgetItem;->mClassName:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 99
    iget-object v3, v0, Lcom/sonymobile/home/data/AdvWidgetItem;->mClassName:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 100
    goto :goto_0

    .line 101
    :cond_6
    iget-object v3, p0, Lcom/sonymobile/home/data/AdvWidgetItem;->mClassName:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonymobile/home/data/AdvWidgetItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 102
    goto :goto_0

    .line 104
    :cond_7
    iget-object v3, p0, Lcom/sonymobile/home/data/AdvWidgetItem;->mPackageName:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 105
    iget-object v3, v0, Lcom/sonymobile/home/data/AdvWidgetItem;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 106
    goto :goto_0

    .line 107
    :cond_8
    iget-object v3, p0, Lcom/sonymobile/home/data/AdvWidgetItem;->mPackageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonymobile/home/data/AdvWidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 108
    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonymobile/home/data/AdvWidgetItem;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomization()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/home/data/AdvWidgetItem;->mCustomizationMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sonymobile/home/data/AdvWidgetItem;->mAdvWidgetId:Ljava/util/UUID;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonymobile/home/data/AdvWidgetItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 76
    const/16 v0, 0x1f

    .line 77
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 78
    .local v1, "result":I
    iget-object v2, p0, Lcom/sonymobile/home/data/AdvWidgetItem;->mAdvWidgetId:Ljava/util/UUID;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 79
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/sonymobile/home/data/AdvWidgetItem;->mClassName:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 80
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/sonymobile/home/data/AdvWidgetItem;->mPackageName:Ljava/lang/String;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 81
    return v1

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/data/AdvWidgetItem;->mAdvWidgetId:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->hashCode()I

    move-result v2

    goto :goto_0

    .line 79
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/home/data/AdvWidgetItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 80
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/home/data/AdvWidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/data/AdvWidgetItem;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/home/data/AdvWidgetItem;->mClassName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sonymobile/home/util/HomeDebug;->getShortComponentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", widgetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/data/AdvWidgetItem;->mAdvWidgetId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/home/data/AdvWidgetItem;->getPageViewLocationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
