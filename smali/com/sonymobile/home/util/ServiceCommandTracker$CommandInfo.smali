.class Lcom/sonymobile/home/util/ServiceCommandTracker$CommandInfo;
.super Ljava/lang/Object;
.source "ServiceCommandTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/util/ServiceCommandTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CommandInfo"
.end annotation


# instance fields
.field public finished:Z

.field public final startId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "startId"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/sonymobile/home/util/ServiceCommandTracker$CommandInfo;->startId:I

    .line 47
    return-void
.end method
