.class final Lcom/sonymobile/home/ga/HomeGtmContainerLoadHelper$1;
.super Ljava/lang/Object;
.source "HomeGtmContainerLoadHelper.java"

# interfaces
.implements Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/ga/HomeGtmContainerLoadHelper;->initGaGtmUtils(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContainerLoaded(Z)V
    .locals 3
    .param p1, "success"    # Z

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 80
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getContainerHolder()Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object v0

    .line 81
    .local v0, "containerHolder":Lcom/google/android/gms/tagmanager/ContainerHolder;
    new-instance v1, Lcom/sonymobile/home/ga/HomeGtmContainerLoadHelper$ContainerAvailableCallback;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sonymobile/home/ga/HomeGtmContainerLoadHelper$ContainerAvailableCallback;-><init>(Lcom/sonymobile/home/ga/HomeGtmContainerLoadHelper$1;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/ContainerHolder;->setContainerAvailableListener(Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;)V

    .line 85
    .end local v0    # "containerHolder":Lcom/google/android/gms/tagmanager/ContainerHolder;
    :goto_0
    return-void

    .line 83
    :cond_0
    # getter for: Lcom/sonymobile/home/ga/HomeGtmContainerLoadHelper;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/home/ga/HomeGtmContainerLoadHelper;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failure loading GTM container!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
