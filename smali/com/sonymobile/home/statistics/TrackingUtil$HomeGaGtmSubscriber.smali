.class Lcom/sonymobile/home/statistics/TrackingUtil$HomeGaGtmSubscriber;
.super Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;
.source "TrackingUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/statistics/TrackingUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HomeGaGtmSubscriber"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;-><init>(Landroid/content/Context;)V

    .line 398
    iput-object p1, p0, Lcom/sonymobile/home/statistics/TrackingUtil$HomeGaGtmSubscriber;->mContext:Landroid/content/Context;

    .line 399
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 403
    invoke-super {p0, p1}, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->onChange(Z)V

    .line 404
    iget-object v0, p0, Lcom/sonymobile/home/statistics/TrackingUtil$HomeGaGtmSubscriber;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/gagtmhelper/GaGtmSystemSetting;->isSomcGaEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/sonymobile/home/statistics/TrackingUtil;->setTrackingEnabled(Z)V

    .line 405
    return-void
.end method

.method public subscribeGaSettingChanges()V
    .locals 1

    .prologue
    .line 409
    invoke-super {p0}, Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;->subscribeGaSettingChanges()V

    .line 410
    iget-object v0, p0, Lcom/sonymobile/home/statistics/TrackingUtil$HomeGaGtmSubscriber;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/gagtmhelper/GaGtmSystemSetting;->isSomcGaEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/sonymobile/home/statistics/TrackingUtil;->setTrackingEnabled(Z)V

    .line 411
    return-void
.end method
