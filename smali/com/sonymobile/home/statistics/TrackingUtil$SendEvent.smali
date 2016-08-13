.class Lcom/sonymobile/home/statistics/TrackingUtil$SendEvent;
.super Ljava/lang/Object;
.source "TrackingUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/statistics/TrackingUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SendEvent"
.end annotation


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mCategory:Ljava/lang/String;

.field private final mLabel:Ljava/lang/String;

.field private final mValue:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # J

    .prologue
    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    iput-object p1, p0, Lcom/sonymobile/home/statistics/TrackingUtil$SendEvent;->mCategory:Ljava/lang/String;

    .line 422
    iput-object p2, p0, Lcom/sonymobile/home/statistics/TrackingUtil$SendEvent;->mAction:Ljava/lang/String;

    .line 423
    iput-object p3, p0, Lcom/sonymobile/home/statistics/TrackingUtil$SendEvent;->mLabel:Ljava/lang/String;

    .line 424
    iput-wide p4, p0, Lcom/sonymobile/home/statistics/TrackingUtil$SendEvent;->mValue:J

    .line 425
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 429
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/statistics/TrackingUtil$SendEvent;->mCategory:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/home/statistics/TrackingUtil$SendEvent;->mAction:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonymobile/home/statistics/TrackingUtil$SendEvent;->mLabel:Ljava/lang/String;

    iget-wide v4, p0, Lcom/sonymobile/home/statistics/TrackingUtil$SendEvent;->mValue:J

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 430
    return-void
.end method
