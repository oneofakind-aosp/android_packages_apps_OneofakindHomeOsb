.class Lcom/sonymobile/home/ga/HomeGtmContainerLoadHelper$ContainerAvailableCallback;
.super Ljava/lang/Object;
.source "HomeGtmContainerLoadHelper.java"

# interfaces
.implements Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/ga/HomeGtmContainerLoadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContainerAvailableCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/ga/HomeGtmContainerLoadHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/ga/HomeGtmContainerLoadHelper$1;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/sonymobile/home/ga/HomeGtmContainerLoadHelper$ContainerAvailableCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onContainerAvailable(Lcom/google/android/gms/tagmanager/ContainerHolder;Ljava/lang/String;)V
    .locals 1
    .param p1, "containerHolder"    # Lcom/google/android/gms/tagmanager/ContainerHolder;
    .param p2, "containerVersion"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->setContainerDefaults()V

    .line 100
    return-void
.end method
