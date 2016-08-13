.class public Lcom/sonymobile/home/data/ActivityItem;
.super Lcom/sonymobile/home/data/Item;
.source "ActivityItem.java"


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 84
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/home/data/ActivityItem;)V
    .locals 1
    .param p1, "activityItem"    # Lcom/sonymobile/home/data/ActivityItem;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/sonymobile/home/data/Item;-><init>(Lcom/sonymobile/home/data/Item;)V

    .line 94
    iget-object v0, p1, Lcom/sonymobile/home/data/ActivityItem;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonymobile/home/data/ActivityItem;->mPackageName:Ljava/lang/String;

    .line 95
    iget-object v0, p1, Lcom/sonymobile/home/data/ActivityItem;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonymobile/home/data/ActivityItem;->mName:Ljava/lang/String;

    .line 96
    iget-object v0, p1, Lcom/sonymobile/home/data/ActivityItem;->mUser:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/sonymobile/home/data/ActivityItem;->mUser:Landroid/os/UserHandle;

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/home/model/PackageHandler$AppInfo;)V
    .locals 2
    .param p1, "appInfo"    # Lcom/sonymobile/home/model/PackageHandler$AppInfo;

    .prologue
    .line 35
    invoke-interface {p1}, Lcom/sonymobile/home/model/PackageHandler$AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-interface {p1}, Lcom/sonymobile/home/model/PackageHandler$AppInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/home/data/ActivityItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sonymobile/home/data/Item;-><init>()V

    .line 48
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 49
    iput-object p1, p0, Lcom/sonymobile/home/data/ActivityItem;->mPackageName:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/sonymobile/home/data/ActivityItem;->mName:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/sonymobile/home/data/ActivityItem;->mUser:Landroid/os/UserHandle;

    .line 55
    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    if-ne p0, p1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v1

    .line 130
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

    :cond_3
    move-object v0, p1

    .line 132
    check-cast v0, Lcom/sonymobile/home/data/ActivityItem;

    .line 134
    .local v0, "that":Lcom/sonymobile/home/data/ActivityItem;
    iget-object v3, p0, Lcom/sonymobile/home/data/ActivityItem;->mName:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonymobile/home/data/ActivityItem;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 135
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/home/data/ActivityItem;->mPackageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonymobile/home/data/ActivityItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 136
    :cond_5
    iget-object v3, p0, Lcom/sonymobile/home/data/ActivityItem;->mUser:Landroid/os/UserHandle;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sonymobile/home/data/ActivityItem;->mUser:Landroid/os/UserHandle;

    iget-object v4, v0, Lcom/sonymobile/home/data/ActivityItem;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_6
    iget-object v3, v0, Lcom/sonymobile/home/data/ActivityItem;->mUser:Landroid/os/UserHandle;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sonymobile/home/data/ActivityItem;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonymobile/home/data/ActivityItem;->mName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 123
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 124
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sonymobile/home/data/ActivityItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonymobile/home/data/ActivityItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sonymobile/home/data/ActivityItem;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 143
    iget-object v1, p0, Lcom/sonymobile/home/data/ActivityItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 144
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/sonymobile/home/data/ActivityItem;->mName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 145
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/sonymobile/home/data/ActivityItem;->mUser:Landroid/os/UserHandle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/home/data/ActivityItem;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 146
    return v0

    .line 145
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 151
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

    iget-object v1, p0, Lcom/sonymobile/home/data/ActivityItem;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/home/data/ActivityItem;->mName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sonymobile/home/util/HomeDebug;->getShortComponentString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/data/ActivityItem;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonymobile/home/data/ActivityItem;->getPageViewLocationString()Ljava/lang/String;

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
