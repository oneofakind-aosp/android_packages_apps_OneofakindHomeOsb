.class Lcom/sonymobile/home/statistics/TrackingUtil$SetScreen;
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
    name = "SetScreen"
.end annotation


# instance fields
.field private final mScreen:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "screen"    # Ljava/lang/String;

    .prologue
    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    iput-object p1, p0, Lcom/sonymobile/home/statistics/TrackingUtil$SetScreen;->mScreen:Ljava/lang/String;

    .line 438
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 442
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/statistics/TrackingUtil$SetScreen;->mScreen:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushAppView(Ljava/lang/String;)V

    .line 443
    return-void
.end method
