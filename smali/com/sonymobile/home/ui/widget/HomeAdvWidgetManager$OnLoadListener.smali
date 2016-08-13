.class public interface abstract Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager$OnLoadListener;
.super Ljava/lang/Object;
.source "HomeAdvWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/ui/widget/HomeAdvWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnLoadListener"
.end annotation


# virtual methods
.method public abstract onAdvWidgetLoaded(Lcom/sonymobile/home/ui/widget/HomeAdvWidget;)V
.end method

.method public abstract onAdvWidgetLoadingFailed(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;)V
.end method

.method public abstract onAdvWidgetLoadingFailedSilent(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;)V
.end method
