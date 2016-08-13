.class public Lcom/sonymobile/home/data/InternalFunctionItem;
.super Lcom/sonymobile/home/data/Item;
.source "InternalFunctionItem.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIconResourceId:I

.field private mLabelResourceId:I

.field private final mPackageName:Ljava/lang/String;

.field private final mType:Ljava/lang/String;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/data/InternalFunctionItem;)V
    .locals 1
    .param p1, "otherItem"    # Lcom/sonymobile/home/data/InternalFunctionItem;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/sonymobile/home/data/Item;-><init>(Lcom/sonymobile/home/data/Item;)V

    .line 60
    iget v0, p1, Lcom/sonymobile/home/data/InternalFunctionItem;->mLabelResourceId:I

    iput v0, p0, Lcom/sonymobile/home/data/InternalFunctionItem;->mLabelResourceId:I

    .line 61
    iget v0, p1, Lcom/sonymobile/home/data/InternalFunctionItem;->mIconResourceId:I

    iput v0, p0, Lcom/sonymobile/home/data/InternalFunctionItem;->mIconResourceId:I

    .line 62
    iget-object v0, p1, Lcom/sonymobile/home/data/InternalFunctionItem;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonymobile/home/data/InternalFunctionItem;->mPackageName:Ljava/lang/String;

    .line 63
    iget-object v0, p1, Lcom/sonymobile/home/data/InternalFunctionItem;->mType:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonymobile/home/data/InternalFunctionItem;->mType:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lcom/sonymobile/home/data/InternalFunctionItem;->mUser:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/sonymobile/home/data/InternalFunctionItem;->mUser:Landroid/os/UserHandle;

    .line 65
    iget-object v0, p1, Lcom/sonymobile/home/data/InternalFunctionItem;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sonymobile/home/data/InternalFunctionItem;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sonymobile/home/data/Item;-><init>()V

    .line 48
    invoke-static {p1}, Lcom/sonymobile/home/data/InternalFunctionItem;->isTypeSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/data/InternalFunctionItem;->mPackageName:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/sonymobile/home/data/InternalFunctionItem;->mType:Ljava/lang/String;

    .line 53
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/data/InternalFunctionItem;->mUser:Landroid/os/UserHandle;

    .line 54
    iput-object p2, p0, Lcom/sonymobile/home/data/InternalFunctionItem;->mContext:Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Lcom/sonymobile/home/data/InternalFunctionItem;->initIconAndLabel()V

    .line 56
    return-void
.end method

.method private initIconAndLabel()V
    .locals 2

    .prologue
    .line 69
    const-string v0, "search"

    iget-object v1, p0, Lcom/sonymobile/home/data/InternalFunctionItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const v0, 0x7f080100

    iput v0, p0, Lcom/sonymobile/home/data/InternalFunctionItem;->mLabelResourceId:I

    .line 71
    const v0, 0x7f02008a

    iput v0, p0, Lcom/sonymobile/home/data/InternalFunctionItem;->mIconResourceId:I

    .line 73
    :cond_0
    return-void
.end method

.method public static isTypeSupported(Ljava/lang/String;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 82
    const-string v0, "search"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public doAction()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 139
    if-ne p0, p1, :cond_0

    .line 140
    const/4 v1, 0x1

    .line 147
    :goto_0
    return v1

    .line 142
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 143
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 146
    check-cast v0, Lcom/sonymobile/home/data/InternalFunctionItem;

    .line 147
    .local v0, "that":Lcom/sonymobile/home/data/InternalFunctionItem;
    iget-object v1, p0, Lcom/sonymobile/home/data/InternalFunctionItem;->mType:Ljava/lang/String;

    iget-object v2, v0, Lcom/sonymobile/home/data/InternalFunctionItem;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getIconResourceId()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/sonymobile/home/data/InternalFunctionItem;->mIconResourceId:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sonymobile/home/data/InternalFunctionItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/home/data/InternalFunctionItem;->mLabelResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonymobile/home/data/InternalFunctionItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sonymobile/home/data/InternalFunctionItem;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sonymobile/home/data/InternalFunctionItem;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 155
    iget-object v1, p0, Lcom/sonymobile/home/data/InternalFunctionItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 156
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/sonymobile/home/data/InternalFunctionItem;->mType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 157
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/sonymobile/home/data/InternalFunctionItem;->mUser:Landroid/os/UserHandle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/home/data/InternalFunctionItem;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 158
    return v0

    .line 157
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
