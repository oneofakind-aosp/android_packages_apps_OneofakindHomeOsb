.class public Lcom/sonymobile/home/transfer/DropEvent;
.super Ljava/lang/Object;
.source "DropEvent.java"


# instance fields
.field public final isLocal:Z

.field public final targetAction:I

.field public final targetPersistent:Z


# direct methods
.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "targetPersistent"    # Z
    .param p2, "targetAction"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean p1, p0, Lcom/sonymobile/home/transfer/DropEvent;->targetPersistent:Z

    .line 24
    iput p2, p0, Lcom/sonymobile/home/transfer/DropEvent;->targetAction:I

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/transfer/DropEvent;->isLocal:Z

    .line 26
    return-void
.end method

.method public constructor <init>(ZIZ)V
    .locals 0
    .param p1, "targetPersistent"    # Z
    .param p2, "targetAction"    # I
    .param p3, "isLocal"    # Z

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean p1, p0, Lcom/sonymobile/home/transfer/DropEvent;->targetPersistent:Z

    .line 30
    iput p2, p0, Lcom/sonymobile/home/transfer/DropEvent;->targetAction:I

    .line 31
    iput-boolean p3, p0, Lcom/sonymobile/home/transfer/DropEvent;->isLocal:Z

    .line 32
    return-void
.end method
