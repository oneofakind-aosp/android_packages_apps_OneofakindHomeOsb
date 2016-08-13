.class Lcom/sonymobile/home/search/SearchablePageViewPresenter$SharedActivityResultListener;
.super Ljava/lang/Object;
.source "SearchablePageViewPresenter.java"

# interfaces
.implements Lcom/sonymobile/home/ActivityResultHandler$ActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/search/SearchablePageViewPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SharedActivityResultListener"
.end annotation


# static fields
.field private static sActivityResultListener:Lcom/sonymobile/home/search/SearchablePageViewPresenter$SharedActivityResultListener;


# instance fields
.field private mActiveCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonymobile/home/presenter/PageViewPresenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSharedListener()Lcom/sonymobile/home/search/SearchablePageViewPresenter$SharedActivityResultListener;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/sonymobile/home/search/SearchablePageViewPresenter$SharedActivityResultListener;->sActivityResultListener:Lcom/sonymobile/home/search/SearchablePageViewPresenter$SharedActivityResultListener;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/sonymobile/home/search/SearchablePageViewPresenter$SharedActivityResultListener;

    invoke-direct {v0}, Lcom/sonymobile/home/search/SearchablePageViewPresenter$SharedActivityResultListener;-><init>()V

    sput-object v0, Lcom/sonymobile/home/search/SearchablePageViewPresenter$SharedActivityResultListener;->sActivityResultListener:Lcom/sonymobile/home/search/SearchablePageViewPresenter$SharedActivityResultListener;

    .line 98
    :cond_0
    sget-object v0, Lcom/sonymobile/home/search/SearchablePageViewPresenter$SharedActivityResultListener;->sActivityResultListener:Lcom/sonymobile/home/search/SearchablePageViewPresenter$SharedActivityResultListener;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 109
    iget-object v1, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter$SharedActivityResultListener;->mActiveCallback:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter$SharedActivityResultListener;->mActiveCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/presenter/PageViewPresenter;

    move-object v0, v1

    .line 111
    .local v0, "pageViewPresenter":Lcom/sonymobile/home/presenter/PageViewPresenter;
    :goto_0
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0, p1, p2, p3}, Lcom/sonymobile/home/presenter/PageViewPresenter;->onActivityResult(IILandroid/content/Intent;)V

    .line 114
    :cond_0
    return-void

    .line 109
    .end local v0    # "pageViewPresenter":Lcom/sonymobile/home/presenter/PageViewPresenter;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActiveCallback(Lcom/sonymobile/home/presenter/PageViewPresenter;)V
    .locals 1
    .param p1, "pageViewPresenter"    # Lcom/sonymobile/home/presenter/PageViewPresenter;

    .prologue
    .line 102
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonymobile/home/search/SearchablePageViewPresenter$SharedActivityResultListener;->mActiveCallback:Ljava/lang/ref/WeakReference;

    .line 103
    return-void
.end method
