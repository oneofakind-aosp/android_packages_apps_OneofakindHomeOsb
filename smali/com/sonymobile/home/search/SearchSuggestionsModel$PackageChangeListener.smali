.class Lcom/sonymobile/home/search/SearchSuggestionsModel$PackageChangeListener;
.super Lcom/sonymobile/home/model/ListModel$PackageChangeListener;
.source "SearchSuggestionsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/search/SearchSuggestionsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/search/SearchSuggestionsModel;


# direct methods
.method private constructor <init>(Lcom/sonymobile/home/search/SearchSuggestionsModel;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel$PackageChangeListener;->this$0:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    invoke-direct {p0, p1}, Lcom/sonymobile/home/model/ListModel$PackageChangeListener;-><init>(Lcom/sonymobile/home/model/ListModel;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/search/SearchSuggestionsModel;Lcom/sonymobile/home/search/SearchSuggestionsModel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/search/SearchSuggestionsModel;
    .param p2, "x1"    # Lcom/sonymobile/home/search/SearchSuggestionsModel$1;

    .prologue
    .line 346
    invoke-direct {p0, p1}, Lcom/sonymobile/home/search/SearchSuggestionsModel$PackageChangeListener;-><init>(Lcom/sonymobile/home/search/SearchSuggestionsModel;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 350
    invoke-super {p0, p1, p2}, Lcom/sonymobile/home/model/ListModel$PackageChangeListener;->onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 354
    .local v0, "currentTime":J
    iget-object v3, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel$PackageChangeListener;->this$0:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    # invokes: Lcom/sonymobile/home/search/SearchSuggestionsModel;->addActivityItems(Ljava/lang/String;Landroid/os/UserHandle;)Z
    invoke-static {v3, p1, p2}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->access$100(Lcom/sonymobile/home/search/SearchSuggestionsModel;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    .line 355
    .local v2, "modelChanged":Z
    iget-object v3, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel$PackageChangeListener;->this$0:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    # invokes: Lcom/sonymobile/home/search/SearchSuggestionsModel;->trimToMaxSize()Z
    invoke-static {v3}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->access$200(Lcom/sonymobile/home/search/SearchSuggestionsModel;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 357
    if-eqz v2, :cond_0

    .line 358
    iget-object v3, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel$PackageChangeListener;->this$0:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    invoke-virtual {v3}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->updateModel()V

    .line 359
    iget-object v3, p0, Lcom/sonymobile/home/search/SearchSuggestionsModel$PackageChangeListener;->this$0:Lcom/sonymobile/home/search/SearchSuggestionsModel;

    invoke-virtual {v3, v0, v1}, Lcom/sonymobile/home/search/SearchSuggestionsModel;->updateLastPackageSyncTime(J)V

    .line 361
    :cond_0
    return-void
.end method
