.class public Lcom/sonymobile/home/data/WidgetItem;
.super Lcom/sonymobile/home/data/Item;
.source "WidgetItem.java"


# instance fields
.field private final mAppWidgetId:I

.field private final mClassName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonymobile/home/data/WidgetItem;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 42
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/sonymobile/home/data/Item;-><init>()V

    .line 82
    iput p1, p0, Lcom/sonymobile/home/data/WidgetItem;->mAppWidgetId:I

    .line 83
    iput-object p2, p0, Lcom/sonymobile/home/data/WidgetItem;->mPackageName:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lcom/sonymobile/home/data/WidgetItem;->mClassName:Ljava/lang/String;

    .line 85
    iput-object p4, p0, Lcom/sonymobile/home/data/WidgetItem;->mUser:Landroid/os/UserHandle;

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/home/data/WidgetItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/sonymobile/home/data/WidgetItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 134
    if-ne p0, p1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v1

    .line 136
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 137
    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 139
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 140
    check-cast v0, Lcom/sonymobile/home/data/WidgetItem;

    .line 141
    .local v0, "other":Lcom/sonymobile/home/data/WidgetItem;
    iget v3, p0, Lcom/sonymobile/home/data/WidgetItem;->mAppWidgetId:I

    iget v4, v0, Lcom/sonymobile/home/data/WidgetItem;->mAppWidgetId:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 142
    goto :goto_0

    .line 143
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/home/data/WidgetItem;->mClassName:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 144
    iget-object v3, v0, Lcom/sonymobile/home/data/WidgetItem;->mClassName:Ljava/lang/String;

    if-eqz v3, :cond_6

    move v1, v2

    .line 145
    goto :goto_0

    .line 146
    :cond_5
    iget-object v3, p0, Lcom/sonymobile/home/data/WidgetItem;->mClassName:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonymobile/home/data/WidgetItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 147
    goto :goto_0

    .line 148
    :cond_6
    iget-object v3, p0, Lcom/sonymobile/home/data/WidgetItem;->mPackageName:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 149
    iget-object v3, v0, Lcom/sonymobile/home/data/WidgetItem;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_8

    move v1, v2

    .line 150
    goto :goto_0

    .line 151
    :cond_7
    iget-object v3, p0, Lcom/sonymobile/home/data/WidgetItem;->mPackageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonymobile/home/data/WidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    .line 152
    goto :goto_0

    .line 153
    :cond_8
    iget-object v3, p0, Lcom/sonymobile/home/data/WidgetItem;->mUser:Landroid/os/UserHandle;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/sonymobile/home/data/WidgetItem;->mUser:Landroid/os/UserHandle;

    iget-object v4, v0, Lcom/sonymobile/home/data/WidgetItem;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 154
    goto :goto_0

    .line 153
    :cond_9
    iget-object v3, v0, Lcom/sonymobile/home/data/WidgetItem;->mUser:Landroid/os/UserHandle;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getAppWidgetId()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/sonymobile/home/data/WidgetItem;->mAppWidgetId:I

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonymobile/home/data/WidgetItem;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sonymobile/home/data/WidgetItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonymobile/home/data/WidgetItem;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 123
    const/16 v0, 0x1f

    .line 124
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 125
    .local v1, "result":I
    iget v2, p0, Lcom/sonymobile/home/data/WidgetItem;->mAppWidgetId:I

    add-int/lit8 v1, v2, 0x1f

    .line 126
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/sonymobile/home/data/WidgetItem;->mClassName:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    add-int v1, v4, v2

    .line 127
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/sonymobile/home/data/WidgetItem;->mPackageName:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 128
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/sonymobile/home/data/WidgetItem;->mUser:Landroid/os/UserHandle;

    if-eqz v4, :cond_0

    iget-object v3, p0, Lcom/sonymobile/home/data/WidgetItem;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->hashCode()I

    move-result v3

    :cond_0
    add-int v1, v2, v3

    .line 129
    return v1

    .line 126
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/home/data/WidgetItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 127
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/home/data/WidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 160
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

    iget-object v1, p0, Lcom/sonymobile/home/data/WidgetItem;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/home/data/WidgetItem;->mClassName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sonymobile/home/util/HomeDebug;->getShortComponentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", widgetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/home/data/WidgetItem;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/data/WidgetItem;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/home/data/WidgetItem;->getPageViewLocationString()Ljava/lang/String;

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
