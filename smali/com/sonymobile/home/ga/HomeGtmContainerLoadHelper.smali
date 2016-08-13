.class public Lcom/sonymobile/home/ga/HomeGtmContainerLoadHelper;
.super Ljava/lang/Object;
.source "HomeGtmContainerLoadHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/ga/HomeGtmContainerLoadHelper$ContainerAvailableCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/sonymobile/home/ga/HomeGtmContainerLoadHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/ga/HomeGtmContainerLoadHelper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/sonymobile/home/ga/HomeGtmContainerLoadHelper;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static initGaGtmUtils(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-static {p0}, Lcom/sonymobile/gagtmhelper/GaGtmSystemSetting;->readAndSetSomcGa(Landroid/content/Context;)V

    .line 58
    invoke-static {p0}, Lcom/sonymobile/gagtmhelper/GaGtmSystemSetting;->isSomcGaEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/sonymobile/home/statistics/TrackingUtil;->setTrackingEnabled(Z)V

    .line 61
    invoke-static {p0}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->enableExceptionParsing(Landroid/content/Context;)V

    .line 66
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object v0

    const-string v2, "GTM-55L4BZ"

    const v3, 0x7f070001

    const/4 v4, 0x0

    const/4 v5, 0x6

    new-instance v6, Lcom/sonymobile/home/ga/HomeGtmContainerLoadHelper$1;

    invoke-direct {v6}, Lcom/sonymobile/home/ga/HomeGtmContainerLoadHelper$1;-><init>()V

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->init(Landroid/content/Context;Ljava/lang/String;IZILcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;)Z

    .line 87
    return-void
.end method
