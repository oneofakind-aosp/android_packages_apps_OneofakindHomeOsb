.class public Lcom/sonymobile/home/statistics/StatisticsItem;
.super Ljava/lang/Object;
.source "StatisticsItem.java"


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private mStartCount:I

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/statistics/StatisticsItem;)V
    .locals 4
    .param p1, "item"    # Lcom/sonymobile/home/statistics/StatisticsItem;

    .prologue
    .line 56
    iget-object v0, p1, Lcom/sonymobile/home/statistics/StatisticsItem;->mPackageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/sonymobile/home/statistics/StatisticsItem;->mName:Ljava/lang/String;

    iget-object v2, p1, Lcom/sonymobile/home/statistics/StatisticsItem;->mUser:Landroid/os/UserHandle;

    iget v3, p1, Lcom/sonymobile/home/statistics/StatisticsItem;->mStartCount:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonymobile/home/statistics/StatisticsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonymobile/home/statistics/StatisticsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "startCount"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/sonymobile/home/statistics/StatisticsItem;->mPackageName:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/sonymobile/home/statistics/StatisticsItem;->mName:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/sonymobile/home/statistics/StatisticsItem;->mUser:Landroid/os/UserHandle;

    .line 47
    iput p4, p0, Lcom/sonymobile/home/statistics/StatisticsItem;->mStartCount:I

    .line 48
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonymobile/home/statistics/StatisticsItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonymobile/home/statistics/StatisticsItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getStartCount()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/sonymobile/home/statistics/StatisticsItem;->mStartCount:I

    return v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonymobile/home/statistics/StatisticsItem;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public setStartCount(I)V
    .locals 0
    .param p1, "startCount"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/sonymobile/home/statistics/StatisticsItem;->mStartCount:I

    .line 102
    return-void
.end method
